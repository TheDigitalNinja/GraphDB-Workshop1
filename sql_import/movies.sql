-- Adminer 4.7.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `actors`;
CREATE TABLE `actors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `actors` (`id`, `name`, `img`) VALUES
(1,	'Kevin Bacon',	NULL);

DROP TABLE IF EXISTS `actors_in_movies`;
CREATE TABLE `actors_in_movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie` int(11) NOT NULL,
  `actor` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `movie` (`movie`),
  KEY `actor` (`actor`),
  CONSTRAINT `actors_in_movies_ibfk_1` FOREIGN KEY (`movie`) REFERENCES `movies` (`id`),
  CONSTRAINT `actors_in_movies_ibfk_2` FOREIGN KEY (`actor`) REFERENCES `actors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `actors_in_movies` (`id`, `movie`, `actor`) VALUES
(1,	1,	1),
(2,	2,	1),
(3,	3,	1);

DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `desc` text DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `movies` (`id`, `name`, `desc`, `img`) VALUES
(1,	'Footloose',	'A city teenager moves to a small town where rock music and dancing have been banned, and his rebellious spirit shakes up the populace.',	'https://m.media-amazon.com/images/M/MV5BYTE2NjQ1MjQtOTdmNi00NjJmLWJlYTItNmFhYzBmMWM4NTQ1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg'),
(2,	'Planes, Trains & Automobiles',	'A man must struggle to travel home for Thanksgiving with an obnoxious slob of a shower curtain ring salesman as his only companion.',	NULL),
(3,	'Tremors',	'Natives of a small isolated town defend themselves against strange underground creatures which are killing them one by one.',	NULL);

-- 2019-08-12 19:39:50
