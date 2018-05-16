-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2018 at 10:50 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `club_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `colors` varchar(32) NOT NULL,
  `date_of_establishment` datetime NOT NULL,
  `stadium` varchar(32) DEFAULT NULL,
  `number_of_cups` int(11) DEFAULT NULL,
  `number_of_stars` int(11) DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `league` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `name`, `colors`, `date_of_establishment`, `stadium`, `number_of_cups`, `number_of_stars`, `total_amount`, `league`) VALUES
(1, ' Fenerbahce', 'Yellow-Blue', '1907-00-00 00:00:00', 'Sukru Saracoglu Stadium', 18, 3, 1000000000, 1),
(2, 'Akhisar', 'Green-Black', '1970-00-00 00:00:00', 'Spor Toto Akhisar Stadium', 1, 0, 500000, 1),
(3, 'Galatasaray', 'Yellow-Red', '1905-00-00 00:00:00', 'Ali Sami Yen TT Stadium', 19, 3, 1000000, 1),
(4, 'Barcelona', 'Purple-Blue', '1899-00-00 00:00:00', 'Camp Nou', 24, 4, 5000000, 4),
(5, 'Real Madrid', 'Blue-White', '1902-00-00 00:00:00', 'Santiago Bernabéu Stadium', 33, 6, 5000000, 2),
(6, 'Antalyaspor', 'Orange-White', '1966-00-00 00:00:00', 'Antalya Stadium', 0, 0, 500000, 1),
(7, 'Besiktas', 'Black-White', '1903-00-00 00:00:00', 'Vodafone Park', 0, 0, 500000, 1),
(8, 'Sevilla', 'Red-White', '1890-00-00 00:00:00', 'Ramon Sanchez Pizjuan Stadium', 0, 0, 500000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `coach_id` int(11) NOT NULL,
  `goal_percentage` int(11) DEFAULT NULL,
  `formation` int(11) DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`coach_id`, `goal_percentage`, `formation`, `club_id`) VALUES
(18, 90, 4422, 3),
(19, 95, 433, 1),
(20, 75, 443, 2),
(24, 99, 442, 4),
(30, 95, 442, 5),
(38, 70, 4231, 6),
(45, 85, 4231, 7),
(53, 8, 442, 8);

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `player` int(11) NOT NULL,
  `club` int(11) NOT NULL,
  `transfer_fee` int(11) DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `director_id` int(11) NOT NULL,
  `club_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`director_id`, `club_id`) VALUES
(21, 1),
(23, 2),
(22, 3),
(31, 5),
(39, 6),
(46, 7),
(52, 8);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `club_id` int(11) DEFAULT NULL,
  `academic_degree` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `club_id`, `academic_degree`) VALUES
(3, 1, 'Prof'),
(4, 2, 'PhD');

-- --------------------------------------------------------

--
-- Table structure for table `fan`
--

