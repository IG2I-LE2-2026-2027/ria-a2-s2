-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 18 oct. 2023 à 16:17
-- Version du serveur : 10.6.12-MariaDB-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test_le2`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` int(11) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiants`
--


INSERT INTO `etudiants` (`id`, `prenom`, `nom`) VALUES
(1 ,'Yousra','ABOUSITRE'),
(2 ,'Lounès','AMICHI'),
(3 ,'Rayane','AYARI'),
(4 ,'Mohamed Othman','BAZEGA'),
(5 ,'Jean-Baptiste','BELOT'),
(6 ,'Merwane','BENBOUZIANE'),
(7 ,'Adrien','BERNARD'),
(8 ,'Louis','BLONDEL'),
(9 ,'Arthur','BOBEUF'),
(10,'Milo','BONASERA'),
(11,'Evan','BOSTYN'),
(12,'Rim','BOUKHACHANE'),
(13,'Mathis','BOURGUIGNON'),
(14,'Quentin','BOUTILLIER'),
(15,'David','BRASSEUR'),
(16,'Hugo','BRIOT'),
(17,'Arthus','CAILLAUX'),
(18,'Cedric','CALOIN'),
(19,'Marin','CANIS'),
(20,'Louis','CHALON'),
(21,'Raphaël','CLEUET'),
(22,'Lucie','DECOCK'),
(23,'Alix','DE HERDT'),
(24,'Lara','DEHILES'),
(25,'Clément','DEMANDRE'),
(26,'Erine','DEMOUTIEZ'),
(27,'Julian','DENIER'),
(28,'Noé','DEVIGNES'),
(29,'Florian','DHOUAILLY'),
(30,'Noam','DOMAIN'),
(31,'Naim','EL BOUIHI'),
(32,'Chloé','FEUGERE'),
(33,'Lucas','HOURRIEZ'),
(34,'Matthieu','HUART'),
(35,'Elisabeth','LALOUX'),
(36,'Théo','LAMOTTE'),
(37,'Lucas','LEFEBVRE'),
(38,'Baptiste','LEGRIX'),
(39,'Paul','LEPLUS'),
(40,'Thomas','LESIEUR'),
(41,'Tom','MAGNIEZ'),
(42,'Noha','MAKHLOUFI'),
(43,'Gabin','MALINOWSKI'),
(44,'Eléa','MUTNIK'),
(45,'Raphaël','NAUZE'),
(46,'Timéo','NUNEZ --FRAPPÉ'),
(47,'Ilyas','OUTALEB'),
(48,'Jean-Baptiste','PASSCHIER'),
(49,'Florian','PLUCINSKI'),
(50,'Hugo','POHL'),
(51,'Guillaume','POLOWCZYK'),
(52,'Maxence','ROATTA'),
(53,'Thomas','SINAGRA'),
(54,'Maxime','SZLASKI'),
(55,'Antoine','TAISNE'),
(56,'Mathis','THIEFFRY'),
(57,'Clément','TRICQUENEAUX'),
(58,'Matisse','VANWAELSCAPPEL--TRICQUET'),
(59,'Hugo','WASSON'),
(60,'Gabriel','WODEY');



--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;































































