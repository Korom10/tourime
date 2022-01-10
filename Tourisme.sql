-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 30 nov. 2021 à 01:46
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Tourisme`
--

-- --------------------------------------------------------

--
-- Structure de la table `Chauffeur`
--

CREATE TABLE `Chauffeur` (
  `id` int(8) DEFAULT NULL,
  `Nom` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Chauffeur`
--

INSERT INTO `Chauffeur` (`id`, `Nom`) VALUES
(1, 'Idriss'),
(2, 'Guillaume'),
(3, 'Aicha'),
(4, 'Nas'),
(5, 'Nassir'),
(6, 'Kevin'),
(7, 'Cendrillon'),
(8, 'Fauba'),
(9, 'Abakar'),
(10, 'Fermo');

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `id` int(8) DEFAULT NULL,
  `Nom` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Nationnalite` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Client`
--

INSERT INTO `Client` (`id`, `Nom`, `Email`, `Nationnalite`) VALUES
(1, 'Yves', 'yvessouatche@gmail.com', 'Tchadienne'),
(2, 'Ouatche', 'ouatche@gmail.com', 'Tchadien'),
(3, 'Yves', 'yves@gmail.com', 'Tchadien'),
(4, 'Ben', 'ben@gmail.com', 'Tchadien'),
(5, 'Ali', 'ali@gmail.com', 'Tchadien'),
(6, 'korom', 'korom@gmail.com', 'camerounais'),
(7, 'modestine', 'mode@gmail.com', 'Tchadienne'),
(8, 'Oumar', 'oumar@gmail.com', 'senegalais'),
(9, 'Massar', 'mas@gmail.com', 'Tchadien'),
(10, 'Tori', 'tori@gmail.com', 'togolais');

-- --------------------------------------------------------

--
-- Structure de la table `CompagnieTransport`
--

