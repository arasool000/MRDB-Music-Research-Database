-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2019 at 09:46 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

DROP DATABASE IF EXISTS Music;

CREATE DATABASE IF NOT EXISTS Music;
USE Music;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



-- --------------------------------------------------------
--
-- Table structure for table `country`
--
CREATE TABLE IF NOT EXISTS `country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--
INSERT INTO `country` (`name`)
VALUES
  ('United States'), ('United Kingdom'), ('Japan'), ('Australia'),
  ('Germany'), ('Ireland'), ('Iceland'), ('Canada'), ('Peru'),
  ('Russia'), ('China'), ('Brazil'), ('India'), ('Argentina'),
  ('Algeria'), ('Denmark'), ('Greenland'), ('Mexico'), ('Iran'),
  ('Saudi Arabia'), ('Indonesia'), ('Colombia'), ('South Africa'), ('Angola'),
  ('Ethiopia'), ('Egypt'), ('Turkey'), ('Chile'), ('France'),
  ('Ukraine'), ('Thailand'), ('Spain'), ('Italy'), ('Sweden'),
  ('Morocco'), ('Finland'), ('Poland'), ('Norway'), ('Philippines'),
  ('Belgium'), ('South Korea'), ('Myanmar'), ('New Zealand'),  ('Taiwan')
;
-- --------------------------------------------------------
--
-- Table structure for table `genre`
--
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--
INSERT INTO `genre` (`name`)
VALUES
  ('Rock'), ('Classical'), ('Jazz'), ('Pop'), ('Folk'),
  ('Hip Hop'), ('Psychedelic Rock'), ('Punk'), ('Ambient'), ('Industrial'),
  ('Singer/Songwriter'), ('Experimental'), ('Metal'), ('Dance'), ('Noise'),
  ('Folk Rock')
;
-- --------------------------------------------------------
--
-- Table structure for table `label`
--
CREATE TABLE IF NOT EXISTS `label` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL UNIQUE,
  `year_formed` int,
  `country` int,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`country`)
    REFERENCES `country`(`id`)
    ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `label`
--
INSERT INTO `label` (`name`, `year_formed`, `country`)
VALUES
  ('Verve Records', 1956, 1), ('Harvest Records', 1968, 2), ('Matador', 1989, 1),
  ('4AD', 1980, 2), ('Roc-A-Fella', 1995, 1), ('Columbia Records', 1887, 1),
  ('Mute Records', 1978, 2), ('Drag City', 1989, 1)
;
-- --------------------------------------------------------
--
-- Table structure for table `artist`
--
CREATE TABLE IF NOT EXISTS `artist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `origin_country` int,
  `origin_year` int,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`origin_country`)
    REFERENCES `country`(`id`)
    ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artist`
--
INSERT INTO `artist` (`name`, `origin_country`, `origin_year`)
VALUES
  ('Bob Dylan', 1, 1941), ('Syd Barrett', 2, 1946),
  ('Can', 5, 1968), ('The Velvet Underground', 1, 1965),
  ('Lou Reed', 1, 1942), ('Nick Cave', 4, 1957),
  ('Nick Cave & The Bad Seeds', 2, 1983), ('U2', 6, 1976),
  ('Kanye West', 1, 1977), ('Joanna Newsom', 1, 1982)
;
-- --------------------------------------------------------
--
-- Table structure for table `album`
--
CREATE TABLE IF NOT EXISTS `album` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `artist` int NOT NULL,
  `release_year` int,
  `label` int,
  `genre` int,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`artist`)
    REFERENCES `artist`(`id`),
  FOREIGN KEY (`label`)
    REFERENCES `label`(`id`)
    ON DELETE SET NULL,
  FOREIGN KEY (`genre`)
    REFERENCES `genre`(`id`)
    ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--
INSERT INTO `album` (`title`, `artist`, `release_year`, `label`, `genre`)
VALUES
  ('Blonde on Blonde', 1, 1966, 6, 16),
  ('White Light/White Heat', 4, 1968, 1, 1),
  ('Barrett', 2, 1970, 2, 7),
  ('The College Dropout', 9, 2004, 5, 6),
  ('Bob Dylan', 1, 1962, 6, 5),
  ('Highway 61 Revisited', 1, 1965, 6, 16),
  ('The Velvet Underground & Nico', 4, 1967, 1, 7),
  ('Your Funeral... My Trial', 7, 1986, 7, 1),
  ('Divers', 10, 2015, 8, 11),
  ('Have One on Me', 10, 2010, 8, 11),
  ('Ys', 10, 2006, 8, 11)
;
-- --------------------------------------------------------
--
-- Table structure for table `collects`
--
CREATE TABLE IF NOT EXISTS `collects` (
  `user` int,
  `album` int,
  PRIMARY KEY (`user`, `album`),
  FOREIGN KEY (`album`)
    REFERENCES `album`(`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collects`
--

-- --------------------------------------------------------
--
-- Table structure for table `album_link`
--
CREATE TABLE IF NOT EXISTS `album_link` (
  `album` int NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`album`, `url`),
  FOREIGN KEY (`album`)
    REFERENCES `album`(`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album_link`
--
INSERT INTO `album_link` (`album`, `url`)
VALUES
  (1, 'https://open.spotify.com/album/4NP1rhnsPdYpnyJP0p0k0L'),
  (1, 'https://play.google.com/music/m/By52wte45pydk6wbtofpsaoagsu'),
  (1, 'https://www.deezer.com/en/album/1400030'),
  (2, 'https://www.youtube.com/watch?v=VUpT84xGALQ&list=PLIEgxiSjzzjoCP-8FDMSKAfpMoaUwXgKq&index=1'),
  (2, 'https://open.spotify.com/album/0HHmJpwOXXRJu9HI9iQiEO'),
  (2, 'https://www.deezer.com/en/album/7164352')
;
-- --------------------------------------------------------
--
-- Table structure for table `review`
--
CREATE TABLE IF NOT EXISTS `review` (
  `user` int,
  `album` int,
  `body` text,
  PRIMARY KEY (`user`, `album`),
  FOREIGN KEY (`album`)
    REFERENCES `album`(`id`)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--
INSERT INTO `review` (`user`, `album`, `body`)
VALUES
  (1, 1, '...this is my review for bob dylan\'s blonde on blonde...'),
  (1, 2, '...this is my review for white light/white heat...')
;
-- --------------------------------------------------------
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
