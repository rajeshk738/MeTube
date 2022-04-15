-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: mysql1.cs.clemson.edu
-- Generation Time: Apr 02, 2022 at 12:53 PM
-- Server version: 5.5.52-0ubuntu0.12.04.1
-- PHP Version: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `MeTube_z17a`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(200) COLLATE utf16_bin NOT NULL,
  `postedBy` varchar(100) COLLATE utf16_bin NOT NULL,
  `videoId` int(11) NOT NULL,
  `commentedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `videoId` (`videoId`),
  KEY `postedBy` (`postedBy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_bin AUTO_INCREMENT=31 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `postedBy`, `videoId`, `commentedDate`) VALUES
(11, 'nice fish', 'nikhilsuresh', 11, '2021-11-16 14:53:19'),
(16, 'swim faster', 'nik', 11, '2021-11-16 14:53:34'),
(17, 'nice dog', 'nik', 9, '2021-11-16 14:54:27'),
(18, 'gold fish', 'nikhilsuresh', 11, '2021-11-16 14:53:40'),
(19, 'nice', 'nik', 11, '2021-11-16 14:53:48'),
(20, 'very good', 'nik', 11, '2021-11-16 14:53:53'),
(22, 'michael phelps', 'bhargav', 7, '2021-11-16 14:55:40'),
(23, 'ice hockey is amazing!', 'nik', 3, '2021-11-16 16:00:42'),
(24, 'sandy', 'nik', 9, '2021-11-16 21:06:06'),
(25, 'Awesome Goal!', 'devin', 5, '2021-11-17 00:10:53'),
(26, 'Beautiful video', 'devin', 20, '2021-11-17 00:11:28'),
(27, 'a very good teacher', 'nik', 19, '2021-11-23 12:25:15'),
(28, 'swim faster', 'nik', 7, '2021-11-23 12:50:31'),
(29, 'nice skills', 'nik', 2, '2021-11-23 12:56:58'),
(30, 'good', 'nik', 19, '2021-11-30 17:24:45');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `contactUserName` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `status` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL DEFAULT 'Not Blocked',
  `contactType` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userName` (`userName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `userName`, `contactUserName`, `status`, `contactType`) VALUES
(1, 'nikhilsuresh', 'nik', 'Not Blocked', 'Family'),
(2, 'nik', 'nikhilsuresh', 'Not Blocked', 'Family'),
(4, 'nik', 'robot', 'Not Blocked', 'Friend'),
(9, 'nik', 'billzyj', 'Not Blocked', 'Family'),
(16, 'nikhilsuresh', 'robot', 'Not Blocked', 'Family'),
(17, 'devin', 'nikhilsuresh', 'Not Blocked', 'Fav'),
(18, 'devin', 'robot', 'Not Blocked', 'Family'),
(19, 'nik', 'devin', 'Not Blocked', 'Friend');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) COLLATE utf16_bin NOT NULL,
  `videoId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userName` (`userName`),
  KEY `videoId` (`videoId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_bin AUTO_INCREMENT=42 ;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `userName`, `videoId`) VALUES
(12, 'nik', 14),
(13, 'devin', 5),
(14, 'devin', 2),
(15, 'devin', 0),
(16, 'devin', 21),
(17, 'devin', 3),
(20, 'nikhilsuresh', 0),
(29, 'nikhilsuresh', 5),
(31, 'nikhilsuresh', 7),
(32, 'robot', 19),
(33, 'billzyj', 19),
(34, 'nik', 20),
(35, 'nik', 2),
(36, 'nik', 26),
(37, 'nik', 7),
(40, 'billzyj', 35),
(41, 'billzyj', 17);

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE IF NOT EXISTS `keywords` (
  `keyword` varchar(50) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `media_id` int(11) NOT NULL,
  KEY `keyword` (`keyword`),
  KEY `media_id` (`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`keyword`, `media_id`) VALUES
