
--
-- Structure de la table `lootboxes`
--

CREATE TABLE `lootboxes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  `image_url` text NOT NULL,
  `is_random` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `category` varchar(50) DEFAULT 'Autre',
  `tags` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lootboxes`
--

INSERT INTO `lootboxes` (`id`, `name`, `short_description`, `long_description`, `image_url`, `is_random`, `is_active`, `category`, `tags`) VALUES
(3, 'Caisse Fondateur', 'Récompense pour le fondateur', 'Contient des objets pour la participation a l\'evenement', 'https://i.ibb.co/nsT369L4/download.gif', 1, 0, 'Fondateur', '[\"ducratif\",\"fondateur\"]'),
(18, 'Armement AntiZombie', 'Il faut bien s\'armée fasse a la menace !', 'Certaine menace peuvent être plus difficile de d\'autre a éliminé, que cela sois du vivant ou non, votre vie est précieuse non ? Au pire c\'est votre probleme.', 'https://i.ibb.co/GfZM0Z69/key-zombie-5keys.png', 1, 1, 'zombie', '[\"armement\"]'),
(19, 'BoomBoom Zombie', 'Une grenade et pouf les zombies', 'Moi jdit on balance une grenade et piou piou y é mort !', 'https://i.ibb.co/LXPWkH59/key-zombie-10keys.png', 1, 1, 'zombie', '[\"armement\"]'),
(20, '1 Balle 1 Mort', 'Petite arme de point', 'Aller combattre sans arme c\'est du suicide !\nEquipe toi d\'une arme de point et d\'un chargeur pour bien débuté!', 'https://i.ibb.co/twhdDqRm/key-zombie-15keys.png', 1, 1, 'zombie', '[\"armement\",\"munition\"]'),
(21, 'Malette de billets', 'Cool tu a trouver de l\'argent !', 'Cette malette contient une bonne somme d\'argent.', 'https://i.ibb.co/jZ5wFxMM/cash-bundle.png', 1, 1, 'argent', '[]'),
(22, 'Lingot d\'argent -> Money', 'Echange ton lingot d\'argent contre de la money', 'Pratique quand tu es en galere d\'argent, on reprend ton lingot d\'argent et en échange on te donne de la money', 'https://i.ibb.co/N2M2fkzh/argent-bar.png', 1, 1, 'argent', '[\"money\"]'),
(23, 'Lingot d\'or -> Money', 'Super tu a un lingot d\'or ?', 'Echange nous ton lingot d\'or contre de l\'argent.', 'https://i.ibb.co/r869BSf/gold-bar.png', 1, 1, 'argent', '[\"money\"]'),
(24, 'Carte bancaire prépayée', 'Vous avez recu une carte prépayée ?', 'Echange ta Carte bancaire prépayée contre de l\'argent !', 'https://i.ibb.co/SwsQHVKC/bank-card-prepay.png', 1, 1, 'argent', '[\"money\"]'),
(25, 'Boss Zombie', 'Bravo tu a tué le boss des zombies', 'Avec beaucoup d\'effort il faut bien récompenser !\nJe te propose de bonne récompense, profite bien et utilise les bien !', 'https://i.ibb.co/N2CXGZLj/key-zombie-boss.png', 1, 1, 'zombie', '[\"boss\"]'),
(26, 'Starter Pack', 'Parfait pour commencer !', 'Nouvelle aventure, ce qui veux dire que vous avez rien.\nPas de souci a ce faire, on vous aide!', 'https://i.ibb.co/kV8BMkRx/starter-pack.png', 1, 1, 'starter pack', '[]'),
(27, 'Paintball Rookie', 'L’essentiel pour débuter !', 'La caisse idéale pour rejoindre l’arène : medikit, cash, munitions, tout pour un premier run réussi avec ta team.', 'https://i.ibb.co/nMhM3gHx/100.png', 1, 1, 'paintball', '[]'),
(28, 'Paintball Escarmouche', 'Booste ta team pour les premiers combats.', 'Plus de munitions, une grenade BZGAS, un medikit supplémentaire et un joli bonus cash : tout ce qu’il faut pour dominer les premières batailles !', 'https://i.ibb.co/232mgvQ0/250.png', 1, 1, 'paintball', '[]'),
(29, 'Paintball Assaut', 'L’arsenal pour passer à l’offensive.', 'Caisse renforcée contenant grenades, armes, gros paquet de munitions et belle récompense cash. Passe à la vitesse supérieure avec ton équipe !', 'https://i.ibb.co/qM5ykKmS/500.png', 1, 1, 'paintball', '[]'),
(30, 'Paintball Tactique', 'Pour les stratèges du paintball.', 'Un pistolet et des munitions en quantité pour jouer malin, surprendre tes adversaires et retourner la partie à tout moment.', 'https://i.ibb.co/Rk7PndH7/750.png', 1, 1, 'paintball', '[]'),
(31, 'Paintball Prestige', 'Le pack des vrais compétiteurs.', 'Medikit, grenades, carte prépayée exclusive GuerreRP et énorme stock de munitions : tout pour écraser la concurrence sur plusieurs games d’affilée !', 'https://i.ibb.co/v6hP5z8C/1000.png', 1, 1, 'paintball', '[]'),
(32, 'Paintball Élite', 'Le meilleur équipement pour l’élite.', 'Fusil à pompe paintball, boîte de 50 cartouches spéciales, caisse rare à réserver aux teams qui veulent marquer l’histoire du serveur !', 'https://i.ibb.co/1GBsV1kK/1500.png', 1, 1, 'paintball', '[]'),
(33, 'Paintball Légende', 'Récompense ultime des champions.', 'La caisse légendaire, full black & gold : SMG premium, 150 munitions et design unique. Pour les teams qui veulent la gloire… et la victoire éternelle !', 'https://i.ibb.co/S74G5q5C/2500.png', 1, 1, 'paintball', '[]'),
(34, '🎁 Caisse 50', 'Un petit coup de pouce pour bien commencer', 'Cette caisse contient de quoi survivre à une première escarmouche : un medikit pour te soigner, des munitions pour riposter, et un petit billet pour l\'effort.', 'https://i.ibb.co/d05gBm2k/50.png', 1, 1, 'paintball', '[\"personnel\"]'),
(35, '💣 Caisse 150', 'L’explosif entre en scène', 'Prépare-toi à faire du grabuge avec une grenade, un medikit pour encaisser, et assez de munitions pour faire fuir les moins téméraires.', 'https://i.ibb.co/nqg1KPZv/150.png', 1, 1, 'paintball', '[\"personnel\"]'),
(36, '🔫 Caisse 300', 'Premier armement sérieux', 'L’arme de poing fait son entrée : découvre un pistolet prêt à l’emploi, livré directement dans ta caisse pour passer à l’action sans attendre.', 'https://i.ibb.co/rKpZKxsZ/300.png', 1, 1, 'paintball', '[\"personnel\"]'),
(37, '💼 Caisse 500', 'Le pactole personnel', 'Une réserve de munitions, un medikit, et surtout un joli pactole de 5000$ pour te permettre d’investir, recruter ou juste t’amuser avec les moyens.', 'https://i.ibb.co/QjFF6YN6/500.png', 1, 1, 'paintball', '[\"personnel\"]');

