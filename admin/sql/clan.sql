SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------

--
-- Структура таблицы `col_medals`
--

CREATE TABLE IF NOT EXISTS `col_medals` (
  `account_id` int(12) NOT NULL,
  `up` int(12) NOT NULL,
  `medalCarius` int(11) NOT NULL,
  `medalHalonen` int(11) NOT NULL,
  `invader` int(11) NOT NULL,
  `medalFadin` int(11) NOT NULL,
  `armorPiercer` int(11) NOT NULL,
  `medalEkins` int(11) NOT NULL,
  `mousebane` int(11) NOT NULL,
  `medalKay` int(11) NOT NULL,
  `defender` int(11) NOT NULL,
  `medalLeClerc` int(11) NOT NULL,
  `supporter` int(11) NOT NULL,
  `steelwall` int(11) NOT NULL,
  `medalAbrams` int(11) NOT NULL,
  `medalPoppel` int(11) NOT NULL,
  `medalOrlik` int(11) NOT NULL,
  `handOfDeath` int(11) NOT NULL,
  `sniper` int(11) NOT NULL,
  `warrior` int(11) NOT NULL,
  `titleSniper` int(11) NOT NULL,
  `medalWittmann` int(11) NOT NULL,
  `medalBurda` int(11) NOT NULL,
  `scout` int(11) NOT NULL,
  `beasthunter` int(11) NOT NULL,
  `kamikaze` int(11) NOT NULL,
  `raider` int(11) NOT NULL,
  `medalOskin` int(11) NOT NULL,
  `medalBillotte` int(11) NOT NULL,
  `medalLavrinenko` int(11) NOT NULL,
  `medalKolobanov` int(11) NOT NULL,
  `invincible` int(11) NOT NULL,
  `lumberjack` int(11) NOT NULL,
  `tankExpert` int(11) NOT NULL,
  `diehard` int(11) NOT NULL,
  `medalKnispel` int(11) NOT NULL,
  `maxDiehardSeries` int(11) NOT NULL,
  `maxInvincibleSeries` int(11) NOT NULL,
  `maxPiercingSeries` int(11) NOT NULL,
  `maxKillingSeries` int(11) NOT NULL,
  `maxSniperSeries` int(11) NOT NULL,
  `medalBoelter` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `col_players`
--

CREATE TABLE IF NOT EXISTS `col_players` (
  `account_id` int(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `server` varchar(2) NOT NULL,
  `reg` int(12) NOT NULL,
  `local` int(12) NOT NULL,
  `member_since` varchar(11) NOT NULL,
  `up` int(12) NOT NULL,
  `total` int(8) NOT NULL,
  `win` int(8) NOT NULL,
  `lose` int(8) NOT NULL,
  `alive` int(8) NOT NULL,
  `des` int(8) NOT NULL,
  `spot` int(8) NOT NULL,
  `accure` int(3) NOT NULL,
  `dmg` int(15) NOT NULL,
  `cap` int(12) NOT NULL,
  `def` int(12) NOT NULL,
  `exp` int(15) NOT NULL,
  `averag_exp` int(4) NOT NULL,
  `max_exp` int(4) NOT NULL,
  `gr_v` int(12) NOT NULL,
  `gr_p` int(12) NOT NULL,
  `wb_v` int(12) NOT NULL,
  `wb_p` int(12) NOT NULL,
  `eb_v` int(12) NOT NULL,
  `eb_p` int(12) NOT NULL,
  `win_v` int(12) NOT NULL,
  `win_p` int(12) NOT NULL,
  `gpl_v` int(12) NOT NULL,
  `gpl_p` int(12) NOT NULL,
  `cpt_p` int(12) NOT NULL,
  `cpt_v` int(12) NOT NULL,
  `dmg_p` int(12) NOT NULL,
  `dmg_v` int(12) NOT NULL,
  `dpt_p` int(12) NOT NULL,
  `dpt_v` int(12) NOT NULL,
  `frg_p` int(12) NOT NULL,
  `frg_v` int(12) NOT NULL,
  `spt_p` int(12) NOT NULL,
  `spt_v` int(12) NOT NULL,
  `exp_p` int(12) NOT NULL,
  `exp_v` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `name` varchar(15) NOT NULL,
  `value` varchar(25) NOT NULL,
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `config`
--

INSERT INTO `config` (`name`, `value`) VALUES
('lockin', '0'),
('lang', 'ru'),
('server', 'ru'),
('clan', '37'),
('cache', '12'),
('align', 'ver'),
('pars', 'curl'),
('time', '0'),
('cron', '1'),
('news', '1'),
('cron_time', '23');

-- --------------------------------------------------------

--
-- Структура таблицы `gk`
--

CREATE TABLE IF NOT EXISTS `gk` (
  `id` mediumint(10) NOT NULL,
  `tank` varchar(50) NOT NULL,
  `time` int(20) NOT NULL,
  KEY `name` (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `medals`
--

CREATE TABLE IF NOT EXISTS `medals` (
  `id` int(12) NOT NULL,
  `medalCarius` int(11) NOT NULL,
  `medalHalonen` int(11) NOT NULL,
  `invader` int(11) NOT NULL,
  `medalFadin` int(11) NOT NULL,
  `armorPiercer` int(11) NOT NULL,
  `medalEkins` int(11) NOT NULL,
  `mousebane` int(11) NOT NULL,
  `medalKay` int(11) NOT NULL,
  `defender` int(11) NOT NULL,
  `medalLeClerc` int(11) NOT NULL,
  `supporter` int(11) NOT NULL,
  `steelwall` int(11) NOT NULL,
  `medalAbrams` int(11) NOT NULL,
  `medalPoppel` int(11) NOT NULL,
  `medalOrlik` int(11) NOT NULL,
  `handOfDeath` int(11) NOT NULL,
  `sniper` int(11) NOT NULL,
  `warrior` int(11) NOT NULL,
  `titleSniper` int(11) NOT NULL,
  `medalWittmann` int(11) NOT NULL,
  `medalBurda` int(11) NOT NULL,
  `scout` int(11) NOT NULL,
  `beasthunter` int(11) NOT NULL,
  `kamikaze` int(11) NOT NULL,
  `raider` int(11) NOT NULL,
  `medalOskin` int(11) NOT NULL,
  `medalBillotte` int(11) NOT NULL,
  `medalLavrinenko` int(11) NOT NULL,
  `medalKolobanov` int(11) NOT NULL,
  `invincible` int(11) NOT NULL,
  `lumberjack` int(11) NOT NULL,
  `tankExpert` int(11) NOT NULL,
  `diehard` int(11) NOT NULL,
  `medalKnispel` int(11) NOT NULL,
  `maxDiehardSeries` int(11) NOT NULL,
  `maxInvincibleSeries` int(11) NOT NULL,
  `maxPiercingSeries` int(11) NOT NULL,
  `maxKillingSeries` int(11) NOT NULL,
  `maxSniperSeries` int(11) NOT NULL,
  `medalBoelter` int(11) NOT NULL,
  KEY `language` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account_id` int(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `server` varchar(2) NOT NULL,
  `reg` int(12) NOT NULL,
  `local` int(12) NOT NULL,
  `member_since` varchar(11) NOT NULL,
  `up` int(12) NOT NULL,
  `total` int(8) NOT NULL,
  `win` int(8) NOT NULL,
  `lose` int(8) NOT NULL,
  `alive` int(8) NOT NULL,
  `des` int(8) NOT NULL,
  `spot` int(8) NOT NULL,
  `accure` int(3) NOT NULL,
  `dmg` int(15) NOT NULL,
  `cap` int(12) NOT NULL,
  `def` int(12) NOT NULL,
  `exp` int(15) NOT NULL,
  `averag_exp` int(4) NOT NULL,
  `max_exp` int(4) NOT NULL,
  `gr_v` int(12) NOT NULL,
  `gr_p` int(12) NOT NULL,
  `wb_v` int(12) NOT NULL,
  `wb_p` int(12) NOT NULL,
  `eb_v` int(12) NOT NULL,
  `eb_p` int(12) NOT NULL,
  `win_v` int(12) NOT NULL,
  `win_p` int(12) NOT NULL,
  `gpl_v` int(12) NOT NULL,
  `gpl_p` int(12) NOT NULL,
  `cpt_p` int(12) NOT NULL,
  `cpt_v` int(12) NOT NULL,
  `dmg_p` int(12) NOT NULL,
  `dmg_v` int(12) NOT NULL,
  `dpt_p` int(12) NOT NULL,
  `dpt_v` int(12) NOT NULL,
  `frg_p` int(12) NOT NULL,
  `frg_v` int(12) NOT NULL,
  `spt_p` int(12) NOT NULL,
  `spt_v` int(12) NOT NULL,
  `exp_p` int(12) NOT NULL,
  `exp_v` int(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_id` (`account_id`),
  KEY `name` (`name`),
  KEY `server` (`server`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `tabs`
--

CREATE TABLE IF NOT EXISTS `tabs` (
  `id` mediumint(10) NOT NULL,
  `name` varchar(65) NOT NULL,
  `file` varchar(65) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '0 -normal, 1-ajax',
  `status` tinyint(1) NOT NULL COMMENT '0 - Off, 1 - On',
  `auth` varchar(25) NOT NULL COMMENT 'all, admin, user'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tabs`
--

INSERT INTO `tabs` (`id`, `name`, `file`, `type`, `status`, `auth`) VALUES
(1, 'Состав', 'roster.php', 0, 1, 'all'),
(10, 'Лучшие результаты', 'best.php', 0, 1, 'all'),
(20, 'Активность общая', 'active.php', 0, 1, 'all'),
(30, 'Активность награды', 'active_1.php', 0, 1, 'all'),
(40, 'Средняя производительность', 'average_perform.php', 0, 1, 'all'),
(50, 'Боевая эффективность', 'perform.php', 0, 1, 'all'),
(60, 'Общие результаты', 'overall.php', 0, 1, 'all'),
(70, 'Боевой опыт', 'battel.php', 0, 1, 'all'),
(140, 'Рейтинг (Место)', 'rating.php', 0, 1, 'all'),
(80, 'Рейтинг (Значение)', 'rating_1.php', 0, 1, 'all'),
(160, 'Бронетехника 10', 'tank10.php', 0, 1, 'all'),
(150, 'Бронетехника 9', 'tank9.php', 0, 1, 'all'),
(170, 'Арта 7', 'spg7.php', 0, 1, 'all'),
(180, 'Арта 8', 'spg8.php', 0, 1, 'all'),
(200, 'Этапные достижения', 'major.php', 0, 1, 'all'),
(210, 'Герой битвы', 'hero.php', 0, 1, 'all'),
(220, 'Эпические достижения', 'epic.php', 0, 1, 'all'),
(230, 'Почетные звания', 'special.php', 0, 1, 'all'),
(240, 'Запланированные атаки', './attack.php', 1, 1, 'all'),
(250, 'Собственность клана', './poss.php', 1, 1, 'all'),
(190, 'Наличие танков', 'aval_top_tank.php', 0, 1, 'all'),
(100, 'Бронетехника 10(тт)', 'tank10heavy.php', 0, 1, 'all'),
(185, 'Блокированная техника', 'gk.php', 0, 1, 'all'),
(110, 'Бронетехника 10(остальная)', 'tank10others.php', 0, 1, 'all'),
(120, 'Бронетехника 9(тт)', 'tank9heavy.php', 0, 1, 'all'),
(130, 'Бронетехника 9(остальная)', 'tank9others.php', 0, 1, 'all');

-- --------------------------------------------------------

--
-- Структура таблицы `tanks`
--

CREATE TABLE IF NOT EXISTS `tanks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) NOT NULL,
  `tank` varchar(40) NOT NULL,
  `nation` varchar(20) NOT NULL,
  `lvl` varchar(4) NOT NULL,
  `type` varchar(15) NOT NULL,
  `link` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `top_tanks`
--

CREATE TABLE IF NOT EXISTS `top_tanks` (
  `title` varchar(25) NOT NULL,
  `lvl` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `show` tinyint(1) NOT NULL DEFAULT '1',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortname` varchar(20) NOT NULL DEFAULT '',
  `index` tinyint(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`title`),
  KEY `index` (`index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `top_tanks`
--

INSERT INTO `top_tanks` (`title`, `lvl`, `type`, `show`, `order`, `shortname`, `index`) VALUES
('Maus', 10, 'heavyTank', 1, 40, '', 1),
('F10_AMX_50B', 10, 'heavyTank', 1, 30, '', 1),
('IS-7', 10, 'heavyTank', 1, 20, '', 1),
('E-100', 10, 'heavyTank', 1, 30, '', 1),
('T110', 10, 'heavyTank', 1, 10, '', 1),
('IS-4', 10, 'heavyTank', 1, 50, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(200) NOT NULL,
  `group` varchar(25) NOT NULL COMMENT 'user, admin',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `email`, `group`) VALUES
(1, 'admin', '20ccbe71c69cb25e4e0095483cb63bd394a12b23', 'admin@local.com', 'admin'),
(2, 'user', '20ccbe71c69cb25e4e0095483cb63bd394a12b23', 'user@local.com', 'user');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