('boys', 2),
('game', 2),
('court', 2),
('ice', 3),
('game', 3),
('athletes', 3),
('adventure', 4),
('snow', 4),
('mountain', 4),
('girls', 5),
('game', 5),
('court', 5),
('sea', 6),
('water', 6),
('waves', 6),
('carnivor', 8),
('cute', 8),
('domestic', 8),
('cute', 9),
('domestic', 9),
('black', 9),
('big', 10),
('carnivor', 10),
('wild', 10),
('water', 11),
('small', 11),
('colorful', 11),
('white', 13),
('herbivor', 13),
('cute', 13),
('patient', 14),
('man', 14),
('hospital', 14),
('man', 15),
('badge', 15),
('radio', 15),
('patient', 16),
('female', 16),
('hospital', 16),
('female', 17),
('child', 17),
('badge', 17),
('school', 18),
('classroom', 18),
('students', 18),
('students', 19),
('shool', 19),
('classroom', 19),
('child', 19),
('chair', 21),
('computer', 21),
('workspace', 21),
('blue', 22),
('sky', 22),
('night', 22),
('stars', 22),
('water', 23),
('flower', 23),
('park', 23),
('chair', 24),
('trees', 24),
('water', 24),
('leaves', 25),
('brown', 25),
('yellow', 25),
('girl', 26),
('blue', 26),
('cute', 26),
('barbell', 27),
('man', 27),
('exercise', 27),
('men', 28),
('hobby', 28),
('senior', 28),
('game', 29),
('ball', 29),
('athletes', 29),
('big', 30),
('brown', 30),
('carnivor', 30),
('flower', 31),
('small', 31),
('yellow', 31),
('flower', 32),
('colorful', 32),
('small', 32),
('herbivor', 33),
('white', 33),
('domestic', 33),
('apron', 34),
('cook', 34),
('indoor', 34),
('beach', 35),
('wave', 35),
('blue', 35),
('apron', 36),
('assistant', 36),
('bloom', 36),
('flower', 36),
('assistant', 37),
('female', 37),
('attorney', 37),
('brown', 38),
('chair', 38),
('furniture', 38),
('blue', 39),
('architecture', 39),
('night', 39),
('leave', 40),
('bloom', 40),
('garden', 40),
('architecture', 41),
('flower', 41),
('bloom', 41),
('blue', 41),
('athletes', 7),
('game', 7),
('water', 7),
('carnivor', 12),
('wild', 12),
('brown', 12),
('Test', 41),
('test', 41),
('test', 41),
('test1', 50),
('test2', 50),
('beach', 20),
('waves', 20),
('blue', 20);

-- --------------------------------------------------------

