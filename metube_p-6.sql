-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 17, 2022 at 08:31 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metube_p`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(200) COLLATE utf16_bin NOT NULL,
  `postedBy` varchar(100) COLLATE utf16_bin NOT NULL,
  `videoId` int(11) NOT NULL,
  `commentedDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `postedBy`, `videoId`, `commentedDate`) VALUES
(31, 'Hope u like it!', 'user99', 51, '2022-04-16 20:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `userName` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `contactUserName` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `status` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL DEFAULT 'Not Blocked',
  `contactType` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `userName`, `contactUserName`, `status`, `contactType`) VALUES
(20, 'user11', '', 'Not Blocked', 'Friend');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(50) NOT NULL,
  `userName` varchar(100) COLLATE utf16_bin NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `keyword` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `media_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`keyword`, `media_id`) VALUES
('travel', 51),
(' Italy', 51),
(' 1', 51),
(' minute', 51),
('Spain', 52),
(' travel', 52),
(' one', 52),
(' minute', 52),
('Anime', 53),
(' music', 53),
('chill', 54),
(' song', 54),
(' music', 54),
('anime', 55),
(' music', 55),
(' mix', 55),
('animals', 56),
(' dog', 56),
('fitness', 57),
(' trainer', 57),
(' personal', 57),
('hollywood', 58),
(' california', 58),
(' travel', 58),
('travel', 59),
('video', 59),
('motanna', 60),
(' winter', 60),
(' sunset', 60),
(' drone', 60),
('nyc', 61),
(' travel', 61),
(' New York', 61),
('road', 62),
(' travel', 62),
(' 10 second', 62),
('football', 63),
(' hits', 63),
(' sports', 63),
('ko', 64),
(' opponent', 64),
(' ten', 64),
(' seconds', 64),
(' knee', 64),
(' flying', 64),
(' drops', 64),
(' epic', 64),
('squid', 65),
(' game', 65),
(' 10', 65),
(' seconds', 65),
('sports', 65),
('news', 66),
(' 10', 66),
(' second', 66),
(' january', 66),
(' 2011', 66),
('news', 67),
(' story', 67),
(' october', 67),
(' 2010', 67),
(' 10 ', 67),
(' second', 67),
('bbc', 68),
(' news', 68),
(' 10', 68),
(' second', 68),
(' countdown', 68),
(' recreation', 68),
('news', 69),
(' 10', 69),
(' second', 69),
('sign', 70),
(' news', 70),
(' 10', 70),
(' second', 70),
('music', 71),
(' intro', 71),
('chill', 72),
(' music', 72),
(' intro', 72),
(' song', 72),
('movie', 73),
(' bee', 73),
(' 2007', 73),
('movie', 74),
(' dark web', 74),
(' short', 74),
(' film', 74),
('movie', 75),
(' film', 75),
(' short', 75),
('movie', 76),
(' film', 76),
(' see you soon', 76),
(' horror', 76),
('movie', 77),
(' film', 77),
(' short', 77),
(' hotshot', 77),
(' stone', 77),
('succeed', 78),
(' how', 78),
(' motivation', 78),
(' cartoon', 78),
('motivation', 79),
(' one shot', 79),
('motivation', 80),
(' stop', 80),
(' wasting', 80),
(' time', 80),
(' quotes', 80),
('fitness', 81),
(' challenge', 81),
(' gsp', 81),
(' fan', 81),
('fitness', 82),
(' tag', 82),
(' gym', 82),
(' games', 82),
('fitness', 83),
(' workout', 83),
(' strength', 83),
(' simple', 83),
('education', 84),
(' lens', 84),
(' pack', 84),
(' opening', 84),
('education', 85),
(' physics', 85),
(' explain', 85),
('education', 86),
(' allover', 86),
('bikes', 87),
(' cars', 87),
('cars', 88),
(' bikes', 88),
(' suzuki', 88),
(' jimny', 88),
(' 2013', 88),
('cars', 89),
(' bikes', 89),
(' subaru', 89),
(' forester', 89),
(' 2013', 89),
(' new', 89),
('bikes', 90),
(' cars', 90),
(' gocycle', 90),
(' gx', 90),
('cars', 91),
(' bikes', 91),
(' honda', 91),
(' civic', 91),
(' tourer', 91),
('cars', 92),
(' bikes', 92),
(' mini', 92),
(' mini', 92),
(' paceman', 92),
(' cooper', 92),
(' s', 92),
('butterfly', 93),
('nature', 93),
('animal', 93),
('nature', 94),
(' other', 94),
('nature', 95),
(' other', 95),
(' sunbeam trees', 95),
('animation', 96),
(' other', 96),
('nature', 97),
(' sunset', 97),
(' waves', 97),
('cake', 98),
(' cheesy', 98),
(' mexican', 98),
(' bubble', 98),
('food', 99),
(' cooking', 99),
(' grilled', 99),
(' crescent', 99),
(' dogs', 99),
('cooking', 100),
('cooking', 101),
(' food', 101),
(' grilled', 101),
(' pizza', 101),
(' quesadillas', 101),
('cooking', 102),
(' food', 102),
(' sausage', 102),
(' crescent', 102),
(' balls', 102);

-- --------------------------------------------------------

--
-- Stand-in structure for view `keyword_count`
-- (See below for the actual view)
--
CREATE TABLE `keyword_count` (
`keyword` varchar(50)
,`count` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `mediaType` varchar(30) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `category` varchar(30) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `privacy` varchar(30) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `filepath` varchar(150) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `file_extension` varchar(30) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `thumbnail` varchar(150) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT 'uploads/default_thumbnail.jpg',
  `mediaSize` bigint(20) DEFAULT NULL,
  `uploadedBy` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin DEFAULT NULL,
  `uploadDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `views` int(11) DEFAULT NULL,
  `keywords` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `mediaType`, `title`, `description`, `category`, `privacy`, `filepath`, `file_extension`, `thumbnail`, `mediaSize`, `uploadedBy`, `uploadDate`, `views`, `keywords`) VALUES
