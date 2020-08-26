-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2019 at 03:10 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(70) NOT NULL,
  `password` varchar(15) NOT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `password`, `phone`) VALUES
(1, 'Shreya Dhar', 'travelog.leisure2019@gmail.com', 'travelog123', '9988665544');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(60) NOT NULL,
  `detail` text NOT NULL,
  `tags` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `pic1` varchar(100) NOT NULL,
  `post_date` text NOT NULL,
  `blog_status` int(1) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `place`, `state`, `country`, `detail`, `tags`, `user_id`, `pic1`, `post_date`, `blog_status`, `view`) VALUES
(11, 'Water And City', 'Venice', 'Veneto region', 'Italy', '<p><strong>Venice</strong>&nbsp;is a city in northeastern Italy sited on a group of 118 small islands separated by canals and linked by bridges. It is located in the marshy&nbsp;<strong>Venetian</strong>&nbsp;Lagoon which stretches along the shoreline, between the mouths of the Po and the Piave Rivers</p>\n\n<ul>\n	<li>Venice&#39;s best travel months (also its busiest and most expensive) are&nbsp;<strong>April</strong>,&nbsp;<strong>May</strong>,<strong>June</strong>,&nbsp;<strong>September</strong>, and&nbsp;<strong>October</strong>. Summer in Venice is more temperate (high 70s and 80s) than in Italy&#39;s scorching inland cities.</li>\n</ul>\n', 'venice italy water', 4, 'maxresdefault.jpg', '2019-04-16', 1, 45),
(12, 'City of Westminster', 'Central London', 'London', 'England', '<h1>INTRO</h1>\n\n<p>The City of Westminster is an Inner London borough that also holds city status. It occupies much of the central area of Greater London including most of the West End.</p>\n\n<h2>History</h2>\n\n<p>The name describes an area no more than 1 mile (1.6&nbsp;km) from Westminster Abbey&nbsp;and the Palace of Westminster&nbsp;immediately to the west of the River Thames. The settlement grew up around the palace and abbey, as a service area for them. The need for a parish church, St&nbsp;Margaret&#39;s Westminster&nbsp;for the servants of the palace and of the abbey who could not worship there indicates that it had a population as large as that of a small village. It became larger and in the&nbsp;Georgian&nbsp;period became connected through urban&nbsp;ribbon development&nbsp;with the City along the Strand. It did not become a viable local government unit created as a&nbsp;civil parish.</p>\n\n<p>&nbsp;</p>\n', 'westminster london', 4, 'palace_of_westminster1.jpg', '2019-04-16', 1, 10),
(13, 'Fortress Hohensalzburg', 'MÃ¶nchsberg', 'Salzburg', 'Austria', '<p>Construction of the fortress began in 1077 under Archbishop&nbsp;Gebhard von Helfenstein.The original design was a basic&nbsp;bailey&nbsp;with a wooden wall. In the&nbsp;Holy Roman Empire, the archbishops of Salzburg were already powerful political figures and they expanded the fortress to protect their interests. Helfenstein&#39;s conflict with Emperor&nbsp;Henry IV&nbsp;during the&nbsp;Investiture Controversy&nbsp;influenced the expansion of the fortress, with the Archbishop taking the side of&nbsp;Pope Gregory VII&nbsp;and the German anti-king&nbsp;Rudolf of Rheinfelden. The fortress was gradually expanded during the following centuries. The ring walls and towers were built in 1462 under Prince-Archbishop&nbsp;Burkhard II von Wei&szlig;priach.</p>\n\n<p>The fortress consists of various wings and courtyard. The Prince-Bishop&#39;s apartments are located in the so-called &quot;Hoher Stock&quot; (high floor).</p>\n', 'Hohensalzburg Austria', 2, 'blick-auf-die-festung_7957.jpeg', '2019-04-19', 1, 38),
(14, 'The wooden Footbridge', 'Reuss River', 'Lucerene (city)', 'Switzerland', '<p>The&nbsp;<strong>Kapellbr&uuml;cke</strong>&nbsp;(literally, Chapel Bridge) is a covered wooden&nbsp;footbridge&nbsp;spanning the&nbsp;River Reuss&nbsp;diagonally in the city of&nbsp;Lucerne&nbsp;in central&nbsp;Switzerland. Named after the nearby St. Peter&#39;s Chapel,<span style=\"font-size:10.8333px\"> </span>the bridge is unique in containing a number of interior paintings dating back to the 17th century, although many of them were destroyed along with a larger part of the centuries-old bridge in a 1993 fire. Subsequently restored, the Kapellbr&uuml;cke is the oldest wooden covered bridge in Europe,&nbsp;as well as the world&#39;s oldest surviving&nbsp;truss bridge.<span style=\"font-size:10.8333px\"> </span>It serves as the city&#39;s symbol and as one of&nbsp;Switzerland&#39;s main tourist attractions.</p>\n', 'Switzerland', 2, '1024px-Kapellbruecke.JPG', '2019-04-19', 1, 80),
(16, 'nit ghat', 'patna', 'Bihar', 'India', '<p>Ganga Aarti on Gandhi Ghat is performed with 51 lamps, by a group of priests, dressed in saffron robes. The Aarti starts with the blowing of a conch shell and continues with the movement of incense sticks in elaborate patterns and circling of large burning lamps that create a bright hue against the darkened sky. The ritual was started in 2011 on the lines of Ganga Aarti in Varanasi and Haridwar.</p>\n', 'ghat,patna,bihar', 8, 'Pathway_at_ganga_1507146487.JPG', '02-May-2019', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_status` int(1) NOT NULL,
  `msg` text NOT NULL,
  `post_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `blog_id`, `user_id`, `comment_status`, `msg`, `post_date`) VALUES
