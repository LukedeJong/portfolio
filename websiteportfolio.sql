-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 jun 2021 om 12:05
-- Serverversie: 10.4.17-MariaDB
-- PHP-versie: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websiteportfolio`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(4) NOT NULL,
  `naam` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `telefoonnummer` varchar(10) NOT NULL,
  `onderwerp` varchar(256) NOT NULL,
  `bericht` varchar(256) NOT NULL,
  `bedrijfsnaam` varchar(256) DEFAULT NULL,
  `postcode` varchar(256) NOT NULL,
  `vestigingsplaats` varchar(256) NOT NULL,
  `datum` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `contact`
--

INSERT INTO `contact` (`contact_id`, `naam`, `email`, `telefoonnummer`, `onderwerp`, `bericht`, `bedrijfsnaam`, `postcode`, `vestigingsplaats`, `datum`) VALUES
(18, 'LukedeJong', 'email@email.nl', '0612345678', 'Werk', 'Werk', 'VanVessem', '2036 HS', 'Haarlem', '18-06-2021'),
(19, 'LukedeJong', 'email@email.nl', '0612345678', 'Werk', 'Werk', 'VanVessem', '2036 HS', 'Haarlem', '18-06-2021');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `projecten`
--

CREATE TABLE `projecten` (
  `project_id` int(4) NOT NULL,
  `projectnaam` varchar(256) NOT NULL,
  `project_omschrijving` varchar(512) NOT NULL,
  `project_startdatum` date DEFAULT NULL,
  `project_einddatum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `projecten`
--

INSERT INTO `projecten` (`project_id`, `projectnaam`, `project_omschrijving`, `project_startdatum`, `project_einddatum`) VALUES
(2, 'Portfolio', 'Eigen portfolio website', NULL, NULL),
(3, 'Bingo', 'Eigen gemaakte bingo', NULL, NULL),
(4, 'Webshop', 'Eigen fitness webshop', NULL, NULL),
(5, 'Ganzenbord', 'Eigen gemaakte ganzenbord', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `skills`
--

CREATE TABLE `skills` (
  `skill_id` int(4) NOT NULL,
  `skill_naam` varchar(256) NOT NULL,
  `skill_value` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `skills`
--

INSERT INTO `skills` (`skill_id`, `skill_naam`, `skill_value`) VALUES
(1, 'html', '90%'),
(2, 'css', '70%'),
(3, 'csharp', '85%'),
(4, 'php', '65%'),
(5, 'mysql', '60%');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `werkervaring`
--

CREATE TABLE `werkervaring` (
  `werk_id` int(4) NOT NULL,
  `werk_bedrijf` varchar(256) NOT NULL,
  `werk_omschrijving` varchar(256) NOT NULL,
  `werk_datum_van` date NOT NULL,
  `werk_datum_tot` date DEFAULT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `werkervaring`
--

INSERT INTO `werkervaring` (`werk_id`, `werk_bedrijf`, `werk_omschrijving`, `werk_datum_van`, `werk_datum_tot`, `image`) VALUES
(1, 'Van Vessem', 'Bakkerij', '2018-08-08', NULL, ''),
(2, 'FBI', 'OPEN UP', '0000-00-00', NULL, ''),
(3, 'FBI', 'OPEN UP', '2018-08-08', NULL, ''),
(4, 'CIA', 'OPEN UP', '2018-08-08', NULL, '');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexen voor tabel `projecten`
--
ALTER TABLE `projecten`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexen voor tabel `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexen voor tabel `werkervaring`
--
ALTER TABLE `werkervaring`
  ADD PRIMARY KEY (`werk_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT voor een tabel `projecten`
--
ALTER TABLE `projecten`
  MODIFY `project_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `skill_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `werkervaring`
--
ALTER TABLE `werkervaring`
  MODIFY `werk_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