CREATE TABLE `fan` (
  `fan_id` int(11) NOT NULL,
  `favourite_team` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `game_id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `arena` varchar(32) DEFAULT NULL,
  `league_id` int(11) DEFAULT NULL,
  `home_team` int(11) DEFAULT NULL,
  `away_team` int(11) DEFAULT NULL,
  `home_score` int(11) DEFAULT NULL,
  `away_score` int(11) DEFAULT NULL,
  `injured_player` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `league`
--

CREATE TABLE `league` (
  `league_id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `league`
--

INSERT INTO `league` (`league_id`, `name`) VALUES
(1, 'Spor Toto Super League'),
(2, 'La Liga');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `player` int(11) NOT NULL,
  `director` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `transfer_fee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `first_name` varchar(24) NOT NULL,
  `last_name` varchar(24) DEFAULT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salary` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone_number` varchar(60) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `first_name`, `last_name`, `email`, `password`, `salary`, `age`, `phone_number`, `date_of_birth`) VALUES
(1, 'Kaan', 'Ekin', 'kaan.ekin@mail.com', '12345', 5000, 21, '05551234567', '1996-08-17'),
(2, 'Tanay', 'Akgul', 'tanay.akgul@mail.com', '12345', 5000, 21, '05551234567', '1996-08-17'),
(3, 'Ekinsu', 'Bozdag', 'ekinsu.bozdag@mail.com', '12345', 5000, 21, '05551234567', '1996-08-17'),
(4, 'Koray', 'Gurses', 'koray.gurses@mail.com', '12345', 5000, 21, '05551234567', '1996-08-17'),
(5, 'Volkan ', 'Demirel ', ' volkan.demirel@mail.com ', ' 12345 ', 5000, 21, '05551234567', '1987-10-27'),
(6, 'Hasan Ali', 'Kaldirim', ' hasan.ali.kaldirim@mail.com ', ' 12345 ', 5000, 21, '05551234567', '1989-12-09'),
(7, 'Mauricio ', 'Isla', 'isla@mail.com ', '12345 ', 5000, 21, '05551234567', '1988-06-12'),
(8, 'Mehmet', 'Topal ', 'topal@mail.com ', '12345 ', 5000, 21, '05551234567', '1986-03-03'),
(9, 'Alper', 'Potuk ', ' potuk@mail.com ', ' 12345 ', 5000, 21, '05551234567', '1991-04-08'),
(10, 'Fernando', 'Muslera', ' muslera@mail.com ', '12345 ', 5000, 21, '05551234567', '1988-02-21'),
(11, 'Koray', 'Gunter', ' gunter@mail.com ', ' 12345 ', 5000, 21, '05551234567', '1994-08-16'),
(12, 'Yasin  ', 'Oztekin ', ' oztekin@mail.com ', ' 12345 ', 5000, 21, '05551234567', '1987-03-19'),
(13, 'Selcuk  ', 'Inan ', ' inan@mail.com ', ' 12345 ', 5000, 21, '05551234567', '1985-02-10'),
(14, 'Milan', 'Lukac', 'lukac@mail.com ', '12345 ', 5000, 21, '05551234567', '1985-10-04'),
(15, 'Eray', 'Atasever', ' atasever@mail.com ', '12345 ', 5000, 21, '05551234567', '1993-06-29'),
(16, 'Onur', 'Ayik', ' ayik@mail.com ', '12345 ', 5000, 21, '05551234567', '1990-10-28'),
(17, 'Miguel', 'Lopes', 'lopes@mail.com ', ' 12345 ', 5000, 21, '05551234567', '1986-12-19'),
(18, 'Fatih', 'Terim', 'terim@mail.com', '12345', 5000, 50, '05551234567', '1953-09-14'),
(19, 'Aykut', 'Kocaman', 'kocaman@mail.com', '12345', 5000, 50, '05551234567', '1965-04-05'),
(20, 'Okan', 'Burak', 'burak@mail.com', '12345', 5000, 45, '05551234567', '1973-09-19'),
(21, 'Aziz', 'Yildirim', 'yildirim@mail.com', '12345', 50000, 60, '05551234567', NULL),
(22, 'Mustafa', 'Cengiz', 'cengiz@mail.com', '12345', 50000, 60, '05551234567', NULL),
(23, 'Huseyin', 'Eryuksel', 'eryuksel@mail.com', '12345', 10000, 60, '05551234567', NULL),
(24, 'Ernesto', 'Valverde', 'valverde@mail.com', '12345', 10000, 54, '05551234567', '1964-02-09'),
(25, 'Gerard', 'Pique', 'pique@mail.com', '12345 ', 50000, 21, '05551234567', '1987-02-02'),
(26, 'Andrés', 'Iniesta', 'iniesta@mail.com ', '12345 ', 5000, 21, '05551234567', '1984-05-11'),
(27, 'Sergio', 'Busquets', 'busquets@mail.com ', '12345 ', 5000, 21, '05551234567', '1988-07-16'),
(28, 'Lionel', 'Messi', 'messi@mail.com ', '12345 ', 5000, 21, '05551234567', '1987-06-24'),
(29, 'Jordi', 'Alba', 'alba@mail.com ', '12345 ', 5000, 21, '05551234567', '1989-03-21'),
(30, 'Zinedine', 'Zidane', 'zidane@mail.com', '12345', 10000, 45, '05551234567', '1972-06-23'),
(31, 'Florentino', 'Pérez', 'perez@mail.com', '12345', 5000, 71, '05551234567', '1947-03-08'),
(32, 'Sergio', 'Ramos', 'ramos@mail.com', '12345', 5000, 21, '05551234567', '1986-03-30'),
(33, 'Cristiano ', 'Ronaldo ', 'ronaldo@mail.com', '12345', 5000, 21, '05551234567', '1985-02-05'),
(34, 'Karim ', 'Benzema', 'benzema@mail.com', '12345', 5000, 21, '05551234567', '1987-12-19'),
(35, 'Gareth', 'Bale', 'bale@mail.com', '12345', 5000, 21, '05551234567', '1989-07-16'),
(38, ' Hamza', ' Hamzaoglu', ' hamzaoglu@mail.com', ' 12345 ', 5000, 48, '05551234567', '1970-01-15'),
(39, ' Ali Safak', ' Ozturk', ' ozturk@mail.com ', ' 12345 ', 5000, 34, '05551234567', '1984-02-17'),
(40, ' Yusuf', ' Celik', ' celik@mail.com', ' 12345 ', 5000, 21, '05551234567', '1996-06-21'),
(41, ' Milan', ' Jevtovic', ' jevtovic@mail.com ', ' 12345 ', 5000, 24, '05551234567', '1993-06-13'),
(42, ' Emre', ' Güral', ' güral@mail.com ', ' 12345 ', 5000, 29, '05551234567', '1989-05-05'),
(43, ' Hakan ', ' Ozmert', ' ozmert@mail.com ', ' 12345 ', 5000, 32, '05551234567', '1985-06-03'),
(44, ' William-Jacques', ' Vainqueur', ' vainqueur@mail.com ', ' 12345 ', 5000, 29, '05551234567', '1988-09-19'),
(45, ' Senol ', ' Günes', ' gunes@mail.com', ' 12345 ', 5000, 65, '05551234567', '1952-06-01'),
(46, ' Fikret ', ' Orman', ' orman@mail.com ', ' 12345 ', 5000, 50, '05551234567', '1967-11-04'),
(47, ' Kepler Laveran Lima Fer', ' Pepe', ' pepe@mail.com', ' 12345 ', 5000, 35, '05551234567', '1983-02-26'),
(48, 'Caner ', ' Erkin', ' erkin@mail.com ', ' 12345 ', 5000, 29, '05551234567', '1988-10-04'),
(49, ' Gökhan ', ' Gönül', ' gonul@mail.com ', ' 12345 ', 5000, 33, '05551234567', '1985-01-04'),
(50, ' Ricardo  ', ' Quaresma', ' Quaresma@mail.com ', ' 12345 ', 5000, 34, '05551234567', '1983-09-26'),
(51, ' Necip ', ' Uysal', ' uysal@mail.com ', ' 12345 ', 5000, 27, '05551234567', '1991-01-24'),
(52, ' José María ', ' del Nido', ' delnido@mail.com', ' 12345 ', 5000, 60, '05551234567', '1957-08-06'),
(53, ' Jorge ', ' Sampaoli', ' sampaoli@mail.com ', ' 12345 ', 5000, 24, '05551234567', '1960-03-13'),
(54, ' Sergio ', ' Rico', ' rico@mail.com ', ' 12345 ', 5000, 24, '05551234567', '1993-09-01'),
(55, 'Sergio ', ' Escudero', ' escudero@mail.com ', ' 12345 ', 5000, 28, '05551234567', '1989-09-02'),
(56, ' Franco  ', ' Vázquez', ' vázquez@mail.com ', ' 12345 ', 5000, 29, '05551234567', '1989-02-22'),
(57, ' Jesus   ', ' Navas', ' navas@mail.com ', ' 12345 ', 5000, 32, '05551234567', '1985-11-21'),
(58, ' Sandro ', ' Ramirez', ' ramirez@mail.com ', ' 12345 ', 5000, 22, '05551234567', '1995-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` int(11) DEFAULT NULL,
  `team` int(11) DEFAULT NULL,
  `uniform_number` int(11) DEFAULT NULL,
  `nationality` varchar(32) DEFAULT NULL,
  `captain` bit(1) DEFAULT NULL,
  `agent` int(11) DEFAULT NULL,
  `position` enum('GK','SW','CB','RB','LB','LWB','RWB','DM','CM','AM','RM','LM','LW','SS','RW','CF') DEFAULT NULL,
  `player_injured` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `team`, `uniform_number`, `nationality`, `captain`, `agent`, `position`, `player_injured`) VALUES
