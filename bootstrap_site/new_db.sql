-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 23 2021 г., 20:08
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `new_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `logoPic` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `counts`
--

CREATE TABLE `counts` (
  `id` int(11) NOT NULL,
  `icon` tinytext DEFAULT NULL,
  `count` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `text` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `db_users`
--

CREATE TABLE `db_users` (
  `id` int(11) NOT NULL,
  `userName` tinytext NOT NULL,
  `userPass` varchar(32) NOT NULL,
  `status` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `db_users`
--

INSERT INTO `db_users` (`id`, `userName`, `userPass`, `status`) VALUES
(1, 'admin@bk.ru', '827ccb0eea8a706c4c34a16891f84e7b', 'God'),
(3, 'nikolai@bk.ru', '827ccb0eea8a706c4c34a16891f84e7b', 'God'),
(5, 'guest@bk.ru', '827ccb0eea8a706c4c34a16891f84e7b', 'Guest'),
(6, 'tech@kl', 'd41d8cd98f00b204e9800998ecf8427e', 'Guest'),
(11, 'wernik@mk', '827ccb0eea8a706c4c34a16891f84e7b', 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `faq_list`
--

CREATE TABLE `faq_list` (
  `id` int(11) NOT NULL,
  `question` tinytext DEFAULT NULL,
  `answer` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `footer_col`
--

CREATE TABLE `footer_col` (
  `id` int(11) NOT NULL,
  `header` tinytext DEFAULT NULL,
  `list_object` tinytext DEFAULT NULL,
  `list_object_link` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `icon_box`
--

CREATE TABLE `icon_box` (
  `id` int(11) NOT NULL,
  `icon` tinytext DEFAULT NULL,
  `title` tinytext DEFAULT NULL,
  `text` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `kta20v_languages`
--

CREATE TABLE `kta20v_languages` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `descr` text NOT NULL,
  `code` varchar(2) NOT NULL,
  `listOrder` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kta20v_languages`
--

INSERT INTO `kta20v_languages` (`id`, `title`, `descr`, `code`, `listOrder`) VALUES
(1, 'по-русски', 'Русский язык', 'ru', 2),
(2, 'in english', 'English language', 'en', 3),
(3, 'eesti keeles', 'Eesti keel', 'et', 1),
(4, 'Par Espaniol', 'En espaniol', 'es', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `title` tinytext DEFAULT NULL,
  `descr` tinytext DEFAULT NULL,
  `code` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` tinytext DEFAULT NULL,
  `code` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `parentCode` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_filters`
--

CREATE TABLE `portfolio_filters` (
  `id` int(11) NOT NULL,
  `title` tinytext DEFAULT NULL,
  `code` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_item`
--

CREATE TABLE `portfolio_item` (
  `id` int(11) NOT NULL,
  `photos` tinytext DEFAULT NULL,
  `title` tinytext DEFAULT NULL,
  `comment` tinytext DEFAULT NULL,
  `filter` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `header` tinytext DEFAULT NULL,
  `text` tinytext DEFAULT NULL,
  `category` tinytext DEFAULT NULL,
  `client` tinytext DEFAULT NULL,
  `projDate` tinytext DEFAULT NULL,
  `projLink` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `pricing_box`
--

CREATE TABLE `pricing_box` (
  `id` int(11) NOT NULL,
  `header` tinytext DEFAULT NULL,
  `text` tinytext DEFAULT NULL,
  `button` tinytext DEFAULT NULL,
  `buttonlink` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tabs`
--

CREATE TABLE `tabs` (
  `id` int(11) NOT NULL,
  `title` tinytext DEFAULT NULL,
  `header` tinytext DEFAULT NULL,
  `icon` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `image` tinytext DEFAULT NULL,
  `text` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `team_member`
--

CREATE TABLE `team_member` (
  `id` int(11) NOT NULL,
  `photo` tinytext DEFAULT NULL,
  `twitter_icon` tinytext DEFAULT NULL,
  `twitter_icon_link` tinytext DEFAULT NULL,
  `facebook_icon` tinytext DEFAULT NULL,
  `facebook_icon_link` tinytext DEFAULT NULL,
  `instagramm_icon` tinytext DEFAULT NULL,
  `instagramm_icon_link` tinytext DEFAULT NULL,
  `linkedin_icon` tinytext DEFAULT NULL,
  `linkedin_icon_link` tinytext DEFAULT NULL,
  `name` tinytext DEFAULT NULL,
  `job` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `testimonials_item`
--

CREATE TABLE `testimonials_item` (
  `id` int(11) NOT NULL,
  `photo` tinytext DEFAULT NULL,
  `name` tinytext DEFAULT NULL,
  `profession` tinytext DEFAULT NULL,
  `lang` tinytext DEFAULT NULL,
  `text` tinytext DEFAULT NULL,
  `listOrder` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `code` tinytext DEFAULT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `counts`
--
ALTER TABLE `counts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `db_users`
--
ALTER TABLE `db_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `faq_list`
--
ALTER TABLE `faq_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `footer_col`
--
ALTER TABLE `footer_col`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `icon_box`
--
ALTER TABLE `icon_box`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kta20v_languages`
--
ALTER TABLE `kta20v_languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `portfolio_filters`
--
ALTER TABLE `portfolio_filters`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `portfolio_item`
--
ALTER TABLE `portfolio_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pricing_box`
--
ALTER TABLE `pricing_box`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tabs`
--
ALTER TABLE `tabs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `testimonials_item`
--
ALTER TABLE `testimonials_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `counts`
--
ALTER TABLE `counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `db_users`
--
ALTER TABLE `db_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `faq_list`
--
ALTER TABLE `faq_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `footer_col`
--
ALTER TABLE `footer_col`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `icon_box`
--
ALTER TABLE `icon_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `kta20v_languages`
--
ALTER TABLE `kta20v_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `portfolio_filters`
--
ALTER TABLE `portfolio_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `portfolio_item`
--
ALTER TABLE `portfolio_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pricing_box`
--
ALTER TABLE `pricing_box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tabs`
--
ALTER TABLE `tabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `team_member`
--
ALTER TABLE `team_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `testimonials_item`
--
ALTER TABLE `testimonials_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
