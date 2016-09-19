-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Сен 19 2016 г., 08:40
-- Версия сервера: 10.1.13-MariaDB
-- Версия PHP: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mvc`
--
CREATE DATABASE IF NOT EXISTS `mvc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mvc`;

-- --------------------------------------------------------

--
-- Структура таблицы `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `blogs`
--

INSERT INTO `blogs` (`id`, `category`, `title`, `photo`, `content`, `date`, `user_id`, `tags_id`) VALUES
(11, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_90225.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 1, 9),
(12, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_66357.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 1, 7),
(13, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_89410.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 1, 3),
(14, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_73034.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 1, 7),
(16, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_51126.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 1, 7),
(17, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_32660.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 1, 14),
(18, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_72723.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 1, 14),
(19, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_97689.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 1, 12),
(20, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_41007.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 1, 10),
(21, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_10517.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 1, 9),
(22, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_89630.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 1, 3),
(23, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_5149.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 1, 6),
(24, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_1810.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 2, 6),
(26, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/2_39313.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 2, 15),
(27, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/1_15146.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 1, 2),
(28, '', 'Lorem Ipsum', '/webroot/img/blog/blog_photo/2_62524.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis ex facilisis augue tempus, vitae rhoncus risus facilisis. Maecenas a metus dui. Aliquam tincidunt id neque eget porta. Proin velit lectus, tempus nec feugiat ornare, condimentum nec libero. Ut dolor metus, porta eget blandit in, pellentesque quis nisi. Vestibulum luctus tempor sem, nec scelerisque elit. Aenean pretium nulla arcu, non molestie diam molestie ac. Nullam sodales nisl tortor, ac ornare nibh interdum id. Donec in ante condimentum, volutpat tellus nec, semper justo. Nulla malesuada tellus id velit accumsan cursus. Duis condimentum libero nulla, porta pretium tortor vehicula a.&lt;/p&gt;\r\n&lt;p&gt;Donec dignissim risus nec malesuada volutpat. Pellentesque dignissim tempus lacinia. Fusce dolor augue, molestie euismod nulla vel, consequat vehicula ipsum. Morbi sodales leo non nulla lobortis, at convallis purus congue. Duis congue lorem quis metus accumsan, fringilla maximus dolor fringilla. Suspendisse eu nibh velit. Nunc semper est in nunc feugiat mattis. Sed quis sodales est, vitae malesuada nibh. Integer accumsan felis augue, id consequat justo lacinia id. Etiam quis ligula luctus, tristique eros non, suscipit metus. Curabitur efficitur leo eget commodo tincidunt. Mauris et justo sagittis, semper lorem quis, eleifend nunc. Morbi non dui fringilla, scelerisque lectus eget, iaculis mauris. Proin consectetur neque ut sem gravida placerat. Integer ut lacus dui.&lt;/p&gt;', '2016-09-18', 2, 14);

-- --------------------------------------------------------

--
-- Структура таблицы `blogs_comments`
--

CREATE TABLE `blogs_comments` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  `blogs_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `blogs_comments`
--

INSERT INTO `blogs_comments` (`id`, `content`, `date`, `blogs_id`, `user_id`) VALUES
(21, '<p>good</p>', '2016-09-17 13:09:49', 25, 1),
(22, '<p>))</p>', '2016-09-18 12:44:12', 26, 1),
(23, '<p>pop</p>', '2016-09-18 12:44:29', 11, 1),
(24, '<p>ÐºÐ»Ð°Ñ</p>', '2016-09-18 12:44:47', 12, 1),
(25, '<p>ÐºÐ»Ð°ÑÐ½Ð¾</p>', '2016-09-18 12:49:45', 26, 2),
(26, '<p>Ñ…Ð°Ñ…Ð°Ñ…)</p>', '2016-09-18 12:51:34', 20, 2),
(27, '<p>Ð¾Ð³Ð¾</p>', '2016-09-18 12:51:56', 16, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `avatar` varchar(255) DEFAULT NULL,
  `topics_id` int(11) NOT NULL,
  `is_published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `content`, `avatar`, `topics_id`, `is_published`) VALUES
