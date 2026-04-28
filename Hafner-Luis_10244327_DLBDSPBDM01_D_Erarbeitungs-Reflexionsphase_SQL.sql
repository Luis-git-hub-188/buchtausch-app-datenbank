-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Apr 2026 um 20:02
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `buchtausch_app`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `author`
--

INSERT INTO `author` (`author_id`, `author_name`) VALUES
(1, 'Autor 1'),
(2, 'Autor 2'),
(3, 'Autor 3'),
(4, 'Autor 4'),
(5, 'Autor 5'),
(6, 'Autor 6'),
(7, 'Autor 7'),
(8, 'Autor 8'),
(9, 'Autor 9'),
(10, 'Autor 10');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `language` varchar(40) DEFAULT NULL,
  `publication_year` smallint(6) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `book`
--

INSERT INTO `book` (`book_id`, `title`, `language`, `publication_year`, `isbn`, `publisher_id`) VALUES
(1, 'Buch 1', 'DE', 2020, 'ISBN1', 1),
(2, 'Buch 2', 'DE', 2021, 'ISBN2', 2),
(3, 'Buch 3', 'EN', 2019, 'ISBN3', 3),
(4, 'Buch 4', 'DE', 2018, 'ISBN4', 4),
(5, 'Buch 5', 'EN', 2022, 'ISBN5', 5),
(6, 'Buch 6', 'DE', 2017, 'ISBN6', 6),
(7, 'Buch 7', 'EN', 2016, 'ISBN7', 7),
(8, 'Buch 8', 'DE', 2015, 'ISBN8', 8),
(9, 'Buch 9', 'EN', 2014, 'ISBN9', 9),
(10, 'Buch 10', 'DE', 2013, 'ISBN10', 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bookauthor`
--

CREATE TABLE `bookauthor` (
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `bookauthor`
--

INSERT INTO `bookauthor` (`book_id`, `author_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bookcopy`
--

CREATE TABLE `bookcopy` (
  `copy_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `owner_user_id` int(11) DEFAULT NULL,
  `condition_grade` varchar(20) DEFAULT NULL,
  `max_loan_days` int(11) DEFAULT NULL,
  `shipping_allowed` tinyint(1) DEFAULT NULL,
  `deposit_amount` decimal(8,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `bookcopy`
--

INSERT INTO `bookcopy` (`copy_id`, `book_id`, `owner_user_id`, `condition_grade`, `max_loan_days`, `shipping_allowed`, `deposit_amount`, `status`) VALUES
(1, 1, 1, 'gut', 14, 1, 5.00, 'verfügbar'),
(2, 2, 2, 'neu', 10, 1, 3.00, 'verfügbar'),
(3, 3, 3, 'mittel', 7, 0, 2.00, 'verfügbar'),
(4, 4, 4, 'gut', 14, 1, 4.00, 'verfügbar'),
(5, 5, 5, 'alt', 5, 0, 1.00, 'verfügbar'),
(6, 6, 6, 'gut', 10, 1, 2.00, 'verfügbar'),
(7, 7, 7, 'neu', 12, 1, 3.00, 'verfügbar'),
(8, 8, 8, 'mittel', 8, 0, 2.00, 'verfügbar'),
(9, 9, 9, 'gut', 15, 1, 5.00, 'verfügbar'),
(10, 10, 10, 'neu', 20, 1, 6.00, 'verfügbar');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bookgenre`
--

CREATE TABLE `bookgenre` (
  `book_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `bookgenre`
--

INSERT INTO `bookgenre` (`book_id`, `genre_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `copyavailability`
--

CREATE TABLE `copyavailability` (
  `copy_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `copyavailability`
--

INSERT INTO `copyavailability` (`copy_id`, `location_id`, `slot_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `deliverymethod`
--

CREATE TABLE `deliverymethod` (
  `delivery_method_id` int(11) NOT NULL,
  `method_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `deliverymethod`
--

INSERT INTO `deliverymethod` (`delivery_method_id`, `method_name`) VALUES
(1, 'PICKUP'),
(2, 'SHIPPING'),
(3, 'TESTdelivery1'),
(4, 'TESTdelivery2'),
(5, 'TESTdelivery3'),
(6, 'TESTdelivery4'),
(7, 'TESTdelivery5'),
(8, 'TESTdelivery6'),
(9, 'TESTdelivery7'),
(10, 'TESTdelivery8');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`) VALUES
(1, 'Roman'),
(2, 'Thriller'),
(3, 'Fantasy'),
(4, 'Sci-Fi'),
(5, 'Krimi'),
(6, 'Sachbuch'),
(7, 'Biografie'),
(8, 'Drama'),
(9, 'Horror'),
(10, 'Kinderbuch');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `borrower_user_id` int(11) DEFAULT NULL,
  `copy_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `loan`
--

INSERT INTO `loan` (`loan_id`, `borrower_user_id`, `copy_id`, `location_id`, `start_date`, `due_date`, `return_date`) VALUES
(1, 2, 1, 1, '2025-01-01', '2025-01-14', NULL),
(2, 3, 2, 2, '2025-01-02', '2025-01-12', NULL),
(3, 4, 3, 3, '2025-01-03', '2025-01-10', NULL),
(4, 5, 4, 4, '2025-01-04', '2025-01-18', NULL),
(5, 6, 5, 5, '2025-01-05', '2025-01-09', NULL),
(6, 7, 6, 6, '2025-01-06', '2025-01-16', NULL),
(7, 8, 7, 7, '2025-01-07', '2025-01-19', NULL),
(8, 9, 8, 8, '2025-01-08', '2025-01-15', NULL),
(9, 10, 9, 9, '2025-01-09', '2025-01-20', NULL),
(10, 1, 10, 10, '2025-01-10', '2025-01-30', NULL);

--
-- Trigger `loan`
--
DELIMITER $$
CREATE TRIGGER `trg_after_insert_loan` AFTER INSERT ON `loan` FOR EACH ROW BEGIN
    UPDATE bookcopy
    SET status = 'ausgeliehen'
    WHERE copy_id = NEW.copy_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_after_update_loan_return` AFTER UPDATE ON `loan` FOR EACH ROW BEGIN
    IF NEW.return_date IS NOT NULL THEN
        UPDATE bookcopy
        SET status = 'verfügbar'
        WHERE copy_id = NEW.copy_id;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pickuplocation`
--

CREATE TABLE `pickuplocation` (
  `location_id` int(11) NOT NULL,
  `owner_user_id` int(11) DEFAULT NULL,
  `street` varchar(120) DEFAULT NULL,
  `zip` varchar(12) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `pickuplocation`
--

INSERT INTO `pickuplocation` (`location_id`, `owner_user_id`, `street`, `zip`, `city`, `latitude`, `longitude`) VALUES
(1, 1, 'Straße 1', '76133', 'Karlsruhe', 49.000000, 8.400000),
(2, 2, 'Straße 2', '76131', 'Karlsruhe', 49.100000, 8.500000),
(3, 3, 'Straße 3', '76135', 'Karlsruhe', 49.200000, 8.600000),
(4, 4, 'Straße 4', '76137', 'Karlsruhe', 49.300000, 8.700000),
(5, 5, 'Straße 5', '76139', 'Karlsruhe', 49.400000, 8.800000),
(6, 6, 'Straße 6', '76149', 'Karlsruhe', 49.500000, 8.900000),
(7, 7, 'Straße 7', '76185', 'Karlsruhe', 49.600000, 8.100000),
(8, 8, 'Straße 8', '76187', 'Karlsruhe', 49.700000, 8.200000),
(9, 9, 'Straße 9', '76189', 'Karlsruhe', 49.800000, 8.300000),
(10, 10, 'Straße 10', '76199', 'Karlsruhe', 49.900000, 8.000000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`) VALUES
(1, 'Verlag A'),
(2, 'Verlag B'),
(3, 'Verlag C'),
(4, 'Verlag D'),
(5, 'Verlag E'),
(6, 'Verlag F'),
(7, 'Verlag G'),
(8, 'Verlag H'),
(9, 'Verlag I'),
(10, 'Verlag J');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL,
  `borrower_user_id` int(11) DEFAULT NULL,
  `copy_id` int(11) DEFAULT NULL,
  `delivery_method_id` int(11) DEFAULT NULL,
  `requested_at` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `borrower_user_id`, `copy_id`, `delivery_method_id`, `requested_at`, `status`) VALUES
(1, 2, 1, 1, '2026-03-27 17:37:03', 'offen'),
(2, 3, 2, 1, '2026-03-27 17:37:03', 'offen'),
(3, 4, 3, 2, '2026-03-27 17:37:03', 'angenommen'),
(4, 5, 4, 1, '2026-03-27 17:37:03', 'offen'),
(5, 6, 5, 2, '2026-03-27 17:37:03', 'abgelehnt'),
(6, 7, 6, 1, '2026-03-27 17:37:03', 'offen'),
(7, 8, 7, 2, '2026-03-27 17:37:03', 'angenommen'),
(8, 9, 8, 1, '2026-03-27 17:37:03', 'offen'),
(9, 10, 9, 2, '2026-03-27 17:37:03', 'offen'),
(10, 1, 10, 1, '2026-03-27 17:37:03', 'angenommen');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `reviewer_user_id` int(11) DEFAULT NULL,
  `copy_id` int(11) DEFAULT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `review`
--

INSERT INTO `review` (`review_id`, `reviewer_user_id`, `copy_id`, `rating`, `comment`) VALUES
(1, 2, 1, 5, 'Super'),
(2, 3, 2, 4, 'Gut'),
(3, 4, 3, 3, 'Okay'),
(4, 5, 4, 5, 'Top'),
(5, 6, 5, 2, 'Schlecht'),
(6, 7, 6, 4, 'Gut'),
(7, 8, 7, 5, 'Mega'),
(8, 9, 8, 3, 'Mittel'),
(9, 10, 9, 4, 'Gut'),
(10, 1, 10, 5, 'Perfekt');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'GAST'),
(2, 'USER'),
(3, 'ADMIN'),
(4, 'MODERATOR'),
(5, 'TESTrole1'),
(6, 'TESTrole2'),
(7, 'TESTrole3'),
(8, 'TESTrole4'),
(9, 'TESTrole5'),
(10, 'TESTrole6');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `timeslot`
--

CREATE TABLE `timeslot` (
  `slot_id` int(11) NOT NULL,
  `weekday` tinyint(4) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `timeslot`
--

INSERT INTO `timeslot` (`slot_id`, `weekday`, `start_time`, `end_time`) VALUES
(1, 1, '09:00:00', '11:00:00'),
(2, 2, '10:00:00', '12:00:00'),
(3, 3, '11:00:00', '13:00:00'),
(4, 4, '12:00:00', '14:00:00'),
(5, 5, '13:00:00', '15:00:00'),
(6, 6, '14:00:00', '16:00:00'),
(7, 7, '15:00:00', '17:00:00'),
(8, 1, '16:00:00', '18:00:00'),
(9, 2, '17:00:00', '19:00:00'),
(10, 3, '18:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(120) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `zip` varchar(12) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`user_id`, `full_name`, `email`, `phone`, `zip`, `city`, `created_at`) VALUES
(1, 'Max Mustermann', 'max@mail.de', '123456', '76133', 'Karlsruhe', '2026-03-27 17:15:10'),
(2, 'Anna Schmidt', 'anna@mail.de', '111111', '76131', 'Karlsruhe', '2026-03-27 17:15:10'),
(3, 'Tom Becker', 'tom@mail.de', '222222', '76135', 'Karlsruhe', '2026-03-27 17:15:10'),
(4, 'Lisa Weber', 'lisa@mail.de', '333333', '76137', 'Karlsruhe', '2026-03-27 17:15:10'),
(5, 'Paul Fischer', 'paul@mail.de', '444444', '76139', 'Karlsruhe', '2026-03-27 17:15:10'),
(6, 'Sara Klein', 'sara@mail.de', '555555', '76149', 'Karlsruhe', '2026-03-27 17:15:10'),
(7, 'Jan Wolf', 'jan@mail.de', '666666', '76185', 'Karlsruhe', '2026-03-27 17:15:10'),
(8, 'Mia Koch', 'mia@mail.de', '777777', '76187', 'Karlsruhe', '2026-03-27 17:15:10'),
(9, 'Tim Braun', 'tim@mail.de', '888888', '76189', 'Karlsruhe', '2026-03-27 17:15:10'),
(10, 'Lea Mayer', 'lea@mail.de', '999999', '76199', 'Karlsruhe', '2026-03-27 17:15:10');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userrole`
--

CREATE TABLE `userrole` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `userrole`
--

INSERT INTO `userrole` (`user_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `view_available_books`
-- (Siehe unten für die tatsächliche Ansicht)
--
CREATE TABLE `view_available_books` (
`copy_id` int(11)
,`title` varchar(200)
,`owner` varchar(120)
,`city` varchar(80)
,`condition_grade` varchar(20)
,`deposit_amount` decimal(8,2)
,`status` varchar(20)
);

-- --------------------------------------------------------

--
-- Struktur des Views `view_available_books`
--
DROP TABLE IF EXISTS `view_available_books`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_available_books`  AS SELECT `bc`.`copy_id` AS `copy_id`, `b`.`title` AS `title`, `u`.`full_name` AS `owner`, `pl`.`city` AS `city`, `bc`.`condition_grade` AS `condition_grade`, `bc`.`deposit_amount` AS `deposit_amount`, `bc`.`status` AS `status` FROM ((((`bookcopy` `bc` join `book` `b` on(`bc`.`book_id` = `b`.`book_id`)) join `user` `u` on(`bc`.`owner_user_id` = `u`.`user_id`)) join `copyavailability` `ca` on(`bc`.`copy_id` = `ca`.`copy_id`)) join `pickuplocation` `pl` on(`ca`.`location_id` = `pl`.`location_id`)) WHERE `bc`.`status` = 'verfügbar' ;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indizes für die Tabelle `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- Indizes für die Tabelle `bookauthor`
--
ALTER TABLE `bookauthor`
  ADD PRIMARY KEY (`book_id`,`author_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indizes für die Tabelle `bookcopy`
--
ALTER TABLE `bookcopy`
  ADD PRIMARY KEY (`copy_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `owner_user_id` (`owner_user_id`);

--
-- Indizes für die Tabelle `bookgenre`
--
ALTER TABLE `bookgenre`
  ADD PRIMARY KEY (`book_id`,`genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indizes für die Tabelle `copyavailability`
--
ALTER TABLE `copyavailability`
  ADD PRIMARY KEY (`copy_id`,`location_id`,`slot_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `slot_id` (`slot_id`);

--
-- Indizes für die Tabelle `deliverymethod`
--
ALTER TABLE `deliverymethod`
  ADD PRIMARY KEY (`delivery_method_id`);

--
-- Indizes für die Tabelle `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indizes für die Tabelle `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `borrower_user_id` (`borrower_user_id`),
  ADD KEY `copy_id` (`copy_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indizes für die Tabelle `pickuplocation`
--
ALTER TABLE `pickuplocation`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `owner_user_id` (`owner_user_id`);

--
-- Indizes für die Tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indizes für die Tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `borrower_user_id` (`borrower_user_id`),
  ADD KEY `copy_id` (`copy_id`),
  ADD KEY `delivery_method_id` (`delivery_method_id`);

--
-- Indizes für die Tabelle `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `reviewer_user_id` (`reviewer_user_id`),
  ADD KEY `copy_id` (`copy_id`);

--
-- Indizes für die Tabelle `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indizes für die Tabelle `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`slot_id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indizes für die Tabelle `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `bookcopy`
--
ALTER TABLE `bookcopy`
  MODIFY `copy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `deliverymethod`
--
ALTER TABLE `deliverymethod`
  MODIFY `delivery_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `pickuplocation`
--
ALTER TABLE `pickuplocation`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `timeslot`
--
ALTER TABLE `timeslot`
  MODIFY `slot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`);

--
-- Constraints der Tabelle `bookauthor`
--
ALTER TABLE `bookauthor`
  ADD CONSTRAINT `bookauthor_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  ADD CONSTRAINT `bookauthor_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`);

--
-- Constraints der Tabelle `bookcopy`
--
ALTER TABLE `bookcopy`
  ADD CONSTRAINT `bookcopy_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  ADD CONSTRAINT `bookcopy_ibfk_2` FOREIGN KEY (`owner_user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints der Tabelle `bookgenre`
--
ALTER TABLE `bookgenre`
  ADD CONSTRAINT `bookgenre_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  ADD CONSTRAINT `bookgenre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);

--
-- Constraints der Tabelle `copyavailability`
--
ALTER TABLE `copyavailability`
  ADD CONSTRAINT `copyavailability_ibfk_1` FOREIGN KEY (`copy_id`) REFERENCES `bookcopy` (`copy_id`),
  ADD CONSTRAINT `copyavailability_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `pickuplocation` (`location_id`),
  ADD CONSTRAINT `copyavailability_ibfk_3` FOREIGN KEY (`slot_id`) REFERENCES `timeslot` (`slot_id`);

--
-- Constraints der Tabelle `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`borrower_user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`copy_id`) REFERENCES `bookcopy` (`copy_id`),
  ADD CONSTRAINT `loan_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `pickuplocation` (`location_id`);

--
-- Constraints der Tabelle `pickuplocation`
--
ALTER TABLE `pickuplocation`
  ADD CONSTRAINT `pickuplocation_ibfk_1` FOREIGN KEY (`owner_user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints der Tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`borrower_user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`copy_id`) REFERENCES `bookcopy` (`copy_id`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`delivery_method_id`) REFERENCES `deliverymethod` (`delivery_method_id`);

--
-- Constraints der Tabelle `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`reviewer_user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`copy_id`) REFERENCES `bookcopy` (`copy_id`);

--
-- Constraints der Tabelle `userrole`
--
ALTER TABLE `userrole`
  ADD CONSTRAINT `userrole_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `userrole_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
