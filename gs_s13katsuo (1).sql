-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-01-12 16:39:24
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_s13katsuo`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_cl_table`
--

CREATE TABLE `gs_cl_table` (
  `id` int(12) NOT NULL COMMENT 'ID',
  `countryname` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `latitude` varchar(24) NOT NULL,
  `longitude` varchar(24) NOT NULL,
  `years` varchar(12) NOT NULL,
  `comment` text NOT NULL COMMENT 'コメント',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_cl_table`
--

INSERT INTO `gs_cl_table` (`id`, `countryname`, `name`, `latitude`, `longitude`, `years`, `comment`, `date`) VALUES
(2, 'インド', 'タージマハル', '35.6534479', '140.0721243', '1983', 'イスラム文化の代表的な建造物です。', '2023-01-12 14:45:08'),
(4, 'アメリカ', '自由の女神', '40.689132', '-74.044619', '1984', '正式名称は世界を照らす自由', '2023-01-12 15:17:10'),
(5, 'ドイツ', 'ケルン大聖堂', '50.9381', '6.95694', '1996', 'ゴシック様式の大聖堂で、かつては世界一高い建造物でした。', '2023-01-12 15:21:43'),
(6, 'フランス', 'モンサンミッシェル', '48.63611111', '1.511111111', '1979', 'カトリックの巡礼地のひとつで西洋の驚異と言われている。', '2023-01-12 15:27:29'),
(7, 'アルゼンチン', 'ロスグラシアレス', '-50.3671', '-72.9769', '1981', '南極、グリーンランドに次ぐ第3位の面積を誇る氷河群です。', '2023-01-12 15:31:00'),
(8, 'パキスタン', 'モヘンジョダロ遺跡', '68.1388889', '27.32916667', '1980', 'インダス文明最大級の都市遺跡', '2023-01-12 15:34:38'),
(9, 'ギリシャ', 'パルテノン神殿', '37.581748', '23.433570', '1987', 'アテネ・アクロポリスにあるドーリア式建造物', '2023-01-12 15:38:33');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_login_table`
--

CREATE TABLE `gs_login_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `lid` varchar(128) NOT NULL,
  `lpw` varchar(64) NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_login_table`
--

INSERT INTO `gs_login_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'user1', '$2y$10$7DRS.op8ECeFdLWynbsvcOMo/9w5udtm898hRZVkv9UztzxeSEyJO', 1, 0),
(2, 'テスト2一般', 'test2', 'test2', 0, 0),
(3, 'テスト３', 'test3', 'test3', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_cl_table`
--
ALTER TABLE `gs_cl_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_login_table`
--
ALTER TABLE `gs_login_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_cl_table`
--
ALTER TABLE `gs_cl_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=10;

--
-- テーブルの AUTO_INCREMENT `gs_login_table`
--
ALTER TABLE `gs_login_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