--
-- Stand-in structure for view `keyword_count`
--
CREATE TABLE IF NOT EXISTS `keyword_count` (
`keyword` varchar(50)
,`count` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `uploadDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `views` int(11) DEFAULT NULL,
  `keywords` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `mediaType`, `title`, `description`, `category`, `privacy`, `filepath`, `file_extension`, `thumbnail`, `mediaSize`, `uploadedBy`, `uploadDate`, `views`, `keywords`) VALUES
(2, 'video', 'football', 'boys playing football', 'Sports', 'Public', 'uploads/billzyj/football boys+game+court.mp4', 'video/mp4', 'uploads/billzyj/football_thumbnail.JPG', 3281769, 'billzyj', '2021-11-23 22:58:27', 105, 'boys,game,court'),
(3, 'video', 'hockey', 'a hockey game', 'Sports', 'Public', 'uploads/bhargav/hockey ice+game+.athletes.mp4', 'video/mp4', 'uploads/bhargav/hockey_thumbnail.JPG', 6509709, 'bhargav', '2021-11-30 02:26:49', 84, 'ice,game,athletes'),
(5, 'video', 'soccer', 'girls playing soccer', 'Sports', 'Public', 'uploads/nik/soccer girls+game+court.mp4', 'video/mp4', 'uploads/nik/soccer_thumbnail.JPG', 3807041, 'nik', '2021-11-23 22:13:16', 100, 'girls,game,court'),
(6, 'video', 'surfing', 'surfing in the sea', 'Sports', 'Family', 'uploads/nikhilsuresh/surfing sea+water+waves.mp4', 'video/mp4', 'uploads/nikhilsuresh/surfing_thumbnail.JPG', 2730552, 'nikhilsuresh', '2021-11-23 07:56:08', 28, 'sea,water,waves'),
(7, 'video', 'swimming', 'swimming competition', 'Sports', 'Public', 'uploads/devin/swimming athletes+game+water.mp4', 'video/mp4', 'uploads/devin/swimming_thumbnail.JPG', 6011789, 'devin', '2021-11-30 17:07:24', 78, 'athletes,game,water'),
(8, 'video', 'cat', 'a cute cat', 'Animal', 'Public', 'uploads/billzyj/cat carnivor+cute+domestic.mp4', 'video/mp4', 'uploads/billzyj/cat_thumbnail.JPG', 1316743, 'billzyj', '2021-11-22 17:29:56', 18, 'carnivor,cute,domestic'),
(9, 'video', 'dog', 'a black dog', 'Animal', 'Public', 'uploads/bhargav/dog cute+domestic+black.mp4', 'video/mp4', 'uploads/bhargav/dog_thumbnail.JPG', 2204946, 'bhargav', '2021-11-22 17:29:56', 57, 'cute,domestic,black'),
(10, 'video', 'elephant', 'a big elephant', 'Animal', 'Public', 'uploads/robot/elephant big+carnivor+wild.mp4', 'video/mp4', 'uploads/robot/elephant_thumbnail.JPG', 1143820, 'robot', '2021-11-22 17:29:56', 69, 'big,carnivor,wild'),
(11, 'video', 'fish', 'colorful fish', 'Animal', 'Public', 'uploads/nik/fish water+small+colorful.mp4', 'video/mp4', 'uploads/nik/fish_thumbnail.JPG', 3079560, 'nik', '2021-11-23 13:56:57', 149, 'water,small,colorful'),
(12, 'video', 'lion', 'a brown lion', 'Animal', 'Public', 'uploads/nikhilsuresh/lion carnivor+wild+brown.mp4', 'video/mp4', 'uploads/nikhilsuresh/lion_thumbnail.JPG', 1144828, 'nikhilsuresh', '2021-11-30 17:22:56', 233, 'carnivor,wild,brown'),
(13, 'video', 'rabbit', 'a white rabbit', 'Animal', 'Public', 'uploads/devin/rabbit white+herbivor+cute.mp4', 'video/mp4', 'uploads/devin/rabbit_thumbnail.JPG', 4994282, 'devin', '2022-01-21 21:56:13', 66, 'white,herbivor,cute'),
(14, 'video', 'doctor', 'a patient seeing a doctor in hospital', 'Human', 'Public', 'uploads/billzyj/doctor patient+man+hospital.mp4', 'video/mp4', 'uploads/billzyj/doctor_thumbnail.JPG', 658976, 'billzyj', '2021-11-23 22:42:55', 434, 'patient,man,hospital'),
(15, 'video', 'firefighter', 'a firefighter reporting', 'Human', 'Public', 'uploads/bhargav/firefighter man+badge+radio.mp4', 'video/mp4', 'uploads/bhargav/firefighter_thumbnail.JPG', 4663259, 'bhargav', '2021-11-30 02:26:45', 314, 'man,badge,radio'),
(16, 'video', 'nurse', 'a female nurse treating patients', 'Human', 'Public', 'uploads/robot/nurse patient+female+hospital.mp4', 'video/mp4', 'uploads/robot/nurse_thumbnail.JPG', 1076491, 'robot', '2021-11-22 22:12:02', 77, 'patient,female,hospital'),
(17, 'video', 'police', 'a police officer showing badges to a kid', 'Human', 'Public', 'uploads/nik/police female+child+badge.mp4', 'video/mp4', 'uploads/nik/police_thumbnail.JPG', 5925413, 'nik', '2022-04-01 19:47:17', 259, 'female,child,badge'),
(18, 'video', 'professor', 'a professor in the classroom', 'Human', 'Public', 'uploads/nikhilsuresh/professor school+classroom+students.mp4', 'video/mp4', 'uploads/nikhilsuresh/professor_thumbnail.JPG', 814821, 'nikhilsuresh', '2021-11-22 17:30:06', 220, 'school,classroom,students'),
(19, 'video', 'teacher', 'a teacher in the class', 'Human', 'Public', 'uploads/devin/teacher students+shool+classroom+child.mp4', 'video/mp4', 'uploads/devin/teacher_thumbnail.JPG', 3009130, 'devin', '2022-02-16 15:10:58', 523, 'students,shool,classroom,child'),
(20, 'video', 'sea', 'sea beach', 'Other', 'Family', 'uploads/billzyj/sea beach+waves+blue.mp4', 'video/mp4', 'uploads/billzyj/sea_thumbnail.JPG', 933721, 'billzyj', '2021-11-30 17:15:35', 246, 'beach,waves,blue'),
(21, 'video', 'office', 'an office workspace', 'Other', 'Public', 'uploads/bhargav/office chair+computer+workspace.mp4', 'video/mp4', 'uploads/bhargav/office_thumbnail.JPG', 2170623, 'bhargav', '2021-11-22 17:39:09', 309, 'chair,computer,workspace'),
(22, 'video', 'night', 'stars at night', 'Other', 'Public', 'uploads/robot/night blue sky+night+stars.mp4', 'video/mp4', 'uploads/robot/night_thumbnail.JPG', 4189663, 'robot', '2021-11-22 17:30:20', 168, 'blue,sky,night,stars'),
(23, 'video', 'garden', 'a beautiful garden', 'Other', 'Public', 'uploads/nik/garden water+flower+park.mp4', 'video/mp4', 'uploads/nik/garden_thumbnail.JPG', 775126, 'nik', '2021-11-22 17:30:20', 37, 'water,flower,park'),
(24, 'video', 'bench', 'a long bench', 'Other', 'Public', 'uploads/nikhilsuresh/bench chair+trees+water.mp4', 'video/mp4', 'uploads/nikhilsuresh/bench_thumbnail.JPG', 1557942, 'nikhilsuresh', '2021-11-22 17:30:20', 747, 'chair,trees,water'),
(25, 'video', 'autumn', 'falling leaves in autumn', 'Other', 'Public', 'uploads/devin/autumn leaves+brown+yellow.mp4', 'video/mp4', 'uploads/devin/autumn_thumbnail.JPG', 3009130, 'devin', '2021-11-22 18:29:48', 6759, 'leaves,brown,yellow'),
(26, 'image', 'tennis', 'a girl playing tennis', 'Sports', 'Public', 'uploads/billzyj/tennis girl+blue+cute.jpg', 'image/jpeg', 'uploads/billzyj/tennis girl+blue+cute.jpg', 62331, 'billzyj', '2021-11-30 17:27:39', 31, 'girl,blue,cute'),
(27, 'image', 'gym', 'a man exercising in the gym', 'Sports', 'Public', 'uploads/billzyj/gym barbell+man+exercise.jpg', 'image/jpeg', 'uploads/billzyj/gym barbell+man+exercise.jpg', 72108, 'billzyj', '2021-11-23 22:13:29', 28, 'barbell,man,exercise'),
(28, 'image', 'golf', 'senior men playing golf', 'Sports', 'Public', 'uploads/billzyj/golf men+hobby+senior.jpg', 'image/jpeg', 'uploads/billzyj/golf men+hobby+senior.jpg', 70333, 'billzyj', '2021-11-23 22:14:23', 12, 'men,hobby,senior'),
(29, 'image', 'basketball', 'athletes playing basketball', 'Sports', 'Public', 'uploads/billzyj/basketball game+ball+athletes.jpg', 'image/jpeg', 'uploads/billzyj/basketball game+ball+athletes.jpg', 71686, 'billzyj', '2021-11-22 18:29:59', 221, 'game,ball,athletes'),
(30, 'image', 'bear', 'a brown bear', 'Animal', 'Public', 'uploads/nikhilsuresh/bear big+brown+carnivor.jpg', 'image/jpeg', 'uploads/nikhilsuresh/bear big+brown+carnivor.jpg', 72261, 'nikhilsuresh', '2021-11-22 17:30:38', 213, 'big,brown,carnivor'),
(31, 'image', 'bee', 'a yellow bee', 'Animal', 'Public', 'uploads/nikhilsuresh/bee flower+small+yellow.jpg', 'image/jpeg', 'uploads/nikhilsuresh/bee flower+small+yellow.jpg', 64710, 'nikhilsuresh', '2021-11-22 17:30:38', 223, 'flower,small,yellow'),
(32, 'image', 'butterfly', 'a color butterfly', 'Animal', 'Public', 'uploads/nikhilsuresh/butterfly flower+colorful+small.jpg', 'image/jpeg', 'uploads/nikhilsuresh/butterfly flower+colorful+small.jpg', 48217, 'nikhilsuresh', '2021-11-22 17:30:38', 19, 'flower,colorful,small'),
(33, 'image', 'sheep', 'a white sheep', 'Animal', 'Family', 'uploads/nikhilsuresh/sheep herbivor+white+domestic.jpg', 'image/jpeg', 'uploads/nikhilsuresh/sheep herbivor+white+domestic.jpg', 59008, 'nikhilsuresh', '2021-11-22 17:30:38', 27, 'herbivor,white,domestic'),
(34, 'image', 'chef', 'a chef is cooking', 'Human', 'Public', 'uploads/nik/chef apron+cook+indoor.jpg', 'image/jpeg', 'uploads/nik/chef apron+cook+indoor.jpg', 64394, 'nik', '2022-02-17 20:29:31', 4, 'apron,cook,indoor'),
(35, 'image', 'couple', 'a couple on the beach', 'Human', 'Public', 'uploads/nik/couple beach+wave+blue.jpg', 'image/jpeg', 'uploads/nik/couple beach+wave+blue.jpg', 37329, 'nik', '2021-11-23 22:42:58', 13, 'beach,wave,blue'),
(36, 'image', 'florists', 'flowers', 'Human', 'Public', 'uploads/nik/florists apron+assistant+bloom+flower.jpg', 'image/jpeg', 'uploads/nik/florists apron+assistant+bloom+flower.jpg', 132028, 'nik', '2021-11-23 23:04:29', 115, 'apron,assistant,bloom,flower'),
(37, 'image', 'lawer', 'two lawyers discussing cases', 'Human', 'Public', 'uploads/nik/lawer assistant+female+attorney.jpg', 'image/jpeg', 'uploads/nik/lawer assistant+female+attorney.jpg', 49024, 'nik', '2021-11-23 22:42:53', 10, 'assistant,female,attorney'),
(38, 'image', 'apartment', 'a small apt', 'Other', 'Public', 'uploads/devin/apartment brown+chair+furniture.jpg', 'image/jpeg', 'uploads/devin/apartment brown+chair+furniture.jpg', 143494, 'devin', '2022-02-17 20:29:06', 5, 'brown,chair,furniture'),
(39, 'image', 'city skyline', 'city night view', 'Other', 'Public', 'uploads/devin/city skyline blue+architecture+night.jpg', 'image/jpeg', 'uploads/devin/city skyline blue+architecture+night.jpg', 59274, 'devin', '2021-11-22 17:30:55', 29, 'blue,architecture,night'),
(40, 'image', 'flower', 'red flowers', 'Other', 'Public', 'uploads/devin/flower leave+bloom+garden.jpg', 'image/jpeg', 'uploads/devin/flower leave+bloom+garden.jpg', 106423, 'devin', '2021-11-22 17:30:55', 14, 'leave,bloom,garden'),
(41, 'image', 'staircase', 'staircase', 'Other', 'Public', 'uploads/devin/staircase architecture+flower+bloom+blue.jpg', 'image/jpeg', 'uploads/devin/staircase architecture+flower+bloom+blue.jpg', 169562, 'devin', '2021-11-22 18:30:05', 224, 'architecture,flower,bloom,blue'),
(50, 'video', 'test', '', 'Human', 'Public', 'uploads/billzyj/uploadTest.mp4', 'video/mp4', 'uploads/default_thumbnail.jpg', 933721, 'billzyj', '2022-02-17 20:29:20', 2, 'test1,test2');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sentBy` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `sentAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sentTo` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `message` mediumtext CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sentBy` (`sentBy`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sentBy`, `sentAt`, `sentTo`, `message`) VALUES
(11, 'nik', '2021-11-15 16:02:46', 'nikhilsuresh', 'hi'),
(14, 'robot', '2021-11-15 17:03:14', 'nik', 'hello nik'),
(30, 'nik', '2021-11-19 14:26:36', 'nikhilsuresh', 'Hello Robot,\r\nNice to meet you.\r\nRegards,\r\nNikhil'),
(31, 'nik', '2021-11-19 14:48:57', 'robot', 'hello'),
(32, 'devin', '2021-11-19 18:23:37', 'nikhilsuresh', 'Hi'),
(33, 'devin', '2021-11-21 20:50:40', 'nikhilsuresh', 'Hey Nikhil, How are you?'),
(34, 'nik', '2021-11-30 17:24:04', 'robot', 'hello how are you');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE IF NOT EXISTS `playlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `userName` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userName` (`userName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `name`, `userName`) VALUES
(34, 'PL1', 'nik'),
(35, 'Playlist1', 'devin'),
(38, 'fun', 'nik'),
(39, 'fdgsdfg', 'nikhilsuresh'),
(40, 'Playlist2', 'devin'),
(47, 'temp', 'devin'),
(49, 'fav', 'robot'),
(50, 'PL3', 'devin'),
(51, 'new playlist', 'billzyj');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_media`
--

CREATE TABLE IF NOT EXISTS `playlist_media` (
  `playlistName` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `playlist_media`
--

INSERT INTO `playlist_media` (`playlistName`, `videoId`, `id`) VALUES
('no', 14, 2),
('PL1', 3, 15),
('Playlist2', 3, 18),
('Playlist2', 15, 19),
('Playlist2', 23, 20),
('Playlist2', 22, 21),
('PL1', 19, 23),
('fdgsdfg', 20, 24),
('fdgsdfg', 7, 25),
('PL1', 28, 26),
('fun', 7, 27),
('new playlist', 13, 28);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `mediaId` int(11) NOT NULL,
  `ratedIndex` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mediaId` (`mediaId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `userName`, `mediaId`, `ratedIndex`) VALUES
(1, 'nik', 19, 2),
(3, 'robot', 19, 2),
(4, 'billzyj', 19, 5),
(5, 'nik', 7, 3),
(6, 'robot', 15, 3),
(7, 'nikhilsuresh', 11, 3),
(8, 'nikhilsuresh', 19, 5),
(9, 'nik', 20, 4),
(10, 'nik', 26, 5),
(11, 'nikhilsuresh', 12, 5),
(12, 'devin', 20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) COLLATE utf16_bin NOT NULL,
  `password` varchar(100) COLLATE utf16_bin NOT NULL,
  `emailId` varchar(100) COLLATE utf16_bin NOT NULL,
  `about` varchar(250) COLLATE utf16_bin NOT NULL,
  `joinDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `userName` (`userName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_bin AUTO_INCREMENT=30 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `password`, `emailId`, `about`, `joinDate`) VALUES
