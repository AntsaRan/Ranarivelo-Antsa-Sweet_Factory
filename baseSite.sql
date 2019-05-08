-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 08 mai 2019 à 13:01
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cksnkotyhp`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `name` varchar(100) NOT NULL,
  `idParent` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`name`, `idParent`, `id`) VALUES
('FreakShake', 0, 1),
('Ice Cream', 0, 2),
('Pastries', 0, 3),
('Cupcakes', 3, 4),
('Eclair', 3, 5),
('Macarons', 3, 6),
('Pie', 3, 7),
('Sorbet', 2, 8),
('Cream', 2, 9);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `nomFichier` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `idImage` int(100) DEFAULT NULL,
  `idCateg` int(100) NOT NULL,
  `prix` double NOT NULL,
  `Description` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `name`, `idImage`, `idCateg`, `prix`, `Description`) VALUES
(1, 'Choco Bomb', NULL, 1, 10, 'FreakShake for Chocolate lovers ! '),
(2, 'Cookie Monster', NULL, 1, 50, 'FreakShake for cookie lovers ! '),
(3, 'Strawberry Bloom', NULL, 1, 20, 'FreakShake for cookie lovers ! '),
(4, 'UnicornLand', NULL, 1, 15, 'FreakShake for cookie lovers ! '),
(5, 'Vanilla Bean', NULL, 1, 25, 'FreakShake with vanilla '),
(7, 'Cotton Candy', NULL, 1, 12, 'FreakShake for cookie lovers ! '),
(8, 'Frozen Blue', NULL, 1, 16, 'FreakShake for cookie lovers ! '),
(9, 'Vanilla Toffee Bar Crunch', NULL, 9, 18, 'FreakShake for cookie lovers ! '),
(10, ' Salted Caramel Core', NULL, 9, 24, 'FreakShake for cookie lovers ! '),
(11, 'Salted Caramel', NULL, 9, 26, 'FreakShake for cookie lovers ! '),
(12, ' Strawberry Cheesecake', NULL, 9, 30, 'FreakShake for cookie lovers ! '),
(13, 'Peanut butter Cup', NULL, 9, 17, 'FreakShake for cookie lovers ! '),
(14, 'Chocolate Therapy', NULL, 9, 24, 'FreakShake for cookie lovers ! '),
(15, 'Red Velvet Cake', NULL, 9, 19, 'FreakShake for cookie lovers ! '),
(16, 'Chocolate Eclair', NULL, 5, 28, 'FreakShake for cookie lovers ! '),
(17, 'Caramel Eclair', NULL, 5, 17, 'FreakShake for cookie lovers ! '),
(18, 'Hazelnut Eclair', NULL, 5, 23, 'FreakShake for cookie lovers ! '),
(19, 'Coffee Eclair', NULL, 5, 21, 'FreakShake for cookie lovers ! '),
(20, 'Vanilla macaron', NULL, 6, 20, 'FreakShake for cookie lovers ! '),
(21, 'Coffee macaron', NULL, 6, 14.5, 'FreakShake for cookie lovers ! '),
(22, 'Coconut macaron', NULL, 6, 13, 'FreakShake for cookie lovers ! '),
(23, 'Strawberry macaron', NULL, 6, 19, 'FreakShake for cookie lovers ! '),
(24, 'Easter egg cupcake', NULL, 4, 16, 'FreakShake for cookie lovers ! '),
(25, 'Sundae cupcake', NULL, 4, 24, 'FreakShake for cookie lovers ! '),
(27, 'Tiramisu cupcake', NULL, 4, 15, 'FreakShake for cookie lovers ! '),
(28, 'Coconut bomb cupcake', NULL, 4, 23, 'FreakShake for cookie lovers ! '),
(29, 'Chocolate macaron', NULL, 6, 24, 'FreakShake for cookie lovers ! '),
(30, 'Peanut Butter macaron', NULL, 6, 12.5, 'FreakShake for cookie lovers ! '),
(31, 'Coconut macaron', NULL, 6, 14, 'FreakShake for cookie lovers ! '),
(32, 'Strawberry macaron', NULL, 6, 16, 'FreakShake for cookie lovers ! '),
(33, 'Lemon macaron', NULL, 6, 10, 'FreakShake for cookie lovers ! '),
(34, 'Strawberry Sorbet', NULL, 8, 14, 'Refreshing Strawberry Sorbet'),
(35, 'Peach Sorbet', NULL, 8, 16, 'Peach soft and sweet');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `password`) VALUES
(1, 'antsa', 'antsa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
