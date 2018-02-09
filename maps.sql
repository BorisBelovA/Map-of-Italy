-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 09 2018 г., 17:10
-- Версия сервера: 10.1.28-MariaDB
-- Версия PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `maps`
--

-- --------------------------------------------------------

--
-- Структура таблицы `italy`
--

CREATE TABLE `italy` (
  `Region_name` varchar(40) NOT NULL,
  `Region_code` varchar(30) NOT NULL,
  `Capital` varchar(30) NOT NULL,
  `Population` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `italy`
--

INSERT INTO `italy` (`Region_name`, `Region_code`, `Capital`, `Population`) VALUES
('Валле-д’Аоста', 'aosta-valley', 'Аоста', 127844),
('Пьемонт', 'piedmont', 'Турин', 4374052),
('Абруцци', 'abruzzo', 'Л’Акуила', 1312507),
('Апулия', 'apulia', 'Апулия', 4050803),
('Базиликата', 'basilicata', 'Потенца', 576194),
('Калабрия', 'calabria', 'Катандзаро', 1958238),
('Кампания', 'campania', 'Неаполь', 5769750),
('Эмилия-Романья', 'emilia-romagna', 'Болонья', 4377487),
('Фриули —\r\nВенеция-Джулия', 'friuli-venezia-giulia', 'Триест', 1221860),
('Лацио', 'lazio', 'Рим', 5557276),
('Лигурия', 'liguria', 'Генуя', 1565127),
('Ломбардия', 'lombardy', 'Милан', 9794525),
('Марке', 'marche', 'Анкона', 1545155),
('Молизе', 'molise', 'Кампобассо', 313341),
('Сардиния', 'sardinia', 'Кальяри', 24090),
('Сицилия', 'sicily', 'Палермо', 4999932),
('Трентино-Альто-Адидже', 'trentino-south-tyrol', 'Тренто и Больцано', 1039934),
('Тоскана', 'tuscany', 'Флоренция', 3692828),
('Умбрия', 'umbria', 'Перуджа', 886239),
('Венеция', 'veneto', 'Венеция', 4881756);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