(1, 'Apple', 'All Apple''s products', '/webroot/img/forum_avatars/heart.png', 1, 1),
(4, 'Testing', 'WYSIWYG', '/webroot/img/forum_avatars/magicwand.png', 1, 1),
(8, 'All about site', 'All about site', '/webroot/img/forum_avatars/hazard.png', 2, 1),
(17, 'Secured Category ', 'Secured Category ', '/webroot/img/forum_avatars/unlocked.png', 6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `discussion_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `content`, `date`, `discussion_id`, `user_id`) VALUES
(16, 'Comments user 02', '2016-03-18 19:26:00', 1, 3),
(17, 'Food is my passion. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2016-03-18 19:26:07', 1, 3),
(18, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2016-03-18 19:26:15', 1, 3),
(19, 'Keep up the GREAT work! I am cheering for you!! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2016-03-18 19:27:06', 1, 2),
(20, 'I am so happy for you man! Finally. I am looking forward to read about your trendy life. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2016-03-19 00:14:09', 1, 3),
(21, 'Me too! WOW!', '2016-03-19 00:14:22', 1, 5),
(22, '<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>&nbsp;</p>', '2016-03-24 01:46:09', 1, 2),
(23, 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', '2016-03-19 03:01:42', 1, 5),
(44, 'Qweerty', '2016-03-19 20:39:09', 2, 2),
(45, 'it was way too saucy and I moved it! :-) Funny isn''t it???', '2016-03-20 00:36:35', 5, 5),
(46, '<p>Normal Announcement. You can see the icon status in the main topic list. The sky is blue as the grass is Green!!!!!!!!!!!</p>\r\n<p>&nbsp;</p>', '2016-03-23 16:09:53', 7, 3),
(57, 'Ð´Ð° Ñ‚Ð¾ Ð·Ð°Ð±ÐµÐ¹ - Ð±ÑƒÐ´Ñƒ ÑƒÐ±Ð¸Ñ€Ð°Ñ‚ÑŒ\r\nÐ° Ñ Ð¿Ð¾Ð»ÑÐ¼Ð¸ Ð½Ðµ Ð¿Ð¾Ð½ÑÐ» - Ñƒ Ð¼ÐµÐ½Ñ Ð²ÑÐµ Ð¾Ðº', '2016-03-20 02:16:17', 92, 2),
(58, 'ÐžÐºÐ°Ð·Ñ‹Ð²Ð°ÐµÑ‚ÑÑ Ñ€ÑƒÑ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚)', '2016-03-20 02:16:53', 91, 2),
(59, 'Ð¸ Ð½Ð¸Ðº ÑÐ²Ð¾Ð¹ Ð¿Ð¾ÑÑ‚Ð°Ð²ÑŒ Ð² Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ðµ - Ð½Ðµ Ð²Ð¸Ð´Ð½Ð¾ Ð¶ ÐºÑ‚Ð¾ Ð¿Ð¸ÑˆÐµÑ‚', '2016-03-20 02:17:20', 92, 2),
(60, 'ÐºÑÑ‚Ð°Ñ‚Ð¸ Ð´Ð° - Ð¿Ð¾ Ð´ÐµÑ„Ð¾Ð»Ñ‚Ñƒ Ð½Ð°Ð´Ð¾ Ð¿Ð¾ÑÑ‚Ð°Ð²Ð¸Ñ‚ÑŒ Ð½Ð¸Ðº ÑŽÐ·ÐµÑ€Ð°', '2016-03-20 02:18:03', 92, 2),
(64, 'fghrtyrtyryr', '2016-03-20 17:59:14', 91, 5),
(65, 'ghjghjghjghj', '2016-03-20 18:00:27', 2, 5),
(66, 'fghfghfghf', '2016-03-20 18:00:41', 2, 5),
(73, 'Ñ‹Ð¿Ñ€Ð°Ñ€Ð°Ð¿Ñ€Ð°Ð¿Ð¿Ð¸Ð°Ð¸', '2016-03-20 20:41:31', 1, 22),
(85, '<p>--- Bug --- Ð½Ðµ Ñ€ÐµÐ°Ð»Ð¸Ð·Ð¾Ð²Ð°Ð½Ð¾ Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸ÐµÐ² Ð¸ Ð´Ð¸ÑÐºÑƒccÐ¸Ð¹</p>', '2016-03-23 02:27:52', 105, 1),
(86, '<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;">+++(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ñ€ÐµÐ´Ð¸Ñ€ÐµÐºÑ‚ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ (Ð¸ Ð¾Ð¿Ð¾Ð²ÐµÑ‰ÐµÐ½Ð¸Ðµ);</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð°Ð»ÐµÐ½ÑŒÐºÐ°Ñ ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ° ÑŽÐ·ÐµÑ€Ð° Ð²Ð¾Ð·Ð»Ðµ Ð½Ð¸ÐºÐ° ÑÐ²ÐµÑ€Ñ…Ñƒ;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ ÑŽÐ·ÐµÑ€Ð° Ð¿Ð¾ÑÐ»Ðµ Ð¸Ð·Ð¼ÐµÐ½Ð½ÐµÐ½Ð¸Ñ;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++ÐºÐ½Ð¾Ð¿ÐºÐ° Ð½Ð°Ð·Ð°Ð´ Ð² Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð³Ð»Ð°Ð²Ð½Ð°Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ñ„Ð¾Ñ€ÑƒÐ¼Ð° (ÑŽÐ·ÐµÑ€ Ð¸ Ð´ÐµÑ„Ð°Ð»Ñ‚ (Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ ÑŽÐ·ÐµÑ€Ð° Ð´Ð»Ñ Ð´ÐµÑ„Ð°Ð»Ñ‚ Ð½ÐµÐ´Ð¾ÑÑ‚ÑƒÐ¿ÐµÐ½));</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð¿Ð¾Ð´Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½ Contact Us;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ñ„Ð¾Ñ€ÑƒÐ¼ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°;</span></p>', '2016-03-23 02:28:43', 103, 1),
(87, '<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;">+++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ Ð²Ñ‹Ð±Ð¾Ñ€Ð° Ð°Ð²Ð°Ñ‚Ð°Ñ€ÐºÐ¸ Ð´Ð»Ñ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸ Ð¸ Ð¿ÐµÑ€ÐµÐ´ÐµÐ»Ð°Ð½Ð½Ð¾ ÑÐ°Ð¼Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð´Ð¾Ð±Ð°Ð»ÐµÐ½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ ÑƒÐ´Ð°Ð»ÑÑ‚ÑŒ ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ WYSIWYG Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¾Ñ€ (Ð°Ð»ÑŒÑ„Ð° Ð²ÐµÑ€ÑÐ¸Ñ);</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° ÑÑÑ‹Ð»ÐºÐ° Ð½Ð° ÑÐ¾Ð·Ð´Ð°Ñ‚ÐµÐ»Ñ Ð´Ð¸ÑÐºÑƒÑÐ¸Ð¸ Ð² ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸ÑÑ…;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ Ð¿Ð»Ð°Ð²Ð½Ñ‹Ð¹ ÑÐºÑ€Ð¾Ð»Ð¸Ð½Ð³ Ðº Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸ÑŽ ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ñ;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ ÐºÐ½Ð¾Ð¿ÐºÐ¸ Ð½Ð°Ð·Ð°Ð´;</span></p>\r\n<p><span style="color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; background-color: #ecf0f1;"> +++Ð²Ð½ÐµÑÐµÐ½Ð½Ñ‹ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð¸ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ Ð² Ð°Ð´Ð¼Ð¸Ð½ Ñ‡Ð°ÑÑ‚ÑŒ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°;</span></p>', '2016-03-23 02:29:14', 104, 1),
(90, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</p>\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</strong></p>\r\n<p><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</em></p>\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</li>\r\n</ul>\r\n<ol>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</li>\r\n</ol>\r\n<h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h1>\r\n<h2>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h2>\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h3>\r\n<h4>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h4>\r\n<h5>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h5>\r\n<h6>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</h6>\r\n<p><span style="text-decoration: underline;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</span></p>\r\n<p><span style="text-decoration: line-through;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</span></p>\r\n<p><code>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</code></p>\r\n<pre>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;<br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br /><br /></pre>', '2016-03-23 02:37:17', 106, 1),
(93, '<h3><strong>Ð’ Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐµ -&nbsp;</strong></h3>\r\n<ul>\r\n<li>Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð´Ð¸ÑÐºÑƒÑÐ¸Ð¹&nbsp;(Ð´Ð»Ñ ÑŽÑ€ÐµÐ·Ð° )</li>\r\n<li>ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹ ÑÐ´ÐµÐ»Ð°Ð½Ñ‹Ñ… ÑŽÐ·ÐµÑ€Ð¾Ð¼</li>\r\n<li>Ð²Ñ‹Ð²ÐµÑÑ‚Ð¸ Ð² Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ ÑŽÐ·ÐµÑ€Ð° Ð¿Ð°Ð½ÐµÐ»ÑŒ Ñ ÑÐ¾Ð·Ð´Ð°Ð½Ð½Ñ‹Ð¼Ð¸ Ð¸Ð¼ Ð´Ð¸ÑÐºÑƒÑÐ¸ÑÐ¼Ð¸</li>\r\n<li>ÑÐ´ÐµÐ»Ð°Ñ‚ÑŒ ÐµÐ´Ð¸Ð½Ð½Ð¾Ðµ Ð¾Ñ„Ð¾Ñ€Ð¼Ð»ÐµÐ½Ð½Ð¸Ðµ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°</li>\r\n<li><strong>Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð±Ð»Ð¾Ð³</strong></li>\r\n<li><strong>Ð¾Ñ„Ð¾Ñ€Ð¼Ð»ÐµÐ½Ð¸Ðµ Ð³Ð»Ð°Ð²Ð½Ð¾Ð¹ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹</strong></li>\r\n</ul>', '2016-03-23 17:04:20', 107, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `discussions`
--

CREATE TABLE `discussions` (
  `id` int(11) NOT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `date` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `discussions`
--

INSERT INTO `discussions` (`id`, `alias`, `title`, `content`, `date`, `category_id`, `user_id`) VALUES
(1, 'alias  alias  alias', 'THIS IS A STICKY TOPIC - NOTE THE FONT ICON STATUS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', '2016-03-24 01:40:18', 1, 2),
(2, 'alias  alias  alias', 'DEFAULT BBCODES EXAMPLES - MORE CUSTOM BBCODES AVAILABLE', '"BBOOTS ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."\r\n"BBOOTS ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."\r\n"BBOOTS ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."', '2016-03-13 03:00:31', 1, 3),
(5, 'alias  alias  alias', 'RESPONSIVE IMAGES - RESIZED AUTOMATICALLY', 'it was way too saucy and I moved it! :-) Funny isn''t it???', '2016-03-13 12:19:07', 1, 3),
(7, 'alias  alias  alias', 'NORMAL ANNOUNCEMENT EXAMPLE', 'Normal Announcement. You can see the icon status in the main topic list.\r\nThe sky is blue as the grass is\r\nGreen!!!!!!!!!!!', '2016-03-23 16:22:51', 1, 5),
(101, 'Ver. 2.3 (19.03)', 'Ver. 2.3 (19.03)', '<p>Ð ÐµÐ»Ð¸Ð· Ð°Ð»ÑŒÑ„Ð° Ð²ÐµÑ€ÑÐ¸Ð¸ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°</p>', '2016-03-23 16:38:22', 8, 1),
(102, 'Bug report Ver. 2.4 (1.0) (20.03)', 'Bug report Ver. 2.4 (1.0) (20.03)', '<p>ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ñ€ÐµÐ´Ð¸Ñ€ÐµÐºÑ‚ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ (Ð¸ Ð¾Ð¿Ð¾Ð²ÐµÑ‰ÐµÐ½Ð¸Ðµ);</p>\r\n<p>ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð°Ð»ÐµÐ½ÑŒÐºÐ°Ñ ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ° ÑŽÐ·ÐµÑ€Ð° Ð²Ð¾Ð·Ð»Ðµ Ð½Ð¸ÐºÐ° ÑÐ²ÐµÑ€Ñ…Ñƒ;</p>\r\n<p>ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ ÑŽÐ·ÐµÑ€Ð° Ð¿Ð¾ÑÐ»Ðµ Ð¸Ð·Ð¼ÐµÐ½Ð½ÐµÐ½Ð¸Ñ;</p>', '2016-03-23 16:45:47', 8, 1),
(103, 'Ver. 2.4.1 (1.0.1) (20.03)', 'Ver. 2.4.1 (1.0.1) (20.03)', '<ul>\r\n<li><strong>(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ñ€ÐµÐ´Ð¸Ñ€ÐµÐºÑ‚ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ (Ð¸ Ð¾Ð¿Ð¾Ð²ÐµÑ‰ÐµÐ½Ð¸Ðµ);</strong></li>\r\n<li><strong>(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð°Ð»ÐµÐ½ÑŒÐºÐ°Ñ ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ° ÑŽÐ·ÐµÑ€Ð° Ð²Ð¾Ð·Ð»Ðµ Ð½Ð¸ÐºÐ° ÑÐ²ÐµÑ€Ñ…Ñƒ;</strong></li>\r\n<li><strong>(Done)Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ ÑŽÐ·ÐµÑ€Ð° Ð¿Ð¾ÑÐ»Ðµ Ð¸Ð·Ð¼ÐµÐ½Ð½ÐµÐ½Ð¸Ñ;</strong></li>\r\n<li>ÐšÐ½Ð¾Ð¿ÐºÐ° Ð½Ð°Ð·Ð°Ð´ Ð² Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ;</li>\r\n<li>Ð“Ð»Ð°Ð²Ð½Ð°Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ñ„Ð¾Ñ€ÑƒÐ¼Ð° (ÑŽÐ·ÐµÑ€ Ð¸ Ð´ÐµÑ„Ð°Ð»Ñ‚ (Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ ÑŽÐ·ÐµÑ€Ð° Ð´Ð»Ñ Ð´ÐµÑ„Ð°Ð»Ñ‚ Ð½ÐµÐ´Ð¾ÑÑ‚ÑƒÐ¿ÐµÐ½));</li>\r\n<li>Ð£Ð´Ð°Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ;</li>\r\n<li>ÐŸÐ¾Ð´Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½ Contact Us;</li>\r\n<li>Ð¤Ð¾Ñ€ÑƒÐ¼ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°;</li>\r\n</ul>', '2016-03-23 16:45:23', 8, 1),
(104, 'Ver. 2.4.2 (1.0.2) (21.03)', 'Ver. 2.4.2 (1.0.2) (21.03)', '<ul>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ Ð²Ñ‹Ð±Ð¾Ñ€Ð° Ð°Ð²Ð°Ñ‚Ð°Ñ€ÐºÐ¸ Ð´Ð»Ñ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸ Ð¸ Ð¿ÐµÑ€ÐµÐ´ÐµÐ»Ð°Ð½Ð½Ð¾ ÑÐ°Ð¼Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ;</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð»ÐµÐ½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ ÑƒÐ´Ð°Ð»ÑÑ‚ÑŒ ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸;</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ WYSIWYG Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¾Ñ€ (Ð°Ð»ÑŒÑ„Ð° Ð²ÐµÑ€ÑÐ¸Ñ);</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° ÑÑÑ‹Ð»ÐºÐ° Ð½Ð° ÑÐ¾Ð·Ð´Ð°Ñ‚ÐµÐ»Ñ Ð´Ð¸ÑÐºÑƒÑÐ¸Ð¸ Ð² ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸ÑÑ…;</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ Ð¿Ð»Ð°Ð²Ð½Ñ‹Ð¹ ÑÐºÑ€Ð¾Ð»Ð¸Ð½Ð³ Ðº Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸ÑŽ ÐºÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ñ;</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ ÐºÐ½Ð¾Ð¿ÐºÐ¸ Ð½Ð°Ð·Ð°Ð´;</li>\r\n<li>Ð’Ð½ÐµÑÐµÐ½Ð½Ñ‹ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð¸ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ Ð² Ð°Ð´Ð¼Ð¸Ð½ Ñ‡Ð°ÑÑ‚ÑŒ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°;</li>\r\n</ul>', '2016-03-23 16:44:36', 8, 1),
(105, 'Ver. 2.4.3 (1.0.3) (22.03)', 'Ver. 2.4.3 (1.0.3) (22.03)', '<ul>\r\n<li>ÐÐ°Ñ‡Ð°Ð»Ð¾ Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ¸ Ð³Ð°Ð»ÐµÑ€ÐµÐ¸;</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ñ‚ÐµÐ¼Ñ‹ Ñ„Ð¾Ñ€ÑƒÐ¼Ð° (Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ, Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ, ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ);</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ð·Ð°Ñ‰Ð¸Ñ‰ÐµÐ½Ð½Ñ‹Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸ (is published?);</li>\r\n<li>ÐŸÐµÑ€ÐµÐ´ÐµÐ»Ð°Ð½Ð¾ ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¹, Ñ‚ÐµÐ¼, Ð´Ð¸ÑÐºÑƒÑÑÐ¸Ð¹;</li>\r\n<li>Ð˜Ð·Ð¼ÐµÐ½ÐµÐ½Ð¾ Ð¸ ÑƒÐ»ÑƒÑ‡ÑˆÐµÐ½Ð¾ Ð¾Ñ„Ð¾Ñ€Ð¼Ð»ÐµÐ½Ð¸Ðµ;</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ñ‚ÐµÐ¼Ñ‹ Ñ„Ð¾Ñ€ÑƒÐ¼Ð° (Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ, Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ, ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ);</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ð·Ð°Ñ‰Ð¸Ñ‰ÐµÐ½Ð½Ñ‹Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸ (is published?);</li>\r\n<li>ÐŸÐµÑ€ÐµÐ´ÐµÐ»Ð°Ð½Ð¾ ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¹, Ñ‚ÐµÐ¼, Ð´Ð¸ÑÐºÑƒÑÑÐ¸Ð¹;</li>\r\n<li>Ð˜Ð·Ð¼ÐµÐ½ÐµÐ½Ð¾ Ð¸ ÑƒÐ»ÑƒÑ‡ÑˆÐµÐ½Ð¾ Ð¾Ñ„Ð¾Ñ€Ð¼Ð»ÐµÐ½Ð¸Ðµ;</li>\r\n</ul>', '2016-03-24 16:18:02', 8, 1),
(106, 'WYSIWYG', 'WYSIWYG Test', '<h1><img src="http://img1.joyreactor.cc/pics/post/full/anon-ÐšÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ°-2191131.jpeg" alt="" width="400" height="303" /></h1>\r\n<h1>WYSIWYG Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¾Ñ€</h1>\r\n<p><em>Ð¢ÐµÑÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¾Ñ€Ð°</em></p>', '2016-03-23 16:28:48', 4, 1),
(107, 'Ver. 2.4.4 (1.0.4) (23.03) ', 'Ver. 2.4.4 (1.0.4) (23.03) ', '<ul>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð½Ð¾ Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹ (Ð´Ð»Ñ ÑŽÑ€ÐµÐ·Ð° Ð¸ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°)</li>\r\n<li>Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð½Ð¾ Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð´Ð¸ÑÐºÑƒÑÐ¸Ð¹&nbsp;(Ð´Ð»Ñ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°)</li>\r\n<li>ÐžÐ±Ð½Ð¾Ð²Ð»ÐµÐ½Ð½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð½Ð¸Ðµ Ð´Ð¸ÑÐºÑƒÑÐ¸Ð¹</li>\r\n<li>Ð Ð°Ð·ÑˆÐ¸Ñ€ÐµÐ½ Ñ„ÑƒÐ½ÐºÐ¸Ð¾Ð½Ð°Ð»&nbsp;WYSIWYG Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¾Ñ€Ð°</li>\r\n<li>Ð”Ñ€ÑƒÐ³Ð¸Ðµ Ð¼ÐµÐ»ÐºÐ¸Ðµ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð½Ð¸Ñ</li>\r\n</ul>', '2016-03-23 16:48:47', 8, 1),
(109, 'Ver. 2.4.5 (1.0.5) (24.03) ', 'Ver. 2.4.5 (1.0.5) (24.03) ', '<ul>\r\n<li><strong>(Done)CÐ´ÐµÐ»Ð°Ñ‚ÑŒ ÐµÐ´Ð¸Ð½Ð½Ð¾Ðµ Ð¾Ñ„Ð¾Ñ€Ð¼Ð»ÐµÐ½Ð½Ð¸Ðµ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°</strong></li>\r\n<li>Ð Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°&nbsp;Ð±Ð»Ð¾Ð³Ð° (Ð°Ð´Ð¼Ð¸Ð½)</li>\r\n</ul>', '2016-03-25 03:48:57', 8, 1),
(110, 'Ver. 2.4.6 (1.0.6) (26.03) ', 'Ver. 2.4.6 (1.0.6) (26.03) ', '<ul>\r\n<li>Ð Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°&nbsp;Ð±Ð»Ð¾Ð³Ð° (Ð°Ð´Ð¼Ð¸Ð½) - Ð·Ð°Ð¿ÑƒÑ‰ÐµÐ½Ð½Ð° alpha Ð²ÐµÑ€ÑÐ¸Ñ</li>\r\n</ul>', '2016-03-26 03:57:37', 8, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`) VALUES
(1, 'Test 1', 'Test@test.mail.com', 'Test message.'),
(3, 'Test', 'test', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `alias` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text,
  `is_published` tinyint(1) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `blogs_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`, `blogs_id`) VALUES
