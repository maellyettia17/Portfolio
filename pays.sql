-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 04 Janvier 2023 à 11:37
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pays`
--

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

CREATE TABLE IF NOT EXISTS `communes` (
  `code_commune` varchar(20) NOT NULL,
  `nom_commune` text NOT NULL,
  `population_VF` int(11) DEFAULT NULL,
  `surface` int(11) NOT NULL,
  `longitude` int(11) NOT NULL,
  `latitude` int(11) NOT NULL,
  PRIMARY KEY (`code_commune`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `communes`
--

INSERT INTO `communes` (`code_commune`, `nom_commune`, `population_VF`, `surface`, `longitude`, `latitude`) VALUES
('91042', 'Evry', 80000, 35, 15, 70),
('92260', 'Fontenay-aux-roses', 25000, 40, 12, 78),
('94550', 'Chevilly Larue', 47000, 30, 40, 28);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE IF NOT EXISTS `departement` (
  `numero_departement` varchar(11) NOT NULL,
  `nom_departement` text NOT NULL,
  `code_commune` varchar(11) NOT NULL,
  PRIMARY KEY (`numero_departement`),
  KEY `code_commune` (`code_commune`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `departement`
--

INSERT INTO `departement` (`numero_departement`, `nom_departement`, `code_commune`) VALUES
('91', 'Evry', '91042'),
('92', 'haut-de-seine', '92260'),
('94', 'val de marne2', '94550');

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `code_region` varchar(20) NOT NULL,
  `nom_region` text NOT NULL,
  `numero_departement` varchar(20) NOT NULL,
  PRIMARY KEY (`code_region`),
  KEY `numero_departement` (`numero_departement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `regions`
--

INSERT INTO `regions` (`code_region`, `nom_region`, `numero_departement`) VALUES
('01', 'Il-de-france', '92'),
('02', 'Région nord-ouest', '91'),
('03', 'haut-de-france', '94');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `departement_ibfk_1` FOREIGN KEY (`code_commune`) REFERENCES `communes` (`code_commune`);

--
-- Contraintes pour la table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_ibfk_1` FOREIGN KEY (`numero_departement`) REFERENCES `departement` (`numero_departement`);