(22, 'nikhilsuresh', 'nikhil', 'nikhilsuresh@ty.com', '', '2021-11-10 17:40:56'),
(23, 'nik', 'nikhil', 'nikhil@testme.com', '', '2021-11-23 22:05:00'),
(24, 'robot', 'iamrobot', 'robot@123.com', '', '2021-11-14 18:20:44'),
(25, 'billzyj', 'billzyj', 'billzyj2@gmail.com', '', '2021-11-15 01:49:58'),
(26, 'bhargav', 'bhargav', 'bhargav@anna.com', '', '2021-11-15 21:31:01'),
(27, 'devin', 'devin123', 'dlilaramani@gmail.com', '', '2021-11-15 22:59:05'),
(28, 'test1', 'test123', 'test2@123.com', '', '2021-11-30 17:07:58'),
(29, 'test', 'hh20190922!', 'soc_test@gmail.com', '', '2021-12-09 01:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `wordcount`
--

CREATE TABLE IF NOT EXISTS `wordcount` (
  `word` varchar(100) DEFAULT NULL,
  `search_count` int(11) NOT NULL,
  UNIQUE KEY `word` (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wordcount`
--

INSERT INTO `wordcount` (`word`, `search_count`) VALUES
('blue', 2),
('game', 4),
('flower', 6),
('water', 8),
('cute', 10),
('carnivor', 12),
('athletes', 14),
('man', 6),
('small', 18),
('female', 20),
('bloom', 22),
('child', 34),
('students', 7),
('hospital', 28),
('court', 6),
('big', 8),
('white', 10),
('assistant', 8);

-- --------------------------------------------------------

--
-- Structure for view `keyword_count`
--
DROP TABLE IF EXISTS `keyword_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`MeTube_w0sh`@`%` SQL SECURITY DEFINER VIEW `keyword_count` AS select `keywords`.`keyword` AS `keyword`,count(`keywords`.`media_id`) AS `count` from `keywords` group by `keywords`.`keyword` order by count(`keywords`.`media_id`) desc;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
