-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 18 2020 г., 12:44
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pizza`
--
CREATE DATABASE IF NOT EXISTS `pizza` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `pizza`;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `structure` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `price30` int(11) DEFAULT NULL,
  `pieces` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `img`, `structure`, `category`, `price`, `price30`, `pieces`) VALUES
(1, 'Цыпленок Карри', 'https://adream.kz/site-media/images/products/%D0%A1%D1%8B%D1%80%20%D1%86%D1%8B%D0%BF%D0%BB%D0%B5%D0%BD%D0%BE%D0%BA.jpg', 'Соус Карри Heinz, моцарелла, сочный цыпленок\r\n', 'pizza', 1500, 2000, NULL),
(2, 'Филадельфия', 'https://sushi-master.kz/upload/iblock/f90/f90e3ae2199ba3aaa610edfc22432ae5.jpg', 'Лосось, сыр сливочный, огурец, нори, рис.\r\n', 'sushi', 1399, NULL, 8);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- База данных: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patronymic` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateBirth` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iin` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `patronymic`, `dateBirth`, `iin`, `phone`, `street`, `apartment`, `photo`) VALUES
(9, 'Бактияр', 'Бекбаев', 'Серикович', '2001-08-31', '1232132131231', '+7 (776) 726-15-49', 'дружба 63/2', '2', 0x2f75706c6f6164732f31363035363435383034757072617a686e2e6a7067),
(31, 'Иван', 'Иванов', 'Иванович', '1999-11-11', '1111111111111', '+7 (776) 726-15-49', 'дружба 63/2', '2', 0x2f75706c6f6164732f3136303536353436343338393939353932356633666433323363653133386266383032346361643966312e706e67),
(34, 'Борис', 'Борисов', 'Борисович', '3122-12-22', '010831551136', '+7 (222) 222-22-22', '159', '33', 0x2f75706c6f6164732f3136303536353438353574686f6d61732d64726f7561756c742d49425563755f3976584a632d756e73706c6173682e6a7067),
(35, 'Джони', 'Деп', 'Сергеевич', '1232-03-12', '2131231313', '+7 (333) 333-33-33', '321', '22', 0x2f75706c6f6164732f31363035363534393536d091d0b5d0b720d0bdd0b0d0b7d0b2d0b0d0bdd0b8d18f2e6a7067);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