(5, 13, 4, 1, 'nice', '22-Apr-2019'),
(6, 13, 4, 1, 'very nice', '22-Apr-2019'),
(7, 13, 2, 1, 'good', '22-Apr-2019'),
(8, 11, 2, 1, 'nice one', '22-Apr-2019'),
(9, 11, 2, 1, 'good', '22-Apr-2019'),
(10, 13, 4, 1, 'testing comment\n', '22-Apr-2019'),
(11, 14, 1, 1, 'nice', '24-Apr-2019'),
(12, 14, 4, 1, 'good', '25-Apr-2019'),
(21, 14, 4, 1, 'nice one', '02-May-2019'),
(22, 16, 4, 1, 'very nice', '02-May-2019');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `postdate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `details`, `postdate`) VALUES
(38, 'Welcome To Our Website', '<p>Dear Visitors,</p>\n\n<p>Welcome to our Travelog&nbsp;website. Here you can share your experience about your travels. Whether you&#39;re visiting &nbsp;for business, leisure, or have lived there&nbsp;for years, we welcome you to write about it and hope you can find your visit to this website a pleasant one. We encourage you all to use this website to assist yourself in finding information about the world.</p>\n\n<p>Sincerely,<br />\nTravelog Family</p>\n', '25-Apr-2019');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `reply_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` text NOT NULL,
  `reply_status` int(11) NOT NULL,
  `post_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `report_type` int(1) NOT NULL,
  `report_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `user_id`, `comment_id`, `report_type`, `report_date`) VALUES
(6, 4, 11, 2, '25-Apr-2019'),
(8, 4, 7, 2, '25-Apr-2019'),
(9, 2, 13, 2, '27-Apr-2019');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `country` varchar(20) NOT NULL,
  `dob` text NOT NULL,
  `gender` varchar(20) NOT NULL,
  `photo` varchar(60) NOT NULL,
  `about` text NOT NULL,
  `user_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `full_name`, `email`, `password`, `city`, `country`, `dob`, `gender`, `photo`, `about`, `user_status`) VALUES
(1, 'user1 one', 'user1.one@gmail.com', 'userone', 'Ranchi', 'India', '1992-06-10', 'male', 'images.png', 'I am use one', 0),
(2, 'user two', 'usertwo@gmail.com', 'user two', 'Amritsar', 'India', '1995-01-10', 'female', 'downloadfacem.png', 'I am user two...', 1),
(3, 'user 3 three', 'userthree@gmail.com', 'userthree', 'Delhi', 'India', '1996-07-11', 'female', 'help.jpg', 'i am user three', 0),
(4, 'Priya Sinha', 'user4@hotmail.com', 'user4', 'Pune', 'India', '1994-06-15', 'female', 'about.jpg', 'Hi,   me Priya Sinha like to travel world. Hope to travel around soon. Read my blogs and tell me through your comments you like it or not.\nThanks.', 1),
(5, 'user501', 'user.504@gmail.com', 'user501', 'Ranchi', 'India', '1998-06-25', 'male', 'Blank Graph.jpg', 'I am User 501', 0),
(8, 'kislay kanti dhar', 'kislay.kantidhar1@gmail.com', 'gameri', 'patna', 'India', '1998-10-02', 'male', 'IMG-20190130-WA0003.jpg', 'i love travelling and i love different varieties of snacks', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `user_fk` (`user_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `blog_fk` (`blog_id`),
  ADD KEY `usercom_fk` (`user_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `comment_fk` (`comment_id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `blog_fk` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usercom_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `comment_fk` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
