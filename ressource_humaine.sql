-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 14 Décembre 2022 à 11:55
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `RH`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `numero_employe` int(20) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `sexe` text NOT NULL,
  `salaire` char(10) NOT NULL,
  `type_contrat` text NOT NULL,
  `fonction` text NOT NULL,
  `site` text NOT NULL,
  `date_embauche` date NOT NULL,
  `date_de_naissance` date NOT NULL,
  `numero_service` int(20) NOT NULL,
  PRIMARY KEY (`numero_employe`),
  KEY `numero_service` (`numero_service`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=222875 ;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`numero_employe`, `nom`, `prenom`, `sexe`, `salaire`, `type_contrat`, `fonction`, `site`, `date_embauche`, `date_de_naissance`, `numero_service`) VALUES
(14798, 'DARIOUS', 'Jordan', 'MASCULIN', '3000', 'CDI', 'Chef de projet', 'Creteil', '2020-04-21', '1978-01-23', 11111),
(22874, 'MAIGA', 'Mireille', 'FEMININ', '3800', 'CDI', 'Cadre', 'Paris', '2012-12-26', '1980-06-22', 22222);

-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE IF NOT EXISTS `intervenir` (
  `numero_intervenir` int(20) NOT NULL AUTO_INCREMENT,
  `numero_projet` int(20) NOT NULL,
  `numero_employe` int(20) NOT NULL,
  `nombre_heures` int(20) NOT NULL,
  PRIMARY KEY (`numero_intervenir`),
  KEY `numero_projet` (`numero_projet`,`numero_employe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `intervenir`
--

INSERT INTO `intervenir` (`numero_intervenir`, `numero_projet`, `numero_employe`, `nombre_heures`) VALUES
(12, 1478, 14798, 35),
(13, 4875, 222874, 35);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `numero_projet` int(20) NOT NULL AUTO_INCREMENT,
  `libelle_projet` int(20) NOT NULL,
  `numero_service` int(20) NOT NULL,
  PRIMARY KEY (`numero_projet`),
  KEY `numero_service` (`numero_service`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4876 ;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`numero_projet`, `libelle_projet`, `numero_service`) VALUES
(1478, 98, 22222),
(4875, 99, 22222);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `numero_service` int(11) NOT NULL AUTO_INCREMENT,
  `nom_service` text NOT NULL,
  `numero_auto` text NOT NULL,
  PRIMARY KEY (`numero_service`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22223 ;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`numero_service`, `nom_service`, `numero_auto`) VALUES
(11111, 'Marketing', '14'),
(22222, 'Communication', '74');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`numero_service`) REFERENCES `service` (`numero_service`);

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_ibfk_1` FOREIGN KEY (`numero_projet`) REFERENCES `projet` (`numero_projet`);

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`numero_service`) REFERENCES `service` (`numero_service`);