CREATE TABLE `CompagnieTransport` (
  `id` int(8) DEFAULT NULL,
  `Nom` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `CompagnieTransport`
--

INSERT INTO `CompagnieTransport` (`id`, `Nom`) VALUES
(1, 'sky'),
(2, 'airMaroc'),
(3, 'airFrance'),
(4, 'Airfrance'),
(5, 'sky2'),
(6, 'egyptair'),
(7, 'egyptaire'),
(8, 'airqatar'),
(9, 'airways'),
(10, 'Tchadia ailines');

-- --------------------------------------------------------

--
-- Structure de la table `Designation`
--

CREATE TABLE `Designation` (
  `id` int(8) DEFAULT NULL,
  `pays` varchar(20) DEFAULT NULL,
  `ville` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Designation`
--

INSERT INTO `Designation` (`id`, `pays`, `ville`) VALUES
(1, 'Tchad', 'Ndjamena'),
(2, 'Tchad', 'ndjamena'),
(3, 'Tchad', 'Moundou'),
(4, 'Tchad', 'Abeche'),
(5, 'Tchad', 'Ati'),
(6, 'Tchad', 'Mongo'),
(7, 'Tchad', 'Amtiman'),
(8, 'Tchad', 'Moussoro'),
(9, 'Tchad', 'Bol'),
(10, 'Tchad', 'Pala');

-- --------------------------------------------------------

--
-- Structure de la table `Facture`
--

CREATE TABLE `Facture` (
  `id` int(8) DEFAULT NULL,
  `Designation` varchar(20) DEFAULT NULL,
  `quantite` double DEFAULT NULL,
  `prixUnitaire` double DEFAULT NULL,
  `prixTotal` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Facture`
--

INSERT INTO `Facture` (`id`, `Designation`, `quantite`, `prixUnitaire`, `prixTotal`, `total`) VALUES
(1, 'sucre', 5, 5, 25, 25),
(2, 'cafe', 6, 5, 30, 30),
(3, 'Pommade', 3, 5, 15, 15),
(4, 'tomate', 5, 5, 25, 25),
(5, 'carotte', 7, 5, 35, 35),
(6, 'pizza', 3, 10, 30, 30),
(7, 'chambre', 1, 5, 5, 5),
(8, 'internet', 10, 5, 50, 50),
(9, 'eau', 12, 5, 60, 60),
(10, 'electricite', 10, 6, 60, 60);

-- --------------------------------------------------------

--
-- Structure de la table `Guide`
--

CREATE TABLE `Guide` (
  `id` int(8) DEFAULT NULL,
  `Nom` varchar(20) DEFAULT NULL,
  `specialite` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Guide`
--

INSERT INTO `Guide` (`id`, `Nom`, `specialite`) VALUES
(1, 'yves', 'forestier'),
(2, 'Idriss', 'chauffeur'),
(3, 'Nassir', 'chauffeur'),
(4, 'elvis', 'eau foret'),
(5, 'grene', 'agent'),
(6, 'hisseine', 'garde'),
(7, 'frederic', 'veterinaire'),
(8, 'sonia', 'veterinaire'),
(9, 'valerie', 'agent'),
(10, 'clotilde', 'forestier');

-- --------------------------------------------------------

--
-- Structure de la table `GuidePapier`
--

CREATE TABLE `GuidePapier` (
  `id` int(8) DEFAULT NULL,
  `libelle` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `GuidePapier`
--

INSERT INTO `GuidePapier` (`id`, `libelle`) VALUES
(1, 'info'),
(2, 'infoSite'),
(3, 'infoAxe'),
(4, 'infoTourisme'),
(5, 'infoVille'),
(6, 'infoPays'),
(7, 'infoForet'),
(8, 'infoAgent'),
(9, 'infoForestier'),
(10, 'infoVoyage');

-- --------------------------------------------------------

--
-- Structure de la table `GuidePersonne`
--

CREATE TABLE `GuidePersonne` (
  `id` int(8) DEFAULT NULL,
  `Nom` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `GuidePersonne`
--

INSERT INTO `GuidePersonne` (`id`, `Nom`) VALUES
(1, 'yves'),
(2, 'grene'),
(3, 'ali'),
(4, 'mht'),
(5, 'mhd'),
(6, 'oumar'),
(7, 'hassan'),
(8, 'pierre'),
(9, 'jean'),
(10, 'mariam');

-- --------------------------------------------------------

--
-- Structure de la table `Hotel`
--

CREATE TABLE `Hotel` (
  `id` int(8) DEFAULT NULL,
  `libelle` varchar(20) DEFAULT NULL,
  `caracteristique` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Hotel`
--

INSERT INTO `Hotel` (`id`, `libelle`, `caracteristique`) VALUES
(1, 'relaxe', 'bon'),
(2, 'vip', 'super'),
(3, 'toumai', 'genial'),
(4, 'hilton', 'moderne'),
(5, 'plaza', 'bien'),
(6, 'stone', 'super'),
(7, 'champMP', 'acceptable'),
(8, 'LG', 'clase'),
(9, 'team', 'good'),
(10, 'gasssi', 'bon');

-- --------------------------------------------------------

--
-- Structure de la table `Litineraire`
--

CREATE TABLE `Litineraire` (
  `id` int(8) DEFAULT NULL,
  `libelle` varchar(20) DEFAULT NULL,
  `caracteristique` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Litineraire`
--

INSERT INTO `Litineraire` (`id`, `libelle`, `caracteristique`) VALUES
(1, 'avenue dmbe', 'axe'),
(3, 'avenue abba', 'axe'),
(4, 'avenue charles', 'route'),
(5, 'avenue mathias', 'autoroute'),
(6, 'avenue maldom', 'axe'),
(7, 'aven rue40', 'grand axe'),
(8, 'avenue diguel', 'autoroute'),
(9, 'avenue destin', 'grande route'),
(10, 'avenue chagoua', 'autoroute');

-- --------------------------------------------------------

--
-- Structure de la table `MoyenTransport`
--

CREATE TABLE `MoyenTransport` (
  `id` int(8) DEFAULT NULL,
  `Nom` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `capacite` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `MoyenTransport`
--

INSERT INTO `MoyenTransport` (`id`, `Nom`, `type`, `capacite`) VALUES
(1, 'terestre', 'bus', '10'),
(2, 'aerien', 'c30', '40'),
(3, 'maritime', 'bateau', '40'),
(4, 'terestre', 'car', '10'),
(5, 'aerien', 'C20', '45'),
(6, 'Maritime', 'bateau', '60'),
(7, 'terestre', 'voiture', '50'),
(8, 'aerien', 'C10', '60'),
(9, 'maritime', 'bateau', '100'),
(10, 'terestre', 'benz', '60');

-- --------------------------------------------------------

--
-- Structure de la table `Reservation`
--

CREATE TABLE `Reservation` (
  `id` int(8) DEFAULT NULL,
  `dateReservation` date DEFAULT NULL,
  `heureReservation` datetime DEFAULT NULL,
  `dureSejour` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Reservation`
--

INSERT INTO `Reservation` (`id`, `dateReservation`, `heureReservation`, `dureSejour`) VALUES
(1, '2021-11-02', '2021-11-30 01:10:35', '30'),
(2, '2021-11-08', '2021-11-30 01:10:35', '10'),
(3, '2021-11-10', '2021-11-30 01:10:35', '5'),
(4, '2021-11-12', '2021-11-30 01:10:35', '5'),
(6, '2021-11-17', '2021-11-30 01:10:35', '50'),
(7, '2021-11-30', '2021-11-30 01:10:35', '10'),
(7, '2021-11-03', '2021-11-30 01:10:35', '2'),
(8, '2021-11-03', '2021-11-30 01:10:35', '9jours'),
(9, '2021-11-28', '2021-11-30 01:10:35', '6'),
(10, '2021-11-10', '2021-11-30 01:10:35', '8');

-- --------------------------------------------------------

--
-- Structure de la table `SiteTouristique`
--

CREATE TABLE `SiteTouristique` (
  `id` int(8) DEFAULT NULL,
  `libelle` varchar(20) DEFAULT NULL,
  `zone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `SiteTouristique`
--

INSERT INTO `SiteTouristique` (`id`, `libelle`, `zone`) VALUES
(NULL, NULL, NULL),
(1, 'ati', 'forestiere'),
(2, 'faya', 'deser'),
(3, 'mongo', 'pluvio'),
(4, 'ndjamena', 'chaud'),
(5, 'pala', 'forestiere'),
(6, 'mondou', 'pluvio'),
(7, 'sarh', 'desert'),
(8, 'doba', 'sahel'),
(9, 'bongor', 'desertique'),
(10, 'abeche', 'foret');

-- --------------------------------------------------------

--
-- Structure de la table `SocieteLocation`
--

CREATE TABLE `SocieteLocation` (
  `id` int(8) DEFAULT NULL,
  `Nom` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `SocieteLocation`
--

INSERT INTO `SocieteLocation` (`id`, `Nom`) VALUES
(1, 'chagra'),
(2, 'team'),
(3, 'toumai'),
(4, 'lth'),
(5, 'soft'),
(6, 'trt'),
(7, 'mdh'),
(8, 'sdk'),
(9, 'mlk'),
(10, 'frt');

-- --------------------------------------------------------

--
-- Structure de la table `TransportCommun`
--

CREATE TABLE `TransportCommun` (
  `id` int(8) DEFAULT NULL,
  `Nom` varchar(20) DEFAULT NULL,
  `capacite` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `TransportCommun`
--

INSERT INTO `TransportCommun` (`id`, `Nom`, `capacite`) VALUES
(1, 'bus', '10'),
(2, 'car', '20'),
(3, 'vehicule', '20'),
(4, 'aerien', '40'),
(5, 'maritime', '30'),
(6, 'hilux', '20'),
(7, 'peugeot', '30'),
(8, 'sfax', '15'),
(9, 'maritime', '20'),
(10, 'vga', '5');

-- --------------------------------------------------------

--
-- Structure de la table `Vehicule`
--

CREATE TABLE `Vehicule` (
  `id` int(8) DEFAULT NULL,
  `immatriculation` int(8) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `capacité` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Vehicule`
--

INSERT INTO `Vehicule` (`id`, `immatriculation`, `type`, `capacité`) VALUES
(1, 12, 'tt', '10'),
(2, 123, 'tt', '10'),
(3, 1234, 'hilux', '12'),
(4, 12345, 'peugeot', '12'),
(5, 123456, 'v8', '20'),
(6, 1234567, 'peugeot', '10'),
(7, 786, 'trt', '10'),
(8, 900, 'TT', '80'),
(9, 890, 'TT', '50'),
(10, 560, 'RT', '70');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
