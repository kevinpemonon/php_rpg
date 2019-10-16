-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 16 oct. 2019 à 12:28
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
-- Base de données :  `rpg`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `content`) VALUES
(2, 'John a infligé 10 points de dégâts à gobelin'),
(3, 'gobelin a infligé 5 points de dégâts à John'),
(4, 'John a infligé 10 points de dégâts à gobelin'),
(5, 'gobelin a infligé 5 points de dégâts à John'),
(6, 'John a infligé 10 points de dégâts à gobelin'),
(7, 'gobelin a infligé 5 points de dégâts à John'),
(8, 'John a infligé 10 points de dégâts à gobelin'),
(9, 'gobelin a infligé 5 points de dégâts à John'),
(10, 'John a infligé 10 points de dégâts à gobelin'),
(11, 'gobelin a infligé 5 points de dégâts à John'),
(12, 'John a infligé 10 points de dégâts à rat'),
(13, 'rat a infligé 2 points de dégâts à John'),
(14, 'John a infligé 10 points de dégâts à rat'),
(15, 'rat a infligé 2 points de dégâts à John'),
(16, 'John a infligé 10 points de dégâts à rat'),
(17, 'rat a infligé 2 points de dégâts à John'),
(18, 'John a infligé 10 points de dégâts à rat'),
(19, 'rat a infligé 2 points de dégâts à John'),
(20, 'John a infligé 10 points de dégâts à rat'),
(21, 'rat a infligé 2 points de dégâts à John'),
(22, 'John a infligé 10 points de dégâts à rat'),
(23, 'rat a infligé 2 points de dégâts à John'),
(24, 'John a infligé 10 points de dégâts à elfe'),
(25, 'elfe a infligé 10 points de dégâts à John'),
(26, 'John a infligé 10 points de dégâts à elfe'),
(27, 'elfe a infligé 10 points de dégâts à John'),
(28, 'John a infligé 10 points de dégâts à gobelin.'),
(29, 'gobelin a infligé 5 points de dégâts à John.'),
(30, 'John se défend. gobelin inflige 0 points de dégâts.'),
(31, 'John a infligé 10 points de dégâts à gobelin.'),
(32, 'gobelin a infligé 5 points de dégâts à John.'),
(33, 'John a infligé 10 points de dégâts à gobelin.'),
(34, 'gobelin a infligé 5 points de dégâts à John.'),
(35, 'gobelin a infligé 5 points de dégâts à John.'),
(36, 'John a infligé 10 points de dégâts à gobelin.'),
(37, 'John se défend. gobelin inflige 0 points de dégâts.'),
(38, 'gobelin a infligé 5 points de dégâts à John.</br>John a infligé 10 points de dégâts à gobelin.'),
(39, 'rat a infligé 2 points de dégâts à John.</br></br>John a infligé 10 points de dégâts à rat.'),
(40, 'John se défend. rat inflige 0 points de dégâts.'),
(41, 'rat a infligé 2 points de dégâts à John.</br></br>John a infligé 10 points de dégâts à rat.'),
(42, 'John a infligé 10 points de dégâts à rat.</br></br>rat a infligé 2 points de dégâts à John.'),
(43, 'John a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à John.'),
(44, 'John a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à John.'),
(45, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem.'),
(46, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem.'),
(47, 'Pem a infligé 10 points de dégâts à rat.</br></br>rat a infligé 2 points de dégâts à Pem.'),
(48, 'Pem a infligé 10 points de dégâts à rat.</br></br>rat a infligé 2 points de dégâts à Pem.'),
(49, 'rat est mort. </br></br>Pem gagne 5 points d\'expériences.'),
(50, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem.'),
(51, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem.'),
(52, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem.'),
(53, 'elfe est mort. </br></br>Pem gagne 15 points d\'expériences.'),
(54, 'Pem a infligé 10 points de dégâts à gobelin.</br></br>gobelin a infligé 5 points de dégâts à Pem.'),
(55, 'Pem a infligé 10 points de dégâts à gobelin.</br></br>gobelin a infligé 5 points de dégâts à Pem.'),
(56, 'Pem a infligé 10 points de dégâts à gobelin.</br></br>gobelin a infligé 5 points de dégâts à Pem.'),
(57, 'Pem a infligé 10 points de dégâts à gobelin.</br></br>gobelin a infligé 5 points de dégâts à Pem.'),
(58, 'gobelin est mort. </br></br>Pem gagne 10 points d\'expériences. </br></br>3'),
(59, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem.'),
(60, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem.'),
(61, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem.'),
(62, 'elfe est mort. </br></br>Pem gagne 15 points d\'expériences. </br></br>2'),
(63, 'Pem a infligé 10 points de dégâts à rat.</br></br>rat a infligé 2 points de dégâts à Pem.'),
(64, 'Pem a infligé 10 points de dégâts à rat.</br></br>rat a infligé 2 points de dégâts à Pem.'),
(65, 'rat est mort. </br></br>Pem gagne 5 points d\'expériences.'),
(66, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem. </br>hello'),
(67, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem. </br>hello'),
(68, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem. </br>hello'),
(69, 'elfe est mort. </br></br>Pem gagne 15 points d\'expériences.'),
(70, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem.'),
(71, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem.'),
(72, 'Pem a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Pem.'),
(73, 'elfe est mort. </br></br>Pem gagne 15 points d\'expériences.Pem récupère une potion.'),
(74, 'Georges a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Georges.'),
(75, 'Georges a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Georges.'),
(76, 'Georges a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Georges.'),
(77, 'elfe est mort. </br></br>Georges gagne 15 points d\'expériences. </br></br>3'),
(78, 'Georges a infligé 10 points de dégâts à gobelin.</br></br>gobelin a infligé 5 points de dégâts à Georges.'),
(79, 'Georges a infligé 10 points de dégâts à gobelin.</br></br>gobelin a infligé 5 points de dégâts à Georges.'),
(80, 'Georges a infligé 10 points de dégâts à gobelin.</br></br>gobelin a infligé 5 points de dégâts à Georges.'),
(81, 'Georges se défend. gobelin inflige 0 points de dégâts.'),
(82, 'Vous avez fuis.'),
(83, 'Georges a infligé 10 points de dégâts à gobelin.</br></br>gobelin a infligé 5 points de dégâts à Georges.'),
(84, 'gobelin est mort. </br></br>Georges gagne 10 points d\'expériences.'),
(85, 'Georges a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Georges.'),
(86, 'Georges a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Georges.'),
(87, 'Georges a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Georges.'),
(88, 'elfe est mort. </br></br>Georges gagne 15 points d\'expériences.'),
(89, 'Vous êtes mort.'),
(90, 'elfe est mort. </br></br>Oliv gagne 15 points d\'expériences. </br></br>Oliv récupère une potion.'),
(91, 'Oliv a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Oliv.'),
(92, 'Oliv se défend. elfe inflige 5 points de dégâts.'),
(93, 'Oliv a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Oliv.'),
(94, 'Oliv a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Oliv.'),
(95, 'elfe est mort. </br></br>Oliv gagne 15 points d\'expériences.'),
(96, 'Oliv a infligé 10 points de dégâts à rat.</br></br>rat a infligé 2 points de dégâts à Oliv.'),
(97, 'Oliv a infligé 10 points de dégâts à rat.</br></br>rat a infligé 2 points de dégâts à Oliv.'),
(98, 'rat est mort. </br></br>Oliv gagne 5 points d\'expériences.'),
(99, 'Oliv a infligé 10 points de dégâts à gobelin.</br></br>gobelin a infligé 5 points de dégâts à Oliv.'),
(100, 'Oliv a infligé 10 points de dégâts à gobelin.</br></br>gobelin a infligé 5 points de dégâts à Oliv.'),
(101, 'Oliv se défend. gobelin inflige 0 points de dégâts.'),
(102, 'Oliv se défend. gobelin inflige 0 points de dégâts.'),
(103, 'Vous avez fui.'),
(104, 'Oliv a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Oliv.'),
(105, 'Oliv a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Oliv.'),
(106, 'Kevin a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Kevin.'),
(107, 'elfe est mort. </br></br>Kevin gagne 15 points d\'expériences.'),
(108, 'Kevin a infligé 10 points de dégâts à rat.</br></br>rat a infligé 2 points de dégâts à Kevin.'),
(109, 'Kevin se défend. rat inflige 2 points de dégâts.'),
(110, 'Kevin se défend. rat inflige 2 points de dégâts.'),
(111, 'Kevin a infligé 10 points de dégâts à rat.</br></br>rat a infligé 2 points de dégâts à Kevin.'),
(112, 'rat est mort. </br></br>Kevin gagne 5 points d\'expériences.'),
(113, 'Kevin a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Kevin.'),
(114, 'Kevin a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Kevin.'),
(115, 'Kevin a infligé 10 points de dégâts à elfe.</br></br>elfe a infligé 10 points de dégâts à Kevin.'),
(116, 'elfe est mort. </br></br>Kevin gagne 15 points d\'expériences.');

-- --------------------------------------------------------

--
-- Structure de la table `monsters`
--

DROP TABLE IF EXISTS `monsters`;
CREATE TABLE IF NOT EXISTS `monsters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `life` int(11) NOT NULL,
  `max_life` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `xp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `monsters`
--

INSERT INTO `monsters` (`id`, `name`, `life`, `max_life`, `attack`, `xp`) VALUES
(3, 'gobelin', 20, 50, 5, 10),
(4, 'rat', 30, 30, 2, 5),
(5, 'elfe', 40, 40, 10, 15);

-- --------------------------------------------------------

--
-- Structure de la table `objects`
--

DROP TABLE IF EXISTS `objects`;
CREATE TABLE IF NOT EXISTS `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `effect` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `objects`
--

INSERT INTO `objects` (`id`, `id_user`, `name`, `effect`) VALUES
(1, 21, 'potion', 50),
(9, 21, 'potion', 50),
(8, 19, 'potion', 50),
(7, 19, 'potion', 50),
(6, 21, 'potion', 50),
(10, 21, 'potion', 50),
(12, 24, 'potion', 50);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `life` int(11) NOT NULL,
  `max_life` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `next_level` int(11) NOT NULL,
  `xp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `life`, `max_life`, `attack`, `defense`, `level`, `next_level`, `xp`) VALUES
(20, 'Paul', 60, 0, 10, 0, 0, 0, 0),
(19, 'John', -37, 0, 10, 5, 0, 0, 50),
(18, 'Kevin', -6, 0, 10, 0, 0, 0, 35),
(21, 'Pem', -273, 100, 10, 5, 1, 100, 150),
(22, 'Mathieu', 91, 100, 10, 5, 1, 100, 0),
(23, 'Georges', -19, 100, 10, 5, 1, 100, 40),
(24, 'Oliv', 5, 100, 10, 5, 1, 100, 35);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
