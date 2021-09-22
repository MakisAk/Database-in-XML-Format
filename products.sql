-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1:3306
-- Χρόνος δημιουργίας: 22 Σεπ 2021 στις 17:56:43
-- Έκδοση διακομιστή: 5.7.31
-- Έκδοση PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `products`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `RACK` int(11) NOT NULL,
  `SKU` int(11) NOT NULL,
  `SALES` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `products`
--

INSERT INTO `products` (`ID`, `PRICE`, `RACK`, `SKU`, `SALES`) VALUES
(5, 36, 5, 25215, 39),
(1, 50, 2, 54854, 23),
(3, 59, 3, 5441, 53),
(34, 578, 5, 45457, 36741),
(89, 698, 4, 5561, 8542),
(10, 451, 4, 57841, 63),
(58, 782, 6, 7845, 13),
(12, 456, 3, 45782, 74),
(56, 241, 1, 4527, 86);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
