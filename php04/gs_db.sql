-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2020 年 5 月 29 日 03:39
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  `age` int(3) NOT NULL,
  `naiyou` text NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `age`, `naiyou`, `indate`) VALUES
(1, 'test1', 'test1@test.jp', 30, 'test', '2020-05-29 12:12:24'),
(2, 'test2', 'test2@test.jp', 40, 'test', '2020-05-29 12:13:15'),
(3, 'test3', 'test3@test.jp', 50, 'test', '2020-05-29 12:16:06'),
(11, 'test4', 'test4@test.jp', 10, 'test', '2020-05-29 12:16:55'),
(12, 'test5', 'test5@test.jp', 20, 'test', '2020-05-29 12:17:09'),
(13, 'test6', 'test6@test.jp', 40, 'test', '2020-05-29 12:17:21'),
(14, 'test7', 'test7@test.jp', 30, 'test', '2020-05-29 12:17:32'),
(15, 'test8', 'test8@test.jp', 10, 'test', '2020-05-29 12:17:43'),
(16, 'test9', 'test9@test.jp', 50, 'test', '2020-05-29 12:17:53'),
(17, 'test10', 'test10@test.jp', 20, 'test', '2020-05-29 12:18:03');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `lid` varchar(64) NOT NULL,
  `lpw` varchar(64) NOT NULL,
  `kanri_flg` int(1) NOT NULL COMMENT '※0=従業員,1=管理者',
  `life_flg` int(1) NOT NULL COMMENT '※0=退社,1=入社'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- テーブルのAUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