-- --------------------------------------------------------

--
-- Structure de la table `lootbox_category_access`
--

CREATE TABLE `lootbox_category_access` (
  `category` varchar(50) DEFAULT NULL,
  `identifier` varchar(259) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lootbox_category_access`
--

INSERT INTO `lootbox_category_access` (`category`, `identifier`) VALUES
('Fondateur', 'char1:cf872e2dbff1cf3152fff72b147ca07238315148'),
('Événement', 'char1:cfx2');

-- --------------------------------------------------------

--
-- Structure de la table `lootbox_contents`
--

CREATE TABLE `lootbox_contents` (
  `id` int(11) NOT NULL,
  `lootbox_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 1,
  `rarity` varchar(20) DEFAULT 'common'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lootbox_contents`
--

INSERT INTO `lootbox_contents` (`id`, `lootbox_id`, `item_name`, `amount`, `rarity`) VALUES
(6, 3, 'WEAPON_ASSAULTRIFLE', 1, 'epic'),
(7, 3, 'ammo-rifle2', 50, 'rare'),
(23, 3, 'WEAPON_ASSAULTRIFLE', 1, 'epic'),
(26, 18, 'WEAPON_BZGAS', 1, 'epic'),
(27, 19, 'WEAPON_GRENADE', 1, 'epic'),
(28, 20, 'WEAPON_PISTOL', 1, 'Epic'),
(29, 20, 'ammo-9', 30, 'Rare'),
(30, 21, 'money', 15000, 'Common'),
(31, 22, 'money', 30000, 'Common'),
(32, 23, 'money', 50000, 'Common'),
(33, 24, 'money', 10000, 'Common'),
(34, 25, 'WEAPON_SMG', 1, 'Epic'),
(35, 25, 'ammo-9', 150, 'Rare'),
(36, 25, 'stimulant_vitesse', 1, 'Legendary'),
(37, 25, 'anti_zombie', 1, 'Legendary'),
(38, 25, 'chiffon', 2, 'Common'),
(39, 25, 'burger', 2, 'Common'),
(40, 25, 'gpsill', 1, 'Rare'),
(41, 25, 'money', 10000, 'Common'),
(42, 26, 'medikit', 1, 'rare'),
(43, 26, 'cash_bundle', 1, 'rare'),
(44, 26, 'water', 2, 'common'),
(45, 26, 'burger', 2, 'common'),
(46, 27, 'medikit', 1, 'Rare'),
(47, 27, 'ammo-9', 30, 'Rare'),
(48, 27, 'money', 500, 'common'),
(49, 28, 'medikit', 2, 'Rare'),
(50, 28, 'WEAPON_BZGAS', 1, 'Epic'),
(51, 28, 'ammo-9', 65, 'Rare'),
(52, 28, 'money', 1250, 'Common'),
(53, 29, 'WEAPON_BZGAS', 2, 'Epic'),
(54, 29, 'WEAPON_GRENADE', 1, 'Epic'),
(55, 29, 'money', 2000, 'Common'),
(56, 29, 'ammo-9', 150, 'Rare'),
(57, 30, 'WEAPON_PISTOL', 1, 'Epic'),
(58, 30, 'ammo-9', 30, 'Rare'),
(59, 31, 'medikit', 4, 'Rare'),
(60, 31, 'WEAPON_BZGAS', 3, 'Rare'),
(61, 31, 'WEAPON_GRENADE', 3, 'Epic'),
(62, 31, 'bank_card_prepay', 1, 'Rare'),
(63, 31, 'ammo-9', 400, 'Rare'),
(64, 32, 'WEAPON_PUMPSHOTGUN', 1, 'Epic'),
(65, 32, 'ammo-shotgun', 50, 'Rare'),
(66, 33, 'WEAPON_SMG', 1, 'Epic'),
(67, 33, 'ammo-9', 150, 'Rare'),
(68, 34, 'medikit', 1, 'common'),
(69, 34, 'ammo-9', 30, 'rare'),
(70, 34, 'money', 500, 'common'),
(71, 35, 'WEAPON_GRENADE', 1, 'epic'),
(72, 35, 'medikit', 1, 'common'),
(73, 35, 'ammo-9', 75, 'rare'),
(74, 36, 'WEAPON_PISTOL', 1, 'Epic'),
(75, 37, 'ammo-9', 250, 'rare'),
(76, 37, 'medikit', 2, 'common'),
(77, 37, 'money', 5000, 'common');

-- --------------------------------------------------------

--
-- Structure de la table `lootbox_history`
--

CREATE TABLE `lootbox_history` (
  `id` int(11) NOT NULL,
  `buyer_identifier` varchar(64) DEFAULT NULL,
  `lootbox_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `items_given` text DEFAULT NULL,
  `bought_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lootbox_history`
--

INSERT INTO `lootbox_history` (`id`, `buyer_identifier`, `lootbox_id`, `team_id`, `payment_type`, `items_given`, `bought_at`) VALUES
(1, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"amount\":5,\"item_name\":\"water\"},{\"amount\":5,\"item_name\":\"bread\"},{\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-08 21:04:53'),
(2, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"amount\":5,\"item_name\":\"water\"},{\"amount\":5,\"item_name\":\"bread\"},{\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-08 21:05:42'),
(3, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"item_name\":\"water\",\"amount\":5},{\"item_name\":\"bread\",\"amount\":5},{\"item_name\":\"bandage\",\"amount\":2}]', '2025-06-08 21:11:37'),
(4, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"amount\":5,\"item_name\":\"water\"},{\"amount\":5,\"item_name\":\"bread\"},{\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-08 21:12:41'),
(5, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"amount\":5,\"item_name\":\"water\"},{\"amount\":5,\"item_name\":\"bread\"},{\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-08 21:15:33'),
(6, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"amount\":5,\"item_name\":\"water\"},{\"amount\":5,\"item_name\":\"bread\"},{\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-08 21:18:41'),
(7, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"item_name\":\"water\",\"amount\":5},{\"item_name\":\"bread\",\"amount\":5},{\"item_name\":\"bandage\",\"amount\":2}]', '2025-06-08 21:19:27'),
(8, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"item_name\":\"water\",\"amount\":5},{\"item_name\":\"bread\",\"amount\":5},{\"item_name\":\"bandage\",\"amount\":2}]', '2025-06-08 21:25:53'),
(9, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 3, NULL, 'item', '[{\"amount\":1,\"item_name\":\"WEAPON_ASSAULTRIFLE\"},{\"amount\":50,\"item_name\":\"ammo-rifle2\"}]', '2025-06-08 21:39:29'),
(10, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 3, NULL, 'item', '[{\"amount\":1,\"item_name\":\"WEAPON_ASSAULTRIFLE\"},{\"amount\":50,\"item_name\":\"ammo-rifle2\"}]', '2025-06-08 21:41:34'),
(11, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 3, NULL, 'item', '[{\"amount\":1,\"item_name\":\"WEAPON_ASSAULTRIFLE\"},{\"amount\":50,\"item_name\":\"ammo-rifle2\"}]', '2025-06-08 21:42:31'),
(12, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"amount\":5,\"item_name\":\"water\"},{\"amount\":5,\"item_name\":\"bread\"},{\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-08 21:42:45'),
(13, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 10, NULL, 'money', '[{\"amount\":5000,\"item_name\":\"money\"},{\"amount\":1,\"item_name\":\"phone\"}]', '2025-06-09 07:57:41'),
(14, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 10, NULL, 'player_points', '[{\"amount\":100000,\"item_name\":\"money\"},{\"amount\":1,\"item_name\":\"phone\"}]', '2025-06-09 19:11:09'),
(15, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 19:12:07'),
(16, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 19:40:14'),
(17, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 19:40:53'),
(18, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 19:41:13'),
(19, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 20:07:48'),
(20, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 20:11:03'),
(21, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 20:12:19'),
(22, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 20:13:47'),
(23, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 20:16:16'),
(24, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 20:16:29'),
(25, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 20:16:45'),
(26, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 20:16:58'),
(27, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 20:18:52'),
(28, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 10, NULL, 'money', '[{\"amount\":100000,\"item_name\":\"money\"},{\"amount\":1,\"item_name\":\"phone\"}]', '2025-06-09 20:19:49'),
(29, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 10, NULL, 'money', '[{\"amount\":100000,\"item_name\":\"money\"},{\"amount\":1,\"item_name\":\"phone\"}]', '2025-06-09 20:20:29'),
(30, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 10, NULL, 'money', '[{\"item_name\":\"money\",\"amount\":100000},{\"item_name\":\"phone\",\"amount\":1}]', '2025-06-09 20:25:49'),
(31, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 10, NULL, 'money', '[{\"amount\":100000,\"item_name\":\"money\"},{\"amount\":1,\"item_name\":\"phone\"}]', '2025-06-09 20:34:10'),
(32, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 12, NULL, 'player_points', '[{\"amount\":1,\"item_name\":\"phone\"}]', '2025-06-09 20:35:56'),
(33, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 12, NULL, 'player_points', '[{\"amount\":1,\"item_name\":\"phone\"}]', '2025-06-09 20:36:09'),
(34, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 12, NULL, 'player_points', '[{\"amount\":1,\"item_name\":\"phone\"}]', '2025-06-09 20:37:46'),
(35, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 20:38:37'),
(36, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 12, NULL, 'player_points', '[{\"amount\":1,\"item_name\":\"phone\"}]', '2025-06-09 20:39:11'),
(37, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"amount\":5,\"item_name\":\"water\"},{\"amount\":5,\"item_name\":\"bread\"},{\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-09 20:39:37'),
(38, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 13, NULL, 'item', '[{\"amount\":1,\"item_name\":\"stimulant_vitesse\"}]', '2025-06-09 21:07:06'),
(39, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 12, NULL, 'player_points', '[{\"amount\":1,\"item_name\":\"phone\"}]', '2025-06-09 21:09:34'),
(40, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-09 21:10:06'),
(41, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 3, NULL, 'item', '[{\"amount\":1,\"item_name\":\"WEAPON_ASSAULTRIFLE\"},{\"amount\":50,\"item_name\":\"ammo-rifle2\"}]', '2025-06-09 21:11:06'),
(42, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"amount\":5,\"item_name\":\"water\"},{\"amount\":5,\"item_name\":\"bread\"},{\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-10 20:58:14'),
(43, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-10 21:00:23'),
(44, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 12, NULL, 'player_points', '[{\"amount\":1,\"item_name\":\"phone\"}]', '2025-06-10 21:02:20'),
(45, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 3, NULL, 'item', '[{\"amount\":1,\"item_name\":\"WEAPON_ASSAULTRIFLE\"},{\"amount\":50,\"item_name\":\"ammo-rifle2\"}]', '2025-06-10 21:02:58'),
(46, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 15, NULL, 'item', '[{\"amount\":500000,\"item_name\":\"money\"}]', '2025-06-10 21:07:18'),
(47, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 12, NULL, 'player_points', '[{\"amount\":1,\"item_name\":\"phone\"}]', '2025-06-10 21:19:05'),
(48, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 12, NULL, 'player_points', '[{\"amount\":1,\"item_name\":\"phone\"}]', '2025-06-11 21:32:16'),
(49, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 20, 'team_points', 'Récompense différée', '2025-06-11 21:36:00'),
(50, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, NULL, 'money', '[{\"amount\":5,\"item_name\":\"water\"},{\"amount\":5,\"item_name\":\"bread\"},{\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-11 21:37:54'),
(51, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 3, NULL, 'money', '[{\"amount\":1,\"item_name\":\"WEAPON_ASSAULTRIFLE\"},{\"amount\":50,\"item_name\":\"ammo-rifle2\"}]', '2025-06-11 21:46:34'),
(52, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 3, NULL, 'item', '[{\"amount\":1,\"item_name\":\"WEAPON_ASSAULTRIFLE\"},{\"amount\":50,\"item_name\":\"ammo-rifle2\"}]', '2025-06-11 22:26:10'),
(53, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"amount\":5,\"item_name\":\"water\"},{\"amount\":5,\"item_name\":\"bread\"},{\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-15 13:22:37'),
(54, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"item_name\":\"water\",\"amount\":5},{\"item_name\":\"bread\",\"amount\":5},{\"item_name\":\"bandage\",\"amount\":2}]', '2025-06-15 13:33:04'),
(55, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"amount\":5,\"item_name\":\"water\"},{\"amount\":5,\"item_name\":\"bread\"},{\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-15 13:37:29'),
(56, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"item_name\":\"water\",\"amount\":5},{\"item_name\":\"bread\",\"amount\":5},{\"item_name\":\"bandage\",\"amount\":2}]', '2025-06-15 13:39:35'),
(57, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"item_name\":\"water\",\"amount\":5},{\"item_name\":\"bread\",\"amount\":5},{\"item_name\":\"bandage\",\"amount\":2}]', '2025-06-15 13:43:03'),
(58, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"amount\":5,\"item_name\":\"water\"},{\"amount\":5,\"item_name\":\"bread\"},{\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-15 13:52:50'),
(59, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 3, NULL, 'money', '[{\"item_name\":\"WEAPON_ASSAULTRIFLE\",\"amount\":1},{\"item_name\":\"ammo-rifle2\",\"amount\":50}]', '2025-06-15 14:45:30'),
(60, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"item_name\":\"water\",\"amount\":5},{\"item_name\":\"bread\",\"amount\":5},{\"item_name\":\"bandage\",\"amount\":2}]', '2025-06-15 14:45:47'),
(61, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"item_name\":\"water\",\"amount\":5},{\"item_name\":\"bread\",\"amount\":5},{\"item_name\":\"bandage\",\"amount\":2}]', '2025-06-15 18:45:43'),
(62, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 16, NULL, 'money', '[{\"item_name\":\"money\",\"amount\":500}]', '2025-06-15 18:45:54'),
(63, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"item_name\":\"water\",\"amount\":5,\"rarity\":\"common\"},{\"item_name\":\"bread\",\"amount\":5,\"rarity\":\"common\"},{\"item_name\":\"bandage\",\"amount\":2,\"rarity\":\"rare\"}]', '2025-06-15 18:46:29'),
(64, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 16, NULL, 'money', '[{\"item_name\":\"money\",\"amount\":500,\"rarity\":\"legendaire\"}]', '2025-06-15 18:46:39'),
(65, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, NULL, 'money', '[{\"item_name\":\"water\",\"amount\":5,\"rarity\":\"common\"},{\"item_name\":\"bread\",\"amount\":5,\"rarity\":\"common\"},{\"item_name\":\"bandage\",\"amount\":2,\"rarity\":\"rare\"}]', '2025-06-15 18:48:30'),
(66, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, NULL, 'money', '[{\"rarity\":\"common\",\"amount\":5,\"item_name\":\"water\"},{\"rarity\":\"common\",\"amount\":5,\"item_name\":\"bread\"},{\"rarity\":\"rare\",\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-15 19:33:23'),
(67, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, NULL, 'money', '[{\"rarity\":\"common\",\"amount\":5,\"item_name\":\"water\"},{\"rarity\":\"common\",\"amount\":5,\"item_name\":\"bread\"},{\"rarity\":\"rare\",\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-15 19:33:54'),
(68, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, NULL, 'money', '[{\"rarity\":\"common\",\"amount\":5,\"item_name\":\"water\"},{\"rarity\":\"common\",\"amount\":5,\"item_name\":\"bread\"},{\"rarity\":\"rare\",\"amount\":2,\"item_name\":\"bandage\"}]', '2025-06-15 19:34:23'),
(69, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 16, NULL, 'money', '[{\"rarity\":\"legendaire\",\"amount\":500,\"item_name\":\"money\"}]', '2025-06-15 20:58:43'),
(70, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 16, NULL, 'money', '[{\"item_name\":\"money\",\"amount\":500,\"rarity\":\"legendaire\"}]', '2025-06-22 21:51:52'),
(71, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, NULL, 'money', '[{\"item_name\":\"water\",\"amount\":5,\"rarity\":\"common\"},{\"item_name\":\"bread\",\"amount\":5,\"rarity\":\"common\"},{\"item_name\":\"bandage\",\"amount\":2,\"rarity\":\"rare\"}]', '2025-06-22 21:52:07'),
(72, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 3, NULL, 'money', '[{\"rarity\":\"epic\",\"item_name\":\"WEAPON_ASSAULTRIFLE\",\"amount\":1},{\"rarity\":\"rare\",\"item_name\":\"ammo-rifle2\",\"amount\":50},{\"rarity\":\"epic\",\"item_name\":\"WEAPON_ASSAULTRIFLE\",\"amount\":1}]', '2025-06-30 18:33:21'),
(73, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 17, NULL, 'item', '[{\"rarity\":\"rare\",\"item_name\":\"money\",\"amount\":500}]', '2025-06-30 18:37:35'),
(74, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 17, NULL, 'item', '[{\"rarity\":\"rare\",\"item_name\":\"money\",\"amount\":500}]', '2025-06-30 18:37:38'),
(75, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 16, NULL, 'money', '[{\"rarity\":\"legendaire\",\"item_name\":\"money\",\"amount\":500}]', '2025-06-30 18:40:35'),
(76, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 1, NULL, 'money', '[{\"rarity\":\"common\",\"item_name\":\"water\",\"amount\":5},{\"rarity\":\"common\",\"item_name\":\"bread\",\"amount\":5},{\"rarity\":\"rare\",\"item_name\":\"bandage\",\"amount\":2}]', '2025-06-30 18:40:43');

-- --------------------------------------------------------

--
-- Structure de la table `lootbox_payments`
--

CREATE TABLE `lootbox_payments` (
  `id` int(11) NOT NULL,
  `lootbox_id` int(11) NOT NULL,
  `payment_type` enum('money','item','player_points','team_points') NOT NULL,
  `payment_value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lootbox_payments`
--

INSERT INTO `lootbox_payments` (`id`, `lootbox_id`, `payment_type`, `payment_value`) VALUES
(3, 3, 'item', 'key_zombie_boss'),
(16, 3, 'money', '100000'),
(19, 18, 'item', 'key_zombie'),
(20, 19, 'item', 'key_zombie2'),
(21, 20, 'item', 'key_zombie3'),
(22, 21, 'item', 'cash_bundle'),
(23, 22, 'item', 'argent_bar'),
(24, 23, 'item', 'gold_bar'),
(25, 24, 'item', 'bank_card_prepay'),
(26, 25, 'item', 'key_zombie_boss'),
(27, 26, 'item', 'start_pack'),
(28, 27, 'team_points', '100'),
(29, 28, 'team_points', '250'),
(30, 29, 'team_points', '500'),
(31, 30, 'team_points', '750'),
(32, 31, 'team_points', '1000'),
(33, 32, 'team_points', '1500'),
(34, 33, 'team_points', '2500'),
(35, 34, 'player_points', '50'),
(36, 35, 'player_points', '150'),
(37, 36, 'player_points', '300'),
(38, 37, 'player_points', '500');

-- --------------------------------------------------------

--
-- Structure de la table `lootbox_rewards`
--

CREATE TABLE `lootbox_rewards` (
  `id` int(11) NOT NULL,
  `player_identifier` varchar(64) DEFAULT NULL,
  `lootbox_id` int(11) DEFAULT NULL,
  `redeemed` tinyint(1) DEFAULT 0,
  `granted_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lootbox_rewards`
--

INSERT INTO `lootbox_rewards` (`id`, `player_identifier`, `lootbox_id`, `redeemed`, `granted_at`) VALUES
(18, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 3, 1, '2025-06-10 17:54:39'),
(19, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 1, '2025-06-10 17:55:41'),
(20, 'char2:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 0, '2025-06-10 17:55:51'),
(21, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 12, 1, '2025-06-10 18:15:39'),
(22, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 1, '2025-06-10 20:55:40'),
(23, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 1, '2025-06-10 21:00:23'),
(24, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 15, 1, '2025-06-10 21:07:45'),
(25, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 1, '2025-06-10 21:10:40'),
(26, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 11, 1, '2025-06-11 21:36:00'),
(27, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 11, 1, '2025-06-11 21:36:00'),
(28, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 3, 1, '2025-06-11 21:40:58'),
(29, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 1, 0, '2025-06-30 18:43:27'),
(30, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 34, 0, '2025-07-13 17:46:44');

-- --------------------------------------------------------

--
-- Structure de la table `lootbox_saisonpasse`
--

CREATE TABLE `lootbox_saisonpasse` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `max_level` int(11) NOT NULL DEFAULT 10,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lootbox_saisonpasse`
--

INSERT INTO `lootbox_saisonpasse` (`id`, `name`, `description`, `max_level`, `start_date`, `end_date`) VALUES
(4, 'Saison 1: Le commencement', 'Le début d\'une aventure !', 20, '2025-07-13 00:00:00', '2025-09-13 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `lootbox_saisonpass_challenges`
--

CREATE TABLE `lootbox_saisonpass_challenges` (
  `id` int(11) NOT NULL,
  `key` varchar(100) NOT NULL,
  `label` varchar(255) NOT NULL,
  `type` enum('kill','playtime','action','buy_item','change_clothes','get_tempjob','talk_pnj','market') NOT NULL,
  `data` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lootbox_saisonpass_challenges`
--

INSERT INTO `lootbox_saisonpass_challenges` (`id`, `key`, `label`, `type`, `data`) VALUES
(1, 'kill_player', 'Tuer un joueur', 'kill', '1'),
(2, 'play_minute', 'Jouer 10 minute', 'playtime', '1'),
(3, 'open_lootbox', 'Ouvrir une caisse', 'action', '1'),
(4, 'kill_10player', 'Tuer 10 Joueurs', 'kill', '10'),
(5, 'visit_zone1', 'Visiter la zone Apocalypse !', 'action', '1'),
(6, 'walk_km', 'Parcourir 1 kilomètres à pied', 'action', '1000'),
(7, 'drive_km', 'Parcourir 1 kilomètres en véhicule', 'action', '1000'),
(8, 'open_lootbox_1', 'Ouvrir la caisse Starter Pack', 'action', '1'),
(9, 'have_item_1', 'Avoir un téléphone sur soi', 'action', '1'),
(10, 'have_item_2', 'Avoir de l\'eau sur soi', 'action', '2'),
(11, 'find_epic_loot', 'Trouver un objet épique dans une caisse', 'action', '3'),
(12, 'find_rare_loot', 'Trouver un objet rare dans une caisse', 'action', '2'),
(13, 'find_common_loot', 'Trouver un objet Commun dans une caisse', 'action', '1'),
(14, 'find_legendaire_loot', 'Trouver un objet legendaire dans une caisse', 'action', '4'),
(15, 'enter_adder', 'Monter dans une Adder', 'action', '1'),
(16, 'drive_adder_1km', 'Parcourir 1km avec une Adder', 'action', '1'),
(17, 'stay_zone_1', 'Rester 1min dans la zone PaintBall', 'action', '1'),
(18, 'acheter_item_boutique', 'Faire un achat dans une boutique', 'buy_item', '1'),
(19, 'change_vetement', 'Changer de tenue dans un magasin', 'change_clothes', '1'),
(20, 'get_tempjob', 'Devenir ChauffeurPL ou Pecheur', 'get_tempjob', '1'),
(21, 'talk_vieux_port', 'Parler au vieux du port', 'talk_pnj', '1'),
(22, 'talk_vendeur_armes', 'Parler au vendeur louche', 'talk_pnj', '1'),
(23, 'market_create', 'Créer une annonce sur le Market', 'market', '1'),
(24, 'market_delete', 'Supprimer une annonce sur le Market', 'market', '1'),
(25, 'market_buy', 'Acheter un objet sur le Market', 'market', '1'),
(26, 'market_sell', 'Vendre un objet sur le Market', 'market', '1');

-- --------------------------------------------------------

--
-- Structure de la table `lootbox_saisonpass_claims`
--

CREATE TABLE `lootbox_saisonpass_claims` (
  `id` int(11) NOT NULL,
  `identifier` varchar(259) DEFAULT NULL,
  `saison_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lootbox_saisonpass_claims`
--

INSERT INTO `lootbox_saisonpass_claims` (`id`, `identifier`, `saison_id`, `level`) VALUES
(42, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 1, 1),
(3, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 1),
(4, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 2),
(5, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 3),
(6, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 4),
(7, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 5),
(8, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 6),
(9, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 7),
(10, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 8),
(11, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 9),
(12, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 10),
(13, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 11),
(14, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 12),
(15, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 13),
(16, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 14),
(18, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 15),
(19, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 16),
(20, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 17),
(21, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 18),
(22, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 19),
(23, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 20),
(30, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 21),
(31, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 22),
(32, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 23),
(33, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 24),
(34, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 25),
(35, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 26),
(36, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 27),
(37, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 28),
(38, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 29),
(39, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 30),
(40, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 31),
(41, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 32),
(43, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 33),
(17, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 1),
(24, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 2),
(25, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 3),
(26, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 4),
(27, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 5),
(28, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 6),
(29, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 7);

-- --------------------------------------------------------

--
-- Structure de la table `lootbox_saisonpass_logs`
--

CREATE TABLE `lootbox_saisonpass_logs` (
  `id` int(11) NOT NULL,
  `identifier` varchar(259) DEFAULT NULL,
  `saison_id` int(11) DEFAULT NULL,
  `event` varchar(100) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lootbox_saisonpass_logs`
--

INSERT INTO `lootbox_saisonpass_logs` (`id`, `identifier`, `saison_id`, `event`, `details`, `timestamp`) VALUES
(1, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : play_minute → Niveau 1', '2025-06-12 22:55:57'),
(2, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : play_minute → Niveau 2', '2025-06-12 22:58:26'),
(3, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 1 (money x500)', '2025-06-12 23:49:50'),
(4, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 2 (phone x1)', '2025-06-13 00:13:44'),
(5, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : play_minute → Niveau 1', '2025-06-13 00:35:43'),
(7, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 2, 'progression', 'Défi validé : play_minute → Niveau 1', '2025-06-12 22:55:57'),
(8, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 1 (phone x1)', '2025-06-15 13:15:07'),
(9, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : open_lootbox → Niveau 2', '2025-06-15 13:22:37'),
(10, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 2 (money x500)', '2025-06-15 13:22:43'),
(11, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : open_lootbox → Niveau 3', '2025-06-15 13:33:04'),
(12, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 3 (money x8000)', '2025-06-15 13:34:16'),
(13, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : open_lootbox → Niveau 4', '2025-06-15 13:37:29'),
(14, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 4 (money x20000)', '2025-06-15 13:37:36'),
(15, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : open_lootbox → Niveau 5', '2025-06-15 13:39:35'),
(16, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 5 (money x1)', '2025-06-15 13:39:38'),
(17, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : open_lootbox → Niveau 6', '2025-06-15 13:43:03'),
(18, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 6 (money x1)', '2025-06-15 13:43:10'),
(19, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : open_lootbox → Niveau 7', '2025-06-15 13:52:50'),
(20, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 7 (money x1)', '2025-06-15 13:52:53'),
(21, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : visit_zone1 → Niveau 8', '2025-06-15 14:14:29'),
(22, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : drive_km → Niveau 9', '2025-06-15 14:32:25'),
(23, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 8 (money x500)', '2025-06-15 14:32:42'),
(24, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 9 (key_zombie x1)', '2025-06-15 14:33:03'),
(25, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : open_lootbox_1 → Niveau 10', '2025-06-15 14:45:47'),
(26, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 10 (money x500)', '2025-06-15 15:03:20'),
(27, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : have_item_1 → Niveau 11', '2025-06-15 15:12:38'),
(28, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 11 (money x1000)', '2025-06-15 15:12:54'),
(29, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : have_item_2 → Niveau 12', '2025-06-15 15:15:29'),
(30, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 12 (money x1000)', '2025-06-15 15:18:32'),
(31, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : have_item_1 → Niveau 13', '2025-06-15 15:18:51'),
(32, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 13 (money x100)', '2025-06-15 15:18:58'),
(33, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : have_item_2 → Niveau 14', '2025-06-15 15:21:08'),
(34, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 14 (money x1)', '2025-06-15 15:21:18'),
(35, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'progression', 'Défi validé : play_minute → Niveau 1', '2025-06-15 17:41:55'),
(36, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'claim', 'Level 1 (phone x1)', '2025-06-15 17:42:08'),
(37, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : find_legendaire_loot → Niveau 15', '2025-06-15 18:46:39'),
(38, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 15 (money x15000)', '2025-06-15 18:48:17'),
(39, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : find_common_loot → Niveau 16', '2025-06-15 18:48:30'),
(40, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 16 (money x5000)', '2025-06-15 18:48:41'),
(41, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : enter_adder → Niveau 17', '2025-06-15 18:56:04'),
(42, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 17 (money x1)', '2025-06-15 18:56:14'),
(43, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : drive_adder_1km → Niveau 18', '2025-06-15 19:02:17'),
(44, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 18 (money x500000)', '2025-06-15 19:04:45'),
(45, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : drive_adder_1km → Niveau 19', '2025-06-15 19:04:57'),
(46, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 19 (money x500)', '2025-06-15 19:07:00'),
(47, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : drive_adder_1km → Niveau 20', '2025-06-15 19:25:15'),
(48, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 20 (money x500)', '2025-06-15 19:26:54'),
(49, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'progression', 'Défi validé : open_lootbox → Niveau 2', '2025-06-15 19:33:23'),
(50, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'progression', 'Défi validé : open_lootbox → Niveau 3', '2025-06-15 19:33:23'),
(51, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'claim', 'Level 2 (money x500)', '2025-06-15 19:33:35'),
(52, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'claim', 'Level 3 (money x8000)', '2025-06-15 19:33:42'),
(53, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'progression', 'Défi validé : open_lootbox → Niveau 4', '2025-06-15 19:33:54'),
(54, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'progression', 'Défi validé : open_lootbox → Niveau 5', '2025-06-15 19:33:54'),
(55, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'claim', 'Level 4 (money x20000)', '2025-06-15 19:33:59'),
(56, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'claim', 'Level 5 (money x1)', '2025-06-15 19:34:03'),
(57, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'progression', 'Défi validé : open_lootbox → Niveau 6', '2025-06-15 19:34:23'),
(58, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'progression', 'Défi validé : open_lootbox → Niveau 7', '2025-06-15 19:34:23'),
(59, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'claim', 'Level 6 (money x1)', '2025-06-15 19:34:29'),
(60, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 1, 'claim', 'Level 7 (money x1)', '2025-06-15 19:34:33'),
(61, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : drive_adder_1km → Niveau 21', '2025-06-15 20:57:22'),
(62, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 21 (money x500)', '2025-06-15 20:57:43'),
(63, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : find_legendaire_loot → Niveau 22', '2025-06-15 20:58:43'),
(64, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 22 (money x500)', '2025-06-15 20:59:00'),
(65, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : acheter_item_boutique → Niveau 23', '2025-06-16 14:57:21'),
(66, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 23 (money x800)', '2025-06-16 14:57:38'),
(67, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : acheter_item_boutique → Niveau 24', '2025-06-16 14:59:30'),
(68, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 24 (money x1)', '2025-06-16 14:59:41'),
(69, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : change_vetement → Niveau 25', '2025-06-16 15:31:45'),
(70, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 25 (money x800)', '2025-06-16 15:31:59'),
(71, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : change_vetement → Niveau 26', '2025-06-16 15:36:50'),
(72, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 26 (money x1)', '2025-06-16 15:37:03'),
(73, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : get_tempjob → Niveau 27', '2025-06-16 15:59:49'),
(74, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 27 (money x1)', '2025-06-16 15:59:56'),
(75, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : talk_vendeur_armes → Niveau 28', '2025-06-16 16:21:11'),
(76, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 28 (money x500)', '2025-06-16 16:21:17'),
(77, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : talk_vieux_port → Niveau 29', '2025-06-16 16:23:06'),
(78, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 29 (money x1)', '2025-06-16 16:23:12'),
(79, 'char1:bedf2b4e6b0bc3a5be58bb96bbaf28c595b67177', 1, 'progression', 'Défi validé : play_minute → Niveau 1', '2025-06-22 16:44:26'),
(80, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : market_create → Niveau 30', '2025-06-30 16:56:27'),
(81, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 30 (money x1)', '2025-06-30 16:56:42'),
(82, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : market_delete → Niveau 31', '2025-06-30 16:57:04'),
(83, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 31 (money x1)', '2025-06-30 16:57:18'),
(84, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : market_buy → Niveau 32', '2025-06-30 16:58:05'),
(85, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 32 (money x1)', '2025-06-30 16:58:18'),
(86, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'progression', 'Défi validé : market_sell → Niveau 33', '2025-06-30 18:04:22'),
(87, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 1, 'progression', 'Défi validé : play_minute → Niveau 1', '2025-06-30 18:07:09'),
(88, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 1, 'progression', 'Défi validé : open_lootbox → Niveau 2', '2025-06-30 18:33:21'),
(89, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 1, 'progression', 'Défi validé : open_lootbox → Niveau 3', '2025-06-30 18:33:21'),
(90, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 1, 'progression', 'Défi validé : open_lootbox → Niveau 4', '2025-06-30 18:37:35'),
(91, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 1, 'progression', 'Défi validé : open_lootbox → Niveau 5', '2025-06-30 18:37:35'),
(92, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 1, 'claim', 'Level 1 (phone x1)', '2025-06-30 18:39:43'),
(93, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 1, 'progression', 'Défi validé : open_lootbox → Niveau 6', '2025-06-30 18:40:35'),
(94, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 1, 'progression', 'Défi validé : open_lootbox → Niveau 7', '2025-06-30 18:40:35'),
(95, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 1, 'claim', 'Level 33 (money x1)', '2025-07-06 17:21:47');

-- --------------------------------------------------------

--
-- Structure de la table `lootbox_saisonpass_rewards`
--

CREATE TABLE `lootbox_saisonpass_rewards` (
  `id` int(11) NOT NULL,
  `saison_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `reward_type` enum('item','money','points') NOT NULL,
  `reward_value` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 1,
  `challenge_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lootbox_saisonpass_rewards`
--

INSERT INTO `lootbox_saisonpass_rewards` (`id`, `saison_id`, `level`, `label`, `reward_type`, `reward_value`, `amount`, `challenge_key`) VALUES
(39, 4, 1, '50$ en liquide', 'money', 'money', 50, 'kill_player'),
(40, 4, 2, 'Un bon Burger', 'item', 'burger', 1, 'play_minute'),
(41, 4, 3, '150$ en liquide', 'money', 'money', 150, 'open_lootbox'),
(42, 4, 4, '50 point personnel', 'points', 'player_points', 50, 'market_create'),
(43, 4, 5, '1 Vélo pour le tour de France', 'item', 'velo', 1, 'talk_vieux_port'),
(44, 4, 6, '5 Bouteille d\'eau de source', 'item', 'water', 5, 'have_item_2'),
(45, 4, 7, '1000$ en liquide', 'money', 'money', 1000, 'have_item_1'),
(46, 4, 8, '1 caisse Starter Pack', 'item', 'start_pack', 1, 'enter_adder'),
(47, 4, 9, '50 Jeton', 'item', 'jeton', 50, 'change_vetement'),
(48, 4, 10, '500$ en liquide', 'money', 'money', 500, 'acheter_item_boutique'),
(49, 4, 11, '1 clé de zombie', 'item', 'key_zombie', 1, 'market_delete'),
(50, 4, 12, '5 Burger pour grossir', 'item', 'burger', 5, 'market_buy'),
(51, 4, 13, '100 Point personnel', 'points', 'player_points', 100, 'market_sell'),
(52, 4, 14, 'Une mallette d\'argent', 'item', 'cash_bundle', 1, 'talk_vendeur_armes'),
(53, 4, 15, '50 Point de team', 'points', 'team_points', 50, 'get_tempjob'),
(54, 4, 16, '30 Munition 9Mn', 'item', 'ammo-9', 30, 'open_lootbox_1'),
(55, 4, 17, 'Clé de zombie Niveau 2', 'item', 'key_zombie2', 1, 'visit_zone1'),
(56, 4, 18, '80 Jeton', 'item', 'jeton', 80, 'drive_km'),
(57, 4, 19, 'Une carte prépayée', 'item', 'bank_card_prepay', 1, 'walk_km'),
(58, 4, 20, '2000$ en liquide', 'money', 'money', 2000, 'find_common_loot');

-- --------------------------------------------------------

--
-- Structure de la table `lootbox_saisonpass_user`
--

CREATE TABLE `lootbox_saisonpass_user` (
  `id` int(11) NOT NULL,
  `identifier` varchar(259) DEFAULT NULL,
  `saison_id` int(11) NOT NULL,
  `current_level` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lootbox_saisonpass_user`
--

INSERT INTO `lootbox_saisonpass_user` (`id`, `identifier`, `saison_id`, `current_level`) VALUES
(5, 'char1:cf872e2dbff1cf3152fff72b147ca07238315148', 4, 0),
(6, 'char1:d621787821b7be9712dd11873dc3decca533bf6a', 4, 0),
(7, 'char1:2e598f707aea8f476eac986e4b4004ea10e8bc5e', 4, 0),
(8, 'char1:2bf7bb148f0f54b434ac370cab06e592866df450', 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `lootbox_saisonpass_zones`
--

CREATE TABLE `lootbox_saisonpass_zones` (
  `id` int(11) NOT NULL,
  `data` int(11) NOT NULL,
  `coords` varchar(50) NOT NULL,
  `radius` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lootbox_saisonpass_zones`
--

INSERT INTO `lootbox_saisonpass_zones` (`id`, `data`, `coords`, `radius`, `time`) VALUES
(1, 1, '-1827.6046,-777.6716,8.0848', 200, 10);

-- --------------------------------------------------------


--
-- Index pour la table `lootboxes`
--
ALTER TABLE `lootboxes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lootbox_contents`
--
ALTER TABLE `lootbox_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lootbox_id` (`lootbox_id`);

--
-- Index pour la table `lootbox_history`
--
ALTER TABLE `lootbox_history`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lootbox_payments`
--
ALTER TABLE `lootbox_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lootbox_id` (`lootbox_id`);

--
-- Index pour la table `lootbox_rewards`
--
ALTER TABLE `lootbox_rewards`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lootbox_saisonpasse`
--
ALTER TABLE `lootbox_saisonpasse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lootbox_saisonpass_challenges`
--
ALTER TABLE `lootbox_saisonpass_challenges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Index pour la table `lootbox_saisonpass_claims`
--
ALTER TABLE `lootbox_saisonpass_claims`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_claim` (`identifier`,`saison_id`,`level`);

--
-- Index pour la table `lootbox_saisonpass_logs`
--
ALTER TABLE `lootbox_saisonpass_logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lootbox_saisonpass_rewards`
--
ALTER TABLE `lootbox_saisonpass_rewards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saison_id` (`saison_id`);

--
-- Index pour la table `lootbox_saisonpass_user`
--
ALTER TABLE `lootbox_saisonpass_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saison_id` (`saison_id`);

--
-- Index pour la table `lootbox_saisonpass_zones`
--
ALTER TABLE `lootbox_saisonpass_zones`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT pour la table `lootboxes`
--
ALTER TABLE `lootboxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `lootbox_contents`
--
ALTER TABLE `lootbox_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT pour la table `lootbox_history`
--
ALTER TABLE `lootbox_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `lootbox_payments`
--
ALTER TABLE `lootbox_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `lootbox_rewards`
--
ALTER TABLE `lootbox_rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `lootbox_saisonpasse`
--
ALTER TABLE `lootbox_saisonpasse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `lootbox_saisonpass_challenges`
--
ALTER TABLE `lootbox_saisonpass_challenges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `lootbox_saisonpass_claims`
--
ALTER TABLE `lootbox_saisonpass_claims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `lootbox_saisonpass_logs`
--
ALTER TABLE `lootbox_saisonpass_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT pour la table `lootbox_saisonpass_rewards`
--
ALTER TABLE `lootbox_saisonpass_rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `lootbox_saisonpass_user`
--
ALTER TABLE `lootbox_saisonpass_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `lootbox_saisonpass_zones`
--
ALTER TABLE `lootbox_saisonpass_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


--
-- Contraintes pour la table `lootbox_contents`
--
ALTER TABLE `lootbox_contents`
  ADD CONSTRAINT `lootbox_contents_ibfk_1` FOREIGN KEY (`lootbox_id`) REFERENCES `lootboxes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `lootbox_payments`
--
ALTER TABLE `lootbox_payments`
  ADD CONSTRAINT `lootbox_payments_ibfk_1` FOREIGN KEY (`lootbox_id`) REFERENCES `lootboxes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `lootbox_saisonpass_rewards`
--
ALTER TABLE `lootbox_saisonpass_rewards`
  ADD CONSTRAINT `lootbox_saisonpass_rewards_ibfk_1` FOREIGN KEY (`saison_id`) REFERENCES `lootbox_saisonpasse` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `lootbox_saisonpass_user`
--
ALTER TABLE `lootbox_saisonpass_user`
  ADD CONSTRAINT `lootbox_saisonpass_user_ibfk_1` FOREIGN KEY (`saison_id`) REFERENCES `lootbox_saisonpasse` (`id`) ON DELETE CASCADE;