(1, 'Uncategorized', 0),
(2, 'News', 0),
(3, 'Life', 0),
(4, 'Movies', 0),
(5, 'Tutorials', 0),
(6, 'Lifestyle', 0),
(7, 'Animals', 0),
(8, 'Food', 0),
(9, 'Technology', 0),
(10, 'Sport', 0),
(12, 'Media', 0),
(14, 'Cars', 0),
(15, 'Nature', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `topics` (`id`, `name`, `alias`) VALUES
(1, 'First Topic', 'First Topic'),
(2, 'Site Development', 'Site Development'),
(6, 'Secured Topic', 'Secured Topic');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `login` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'admin',
  `password` char(32) NOT NULL,
  `is_active` tinyint(1) UNSIGNED DEFAULT '1',
  `nickname` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `vk` char(40) NOT NULL,
  `facebook` char(40) NOT NULL,
  `date` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `role`, `password`, `is_active`, `nickname`, `name`, `phone`, `vk`, `facebook`, `date`, `avatar`, `gender`) VALUES
(1, 'admin', 'becasiri@gmail.com', 'admin', '48fb7b7996311a895502e77e9db97e1f', 1, 'Administrator', 'Pavlo', '0633204039', 'https://vk.com/pashashyty', '', NULL, NULL, NULL),
(2, 'user', 'user@mail', 'user', 'ee9812d1d42b18ea07f5887e969de1af', 1, 'Test User', 'username', '1234567890', 'id3453452324', 'id67544', NULL, '/webroot/img/avatars/2.jpg', 'Male'),
(3, 'user1', 'pasha0744@ukr.net', 'user', '61f64c0e922499f35a41ffae8a98ae56', 1, 'user1', '', '', '', '', NULL, '/webroot/img/avatars/3.jpg', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blogs_comments`
--
ALTER TABLE `blogs_comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `blogs_comments`
--
ALTER TABLE `blogs_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT для таблицы `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
