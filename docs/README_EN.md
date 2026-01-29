# Caisse Shop (ducratif_lootbox) | ESX Legacy

<!--![Banner](caisse_shop.png)-->

> **Caisse Shop** (namespace `ducratif_lootbox`) is a FiveM **lootbox shop** with **claimable rewards**, **purchase history**, **top buyers**, an **Admin NUI**, and an integrated **Season Pass** (levels + configurable challenges).

**Discord (support / community):** https://discord.gg/kpD8pQBBWm

---

## Table of contents
- [Features](#-features)
- [Requirements](#-requirements)
- [Resource structure](#-resource-structure)
- [Installation](#️-installation)
- [In-game usage](#-in-game-usage)
- [Admin](#-admin)
- [Season Pass](#-season-pass)
- [Database](#️-database)
- [Callbacks / NUI](#-callbacks--nui)
- [Troubleshooting](#-troubleshooting)
- [Credits](#-credits)

---

## ✨ Features

### Lootbox shop
- Displays **active lootboxes** (NUI).
- Lootbox detail (description, image, contents, payment methods).
- Multiple payment methods (depending on your DB/config):
  - **Cash money**
  - **Items**
  - **Player points** (`paintball_players`)
  - **Team points** (`paintball_teams`)
- Contents management:
  - items + amount + rarity (`lootbox_contents`)
  - **random mode** supported via `is_random` on `lootboxes`

### Claimable rewards
- Purchases can create **pending rewards** via `lootbox_rewards`.
- “My rewards” page with 1-click claim.

### History & Top buyers
- History page (recent purchases).
- Top buyers stats.

### Admin (NUI)
- List lootboxes
- Toggle active
- Delete
- Duplicate
- View logs/purchases

### Season Pass
- Fetch active season
- Player progression / levels
- Rewards tied to challenges
- Tracking tables (`lootbox_saisonpass_*`)
- Server events to validate challenges (vehicle/job/market…)

---

## ✅ Requirements

- Recent **FXServer** (`cerulean`)
- **ESX Legacy** (`exports['es_extended']:getSharedObject()`)
- **ox_lib**
- **oxmysql**
- **MySQL/MariaDB**
- Declared dependency: `discord_id` (install or adapt as needed)

---

## 🧱 Resource structure

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
      └─ *.png
```

---

## ⚙️ Installation

### 1) Install the resource
Place the folder into `resources/` (e.g. `resources/[shop]/caisse_shop`).

### 2) Dependencies start order
Start these **before**:
- `oxmysql`
- `ox_lib`
- `es_extended`
- (optional) `discord_id`

### 3) server.cfg
```cfg
ensure oxmysql
ensure ox_lib
ensure es_extended
ensure caisse_shop
```

### 4) Database
⚠️ The provided archive does **not** include an `.sql` file.  
Create the required tables manually or add a `caisse_shop.sql` to your repository.

---

## 🎮 In-game usage

### Open the shop
- **Command**: `openLootboxShopDucratifs`
- **Keybind**: defined via `RegisterKeyMapping` (default **F5** in `client.lua`)

### Pages
- Shop: active lootboxes
- My Rewards: pending rewards claim
- History: recent purchases + top buyers

---

## 🛡️ Admin

Server callbacks available:
- `ducratif_lootbox:isAdmin`
- `ducratif_lootbox:adminGetBoxes`
- `ducratif_lootbox:adminSaveBox`
- `ducratif_lootbox:adminToggleBox`
- `ducratif_lootbox:adminDeleteBox`
- `ducratif_lootbox:adminGetBoxDetails`
- `ducratif_lootbox:adminDuplicateBox`
- `ducratif_lootbox:adminGetLogs`

### Current admin system
`server.lua` uses a simple identifier whitelist:
```lua
local adminIdentifiers = {
  ['char1:XXXXXXXX'] = true,
}
```

---

## 🎖️ Season Pass

### Tables
- `lootbox_saisonpasse`
- `lootbox_saisonpass_rewards`
- `lootbox_saisonpass_challenges`
- `lootbox_saisonpass_user`
- `lootbox_saisonpass_claims`
- `lootbox_saisonpass_logs`

### Challenge events
Examples:
- `saisonpass:enteredVehicle`
- `saisonpass:vehicleDistance`
- `saisonpass:checkItemBuyChallenge`
- `saisonpass:checkClothesChangeChallenge`
- `saisonpass:checkJobChangeChallenge`
- `saisonpass:marketCreateChallenge`
- `saisonpass:marketDeleteChallenge`
- `saisonpass:marketBuyChallenge`
- `saisonpass:marketSellChallenge`

Wire these events into your own scripts (vehicles/shops/clothes/jobs/market).

---

## 🗄️ Database

Below are the tables referenced by queries in `server.lua`:

### Core shop
- `lootboxes` (expects: `id`, `name`, `short_description`, `long_description`, `image_url`, `is_active`, `is_random`, `category`, `tags`)
- `lootbox_contents` (`lootbox_id`, `item_name`, `amount`, `rarity`)
- `lootbox_payments` (`lootbox_id`, `payment_type`, `payment_value`)
- `lootbox_rewards` (`player_identifier`, `lootbox_id`, `redeemed`, `created_at`)
- `lootbox_history` (`buyer_identifier`, `lootbox_id`, `team_id`, `payment_type`, `items_given`, `bought_at`)

### Points integration
- `paintball_players`
- `paintball_teams`

### Season Pass
- `lootbox_saisonpasse`
- `lootbox_saisonpass_rewards`
- `lootbox_saisonpass_challenges`
- `lootbox_saisonpass_user`
- `lootbox_saisonpass_claims`
- `lootbox_saisonpass_logs`

⚠️ Some SQL strings in `server.lua` contain `...` placeholders — replace them with full queries before production.

---

## 🔌 Callbacks / NUI

### Server callbacks
- `ducratif_lootbox:getAllActiveBoxes`
- `ducratif_lootbox:getRewards`
- `ducratif_lootbox:getLootboxHistory`
- `ducratif_lootbox:getTopBuyers`
- `ducratif_lootbox:getSaisonPasse`
- `ducratif_lootbox:claimSaisonReward`

### NUI callbacks (client.lua)
- `refreshLootboxes`, `buyLootbox`, `getRewards`, `claimReward`
- Admin: `adminGetBoxes`, `adminToggleBox`, `adminDeleteBox`, `adminGetLogs`, `adminSaveBox`, `adminGetBoxDetails`, `adminDuplicateBox`
- Season: `ducratif_lootbox:getSaisonPasse`, `ducratif_lootbox:claimSaisonReward`

---

## 🛠️ Troubleshooting

- **Shop won’t open**: ensure resource started, check command/keybind, check `ui_page`.
- **SQL errors**: verify DB connection, create tables, replace `...` placeholders.
- **Admin access**: add your identifier to whitelist.

---

## 🖼️ Banner

Add a banner image at repo root:

- `caisse_shop.png`

---

## 📄 Credits

- Author: **Ducratif**
- Script: **Caisse Shop / ducratif_lootbox**
- Support: https://discord.gg/kpD8pQBBWm
