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


INSERT INTO `etudiants` (`id`, `nom`, `prenom`) VALUES
(1 ,'AYARI','Rayane'),			  
(2 ,'BAZEGA','MohamedOthman'),		  
(3 ,'BERQUIER','Raphaël'),		  
(4 ,'BIENCOURT','Antonin'),	  
(5 ,'BONNAFOUS','Martin'),
(6 ,'CARON','Arthur'),
(7 ,'CHALON','Louis'),
(8 ,'CHATAKER','Ranya'),
(9 ,'CHAUVET','Yann'),
(10,'COMBLAT','Romain'),
(11,'CZERYBA-DUEZ','Arthur'),
(12,'DEGEZELLE','Eulalie'),
(13,'DEHILES','Lara'),
(14,'DELPONT','Louis'),
(15,'DEMOUTIEZ','Erine'),
(16,'DESVIGNE','Arthur'),
(17,'DUBOIS','Eliott'),
(18,'DUEZ','Yanis'),
(19,'DUPIRE','Elias'),
(20,'ELATOUANI','Meryem'),
(21,'FAILLE','Axel'),
(22,'FEUGERE','Chloé'),
(23,'FORMISYN','Nathan'),
(24,'HAKIM','Adam'),
(25,'HECQUET','Alexis'),
(26,'KUJAWA','Evan'),
(27,'KUJAWA-CLEMENT','Mathian'),
(28,'LAITEM','Robin'),
(29,'LAMOUR','Julien'),
(30,'LEFEBVRE','Nathan'),
(31,'LESPAGNOL','Mateo'),
(32,'LUCIANI','Marceau'),
(33,'MAES','Adrien'),
(34,'MAGNIEZ','Tom'),
(35,'MAHMOUDI','Mohamed-Farouk'),
(36,'MARREAU','Léo'),
(37,'MELLIN','Noa'),
(38,'MEUROT','Mathéo'),
(39,'MIFDAL','Youssra'),
(40,'MORDACQUE','Théophile'),
(41,'NIEWRZÉDA','Luca'),
(42,'PADÉ','Lilian'),
(43,'PAVLOVIC','Baptiste'),
(44,'POPRAWKA','Mathis'),
(45,'POTTIER','Axel'),
(46,'POUANT','Arthur'),
(47,'QUETTIER','Alexandra'),
(48,'RAHMOUNI','Yanis'),
(49,'RAKOTOVAO','Ny-Harena'),
(50,'RENARD','Houcine'),
(51,'RICHARD','Loann'),
(52,'SABATIER','Dorian'),
(53,'SANDALI','Kawtar'),
(54,'VAMPOUILLE','Paul'),
(55,'VILCOT','Jérémy'),
(56,'VILLE','Baptiste'),
(57,'VOROBIEFF-NAWROT','Clément'),
(58,'WAILLY','Kyllian'),
(59,'ZAIMI','Oumayma'); 




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



