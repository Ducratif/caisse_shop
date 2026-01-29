# Caisse Shop (ducratif_lootbox) | ESX Legacy

<!--![Banner](caisse_shop.png)-->

> **Caisse Shop** (events/namespace `ducratif_lootbox`) est une ressource FiveM **boutique de caisses + récompenses à récupérer + historique + top acheteurs**, avec une **NUI** intégrée et un **Saison Passe** (récompenses par niveaux + défis configurables).

**Discord (support / communauté) :** https://discord.gg/kpD8pQBBWm

---

## Sommaire
- [Fonctionnalités](#-fonctionnalités)
- [Pré-requis](#-pré-requis)
- [Contenu de la ressource](#-contenu-de-la-ressource)
- [Installation](#️-installation)
- [Utilisation en jeu](#-utilisation-en-jeu)
- [Admin](#-admin)
- [Saison Passe](#-saison-passe)
- [Base de données](#️-base-de-données)
- [Callbacks / NUI](#-callbacks--nui)
- [Dépannage](#-dépannage)
- [Crédits](#-crédits)

---

## ✨ Fonctionnalités

### Boutique de caisses
- Affichage des **caisses actives** (NUI).
- Détail d’une caisse (description, image, contenus, paiements).
- Achat d’une caisse via plusieurs moyens de paiement (selon ta config DB) :
  - **Argent (cash)** / (selon ton ESX)  
  - **Items**
  - **Points joueur** (table `paintball_players`) `Demande le script PaintBall`
  - **Points team** (table `paintball_teams`) `Demande le script PaintBall`
- Gestion des contenus :
  - Items + quantité + rareté (`lootbox_contents`)
  - Mode **random** supporté (champ `is_random` dans `lootboxes`)

### Récompenses à récupérer (Reward page)
- Les achats peuvent donner des **récompenses différées** via `lootbox_rewards`.
- Page “Mes récompenses” avec **réclamation** en 1 clic.

### Historique & Top acheteurs
- Page historique (achats récents, pagination/limites).
- Top acheteurs (stats via DB).

### Admin (NUI)
- Listing des caisses
- Activation / désactivation
- Suppression
- Duplication
- Logs/achats

### Saison Passe (inclus)
- Récupération des infos de saison active
- Progression / niveaux
- Récompenses liées à des défis (challenges)
- Tracking via tables dédiées (`lootbox_saisonpass_*`)
- Évènements serveur pour valider des défis (véhicule, job, market, etc.)

---

## ✅ Pré-requis

- **FXServer** récent (fx_version `cerulean`)
- **ESX Legacy** (utilise `exports['es_extended']:getSharedObject()`)
- **ox_lib**
- **oxmysql**
- Base **MySQL/MariaDB**
- Dépendance déclarée : `discord_id` (assure-toi de l’avoir / l’adapter si besoin)

---

## 🧱 Contenu de la ressource

```
caisse_shop/
├─ fxmanifest.lua
├─ client.lua
├─ server.lua
└─ html/
   ├─ index.html
   ├─ style.css
   ├─ script.js
   └─ img/
      ├─ default.png
      ├─ money.png
      ├─ team_points.png
      └─ ...
```

---

## ⚙️ Installation

### 1) Déposer la ressource
- Place le dossier dans `resources/` (ex : `resources/[shop]/caisse_shop`).

### 2) Dépendances
Assure-toi que ces ressources démarrent **avant** :
- `oxmysql`
- `ox_lib`
- `es_extended`
- (optionnel) `discord_id`

### 3) Start order (server.cfg)
```cfg
ensure oxmysql
ensure ox_lib
ensure es_extended
ensure caisse_shop
```

> Le **nom du dossier** doit correspondre à ce que tu `ensure`.

### 4) Base de données

✅ **SQL inclus** : importe **`caisse_shop.sql`** dans ta base **MySQL/MariaDB** (il contient toutes les tables nécessaires au script).

> ⚠️ **Exception :** tout ce qui concerne les **points Paintball** n’est **pas** dans ce SQL (c’est un autre script).  
> Le shop peut référencer tes tables externes de points (ex: `paintball_players`, `paintball_teams`) si tu as activé ce moyen de paiement, sinon tu peux l’ignorer.

#### Import (au choix)

**Option A — phpMyAdmin**
1. Sélectionne ta base
2. Onglet **Importer**
3. Choisis `caisse_shop.sql`
4. **Exécuter**

**Option B — CLI**
```bash
mysql -u USER -p DATABASE < caisse_shop.sql
```

---

#### Tables créées par `caisse_shop.sql`

##### Boutique (core)
- `lootboxes`  
  Définition des caisses (nom, description, image, statut actif, mode random, catégorie, tags, etc.).
- `lootbox_contents`  
  Contenu des caisses (items, quantités, rareté…).
- `lootbox_payments`  
  Moyens de paiement disponibles par caisse (cash / item / points… selon ton usage).
- `lootbox_rewards`  
  Récompenses différées “à récupérer” (page Reward).
- `lootbox_history`  
  Historique des achats (pour la page historique + top acheteurs).

##### Catégories / restrictions
- `lootbox_category_access`  
  Gestion des accès / restrictions par catégorie (si tu l’utilises côté admin/UI).

##### Saison Passe
- `lootbox_saisonpasse`  
  Définition de la saison active (dates, statut, paramètres).
- `lootbox_saisonpass_rewards`  
  Récompenses par niveau.
- `lootbox_saisonpass_challenges`  
  Défis configurables.
- `lootbox_saisonpass_user`  
  Progression des joueurs (XP / niveau).
- `lootbox_saisonpass_claims`  
  Suivi des niveaux déjà réclamés (anti double claim).
- `lootbox_saisonpass_logs`  
  Logs (progression, claims, etc.).
- `lootbox_saisonpass_zones`  
  Zones / triggers liés au saison pass (si activé par ta config).

---

#### Notes importantes
- Si tu utilises un système **multichar** (ex: `char1:...`), vérifie que le script s’appuie bien sur `xPlayer.identifier` (c’est ce qui sert de clé côté DB).
- Recommandé : fais une **sauvegarde** de ta base avant import si tu merges avec un existant.


---

## 🎮 Utilisation en jeu

### Ouvrir la boutique
- **Commande** : `openLootboxShopDucratifs`
- **Keybind** : défini par `RegisterKeyMapping` (par défaut **F5** dans `client.lua`)
  - Le joueur peut rebind via les paramètres FiveM.

### Navigation
- Boutique : liste des caisses actives
- “Mes Récompenses” : récupérations des achats non réclamés
- “Historique” : derniers achats + top

---

## 🛡️ Admin

Le script contient toute la couche **NUI admin** côté client + callbacks serveur :
- `ducratif_lootbox:isAdmin`
- `ducratif_lootbox:adminGetBoxes`
- `ducratif_lootbox:adminSaveBox`
- `ducratif_lootbox:adminToggleBox`
- `ducratif_lootbox:adminDeleteBox`
- `ducratif_lootbox:adminGetBoxDetails`
- `ducratif_lootbox:adminDuplicateBox`
- `ducratif_lootbox:adminGetLogs`

### Système d’admin actuel
Dans `server.lua`, une whitelist simple est utilisée :
```lua
local adminIdentifiers = {
  ['char1:XXXXXXXX'] = true,
}
```

✅ Pour ajouter un admin : ajoute son `xPlayer.identifier` dans la table.  
💡 Recommandation : remplacer par un système ACE / groupe ESX / permission Discord.

---

## 🎖️ Saison Passe

### Tables utilisées
- `lootbox_saisonpasse` (définition de la saison)
- `lootbox_saisonpass_rewards` (récompenses par level)
- `lootbox_saisonpass_challenges` (défis configurables)
- `lootbox_saisonpass_user` (progression par joueur)
- `lootbox_saisonpass_claims` (niveaux déjà réclamés)
- `lootbox_saisonpass_logs` (logs)

### Events “challenge”
Le serveur écoute plusieurs events pour valider des défis, par exemple :
- `saisonpass:enteredVehicle`
- `saisonpass:vehicleDistance`
- `saisonpass:checkItemBuyChallenge`
- `saisonpass:checkClothesChangeChallenge`
- `saisonpass:checkJobChangeChallenge`
- `saisonpass:marketCreateChallenge`
- `saisonpass:marketDeleteChallenge`
- `saisonpass:marketBuyChallenge`
- `saisonpass:marketSellChallenge`

👉 À brancher avec tes scripts (véhicules, shop, vêtements, métiers, market…) pour envoyer les bons events.

### Réclamer une récompense
- Callback : `ducratif_lootbox:claimSaisonReward`
- Validation : check du niveau + déjà réclamé + attribution récompense

---

## 🗄️ Base de données

> Les tables exactes + indexes dépendent de ton implémentation.  
Ci-dessous : **ce que la ressource attend** d’après les requêtes dans `server.lua`.

### Boutique (core)
- `lootboxes`
  - champs attendus : `id`, `name`, `short_description`, `long_description`, `image_url`, `is_active`, `is_random`, `category`, `tags`
- `lootbox_contents`
  - champs : `id`, `lootbox_id`, `item_name`, `amount`, `rarity`
- `lootbox_payments`
  - champs : `id`, `lootbox_id`, `payment_type`, `payment_value`
- `lootbox_rewards`
  - champs : `id`, `player_identifier`, `lootbox_id`, `redeemed`, `created_at`
- `lootbox_history`
  - champs : `id`, `buyer_identifier`, `lootbox_id`, `team_id`, `payment_type`, `items_given`, `bought_at`

### Intégration Paintball / Points
- `paintball_players` (points joueur)
- `paintball_teams` (points team)

### Saison Passe
- `lootbox_saisonpasse`
- `lootbox_saisonpass_rewards`
- `lootbox_saisonpass_challenges`
- `lootbox_saisonpass_user`
- `lootbox_saisonpass_claims`
- `lootbox_saisonpass_logs`

⚠️ **Note importante sur le code actuel :** certaines requêtes SQL dans `server.lua` contiennent des `...` (placeholders).  
Avant mise en prod, remplace ces placeholders par les requêtes complètes.

---

## 🔌 Callbacks / NUI

### Callbacks serveur (ox_lib)
- `ducratif_lootbox:getAllActiveBoxes`
- `ducratif_lootbox:getRewards`
- `ducratif_lootbox:getLootboxHistory`
- `ducratif_lootbox:getTopBuyers`
- `ducratif_lootbox:getSaisonPasse`
- `ducratif_lootbox:claimSaisonReward`

### NUI callbacks (client.lua)
- `refreshLootboxes`
- `buyLootbox`
- `getRewards`
- `claimReward`
- Admin : `adminGetBoxes`, `adminToggleBox`, `adminDeleteBox`, `adminGetLogs`, `adminSaveBox`, `adminGetBoxDetails`, `adminDuplicateBox`
- Saison : `ducratif_lootbox:getSaisonPasse`, `ducratif_lootbox:claimSaisonReward`

### UI / Front
- `html/index.html` : structure (boutique, rewards, historique, saison)
- `html/script.js` : logique (fetch NUI, rendu, interactions)
- `html/style.css` : style
- `html/img/*` : icônes/preview items

---

## 🛠️ Dépannage

### La boutique ne s’ouvre pas
- Vérifie que la ressource est **ensure**
- Vérifie le keybind / commande (`openLootboxShopDucratifs`)
- Vérifie que `ui_page` pointe bien sur `html/index.html` (fxmanifest)

### Erreurs SQL
- Vérifie `oxmysql` + connexion DB
- Vérifie que les tables existent
- Remplace les requêtes contenant `...` dans `server.lua`

### Problèmes d’admin
- Ajoute ton identifier dans `adminIdentifiers`
- Vérifie `xPlayer.identifier` (multichar / char1:...)

---

## 📄 Crédits

- Auteur : **Ducratif**
- Script : **Caisse Shop / ducratif_lootbox**
- Support : https://discord.gg/kpD8pQBBWm
