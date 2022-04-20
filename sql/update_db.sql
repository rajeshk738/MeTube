-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 20, 2022 at 10:57 PM
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
-- Database: `update_db`
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
(32, 'Great Video! checking comment', 'testuser1', 148, '2022-04-20 10:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `contactList`
--

CREATE TABLE `contactList` (
  `id` int(11) NOT NULL,
  `userName` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `contactUserName` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `status` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL DEFAULT 'Not Blocked',
  `contactType` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactList`
--

INSERT INTO `contactList` (`id`, `userName`, `contactUserName`, `status`, `contactType`) VALUES
(21, 'testuser1', 'user11', 'Not Blocked', 'Friend'),
(22, 'user99', 'user11', 'block', 'Friend'),
(23, 'user99', 'user22', 'block', 'Friend'),
(24, 'user00', 'user99', 'block', 'Friend'),
(25, 'user00', 'user11', 'Not Blocked', 'Family'),
(26, 'user00', 'user44', 'Not Blocked', 'Favourite'),
(27, 'user99', 'user00', 'Not Blocked', 'Friend');

-- --------------------------------------------------------

--
-- Table structure for table `favouriteList`
--

CREATE TABLE `favouriteList` (
  `id` int(50) NOT NULL,
  `userName` varchar(100) COLLATE utf16_bin NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `favouriteList`
--

INSERT INTO `favouriteList` (`id`, `userName`, `videoId`) VALUES
(42, 'testuser1', 123),
(43, 'user99', 125),
(44, 'user99', 107);

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
('nature', 103),
('background', 103),
('music', 103),
('animal', 103),
('animation', 104),
('anime', 104),
('short', 104),
('hidden', 104),
('entrance', 104),
('movie', 104),
('biscuits', 105),
('recipe', 105),
('food', 105),
('cooking', 105),
('breakfast', 106),
('rollups', 106),
('food', 106),
('cooking', 106),
('nature', 107),
('background', 107),
('music', 107),
('animal', 107),
('time', 108),
('4town', 109),
('music', 109),
('disney', 109),
('pixar', 109),
('nobodylikeu', 109),
('turningred', 109),
('red', 109),
('animal', 110),
('butterfly', 110),
('sports', 111),
('badminton', 111),
('best', 111),
('food', 112),
('cooking', 112),
('blueberry', 112),
('muffins', 112),
('tops', 112),
('travel', 113),
('canada', 113),
('cars', 114),
('bendix', 114),
('stars', 114),
('bikes', 114),
('sports', 115),
('chattanooga', 115),
('education', 116),
('ctc', 116),
('animal', 117),
('doggie', 117),
('puppy', 117),
('music', 118),
('energetic', 118),
('rock', 118),
('free', 118),
('royalty', 118),
('cinematic', 118),
('explainer', 119),
('education', 119),
('motivation', 120),
('motivational', 120),
('bike', 121),
('bikes', 121),
('cars', 121),
('news', 121),
('motorbike', 121),
('bike', 122),
('bikes', 122),
('cars', 122),
('abs', 122),
('motorcycle', 122),
('music', 123),
('lyrics', 123),
('nature', 124),
('music', 124),
('animal', 124),
('nature', 125),
('animal', 125),
('music', 125),
('rainyday', 126),
('rainy', 126),
('day', 126),
('music', 126),
('animation', 126),
('recycle', 127),
('psa', 127),
('education', 127),
('movie', 128),
('rrr', 128),
('glimpse', 128),
('food', 129),
('cooking', 129),
('mushrooms', 129),
('sauted', 129),
('recipe', 129),
('anime', 130),
('tenkinoko', 130),
('tenki', 130),
('music', 130),
('movie', 130),
('Thailand', 131),
('travel', 131),
('music', 132),
('motivation', 132),
('inspiring', 132),
('animal', 133),
('lion', 133),
('animal', 134),
('raccoon', 134),
('baby', 134),
('eagle', 135),
('animal', 135),
('animal', 136),
('fish', 136),
('car', 137),
('cars', 137),
('white', 137),
('mustang', 137),
('car', 138),
('cars', 138),
('audi', 138),
('white', 138),
('bike', 139),
('bikes', 139),
('pulsar', 139),
('bumblebee', 139),
('bee', 139),
('duke', 140),
('bike', 140),
('bikes', 140),
('bike', 141),
('bikes', 141),
('royal', 141),
('royalenfield', 141),
('bullet', 141),
('car', 142),
('cars', 142),
('orange', 142),
('old', 142),
('education', 143),
('books', 143),
('table', 143),
('book', 144),
('library', 144),
('education', 144),
('classroom', 145),
('education', 145),
('teaching', 145),
('education', 146),
('graduation', 146),
('students', 146),
('education', 147),
('teaching', 147),
('students', 147),
('fitness', 148),
('weights', 148),
('fitness', 149),
('squats', 149),
('exercise', 149),
('fitness', 150),
('pushups', 150),
('fitness', 151),
('food', 151),
('oatmeal', 151),
('motivation', 152),
('motivational', 152),
('quotes', 152),
('motivation', 153),
('motivational', 153),
('quotes', 153),
('motivation', 154),
('motivational', 154),
('quotes', 154),
('motivation', 155),
('motivational', 155),
('quotes', 155),
('quote', 155),
('Motivation', 156),
('motivational', 156),
('quotes', 156),
('quotes', 156),
('movies', 157),
('optimus', 157),
('prime', 157),
('transformers', 157),
('movies', 158),
('startroops', 158),
('troops', 158),
('starwars', 158),
('movies', 159),
('theater\r\n', 159),
('cinema', 160),
('central', 160),
('movies', 160),
('movies', 161),
('clapbox', 161),
('music', 162),
('guitar', 162),
('music', 163),
('notes', 163),
('music', 164),
('concert', 164),
('music', 165),
('instruments', 165),
('guitar', 165),
('piano', 165),
('news', 166),
('papers', 166),
('newspapers', 166),
('bbc', 167),
('news', 167),
('internet', 167),
('sports', 168),
('cricket', 168),
('sports', 169),
('soccer', 169),
('sports', 170),
('tigers', 170),
('clemson', 170),
('football', 170),
('sports', 171),
('badminton', 171),
('sports', 172),
('basketball', 172),
('travel', 173),
('travel', 174),
('packing', 174),
('tour', 174),
('bags', 174),
('travek', 175),
('plane', 175),
('air', 175),
('airplane', 175);

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
(103, 'video', 'Nature Background', 'Nature background file with music', 'Animal', 'Public', 'uploads/user00/ Nature Background.mp4', 'video/mp4', 'uploads/nature background.jpg', 11741849, 'user00', '2022-04-20 20:49:35', 11, 'nature,background,music,animal'),
(105, 'video', 'Biscuits Recipe', 'Cooking Biscuits Recipe', 'Other', 'Public', 'uploads/user00/Biscuits.mp4', 'video/mp4', 'uploads/biscuits.jpg', 8316680, 'user00', '2022-04-20 19:53:25', 8, 'biscuits,recipe,food,cooking'),
(106, 'video', 'Roll ups', 'Breakfast Roll Ups Recipe', 'Other', 'Public', 'uploads/user00/Breakfast Roll ups.mp4', 'video/mp4', 'uploads/rolls.jpg', 8897704, 'user00', '2022-04-20 19:54:04', 6, 'breakfast,rollups,food,cooking'),
(107, 'video', 'Nature', 'Nature Background music to listen to focus', 'Music', 'Public', 'uploads/user77/ Nature Background.mp4', 'video/mp4', 'uploads/nature.jpg', 11741849, 'user77', '2022-04-20 19:54:25', 11, 'nature,background,music,animal'),
(109, 'audio', '4 Town - Nobody Like U', 'Nobody Like U Song From Turning Red', 'Music', 'Public', 'uploads/user00/4_TOWN (From Disney and Pixar’s Turning Red) - Nobody Like U (From _Turning Red_) (128 kbps).mp3', 'audio/mpeg', 'uploads/default_thumbnail.jpg', 207775, 'user00', '2022-04-20 01:16:15', 0, '4town,music,disney,pixar,nobodylikeu,turningred,red'),
(110, 'image', 'butterfly', 'butterfly', 'Animal', 'Public', 'uploads/user00/boris-smokrovic-lyvCvA8sKGc-unsplash.jpg', 'image/jpeg', 'uploads/butterfly.jpg', 804704, 'user00', '2022-04-20 19:54:44', 4, 'animal,butterfly'),
(111, 'video', 'Badminton    ', 'best badminton', 'Sports', 'Public', 'uploads/user00/best badminton.!🔥.mp4', 'video/mp4', 'uploads/badminton.jpg', 3827753, 'user00', '2022-04-20 20:07:49', 0, 'sports,badminton,best'),
(112, 'video', 'Blueberry Muffin Tops', 'Making of blueberry muffin tops', 'Other', 'Public', 'uploads/user00/Blueberry Muffin Tops.mp4', 'video/mp4', 'uploads/blueberry.jpg', 7124468, 'user00', '2022-04-20 20:08:25', 0, 'food,cooking,blueberry,muffins,tops'),
(113, 'video', 'Canada', 'Canada travel video', 'Other', 'Public', 'uploads/user00/Canada.mp4', 'video/mp4', 'uploads/canada.jpg', 9065469, 'user00', '2022-04-20 20:08:35', 2, 'travel,canada'),
(114, 'video', 'Cars of Bendix', 'Cars Under the Stars - Cars of Bendix', 'CarsAndBikes', 'Public', 'uploads/user00/Cars Under the Stars - Cars of Bendix.mp4', 'video/mp4', 'uploads/carsofbendix.jpg', 8438249, 'user00', '2022-04-20 20:08:55', 1, 'cars,bendix,stars,bikes'),
(115, 'video', 'Chattanooga Sports', 'Chattanooga sports', 'Sports', 'Public', 'uploads/user00/Chattanooga Sports.mp4', 'video/mp4', 'uploads/chattanooga.jpg', 8372246, 'user00', '2022-04-20 20:09:15', 0, 'sports,chattanooga'),
(116, 'video', 'CTC', 'CTC hands on education', 'Education', 'Public', 'uploads/user00/CTC Hands On Education.mp4', 'video/mp4', 'uploads/ctc.jpg', 8397477, 'user00', '2022-04-20 20:09:27', 1, 'education,ctc'),
(117, 'video', 'Doggie', 'Doggie puppy cute video', 'Animal', 'Public', 'uploads/user00/Doggie.mp4', 'video/mp4', 'uploads/doggie.jpg', 33564537, 'user00', '2022-04-20 20:09:37', 2, 'animal,doggie,puppy'),
(118, 'video', 'Energetic Rock Background music', 'Energetic rock royalty free background music', 'Music', 'Public', 'uploads/user00/Energetic Rock  - Royalty-Free Background Music _ Cinematic.mp4', 'video/mp4', 'uploads/bgmusic.jpg', 11501954, 'user00', '2022-04-20 20:27:06', 0, 'music,energetic,rock,free,royalty,cinematic'),
(119, 'video', 'Explainer', 'Education on explaining', 'Education', 'Public', 'uploads/user00/Explainer Videos.mp4', 'video/mp4', 'uploads/explained.jpg', 2656128, 'user00', '2022-04-20 20:48:50', 1, 'explainer,education'),
(120, 'video', 'Motivation', 'Motivation video', 'Motivation', 'Public', 'uploads/user11/Motivation Quickie.mp4', 'video/mp4', 'uploads/explained.jpg', 7778335, 'user11', '2022-04-20 20:10:20', 1, 'motivation,motivational'),
(121, 'video', 'Motorbike', 'Motorbike News', 'CarsAndBikes', 'Public', 'uploads/user11/Motorbike News.mp4', 'video/mp4', 'uploads/motorbike.jpg', 6572791, 'user11', '2022-04-20 20:10:54', 0, 'bike,bikes,cars,news,motorbike'),
(122, 'video', 'Motorcycle ABS', 'Motorcycle ABS', 'CarsAndBikes', 'Public', 'uploads/user11/Motorcycle ABS.mp4', 'video/mp4', 'uploads/abs.jpg', 5350238, 'user11', '2022-04-20 20:10:59', 1, 'bike,bikes,cars,abs,motorcycle'),
(123, 'video', 'music lyrics', 'Lyrical Video', 'Music', 'Public', 'uploads/user11/music_vid.mp4', 'video/mp4', 'uploads/music lyrics.jpg', 4880521, 'user11', '2022-04-20 20:50:41', 9, 'music,lyrics'),
(124, 'video', 'Nature', 'Nature video', 'Music', 'Public', 'uploads/user11/Nature Video.mp4', 'video/mp4', 'uploads/nature2.jpg', 4839525, 'user11', '2022-04-20 20:27:43', 1, 'nature,music,animal'),
(125, 'video', 'Nature Video', 'Nature videos', 'Music', 'Public', 'uploads/user11/nature videos.mp4', 'video/mp4', 'uploads/nature video.jpg', 7628147, 'user11', '2022-04-20 20:11:59', 3, 'nature,animal,music'),
(126, 'video', 'Rainy Day', 'Rainy Day Animation', 'Other', 'Public', 'uploads/user11/Rainy Day.mp4', 'video/mp4', 'uploads/rainy day.jpg', 4799924, 'user11', '2022-04-20 20:12:14', 1, 'rainyday,rainy,day,music,animation'),
(127, 'video', 'Recycle PSA', 'Recycle PSA', 'Education', 'Public', 'uploads/user11/Recycle PSA.mp4', 'video/mp4', 'uploads/recycle psa.jpg', 5059708, 'user11', '2022-04-20 20:12:27', 1, 'recycle,psa,education'),
(128, 'video', 'RRR', 'RRR Glimpse', 'Movies', 'Public', 'uploads/user11/RRR Glimpse ft. NTR, Ram Charan, Ajay Devgn, Alia Bhatt _ S.S. Rajamouli _ Releasing on 7th Jan 2022.mp4', 'video/mp4', 'uploads/rrr.jpg', 6861326, 'user11', '2022-04-20 20:12:37', 2, 'movie,rrr,glimpse'),
(129, 'video', 'Sauted Mushrooms', 'Superb Sauted Mushrooms Recipe', 'Other', 'Public', 'uploads/user11/Superb Sauteed Mushrooms  Recipe.mp4', 'video/mp4', 'uploads/sauted mushrooms.jpg', 9541150, 'user11', '2022-04-20 20:13:07', 1, 'food,cooking,mushrooms,sauted,recipe'),
(130, 'video', 'Tenki no Ko', 'Tenki no Ko Anime', 'Other', 'Public', 'uploads/user11/Tenki no Ko.mp4', 'video/mp4', 'uploads/Tenki no ko.jpg', 8096539, 'user11', '2022-04-20 20:14:00', 5, 'anime,tenkinoko,tenki,music,movie'),
(131, 'video', 'Thailand', 'Thailand', 'Travel', 'Public', 'uploads/user11/THAILAND.mp4', 'video/mp4', 'uploads/Thailand.jpg', 8471086, 'user11', '2022-04-20 20:46:47', 5, 'Thailand,travel'),
(132, 'video', 'Inspiring music', 'Inspiring music', 'Music', 'Public', 'uploads/user11/The Inspiring Background _ Music.mp4', 'video/mp4', 'uploads/inspiring music.jpg', 6691991, 'user11', '2022-04-20 20:14:33', 1, 'music,motivation,inspiring'),
(133, 'image', 'Lion', 'Lion in the jungle', 'Animal', 'Public', 'uploads/user22/francesco-de-tommaso-ZxNKxnR32Ng-unsplash.jpg', 'image/jpeg', 'uploads/lion.jpg', 3566275, 'user22', '2022-04-20 20:14:41', 0, 'animal,lion'),
(134, 'image', 'Raccoon', 'Baby Raccoon', 'Animal', 'Public', 'uploads/user22/gary-bendig-6GMq7AGxNbE-unsplash.jpg', 'image/jpeg', 'uploads/raccoon.jpg', 2335474, 'user22', '2022-04-20 20:14:52', 1, 'animal,raccoon,baby'),
(135, 'image', 'Eagle', 'Flying Eagle', 'Animal', 'Public', 'uploads/user22/philipp-pilz-ID48ekBTlDo-unsplash.jpg', 'image/jpeg', 'uploads/eagle.jpg', 2797512, 'user22', '2022-04-20 20:15:02', 0, 'eagle,animal'),
(136, 'image', 'Fish', 'orange fish', 'Animal', 'Public', 'uploads/user22/zhengtao-tang-V7SKRhXskv8-unsplash.jpg', 'image/jpeg', 'uploads/fish.jpg', 554900, 'user22', '2022-04-20 20:15:09', 0, 'animal,fish'),
(137, 'image', 'car', 'White Mustang car', 'CarsAndBikes', 'Public', 'uploads/user22/peter-broomfield-m3m-lnR90uM-unsplash.jpg', 'image/jpeg', 'uploads/ferrari.jpg', 651148, 'user22', '2022-04-20 20:15:18', 0, 'car,cars,white,mustang'),
(138, 'image', 'audi', 'White Audi car', 'CarsAndBikes', 'Public', 'uploads/user22/photo-1626847037657-fd3622613ce3.webp', 'image/webp', 'uploads/audi.jpg', 137030, 'user22', '2022-04-20 20:15:46', 0, 'car,cars,audi,white'),
(139, 'image', 'bike', 'Pulsar bumblebee bike', 'CarsAndBikes', 'Public', 'uploads/user22/safwan-khan-k7O0_LghMdc-unsplash.jpg', 'image/jpeg', 'uploads/pulsar.jpg', 3063729, 'user22', '2022-04-20 20:15:56', 0, 'bike,bikes,pulsar,bumblebee,bee'),
(140, 'image', 'Duke', 'Duke 200', 'CarsAndBikes', 'Public', 'uploads/user22/spartan-xozz-caz59CGkQz8-unsplash.jpg', 'image/jpeg', 'uploads/duke.jpg', 4107493, 'user22', '2022-04-20 20:16:04', 0, 'duke,bike,bikes'),
(141, 'image', 'Royal Enfield', 'Royal Enfield bike', 'CarsAndBikes', 'Public', 'uploads/user22/spartan-xozz-E06AY-OUD7g-unsplash.jpg', 'image/jpeg', 'uploads/re.jpg', 2321306, 'user22', '2022-04-20 20:16:22', 0, 'bike,bikes,royal,royalenfield,bullet'),
(142, 'image', 'Old Orange car', 'Old Orange Car', 'CarsAndBikes', 'Public', 'uploads/user22/dan-gold-N7RiDzfF2iw-unsplash.jpg', 'image/jpeg', 'uploads/orangecar.jpg', 2633470, 'user22', '2022-04-20 20:16:35', 0, 'car,cars,orange,old'),
(143, 'image', 'Books and Table', 'Books on table', 'Education', 'Public', 'uploads/user22/element5-digital-OyCl7Y4y0Bk-unsplash.jpg', 'image/jpeg', 'uploads/table_books.jpg', 397371, 'user22', '2022-04-20 20:16:56', 1, 'education,books,table'),
(144, 'image', 'Book', 'Book in the library', 'Education', 'Public', 'uploads/user22/jaredd-craig-HH4WBGNyltc-unsplash.jpg', 'image/jpeg', 'uploads/library.jpg', 3360689, 'user22', '2022-04-20 20:17:06', 0, 'book,library,education'),
(145, 'image', 'Classroom', 'Students in the classroom', 'Education', 'Public', 'uploads/user22/kenny-eliason-1-aA2Fadydc-unsplash.jpg', 'image/jpeg', 'uploads/classroom.jpg', 1315033, 'user22', '2022-04-20 20:17:12', 1, 'classroom,education,teaching'),
(146, 'image', 'Graduating Students', 'Students at the time of graduating', 'Education', 'Public', 'uploads/user22/vasily-koloda-8CqDvPuo_kI-unsplash.jpg', 'image/jpeg', 'uploads/graduation.jpg', 860103, 'user22', '2022-04-20 20:17:28', 0, 'education,graduation,students'),
(147, 'image', 'Teaching', 'teaching', 'Education', 'Public', 'uploads/user22/scott-graham-5fNmWej4tAA-unsplash.jpg', 'image/jpeg', 'uploads/teaching.jpg', 3479417, 'user22', '2022-04-20 20:17:40', 0, 'education,teaching,students'),
(148, 'image', 'weights', 'Weights in gym', 'Fitness', 'Public', 'uploads/user22/anastase-maragos-FP7cfYPPUKM-unsplash.jpg', 'image/jpeg', 'uploads/weights.jpg', 1032533, 'user22', '2022-04-20 20:17:47', 3, 'fitness,weights'),
(149, 'image', 'Squats', 'squats', 'Fitness', 'Public', 'uploads/user22/cagin-kargi-Qzp60FT380E-unsplash.jpg', 'image/jpeg', 'uploads/squats.jpg', 2243983, 'user22', '2022-04-20 20:18:04', 0, 'fitness,squats,exercise'),
(150, 'image', 'Push Ups', 'Doing PushUps', 'Fitness', 'Public', 'uploads/user22/edgar-chaparro-sHfo3WOgGTU-unsplash.jpg', 'image/jpeg', 'uploads/pullups.jpg', 2131123, 'user22', '2022-04-20 20:18:12', 0, 'fitness,pushups'),
(151, 'image', 'Oatmeal', 'Oatmeal for fitness', 'Fitness', 'Public', 'uploads/user22/jannis-brandt-mmsQUgMLqUo-unsplash.jpg', 'image/jpeg', 'uploads/oatmeal.jpg', 2282194, 'user22', '2022-04-20 20:18:42', 1, 'fitness,food,oatmeal'),
(152, 'image', 'Motivational Quotes', 'Motivational Quotes', 'Motivation', 'Public', 'uploads/user22/cristofer-maximilian-NSKP7Gwa_I0-unsplash.jpg', 'image/jpeg', 'uploads/motiv1.jpg', 1745731, 'user22', '2022-04-20 20:18:59', 0, 'motivation,motivational,quotes'),
(153, 'image', 'Motivation Q', 'Motivational Quotes', 'Motivation', 'Public', 'uploads/user22/daniel-velasquez-vJ2sZzL1wSc-unsplash.jpg', 'image/jpeg', 'uploads/motiv2.jpg', 973404, 'user22', '2022-04-20 20:19:07', 0, 'motivation,motivational,quotes'),
(154, 'image', 'Motivation', 'Motivational Quotes ', 'Motivation', 'Public', 'uploads/user22/drew-beamer-Vc1pJfvoQvY-unsplash.jpg', 'image/jpeg', 'uploads/motiv3.jpg', 2157039, 'user22', '2022-04-20 20:19:18', 0, 'motivation,motivational,quotes'),
(155, 'image', 'Motivation Quo', 'Motivational Quote', 'Motivation', 'Public', 'uploads/user22/hello-i-m-nik-z1d-LP8sjuI-unsplash.jpg', 'image/jpeg', 'uploads/motiv4.jpg', 658673, 'user22', '2022-04-20 20:19:43', 0, 'motivation,motivational,quotes,quote'),
(156, 'image', 'Motivation', 'Motivational Quotes', 'Motivation', 'Public', 'uploads/user22/the-blowup-UN4PadDppAU-unsplash.jpg', 'image/jpeg', 'uploads/motiv5.jpg', 1090117, 'user22', '2022-04-20 20:19:49', 0, 'Motivation,motivational,quotes,quotes'),
(157, 'image', 'Transformers', 'Transformers Movie Optimus Prime', 'Movies', 'Public', 'uploads/user22/aditya-vyas-B9MULm2UZIk-unsplash.jpg', 'image/jpeg', 'uploads/transformers.jpg', 1880755, 'user22', '2022-04-20 20:19:58', 0, 'movies,optimus,prime,transformers'),
(158, 'image', 'Star Troops', 'StarTroops from Starwars', 'Movies', 'Public', 'uploads/user22/eduardo-sanchez-dQhtuks_6ck-unsplash.jpg', 'image/jpeg', 'uploads/starwars.jpg', 522267, 'user22', '2022-04-20 20:20:07', 0, 'movies,startroops,troops,starwars'),
(159, 'image', 'Theatre', 'Movie Theater', 'Movies', 'Public', 'uploads/user22/felix-mooneeram-evlkOfkQ5rE-unsplash.jpg', 'image/jpeg', 'uploads/theater.jpg', 540645, 'user22', '2022-04-20 20:20:15', 0, 'movies,theater\r\n'),
(160, 'image', 'Central Cinema', 'Central Cinema', 'Movies', 'Public', 'uploads/user22/myke-simon-atsUqIm3wxo-unsplash.jpg', 'image/jpeg', 'uploads/cinema.jpg', 2359917, 'user22', '2022-04-20 20:20:34', 0, 'cinema,central,movies'),
(161, 'image', 'Clap Box', 'Movie Clap Box', 'Movies', 'Public', 'uploads/user22/jakob-owens-CiUR8zISX60-unsplash.jpg', 'image/jpeg', 'uploads/movieclap.jpg', 4067043, 'user22', '2022-04-20 20:20:58', 0, 'movies,clapbox'),
(162, 'image', 'Guitar', 'Playing Guitar', 'Music', 'Public', 'uploads/user22/jefferson-santos-fCEJGBzAkrU-unsplash.jpg', 'image/jpeg', 'uploads/guitar.jpg', 758281, 'user22', '2022-04-20 20:21:08', 0, 'music,guitar'),
(163, 'image', 'Music Notes', 'Music notes', 'Music', 'Public', 'uploads/user22/marius-masalar-rPOmLGwai2w-unsplash.jpg', 'image/jpeg', 'uploads/musicnotes.jpg', 1598434, 'user22', '2022-04-20 20:21:30', 0, 'music,notes'),
(164, 'image', 'Music Concert', 'Music Concert', 'Music', 'Public', 'uploads/user22/nainoa-shizuru-NcdG9mK3PBY-unsplash.jpg', 'image/jpeg', 'uploads/concert.jpg', 3084660, 'user22', '2022-04-20 20:23:01', 0, 'music,concert'),
(165, 'image', 'Music Instruments', 'Musical Instruments', 'Music', 'Public', 'uploads/user22/wes-hicks-MEL-jJnm7RQ-unsplash.jpg', 'image/jpeg', 'uploads/instruments.jpg', 5392100, 'user22', '2022-04-20 20:23:39', 0, 'music,instruments,guitar,piano'),
(166, 'image', 'newspapers', 'Newspapers', 'News', 'Public', 'uploads/user22/absolutvision-WYd_PkCa1BY-unsplash.jpg', 'image/jpeg', 'uploads/newspapers.jpg', 790423, 'user22', '2022-04-20 20:23:51', 0, 'news,papers,newspapers'),
(167, 'image', 'BBC News', 'Online News', 'News', 'Public', 'uploads/user22/siora-photography-Rm6Z-SfMOkw-unsplash.jpg', 'image/jpeg', 'uploads/bbc.jpg', 2506710, 'user22', '2022-04-20 20:24:14', 0, 'bbc,news,internet'),
(168, 'image', 'Cricket', 'Cricket Test Match', 'Sports', 'Public', 'uploads/user22/275768590_5203767359644915_3992259823171732613_n.jpg', 'image/jpeg', 'uploads/cricket.jpg', 183833, 'user22', '2022-04-20 20:24:31', 0, 'sports,cricket'),
(169, 'image', 'Soccer', 'Soccer Half Time', 'Sports', 'Public', 'uploads/user22/278646417_10159323083947746_603428239774176304_n.jpg', 'image/jpeg', 'uploads/soccer.jpg', 12138, 'user22', '2022-04-20 20:24:50', 0, 'sports,soccer'),
(170, 'image', 'Clemson Tigers', 'Clemson FootBall Team Tigers', 'Sports', 'Public', 'uploads/user22/images-6.jpeg', 'image/jpeg', 'uploads/tigers.jpg', 25028, 'user22', '2022-04-20 20:24:57', 0, 'sports,tigers,clemson,football'),
(171, 'image', 'badminton', 'Badminton Sports', 'Sports', 'Public', 'uploads/user22/images-7.jpeg', 'image/jpeg', 'uploads/badmintonpic.jpg', 8397, 'user22', '2022-04-20 20:25:10', 0, 'sports,badminton'),
(172, 'image', 'Baket Ball', 'Basket Ball', 'Sports', 'Public', 'uploads/user22/images-8.jpeg', 'image/jpeg', 'uploads/basketball.jpg', 8051, 'user22', '2022-04-20 20:25:44', 0, 'sports,basketball'),
(173, 'image', 'Travel', 'Touring', 'Travel', 'Public', 'uploads/user22/fabio-comparelli-uq2E2V4LhCY-unsplash.jpg', 'image/jpeg', 'uploads/tour.jpg', 971481, 'user22', '2022-04-20 20:25:57', 0, 'travel'),
(174, 'image', 'Packing Bags', 'Packing bags', 'Travel', 'Public', 'uploads/user22/marissa-grootes-TVllFyGaLEA-unsplash.jpg', 'image/jpeg', 'uploads/bag.jpg', 2787772, 'user22', '2022-04-20 20:26:04', 0, 'travel,packing,tour,bags'),
(175, 'image', 'Plane', 'Travelling on a plane', 'Travel', 'Public', 'uploads/user22/tom-barrett-M0AWNxnLaMw-unsplash.jpg', 'image/jpeg', 'uploads/plane.jpg', 3765563, 'user22', '2022-04-20 20:26:11', 0, 'travek,plane,air,airplane');

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

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sentBy`, `sentAt`, `sentTo`, `message`) VALUES
(35, 'testuser1', '2022-04-20 10:17:43', 'user99', 'Hey bro\r\nHow r u');

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
(54, 'testplaylist', 'testuser1'),
(55, 'my list', 'user99');

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
('', 123, 31),
('testplaylist', 123, 32),
('my list', 131, 33),
('my list', 130, 34);

-- --------------------------------------------------------

--
-- Table structure for table `userAccounts`
--

CREATE TABLE `userAccounts` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) COLLATE utf16_bin NOT NULL,
  `lastName` varchar(25) COLLATE utf16_bin NOT NULL,
  `userName` varchar(100) COLLATE utf16_bin NOT NULL,
  `emailId` varchar(100) COLLATE utf16_bin NOT NULL,
  `password` varchar(225) COLLATE utf16_bin NOT NULL,
  `joinDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `profilePic` varchar(250) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `userAccounts`
--

INSERT INTO `userAccounts` (`id`, `firstName`, `lastName`, `userName`, `emailId`, `password`, `joinDate`, `profilePic`) VALUES
(30, 'User007', 'Test007', 'user007', 'user007@gmail.com', '26095b3b7b4b795162dcf9dc7f86e3c162007bd595159681bd0dec5dfd6a430f9f74d1199c84256a3c30fef5fa3f8fbc712158eae50544ba8980269b1f98a91b', '2022-04-16 19:31:55', 'files/images/profilePictures/default.png'),
(31, 'User99', 'Test99', 'user99', 'user991@gmail.com', '2ada8a78174335bfd40e0689985fd27f5501410f6a7406721fcfe59b066925f062c946c1afc9e95bce6c01aed45bfa31287ab0de4be9239c4b6d6b252e40a0f7', '2022-04-20 10:21:11', 'files/images/profilePictures/default.png'),
(32, 'User11', 'Test11', 'user11', 'user11@gmail.com', 'e531286ad0aca20c9cd144a03979090a9d41955970f3654e231a9a49bce7dfab5275313cea083cc642e9d5519ab2e45ce5fd8cc518ad920d1486a4aa0c5f0f4f', '2022-04-16 19:43:31', 'files/images/profilePictures/default.png'),
(33, 'User22', 'Test22', 'user22', 'user22@gmail.com', 'e608ef69df0b819b44bc165ad5e3d92037ff835a55cbfb38737def8c25aa8d7c0a373e46a6aebc2a7a70b557798dcbcf0fba9090577acf7c3909cf52b2912407', '2022-04-16 19:44:07', 'files/images/profilePictures/default.png'),
(34, 'User33', 'Test33', 'user33', 'user33@gmail.com', 'f2c3cd30163fa8226e4536cb4d61a0e7c2cd30a2f09c00c80edde5e15b8fe7c182ae64ea768e72df35319f6548c57a4b4565573f70311ea0e9c77ce0a3a4591e', '2022-04-16 19:44:35', 'files/images/profilePictures/default.png'),
(35, 'User44', 'Test44', 'user44', 'user44@gmail.com', '5f3caa4f8d6c7fe829d9af2efd79fe6377c11c05887c458f1624a52714e152c0b2cac0ffeb1362a025db5caead6f5eb63c7302861ae30d3edcba6d8e1873cfb2', '2022-04-16 19:45:12', 'files/images/profilePictures/default.png'),
(36, 'User55', 'Test55', 'user55', 'user55@gmail.com', '8065e8ebfc20757866d841d5aaa35e3da674b7588e4bc447cc677a298c47218705b860a7c5f3a906c1ca8295231ac76459f0d5718b3c9a5230fe559b487c688a', '2022-04-16 19:45:46', 'files/images/profilePictures/default.png'),
(37, 'User66', 'Test66', 'user66', 'user66@gmail.com', '3cf881283c49cb5d752eff8036f94c406243add6893e45b571bec6f0d1cbc0802b83941077292e5695db281df1a73f421684fad34e7e40941d1dd8a5e0fbdd0c', '2022-04-16 19:46:25', 'files/images/profilePictures/default.png'),
(38, 'User77', 'Test77', 'user77', 'user77@gmail.com', '1a923d4bb1244f970eb7433c807f436b4ec98411960e3f26687deb99701144aa41d3ba1360f081cf9a5218dcfbcb2160dc5921b322f3761f7f77577880200143', '2022-04-16 19:46:53', 'files/images/profilePictures/default.png'),
(39, 'User88', 'Test88', 'user88', 'user88@gmail.com', 'f77e2a51eaf26e0ba6d9cf90dd710e83b277324d745523f11ba3b89d98478878050e9cf76966def5b371da8683930c9dc4af66402d76049e911c0d14fe4be11e', '2022-04-16 19:47:25', 'files/images/profilePictures/default.png'),
(40, 'User00', 'Test00', 'user00', 'user00@gmail.com', '887ad6a742d43ad98d149b3c7f3de605c9bdf43dc148e4519cbfa021833bdba78d2a19eaf7dbd4158447651ee7f75dbcbc1f3a3199137c77f6af066216161397', '2022-04-16 20:32:37', 'files/images/profilePictures/default.png'),
(41, 'Test', 'User', 'testuser1', 'testuser1@gmail.com', 'a302acdeb9688470360bfcee6aee20146e0fc80fb3019afe2d36d0d78a37535834b6ec459e0f1f91845fc3106b836bfd27b78c940e8b7c4217ea2432ccdad722', '2022-04-20 10:10:07', 'files/images/profilePictures/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `userRating`
--

CREATE TABLE `userRating` (
  `id` int(20) NOT NULL,
  `userName` varchar(100) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `mediaId` int(11) NOT NULL,
  `ratedIndex` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wordSearch`
