-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 07 2022 г., 12:35
-- Версия сервера: 10.1.48-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lesson`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ad`
--

CREATE TABLE `ad` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ad`
--

INSERT INTO `ad` (`id`, `name`, `text`, `date`, `category_id`) VALUES
(1, 'Анна', 'Продам детскую коляску', '2020-10-21 07:19:36', 4),
(2, 'Антон', 'Продам машину', '2014-09-03 08:19:36', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_panel`
--

CREATE TABLE `admin_panel` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `passwrod` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fun_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_panel`
--

INSERT INTO `admin_panel` (`id`, `name`, `passwrod`, `login`, `fun_id`) VALUES
(1, 'admin123', '12345', 'admin12345', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Транспорт'),
(2, 'Недвижимость'),
(3, 'Животные'),
(4, 'Дети');

-- --------------------------------------------------------

--
-- Структура таблицы `category_for_fun`
--

CREATE TABLE `category_for_fun` (
  `id` int(10) UNSIGNED NOT NULL,
  `nameofcat` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category_for_fun`
--

INSERT INTO `category_for_fun` (`id`, `nameofcat`) VALUES
(1, 'Школа'),
(2, 'Политика'),
(3, 'Животные');

-- --------------------------------------------------------

--
-- Структура таблицы `fun`
--

CREATE TABLE `fun` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `fun`
--

INSERT INTO `fun` (`id`, `name`, `text`, `category_id`) VALUES
(1, 'Анна', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla efficitur elementum lorem id venenatis. Nullam id sagittis urna, eu ultrices risus. Duis ante lorem, semper nec fringilla eu, commodo vel mauris.', 1),
(2, 'Арсений', 'Nunc tristique odio lectus, eget condimentum nunc consectetur eu. Nullam non varius nisl, aliquet fringilla lectus. Aliquam erat volutpat.', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `data`, `text`) VALUES
(1, 'Дмитрий', '2014-04-18 06:25:45', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla efficitur elementum lorem id venenatis. Nullam id sagittis urna, eu ultrices risus. Duis ante lorem, semper nec fringilla eu, commodo vel mauris. Nunc tristique odio lectus, eget condimentum nunc consectetur eu. Nullam non varius nisl, aliquet fringilla lectus. Aliquam erat volutpat. Ut vel mi et lectus hendrerit ornare vel ut neque. Quisque venenatis nisl eu mi'),
(2, 'Николай', '2014-05-23 14:25:19', 'Ut varius commodo fringilla. Nullam id pulvinar odio. Pellentesque gravida aliquam ipsum, et malesuada neque molestie eget. Vestibulum sagittis finibus efficitur. Donec sit amet aliquet dolor, vitae ornare tortor. Etiam eget augue nec diam vehicula bibendum. Nulla quis erat lacus. Vestibulum quis mattis augue. Praesent dignissim, justo non aliquam feugiat, lorem metus egestas leo, quis eleifend odio quam in ex. Aenean diam est, scelerisque ac ultricies sit amet, vulputate in tortor. Etiam ac mi enim. Sed pellentesque elementum erat eu eleifend. Integer imperdiet sem eu magna feugiat, sed efficitur velit convallis.'),
(3, 'Петр', '2015-05-23 09:28:26', 'Phasellus gravida fermentum pellentesque. Aenean non neque mollis nisl dapibus eleifend. Sed interdum dui nec dictum elementum. Proin eget semper dolor, ut commodo nibh. Quisque vitae pharetra ligula. Sed dictum, sem sed pellentesque aliquam, tellus sapien dapibus magna, eu suscipit lacus augue sed velit. Ut vehicula sagittis nulla, et aliquet elit. Quisque tincidunt sem nibh, finibus dictum nisl vulputate quis. In vitae nisl et lacus pulvinar ornare id ac libero. Morbi pharetra fringilla erat ut lacinia.'),
(6, 'Анна', '2022-10-01 09:46:41', 'Aenean non neque mollis nisl dapibus eleifend. Sed interdum dui nec dictum elementum. Proin eget semper dolor, ut commodo nibh. Quisque vitae pharetra ligula.'),
(7, '123', '2022-12-06 15:16:18', 'г6г7г'),
(8, 'апап', '2022-12-06 15:18:52', 'апап');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `admin_panel`
--
ALTER TABLE `admin_panel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fun_id` (`fun_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `category_for_fun`
--
ALTER TABLE `category_for_fun`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fun`
--
ALTER TABLE `fun`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ad`
--
ALTER TABLE `ad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `admin_panel`
--
ALTER TABLE `admin_panel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `category_for_fun`
--
ALTER TABLE `category_for_fun`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `fun`
--
ALTER TABLE `fun`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `ad`
--
ALTER TABLE `ad`
  ADD CONSTRAINT `ad_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Ограничения внешнего ключа таблицы `admin_panel`
--
ALTER TABLE `admin_panel`
  ADD CONSTRAINT `admin_panel_ibfk_1` FOREIGN KEY (`fun_id`) REFERENCES `fun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `fun`
--
ALTER TABLE `fun`
  ADD CONSTRAINT `fun_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_for_fun` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