(51, 'video', '1 Minute Of Travel Video', 'Italy travel tour video for a minute', 'Travel', 'Public', 'uploads/user99/Y2Mate.is - 1 MINUTE OF ITALY  TRAVEL VIDEO-o9aaoiyJlcM-144p-1648104254374.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1619702, 'user99', '2022-04-17 04:37:06', 11, 'travel, Italy, 1, minute'),
(52, 'video', 'SPAIN One Minute travel video', 'one minute spain travel video', 'Travel', 'Public', 'uploads/user99/Y2Mate.is - SPAIN  One Minute Travel Video-rwQkIMOHnSk-144p-1649991303592.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 2068751, 'user99', '2022-04-17 04:36:50', 7, 'Spain, travel, one, minute'),
(53, 'video', 'Anime miX', 'anime mix in 10 seconds', 'Music', 'Public', 'uploads/user11/Y2Mate.is - Anime mix 10 seconds-iDFyFAeCvNw-720p-1650145173548.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 2457910, 'user11', '2022-04-17 04:39:32', 3, 'Anime, music'),
(54, 'video', 'chill song intro', 'chill song intro in 10 seconds', 'Music', 'Public', 'uploads/user11/Y2Mate.is - Download Intro Song   Chill intro music  10 Seconds    No Copyright-I-Gfx7Xo0W0-720p-1650145078148.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 276343, 'user11', '2022-04-17 02:29:09', 3, 'chill, song, music'),
(55, 'video', 'Anime Mix Music', 'Anime Mix music for 10 seconds', 'Music', 'Public', 'uploads/user99/Y2Mate.is - Anime mix 10 seconds-iDFyFAeCvNw-720p-1650145173548.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 2457910, 'user99', '2022-04-17 04:36:42', 4, 'anime, music, mix'),
(56, 'video', 'Animals - Dog', 'Dog Video', 'Animal', 'Public', 'uploads/user11/Y2Mate.is - Dog.-rtl2SL0L4f4-720p-1650144969049.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1209279, 'user11', '2022-04-17 05:08:51', 2, 'animals, dog'),
(57, 'video', 'Reasons to have a Personal Trainer', 'reasons to  have a personal trainer', 'Fitness', 'Public', 'uploads/user11/Y2Mate.is - 10 SECOND FITNESS Why you may need a personal trainer.-ULF1P36HJHs-480p-1650147348716.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 281926, 'user11', '2022-04-17 04:41:29', 1, 'fitness, trainer, personal'),
(58, 'video', 'Hollywood', 'Hollywood California 10 second Travel', 'Other', 'Public', 'uploads/user11/Y2Mate.is - Hollywood California 10 Second Travel-SGHcIKD0CQA-720p-1650146184649.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 2957338, 'user11', '2022-04-17 04:44:10', 1, 'hollywood, california, travel'),
(59, 'video', 'travel video ', '15 seconds ravel video', 'Travel', 'Public', 'uploads/user22/Y2Mate.is - 15 seconds travel video-T2wxRWDoDV8-720p-1650146008606.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 6161040, 'user22', '2022-04-17 05:26:36', 0, 'travel,video'),
(60, 'video', 'Montanna Winter Sunset', 'Montanna Winter Sunset drone video', 'Travel', 'Public', 'uploads/user22/Y2Mate.is - Montana Winter Sunset - 15 Second Drone Video [HD]-9em32dDnTck-720p-1650146219313.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 2656338, 'user22', '2022-04-17 05:27:53', 0, 'motanna, winter, sunset, drone'),
(61, 'video', 'New york', 'New york city in 10 sec', 'Travel', 'Public', 'uploads/user22/Y2Mate.is - NYC in 10 sec #NewYork #video #travel #fyp-x1nOYthra6w-480p-1650146185037.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 2222397, 'user22', '2022-04-17 05:28:40', 0, 'nyc, travel, New York'),
(62, 'video', 'On The Road', 'On The Road 10 second travel', 'Travel', 'Public', 'uploads/user22/Y2Mate.is - On The Road 10 Second Travel Video-PnyAu4MQAMo-720p-1650146152723.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 2578936, 'user22', '2022-04-17 05:31:55', 0, 'road, travel, 10 second'),
(63, 'video', '10 Football Hits', '10 football hits, 10 seconds', 'Sports', 'Public', 'uploads/user33/Y2Mate.is - 10 Football Hits, 10 Seconds.-JLWvTXwoEg4-720p-1650145273348.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 3374722, 'user33', '2022-04-17 05:35:03', 0, 'football, hits, sports'),
(64, 'video', 'Kick Boxing ', 'Epic flying Knee KO Drops Opponent in 10 seconds', 'Sports', 'Public', 'uploads/user33/Y2Mate.is - EPIC FLYING KNEE KO DROPS OPPONENT IN TEN SECONDS--KV4BBPxdbI-480p-1650145311424.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 2519959, 'user33', '2022-04-17 05:36:43', 0, 'ko, opponent, ten, seconds, knee, flying, drops, epic'),
(65, 'video', 'Squid Game', 'SQuid game in 10 seconds', 'Sports', 'Public', 'uploads/user33/Y2Mate.is - Squid Game In 10 Seconds-u4tNPNR6orI-720p-1650145483032.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 594869, 'user33', '2022-04-17 05:40:25', 0, 'squid, game, 10, seconds,sports'),
(66, 'video', 'news 10', '10 second news - january 14, 2011', 'News', 'Public', 'uploads/user44/Y2Mate.is - 10 Second News - January 14, 2011-kQIZvIK2peo-480p-1650147704149.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1488179, 'user44', '2022-04-17 05:41:52', 0, 'news, 10, second, january, 2011'),
(67, 'video', 'news story', '10 second news story - October 18, 2010', 'News', 'Public', 'uploads/user44/Y2Mate.is - 10 Second News Story - October 18, 2010-mkrexxbSyy0-480p-1650147792091.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1251438, 'user44', '2022-04-17 05:44:19', 1, 'news, story, october, 2010, 10 , second'),
(68, 'video', 'BBC 10', 'bbc news 10 second countdown recreation', 'News', 'Public', 'uploads/user44/Y2Mate.is - BBC News 10 second countdown recreation-5Hx-E846bcc-720p-1650147668173.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 2281481, 'user44', '2022-04-17 05:43:46', 0, 'bbc, news, 10, second, countdown, recreation'),
(69, 'video', 'news', '10 second news', 'News', 'Public', 'uploads/user44/Y2Mate.is - News In 10 Seconds-0y3BoukDxnE-720p-1650147818761.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 321023, 'user44', '2022-04-17 05:45:16', 0, 'news, 10, second'),
(70, 'video', 'Sign News', 'sign news in 10 seconds', 'News', 'Public', 'uploads/user44/Y2Mate.is - The Sign News in 10 Seconds!-Ky9khOJ7cv0-720p-1650147749766.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 3004412, 'user44', '2022-04-17 05:46:05', 0, 'sign, news, 10, second'),
(71, 'video', 'Intro Music', 'Intro music 10 seconds', 'Music', 'Public', 'uploads/user55/Y2Mate.is - Intro Music 10 Seconds-SxoRrlfkHho-720p-1650145087927.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 6068686, 'user55', '2022-04-17 05:47:46', 0, 'music, intro'),
(72, 'video', 'Chill', 'chill intro music', 'Music', 'Public', 'uploads/user55/Y2Mate.is - Download Intro Song   Chill intro music  10 Seconds    No Copyright-I-Gfx7Xo0W0-720p-1650145078148.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 276343, 'user55', '2022-04-17 05:49:34', 0, 'chill, music, intro, song'),
(73, 'video', 'Bee', 'BEE moVIE ', 'Movies', 'Public', 'uploads/user66/Y2Mate.is - Bee Movie (2007) in 10 Seconds-BACEYYHT8Tc-720p-1650147892004.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 2832368, 'user66', '2022-04-17 06:30:36', 1, 'movie, bee, 2007'),
(74, 'video', 'Dark Web', 'dark web short film', 'Movies', 'Public', 'uploads/user66/Y2Mate.is - Dark Web - A 10 Second Short Film-tN18ZTpRDEs-720p-1650148385078.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 2808108, 'user66', '2022-04-17 05:53:01', 0, 'movie, dark web, short, film'),
(75, 'video', 'Emotion', 'Emotion short film', 'Movies', 'Public', 'uploads/user66/Y2Mate.is - Emotion (10 Second Short Film)-_2upwiul2QM-720p-1650148309954.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1147478, 'user66', '2022-04-17 05:53:42', 0, 'movie, film, short'),
(76, 'video', 'See you soon', 'see you seen - horror film', 'Movies', 'Public', 'uploads/user66/Y2Mate.is - See You Soon - 14 second horror film-KaHmrpelNXA-720p-1650148347748.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1490836, 'user66', '2022-04-17 05:54:40', 0, 'movie, film, see you soon, horror'),
(77, 'video', 'Stone', 'Stone- hot shot short film', 'Movies', 'Public', 'uploads/user66/Y2Mate.is - Stone  1 Minute Short Film  Hot Shot-5hPtU8Jbpg0-720p-1650148473356.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 12483508, 'user66', '2022-04-17 05:55:40', 0, 'movie, film, short, hotshot, stone'),
(78, 'video', 'How to succeed', 'How to succeed - motivational cartoon video', 'Motivation', 'Public', 'uploads/user77/Y2Mate.is - Motivational short video - How to succeed - cartoon-hS5CfP8n_js-720p-1650146713120.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 9227448, 'user77', '2022-04-17 05:58:50', 0, 'succeed, how, motivation, cartoon'),
(79, 'video', 'one Shot', 'One Shot - motivational video', 'Motivation', 'Public', 'uploads/user77/Y2Mate.is - ONE SHOT - 1 Minute Motivational Video-ZU0f8_C5Pm0-720p-1650146729162.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 7550260, 'user77', '2022-04-17 05:59:41', 0, 'motivation, one shot'),
(80, 'video', 'Stop Wasting Time', 'stop wasting time - motivational video', 'Motivation', 'Public', 'uploads/user77/Y2Mate.is - STOP WASTING TIME - 30 Sec Motivational Quotes on time-ZkJgNRO4Sws-720p-1650146642483 (1).mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1410889, 'user77', '2022-04-17 06:00:49', 0, 'motivation, stop, wasting, time, quotes'),
(81, 'video', 'Fitness Challenge', 'gsp fan fitness challenge', 'Fitness', 'Public', 'uploads/user88/Y2Mate.is - GSP Fan Fitness Challenge  10 Second Handstand-7FylJNSUoGY-480p-1650146825462.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 5895568, 'user88', '2022-04-17 06:02:47', 0, 'fitness, challenge, gsp, fan'),
(82, 'video', 'Tag', 'Tag - Gym game', 'Fitness', 'Friend', 'uploads/user88/Y2Mate.is - Gym Games - 10 Second Tag-lURdg-cgLXc-720p-1650147401929.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 3325325, 'user88', '2022-04-17 06:03:44', 0, 'fitness, tag, gym, games'),
(83, 'video', 'Simple Strength Workout', 'Simple strenth workout in 10 seconda', 'Fitness', 'Family', 'uploads/user88/Y2Mate.is - Simple Strength 10 second workout-DS5Gzmk1auk-720p-1650146794183.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 9166700, 'user88', '2022-04-17 06:05:22', 0, 'fitness, workout, strength, simple'),
(84, 'video', 'Lens', 'lens pack opening video', 'Education', 'Fav', 'uploads/user99/Y2Mate.is - 10 second lens pack opening video-9HRjopTKNC8-720p-1650145647294.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1376370, 'user99', '2022-04-17 06:07:25', 0, 'education, lens, pack, opening'),
(85, 'video', 'physics', 'Physics explained', 'Education', 'Public', 'uploads/user99/Y2Mate.is - Physics Explained in Ten Seconds (Announcement)-adJFT6_j9Uk-720p-1650145524534.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1911169, 'user99', '2022-04-17 06:08:53', 0, 'education, physics, explain'),
(86, 'video', 'All over', 'All Over in 10 seconds', 'Education', 'Public', 'uploads/user99/Y2Mate.is - All over in 10 seconds-rUWxSEwctFU-720p-1650145546164.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 4080991, 'user99', '2022-04-17 06:09:38', 0, 'education, allover'),
(87, 'video', '40 Bikes', '40 bikes in 10 seconds', 'CarsAndBikes', 'Public', 'uploads/user00/Y2Mate.is - 40 Bikes in 10 Seconds-enhVQFc1BRM-720p-1650146293279.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 3446666, 'user00', '2022-04-17 06:12:38', 0, 'bikes, cars'),
(88, 'video', 'Suzuki jimny 2013', 'Suzuki jimny 2013', 'CarsAndBikes', 'Public', 'uploads/user00/Y2Mate.is - 2013 Suzuki Jimny - 10 Second Car Videos-3A8cXVCxXao-720p-1650146512810.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 2809540, 'user00', '2022-04-17 06:14:18', 0, 'cars, bikes, suzuki, jimny, 2013'),
(89, 'video', '2013 Subaru Forester', '2013 subaru forester', 'CarsAndBikes', 'Public', 'uploads/user00/Y2Mate.is - All-New 2013 Subaru Forester XT Turbo - 10 Second car Videos-R5IIXZcf5eo-720p-1650146529412.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1605836, 'user00', '2022-04-17 06:15:17', 0, 'cars, bikes, subaru, forester, 2013, new'),
(90, 'video', 'Gocycle GX', 'Gocycle GX', 'CarsAndBikes', 'Public', 'uploads/user00/Y2Mate.is - Gocycle GX - Unfolds in Under 10 Seconds-K-hgenGE5Fc-720p-1650146337809.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 4806592, 'user00', '2022-04-17 06:17:14', 0, 'bikes, cars, gocycle, gx'),
(91, 'video', 'honda civic tourer', 'honda civic tourer', 'CarsAndBikes', 'Public', 'uploads/user00/Y2Mate.is - Honda Civic Tourer Concept - 10 Second Car Videos-TsLuy5Vm-Zs-720p-1650146487712.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1655436, 'user00', '2022-04-17 06:18:03', 0, 'cars, bikes, honda, civic, tourer'),
(92, 'video', 'MINI Paceman Cooper', 'MINI Paceman Cooper', 'CarsAndBikes', 'Public', 'uploads/user00/Y2Mate.is - Inside the MINI Paceman Cooper S - 10 Second Car Videos-EeE-HdHg2Ho-720p-1650146479067.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1943136, 'user00', '2022-04-17 06:19:06', 0, 'cars, bikes, mini, mini, paceman, cooper, s'),
(93, 'video', 'butterfly', 'butterfly status video', 'Animal', 'Public', 'uploads/user007/Y2Mate.is - butterfly Status video!! shots WhatsApp videos !! 😍😍-K5uUZrClh5E-720p-1650144718536.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 3101602, 'user007', '2022-04-17 06:20:42', 0, 'butterfly,nature,animal'),
(94, 'video', 'nature', 'Nature', 'Other', 'Public', 'uploads/user007/Y2Mate.is - Nature In 10 Second Free 4k video Copyright-DMOQPaLbUvs-720p-1650144766223.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1754210, 'user007', '2022-04-17 06:21:35', 0, 'nature, other'),
(95, 'video', 'Sun Rays', 'Sun rays - sunbeam tress', 'Other', 'Public', 'uploads/user007/Y2Mate.is - sun rays sunbeam trees silhouette background beaming light nature fantasy r4libwpr  D-NM-LBizdOR0-720p-1650144696604.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 3812747, 'user007', '2022-04-17 06:22:45', 0, 'nature, other, sunbeam trees'),
(96, 'video', 'animation', 'Animation ', 'Other', 'Public', 'uploads/user007/Y2Mate.is - 10 seconds Animation-N-8QUdOdXls-720p-1650144665031.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1872560, 'user007', '2022-04-17 06:24:04', 0, 'animation, other'),
(97, 'video', 'sunset waves', 'sunset waves nature', 'Other', 'Public', 'uploads/user007/Y2Mate.is - 10 Second Nature - Sunset and Waves-ig3Qa6IINYo-720p-1650144803787.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 4429663, 'user007', '2022-04-17 06:24:49', 0, 'nature, sunset, waves'),
(98, 'video', 'Cheesy Mexican Bubble cake', 'Cheesy Mexican Bubble cake', 'Other', 'Public', 'uploads/user007/Y2Mate.is - 10 Second Videos Cheesy Mexican Bubble Bake-H2Kj84x-fMk-720p-1650144538306.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 3527855, 'user007', '2022-04-17 06:26:08', 0, 'cake, cheesy, mexican, bubble'),
(99, 'video', 'Grilled Crescent Dogs', 'Grilled Crescent Dogs', 'Other', 'Public', 'uploads/user007/Y2Mate.is - 10 Second Videos Grilled Crescent Dogs-LzNwPSqAWw0-720p-1650144496458.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 3456011, 'user007', '2022-04-17 06:27:11', 0, 'food, cooking, grilled, crescent, dogs'),
(100, 'video', 'cooking', 'cooking', 'Other', 'Public', 'uploads/user007/Y2Mate.is - 10 SECONDS VIDEO CLIP-UT5F9AXjwhg-480p-1648754812514.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 1733453, 'user007', '2022-04-17 06:27:42', 0, 'cooking'),
(101, 'video', 'Grilled pizza Quesadillas', 'Grilled pizza Quesadillas', 'Other', 'Public', 'uploads/user007/Y2Mate.is - 10-Second Video Grilled Pizza Quesadillas-Vj4Y1c-DSM0-480p-1649145618093.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 947664, 'user007', '2022-04-17 06:28:36', 0, 'cooking, food, grilled, pizza, quesadillas'),
(102, 'video', 'Sausage Crescent Balls', 'Sausage Crescent Balls', 'Other', 'Public', 'uploads/user007/Y2Mate.is - 10-Second Video Sausage Crescent Cheese Balls-LPGUtKKO6F8-720p-1650144391956.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 4031293, 'user007', '2022-04-17 06:30:28', 0, 'cooking, food, sausage, crescent, balls');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sentBy` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `sentAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sentTo` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `message` mediumtext CHARACTER SET utf16 COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `userName` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `name`, `userName`) VALUES
(52, '11', 'user11');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_media`
--

CREATE TABLE `playlist_media` (
  `playlistName` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist_media`
--

INSERT INTO `playlist_media` (`playlistName`, `videoId`, `id`) VALUES
('11', 52, 29);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(20) NOT NULL,
  `userName` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `mediaId` int(11) NOT NULL,
  `ratedIndex` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) COLLATE utf16_bin NOT NULL,
  `lastName` varchar(25) COLLATE utf16_bin NOT NULL,
  `userName` varchar(25) COLLATE utf16_bin NOT NULL,
  `emailId` varchar(100) COLLATE utf16_bin NOT NULL,
  `password` varchar(225) COLLATE utf16_bin NOT NULL,
  `joinDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `profilePic` varchar(250) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `userName`, `emailId`, `password`, `joinDate`, `profilePic`) VALUES
(30, 'User007', 'Test007', 'user007', 'user007@gmail.com', '26095b3b7b4b795162dcf9dc7f86e3c162007bd595159681bd0dec5dfd6a430f9f74d1199c84256a3c30fef5fa3f8fbc712158eae50544ba8980269b1f98a91b', '2022-04-16 19:31:55', 'files/images/profilePictures/default.png'),
(31, 'User99', 'Test99', 'user99', 'user99@gmail.com', '796554732a730248988bb2a29091b9082605f1587ed788720c3548ad5e301b6b485efa1aaf7b527a5cbb3e32436683f3bd0136f2256c59d5b8eac221000655ef', '2022-04-16 19:32:37', 'files/images/profilePictures/default.png'),
(32, 'User11', 'Test11', 'user11', 'user11@gmail.com', 'e531286ad0aca20c9cd144a03979090a9d41955970f3654e231a9a49bce7dfab5275313cea083cc642e9d5519ab2e45ce5fd8cc518ad920d1486a4aa0c5f0f4f', '2022-04-16 19:43:31', 'files/images/profilePictures/default.png'),
(33, 'User22', 'Test22', 'user22', 'user22@gmail.com', 'e608ef69df0b819b44bc165ad5e3d92037ff835a55cbfb38737def8c25aa8d7c0a373e46a6aebc2a7a70b557798dcbcf0fba9090577acf7c3909cf52b2912407', '2022-04-16 19:44:07', 'files/images/profilePictures/default.png'),
(34, 'User33', 'Test33', 'user33', 'user33@gmail.com', 'f2c3cd30163fa8226e4536cb4d61a0e7c2cd30a2f09c00c80edde5e15b8fe7c182ae64ea768e72df35319f6548c57a4b4565573f70311ea0e9c77ce0a3a4591e', '2022-04-16 19:44:35', 'files/images/profilePictures/default.png'),
(35, 'User44', 'Test44', 'user44', 'user44@gmail.com', '5f3caa4f8d6c7fe829d9af2efd79fe6377c11c05887c458f1624a52714e152c0b2cac0ffeb1362a025db5caead6f5eb63c7302861ae30d3edcba6d8e1873cfb2', '2022-04-16 19:45:12', 'files/images/profilePictures/default.png'),
(36, 'User55', 'Test55', 'user55', 'user55@gmail.com', '8065e8ebfc20757866d841d5aaa35e3da674b7588e4bc447cc677a298c47218705b860a7c5f3a906c1ca8295231ac76459f0d5718b3c9a5230fe559b487c688a', '2022-04-16 19:45:46', 'files/images/profilePictures/default.png'),
(37, 'User66', 'Test66', 'user66', 'user66@gmail.com', '3cf881283c49cb5d752eff8036f94c406243add6893e45b571bec6f0d1cbc0802b83941077292e5695db281df1a73f421684fad34e7e40941d1dd8a5e0fbdd0c', '2022-04-16 19:46:25', 'files/images/profilePictures/default.png'),
(38, 'User77', 'Test77', 'user77', 'user77@gmail.com', '1a923d4bb1244f970eb7433c807f436b4ec98411960e3f26687deb99701144aa41d3ba1360f081cf9a5218dcfbcb2160dc5921b322f3761f7f77577880200143', '2022-04-16 19:46:53', 'files/images/profilePictures/default.png'),
(39, 'User88', 'Test88', 'user88', 'user88@gmail.com', 'f77e2a51eaf26e0ba6d9cf90dd710e83b277324d745523f11ba3b89d98478878050e9cf76966def5b371da8683930c9dc4af66402d76049e911c0d14fe4be11e', '2022-04-16 19:47:25', 'files/images/profilePictures/default.png'),
(40, 'User00', 'Test00', 'user00', 'user00@gmail.com', '887ad6a742d43ad98d149b3c7f3de605c9bdf43dc148e4519cbfa021833bdba78d2a19eaf7dbd4158447651ee7f75dbcbc1f3a3199137c77f6af066216161397', '2022-04-16 20:32:37', 'files/images/profilePictures/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `wordcount`
--

CREATE TABLE `wordcount` (
  `word` varchar(100) DEFAULT NULL,
  `search_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `keyword_count`
--
DROP TABLE IF EXISTS `keyword_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`MeTube_w0sh`@`%` SQL SECURITY DEFINER VIEW `keyword_count`  AS SELECT `keywords`.`keyword` AS `keyword`, count(`keywords`.`media_id`) AS `count` FROM `keywords` GROUP BY `keywords`.`keyword` ORDER BY count(`keywords`.`media_id`) AS `DESCdesc` ASC  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videoId` (`videoId`),
  ADD KEY `postedBy` (`postedBy`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userName` (`userName`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userName` (`userName`),
  ADD KEY `videoId` (`videoId`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD KEY `keyword` (`keyword`),
  ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sentBy` (`sentBy`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userName` (`userName`);

--
-- Indexes for table `playlist_media`
--
ALTER TABLE `playlist_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mediaId` (`mediaId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userName` (`userName`);

--
-- Indexes for table `wordcount`
--
ALTER TABLE `wordcount`
  ADD UNIQUE KEY `word` (`word`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `playlist_media`
--
ALTER TABLE `playlist_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
