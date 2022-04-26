-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 26. 09:43
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `company`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `coworker`
--

CREATE TABLE `coworker` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `email` text COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `coworker`
--

INSERT INTO `coworker` (`id`, `name`, `email`) VALUES
(1, 'JOSEF', 'josef@gmail.com');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `notebook`
--

CREATE TABLE `notebook` (
  `id` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `Type` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `coworker_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL,
  `Brand` int(11) NOT NULL,
  `Type` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `coworker_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `phone`
--

INSERT INTO `phone` (`id`, `Brand`, `Type`, `coworker_id`) VALUES
(1, 3, 'v2', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `coworker`
--
ALTER TABLE `coworker`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `notebook`
--
ALTER TABLE `notebook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coworker_id` (`coworker_id`);

--
-- A tábla indexei `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coworker_id` (`coworker_id`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `notebook`
--
ALTER TABLE `notebook`
  ADD CONSTRAINT `notebook_ibfk_1` FOREIGN KEY (`coworker_id`) REFERENCES `coworker` (`id`);

--
-- Megkötések a táblához `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`coworker_id`) REFERENCES `coworker` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