(5, 1, 1, ' TR ', b'0', 1, 'GK', NULL),
(6, 1, 3, ' TR ', b'0', 2, 'LB', NULL),
(7, 1, 4, ' Chile   ', b'0', 1, 'RB', NULL),
(8, 1, 5, ' TR ', b'0', 1, 'CM', NULL),
(9, 1, 0, ' TR ', b'0', 2, 'CM', NULL),
(10, 3, 1, ' TR ', b'0', 1, 'GK', NULL),
(11, 3, 28, ' TR ', b'0', 2, 'CB', NULL),
(12, 3, 2, ' TR ', b'0', 1, 'CM', NULL),
(13, 3, 8, ' TR ', b'0', 2, 'RM', NULL),
(14, 2, 1, 'Sirbia', b'0', 1, 'GK', NULL),
(15, 2, 5, 'TR', b'0', 2, 'CM', NULL),
(16, 2, 11, 'TR', b'0', 2, 'LW', NULL),
(17, 2, 13, 'POR', b'0', 2, 'RB', NULL),
(25, 4, 3, 'SPA', b'0', 1, 'CB', NULL),
(26, 4, 8, 'SPA', b'0', 2, 'CM', NULL),
(27, 4, 5, 'SPA', b'0', 1, 'CB', NULL),
(28, 4, 10, 'SPA', b'1', 2, 'CF', NULL),
(29, 4, 18, 'SPA', b'0', 1, 'CB', NULL),
(32, 5, 4, ' SPA ', b'0', 1, 'CB', NULL),
(33, 5, 7, ' POR ', b'1', 1, 'CF', NULL),
(34, 5, 9, ' FRA ', b'0', 1, 'CF', NULL),
(35, 5, 11, ' ENG ', b'0', 1, 'CF', NULL),
(40, 6, 5, ' TR ', b'1', 1, 'CF', NULL),
(41, 6, 26, ' Sirbia', b'1', 2, 'CF', NULL),
(42, 6, 77, ' TR ', b'1', 1, 'CF', NULL),
(43, 6, 88, ' FRA ', b'1', 2, 'CF', NULL),
(44, 6, 19, ' FRA', b'1', 1, 'CF', NULL),
(47, 7, 5, ' POR ', b'1', 2, 'CB', NULL),
(48, 7, 88, ' TR', b'1', 1, 'LB', NULL),
(49, 7, 77, ' TR ', b'1', 2, 'RB', NULL),
(50, 7, 7, ' POR ', b'1', 1, 'CF', NULL),
(51, 7, 20, ' TR', b'1', 2, 'CF', NULL),
(54, 8, 1, ' SPA', b'1', 1, 'GK', NULL),
(55, 8, 18, ' SPA', b'1', 2, 'LB', NULL),
(56, 8, 22, ' ITA ', b'1', 2, 'CM', NULL),
(57, 8, 16, ' SPA ', b'1', 1, 'CF', NULL),
(58, 7, 23, ' SPA', b'1', 2, 'CF', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plays_in`
--

CREATE TABLE `plays_in` (
  `player` int(11) NOT NULL,
  `game` int(11) DEFAULT NULL,
  `passes` int(11) DEFAULT NULL,
  `goal` int(11) DEFAULT NULL,
  `injury_accuracy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sets`
--

CREATE TABLE `sets` (
  `player` int(11) NOT NULL,
  `agent` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `coach` int(11) DEFAULT NULL,
  `player` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`coach`, `player`) VALUES
(19, 5),
(19, 6),
(19, 7),
(19, 8),
(19, 9),
(18, 10),
(18, 11),
(18, 12),
(18, 13),
(20, 14),
(20, 15),
(20, 16),
(20, 17),
(24, 26),
(24, 27),
(24, 28),
(24, 29),
(24, 25);

-- --------------------------------------------------------

--
-- Table structure for table `treats`
--

CREATE TABLE `treats` (
  `player` int(11) NOT NULL,
  `doctor` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `injury_detail` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`);

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`coach_id`),
  ADD KEY `club_id` (`club_id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`player`,`club`),
  ADD KEY `club` (`club`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`director_id`),
  ADD KEY `club_id` (`club_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`),
  ADD KEY `club_id` (`club_id`);

--
-- Indexes for table `fan`
--
ALTER TABLE `fan`
  ADD PRIMARY KEY (`fan_id`),
  ADD KEY `favourite_team` (`favourite_team`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `league_id` (`league_id`),
  ADD KEY `home_team` (`home_team`),
  ADD KEY `away_team` (`away_team`);

--
-- Indexes for table `league`
--
ALTER TABLE `league`
  ADD PRIMARY KEY (`league_id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`player`,`date`),
  ADD KEY `director` (`director`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD UNIQUE KEY `team` (`team`,`uniform_number`),
  ADD KEY `agent` (`agent`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `plays_in`
--
ALTER TABLE `plays_in`
  ADD PRIMARY KEY (`player`),
  ADD KEY `game` (`game`);

--
-- Indexes for table `sets`
--
ALTER TABLE `sets`
  ADD PRIMARY KEY (`player`,`date`),
  ADD KEY `agent` (`agent`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD KEY `player` (`player`),
  ADD KEY `coach` (`coach`);

--
-- Indexes for table `treats`
--
ALTER TABLE `treats`
  ADD PRIMARY KEY (`player`),
  ADD KEY `doctor` (`doctor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `league`
--
ALTER TABLE `league`
  MODIFY `league_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `person` (`person_id`);

--
-- Constraints for table `coach`
--
ALTER TABLE `coach`
  ADD CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`),
  ADD CONSTRAINT `coach_ibfk_2` FOREIGN KEY (`coach_id`) REFERENCES `person` (`person_id`);

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`club`) REFERENCES `club` (`club_id`),
  ADD CONSTRAINT `contract_ibfk_2` FOREIGN KEY (`player`) REFERENCES `player` (`player_id`);

--
-- Constraints for table `director`
--
ALTER TABLE `director`
  ADD CONSTRAINT `director_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`),
  ADD CONSTRAINT `director_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `person` (`person_id`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`),
  ADD CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `person` (`person_id`);

--
-- Constraints for table `fan`
--
ALTER TABLE `fan`
  ADD CONSTRAINT `fan_ibfk_1` FOREIGN KEY (`fan_id`) REFERENCES `person` (`person_id`),
  ADD CONSTRAINT `fan_ibfk_2` FOREIGN KEY (`favourite_team`) REFERENCES `club` (`club_id`);

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`league_id`) REFERENCES `league` (`league_id`),
  ADD CONSTRAINT `game_ibfk_2` FOREIGN KEY (`home_team`) REFERENCES `club` (`club_id`),
  ADD CONSTRAINT `game_ibfk_3` FOREIGN KEY (`away_team`) REFERENCES `club` (`club_id`);

--
-- Constraints for table `offer`
--
ALTER TABLE `offer`
  ADD CONSTRAINT `offer_ibfk_1` FOREIGN KEY (`director`) REFERENCES `director` (`director_id`),
  ADD CONSTRAINT `offer_ibfk_2` FOREIGN KEY (`player`) REFERENCES `player` (`player_id`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`agent`) REFERENCES `agent` (`agent_id`),
  ADD CONSTRAINT `player_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `person` (`person_id`),
  ADD CONSTRAINT `player_ibfk_3` FOREIGN KEY (`team`) REFERENCES `club` (`club_id`);

--
-- Constraints for table `plays_in`
--
ALTER TABLE `plays_in`
  ADD CONSTRAINT `plays_in_ibfk_1` FOREIGN KEY (`game`) REFERENCES `game` (`game_id`);

--
-- Constraints for table `sets`
--
ALTER TABLE `sets`
  ADD CONSTRAINT `sets_ibfk_1` FOREIGN KEY (`agent`) REFERENCES `agent` (`agent_id`),
  ADD CONSTRAINT `sets_ibfk_2` FOREIGN KEY (`player`) REFERENCES `player` (`player_id`);

--
-- Constraints for table `trains`
--
ALTER TABLE `trains`
  ADD CONSTRAINT `trains_ibfk_1` FOREIGN KEY (`player`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `trains_ibfk_2` FOREIGN KEY (`coach`) REFERENCES `coach` (`coach_id`);

--
-- Constraints for table `treats`
--
ALTER TABLE `treats`
  ADD CONSTRAINT `treats_ibfk_1` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`doctor_id`),
  ADD CONSTRAINT `treats_ibfk_2` FOREIGN KEY (`player`) REFERENCES `player` (`player_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
