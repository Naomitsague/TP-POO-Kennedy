-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 09 avr. 2025 à 12:12
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tp2`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages_revendication`
--

CREATE TABLE `messages_revendication` (
  `id` int(11) NOT NULL,
  `objet_id` int(11) DEFAULT NULL,
  `proprietaire_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `objets`
--

CREATE TABLE `objets` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `proprietaire_id` int(11) DEFAULT NULL,
  `date_vol` date NOT NULL,
  `lieu_vol` varchar(255) NOT NULL,
  `numero_serie` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `objets`
--

INSERT INTO `objets` (`id`, `nom`, `description`, `proprietaire_id`, `date_vol`, `lieu_vol`, `numero_serie`) VALUES
(7, 'Tecno Spark 7', 'ecno Spark 7 est un smartphone abordable équipé d\'un écran de 6,5 pouces HD+ et alimenté par un processeur MediaTek Helio A25, offrant des performances décentes pour les tâches quotidiennes. Il dispose de 2 à 3 Go de RAM et d\'un stockage interne de 32 à 64 Go, extensible via microSD. En matière de photographie, il possède une caméra arrière de 16 mégapixels et une caméra frontale de 8 mégapixels, idéales pour les selfies. Sa batterie de 6000 mAh garantit une excellente autonomie, tandis que le système d\'exploitation HiOS, basé sur Android, apporte des fonctionnalités personnalisées. Avec une connectivité 4G et un design moderne, le Tecno Spark 7 est un choix judicieux pour ceux qui recherchent un smartphone fiable à un prix abordable.', 15, '2025-02-14', 'bonas', '32'),
(8, 'Vélo', 'Rouge, bon état', 15, '2023-04-10', 'melen ', 'VN123456'),
(9, 'Montre', 'Rolex volée', 15, '2024-04-16', 'Centre commercial\'', 'ROLEX12345');

-- --------------------------------------------------------

--
-- Structure de la table `proprietaires`
--

CREATE TABLE `proprietaires` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `proprietaires`
--

INSERT INTO `proprietaires` (`id`, `nom`, `email`, `password`) VALUES
(12, 'yollandag', ' 	yollandaglory@gmail.com', '65777'),
(15, 'tagne', 'tagne@gmail.com', '5232'),
(16, 'alice', 'alice@gmail.com', '5231');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `messages_revendication`
--
ALTER TABLE `messages_revendication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `objet_id` (`objet_id`),
  ADD KEY `proprietaire_id` (`proprietaire_id`);

--
-- Index pour la table `objets`
--
ALTER TABLE `objets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proprietaire_id` (`proprietaire_id`);

--
-- Index pour la table `proprietaires`
--
ALTER TABLE `proprietaires`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messages_revendication`
--
ALTER TABLE `messages_revendication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `objets`
--
ALTER TABLE `objets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `proprietaires`
--
ALTER TABLE `proprietaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `messages_revendication`
--
ALTER TABLE `messages_revendication`
  ADD CONSTRAINT `messages_revendication_ibfk_1` FOREIGN KEY (`objet_id`) REFERENCES `objets` (`id`),
  ADD CONSTRAINT `messages_revendication_ibfk_2` FOREIGN KEY (`proprietaire_id`) REFERENCES `proprietaires` (`id`);

--
-- Contraintes pour la table `objets`
--
ALTER TABLE `objets`
  ADD CONSTRAINT `objets_ibfk_1` FOREIGN KEY (`proprietaire_id`) REFERENCES `proprietaires` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