--

CREATE TABLE `wordSearch` (
  `word` varchar(100) DEFAULT NULL,
  `search_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wordSearch`
--

INSERT INTO `wordSearch` (`word`, `search_count`) VALUES
('music', 2),
('dog', 4),
('fitness', 18),
('travel', 18),
('winter', 10),
('sunset', 12),
('sports', 34),
('flying', 6),
('funny', 18),
('watch', 20),
('news', 22),
('song', 14),
('movie', 7),
('life', 28),
('motivation', 26),
('bikes', 8),
('cars', 10),
('nature', 8),
('animal', 20),
('animation', 22),
('food', 34),
('cooking', 7);

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
-- Indexes for table `contactList`
--
ALTER TABLE `contactList`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userName` (`userName`);

--
-- Indexes for table `favouriteList`
--
ALTER TABLE `favouriteList`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userName` (`userName`),
  ADD KEY `videoId` (`videoId`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `videoId` (`videoId`);

--
-- Indexes for table `userAccounts`
--
ALTER TABLE `userAccounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userName` (`userName`);

--
-- Indexes for table `userRating`
--
ALTER TABLE `userRating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mediaId` (`mediaId`);

--
-- Indexes for table `wordSearch`
--
ALTER TABLE `wordSearch`
  ADD UNIQUE KEY `word` (`word`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `contactList`
--
ALTER TABLE `contactList`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `favouriteList`
--
ALTER TABLE `favouriteList`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `playlist_media`
--
ALTER TABLE `playlist_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `userAccounts`
--
ALTER TABLE `userAccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `userRating`
--
ALTER TABLE `userRating`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`videoId`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`postedBy`) REFERENCES `userAccounts` (`userName`);

--
-- Constraints for table `contactList`
--
ALTER TABLE `contactList`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `userAccounts` (`userName`);

--
-- Constraints for table `favouriteList`
--
ALTER TABLE `favouriteList`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`videoId`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`userName`) REFERENCES `userAccounts` (`userName`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sentBy`) REFERENCES `userAccounts` (`userName`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `userAccounts` (`userName`);

--
-- Constraints for table `playlist_media`
--
ALTER TABLE `playlist_media`
  ADD CONSTRAINT `playlist_media_ibfk_1` FOREIGN KEY (`videoId`) REFERENCES `media` (`id`);

--
-- Constraints for table `userRating`
--
ALTER TABLE `userRating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`mediaId`) REFERENCES `media` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
