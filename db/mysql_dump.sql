-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Počítač: localhost
-- Vytvořeno: Sob 01. úno 2020, 17:53
-- Verze serveru: 5.7.17
-- Verze PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Databáze: `olc`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id_album` int(11) NOT NULL,
  `id_typ_zanr` int(11) NOT NULL,
  `nazev` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `datum_vydani` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `album`
--

INSERT INTO `album` (`id_album`, `id_typ_zanr`, `nazev`, `datum_vydani`) VALUES
(1, 2, 'A Night at the Opera', '1975-11-21'),
(2, 1, 'Waterloo', '1974-03-04'),
(3, 3, 'Koncert B moll pro klavír a orchestr, op. 23', '1974-01-01'),
(4, 4, 'Swingující semafor', '1996-01-01');

-- --------------------------------------------------------

--
-- Struktura tabulky `album_interpret`
--

CREATE TABLE IF NOT EXISTS `album_interpret` (
  `id_album_interpret` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `id_interpret` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `album_interpret`
--

INSERT INTO `album_interpret` (`id_album_interpret`, `id_album`, `id_interpret`) VALUES
(1, 1, 1),
(4, 2, 3),
(5, 3, 4),
(6, 4, 5);

-- --------------------------------------------------------

--
-- Struktura tabulky `album_skladba`
--

CREATE TABLE IF NOT EXISTS `album_skladba` (
  `id_album_skladba` int(11) NOT NULL,
  `cislo_stopy` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `id_skladba` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `album_skladba`
--

INSERT INTO `album_skladba` (`id_album_skladba`, `cislo_stopy`, `id_album`, `id_skladba`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 1, 3),
(4, 4, 1, 4),
(5, 5, 1, 5),
(6, 6, 1, 6),
(7, 7, 1, 7),
(8, 8, 1, 8),
(9, 9, 1, 9),
(10, 10, 1, 10),
(11, 11, 1, 11),
(12, 12, 1, 12),
(13, 1, 2, 13),
(14, 2, 2, 14),
(15, 3, 2, 15),
(16, 4, 2, 16),
(17, 5, 2, 17),
(18, 6, 2, 18),
(19, 7, 2, 19),
(20, 8, 2, 20),
(21, 9, 2, 21),
(22, 10, 2, 22),
(23, 11, 2, 23),
(24, 12, 2, 24),
(25, 1, 3, 25),
(26, 2, 3, 26),
(27, 3, 3, 27),
(28, 4, 3, 28),
(29, 1, 4, 29),
(40, 2, 4, 30),
(41, 3, 4, 31),
(42, 4, 4, 32),
(43, 5, 4, 33),
(44, 6, 4, 34),
(45, 7, 4, 35),
(46, 8, 4, 36),
(47, 9, 4, 37),
(48, 10, 4, 38),
(49, 11, 4, 39),
(50, 12, 4, 40),
(51, 13, 4, 41),
(52, 14, 4, 42),
(53, 15, 4, 43),
(54, 16, 4, 44),
(55, 17, 4, 45);

-- --------------------------------------------------------

--
-- Struktura tabulky `interpret`
--

CREATE TABLE IF NOT EXISTS `interpret` (
  `id_interpret` int(11) NOT NULL,
  `nazev` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `id_typ_narodnost` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `interpret`
--

INSERT INTO `interpret` (`id_interpret`, `nazev`, `id_typ_narodnost`) VALUES
(1, 'Queen', 2),
(2, 'Olympic', 1),
(3, 'ABBA', 3),
(4, 'Petr Iljič Čajkovskij', 4),
(5, 'Swing band Ferdinanda Havlíka a jiní', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `skladba`
--

CREATE TABLE IF NOT EXISTS `skladba` (
  `id_skladba` int(11) NOT NULL,
  `nazev` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `delka` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `skladba`
--

INSERT INTO `skladba` (`id_skladba`, `nazev`, `delka`) VALUES
(1, 'Death on Two Legs (Decided to…)', '00:03:43'),
(2, 'Lazing on a Sunday Afternoon', '00:01:07'),
(3, 'I''m in Love with My Car', '00:03:05'),
(4, 'You''re My Best Friend', '00:02:52'),
(5, '''39', '00:03:31'),
(6, 'Sweet Lady', '00:04:03'),
(7, 'Seaside Rendezvous', '00:02:15'),
(8, 'The Prophet''s Song', '00:08:21'),
(9, 'Love of My Life', '00:03:39'),
(10, 'Good Company', '00:03:23'),
(11, 'Bohemian Rhapsody', '00:05:55'),
(12, 'God Save the Queen', '00:01:18'),
(13, 'Waterloo (švédská verze)', '00:02:45'),
(14, 'Sitting in the Palmtree', '00:03:39'),
(15, 'King Kong Song', '00:03:14'),
(16, 'Hasta Ma?ana', '00:03:05'),
(17, 'My Mama Said', '00:03:14'),
(18, 'Dance (While The Music Still Goes On)', '00:03:05'),
(19, 'Honey, Honey', '00:02:55'),
(20, 'Watch Out', '00:03:46'),
(21, 'What About Livingstone?', '00:02:54'),
(22, 'Gonna Sing You My Lovesong', '00:03:35'),
(23, 'Suzy-Hang-Around', '00:03:11'),
(24, 'Waterloo (anglická verze)', '00:02:46'),
(25, 'Koncert pro klavír a orchestr č. 1 b moll, op. 23', '00:32:48'),
(26, 'Allegro Non Troppo E Molto Maestoso', '00:19:20'),
(27, 'Andantino semplice', '00:06:38'),
(28, 'Allegro con fuoco', '00:06:42'),
(29, 'Směs melodií Jiřího Šlitra I.', '00:07:06'),
(30, 'Želví Blues', '00:03:08'),
(31, 'Co je to láska', '00:01:36'),
(32, 'Sup a žluva', '00:02:49'),
(33, 'Směs melodií Jiřího Šlitra II.', '00:08:05'),
(34, 'Magdaléna', '00:01:50'),
(35, 'Škrhola', '00:01:53'),
(36, 'Miláček ', '00:02:34'),
(37, 'Směs melodií Jiřího Šlitra III.', '00:04:38'),
(38, 'Protektorátní blues', '00:03:04'),
(39, 'Hallo Satchmo', '00:02:01'),
(40, 'Kdyby tisíc klarinetů', '00:03:04'),
(41, 'Máme kapitál', '00:02:32'),
(42, 'Semafor Shaker', '00:02:28'),
(43, 'Hrajeme dál', '00:02:48'),
(44, 'Směs melodií Jiřího Šlitra IV.', '00:06:43'),
(45, 'Nána v povětří', '00:03:34');

-- --------------------------------------------------------

--
-- Struktura tabulky `typ_narodnost`
--

CREATE TABLE IF NOT EXISTS `typ_narodnost` (
  `id_typ_narodnost` int(11) NOT NULL,
  `nazev` varchar(255) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `typ_narodnost`
--

INSERT INTO `typ_narodnost` (`id_typ_narodnost`, `nazev`) VALUES
(1, 'česká'),
(2, 'anglická'),
(3, 'švédská'),
(4, 'ruská');

-- --------------------------------------------------------

--
-- Struktura tabulky `typ_zanr`
--

CREATE TABLE IF NOT EXISTS `typ_zanr` (
  `id_typ_zanr` int(11) NOT NULL,
  `nazev` varchar(255) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `typ_zanr`
--

INSERT INTO `typ_zanr` (`id_typ_zanr`, `nazev`) VALUES
(1, 'pop'),
(2, 'rock'),
(3, 'klasická hudba'),
(4, 'swing');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `id_typ_zanr` (`id_typ_zanr`),
  ADD KEY `nazev` (`nazev`);

--
-- Klíče pro tabulku `album_interpret`
--
ALTER TABLE `album_interpret`
  ADD PRIMARY KEY (`id_album_interpret`),
  ADD KEY `id_interpret` (`id_interpret`),
  ADD KEY `id_album` (`id_album`);

--
-- Klíče pro tabulku `album_skladba`
--
ALTER TABLE `album_skladba`
  ADD PRIMARY KEY (`id_album_skladba`),
  ADD KEY `id_skladba` (`id_skladba`),
  ADD KEY `id_album` (`id_album`);

--
-- Klíče pro tabulku `interpret`
--
ALTER TABLE `interpret`
  ADD PRIMARY KEY (`id_interpret`),
  ADD KEY `id_typ_narodnost` (`id_typ_narodnost`),
  ADD KEY `nazev` (`nazev`);

--
-- Klíče pro tabulku `skladba`
--
ALTER TABLE `skladba`
  ADD PRIMARY KEY (`id_skladba`),
  ADD KEY `delka` (`delka`);

--
-- Klíče pro tabulku `typ_narodnost`
--
ALTER TABLE `typ_narodnost`
  ADD PRIMARY KEY (`id_typ_narodnost`);

--
-- Klíče pro tabulku `typ_zanr`
--
ALTER TABLE `typ_zanr`
  ADD PRIMARY KEY (`id_typ_zanr`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pro tabulku `album_interpret`
--
ALTER TABLE `album_interpret`
  MODIFY `id_album_interpret` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pro tabulku `album_skladba`
--
ALTER TABLE `album_skladba`
  MODIFY `id_album_skladba` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT pro tabulku `interpret`
--
ALTER TABLE `interpret`
  MODIFY `id_interpret` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pro tabulku `skladba`
--
ALTER TABLE `skladba`
  MODIFY `id_skladba` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pro tabulku `typ_narodnost`
--
ALTER TABLE `typ_narodnost`
  MODIFY `id_typ_narodnost` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pro tabulku `typ_zanr`
--
ALTER TABLE `typ_zanr`
  MODIFY `id_typ_zanr` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `Relace2` FOREIGN KEY (`id_typ_zanr`) REFERENCES `typ_zanr` (`id_typ_zanr`);

--
-- Omezení pro tabulku `album_interpret`
--
ALTER TABLE `album_interpret`
  ADD CONSTRAINT `Relace10` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`),
  ADD CONSTRAINT `Relace11` FOREIGN KEY (`id_interpret`) REFERENCES `interpret` (`id_interpret`);

--
-- Omezení pro tabulku `album_skladba`
--
ALTER TABLE `album_skladba`
  ADD CONSTRAINT `Relace7` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`),
  ADD CONSTRAINT `Relace8` FOREIGN KEY (`id_skladba`) REFERENCES `skladba` (`id_skladba`);

--
-- Omezení pro tabulku `interpret`
--
ALTER TABLE `interpret`
  ADD CONSTRAINT `Relace9` FOREIGN KEY (`id_typ_narodnost`) REFERENCES `typ_narodnost` (`id_typ_narodnost`);
