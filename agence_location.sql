-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 04 Janvier 2023 à 11:15
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `agence_location`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `code_client` varchar(7) NOT NULL,
  `nom_prenom` varchar(20) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `profession` varchar(20) NOT NULL,
  `numero_telephone` varchar(10) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `code_postale` varchar(5) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`code_client`, `nom_prenom`, `date_de_naissance`, `profession`, `numero_telephone`, `adresse`, `code_postale`, `ville`, `email`) VALUES
('22a', 'Rémy B', '1987-11-22', 'pas d''info', '0748952608', '35 allée du général Leclerc', '75001', 'Paris', 'Rémy@yahoo.fr'),
('22b', 'Sophia M', '1990-12-18', 'cadre ', '0683296212', '7 square Jean Violet', '92282', 'Fontaine-Michalon', 'Sophia.m@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id_location` varchar(20) NOT NULL,
  `duree_location` int(11) NOT NULL,
  `date_location` date NOT NULL,
  `prix_location` int(11) NOT NULL,
  `code_client` varchar(7) NOT NULL,
  `immatriculation` varchar(20) NOT NULL,
  `caution` int(11) NOT NULL,
  PRIMARY KEY (`id_location`),
  KEY `code_client` (`code_client`,`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `locations`
--

INSERT INTO `locations` (`id_location`, `duree_location`, `date_location`, `prix_location`, `code_client`, `immatriculation`, `caution`) VALUES
('111a', 3, '2022-10-08', 410, '22a', 'fa235fb', 2800),
('111b', 1, '2022-12-06', 90, '22b', 'aa123aa', 980);

-- --------------------------------------------------------

--
-- Structure de la table `reparations`
--

CREATE TABLE IF NOT EXISTS `reparations` (
  `numero_reparation` int(11) NOT NULL,
  `date_reparation` varchar(100) NOT NULL,
  `duree_reparation` varchar(100) NOT NULL,
  `cout_reparation` varchar(255) NOT NULL,
  `responsable_reparation` varchar(255) NOT NULL,
  `immatriculation` varchar(255) NOT NULL,
  PRIMARY KEY (`numero_reparation`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reparations`
--


-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `immatriculation` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `modele` varchar(20) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `carburant` varchar(10) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `nombre_place` int(11) NOT NULL,
  `nombre_porte` int(11) NOT NULL,
  `prix_achat` varchar(255) NOT NULL,
  `etat` varchar(20) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`immatriculation`, `marque`, `modele`, `kilometrage`, `carburant`, `couleur`, `nombre_place`, `nombre_porte`, `prix_achat`, `etat`) VALUES
('aa123aa', 'peugeot', '208', 40, 'diesel', 'gris', 6, 5, '4000', 'correct'),
('fa235fb', 'bmw', 'serie1', 69, 'gazole', 'bleu', 5, 5, '19000', 'neuf');
