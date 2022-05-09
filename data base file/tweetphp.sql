-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2022 at 08:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tweetphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(140) COLLATE utf16_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `post_id`, `time`) VALUES
(47, 'it sure is', 63, 740, '2022-05-06 20:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id`, `follower_id`, `following_id`, `time`) VALUES
(196, 64, 63, '2022-05-06 20:34:35'),
(197, 63, 64, '2022-05-06 20:41:57'),
(201, 63, 65, '2022-05-06 21:24:48'),
(203, 66, 63, '2022-05-06 21:25:57'),
(204, 66, 64, '2022-05-06 21:25:57'),
(205, 66, 65, '2022-05-06 21:25:58'),
(207, 67, 66, '2022-05-06 21:30:10'),
(209, 67, 63, '2022-05-06 21:30:11'),
(211, 65, 63, '2022-05-06 21:32:38'),
(212, 65, 67, '2022-05-06 21:32:39'),
(213, 65, 66, '2022-05-06 21:32:39'),
(214, 65, 64, '2022-05-06 21:32:46'),
(216, 68, 63, '2022-05-06 21:42:32'),
(217, 68, 66, '2022-05-06 21:42:33'),
(218, 68, 64, '2022-05-06 21:42:33'),
(219, 68, 67, '2022-05-06 21:44:38'),
(220, 68, 65, '2022-05-06 21:44:38'),
(221, 64, 68, '2022-05-06 21:53:45'),
(222, 64, 66, '2022-05-06 21:53:45'),
(223, 64, 67, '2022-05-06 21:53:46'),
(224, 64, 65, '2022-05-06 21:53:51'),
(225, 66, 67, '2022-05-06 21:54:22'),
(226, 66, 68, '2022-05-06 21:54:23'),
(227, 65, 68, '2022-05-09 08:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(318, 64, 737),
(319, 63, 740),
(324, 66, 737),
(325, 65, 742),
(328, 68, 737),
(329, 64, 747),
(330, 65, 747),
(331, 66, 747);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `notify_for` int(11) NOT NULL,
  `notify_from` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `type` enum('follow','like','retweet','qoute','comment','reply','mention') COLLATE utf16_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `count` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notify_for`, `notify_from`, `target`, `type`, `time`, `count`, `status`) VALUES
(235, 63, 64, 0, 'follow', '2022-05-06 20:34:35', 1, 0),
(236, 64, 63, 0, 'follow', '2022-05-06 20:41:57', 1, 0),
(237, 63, 64, 737, 'retweet', '2022-05-06 20:56:48', 1, 0),
(238, 63, 64, 737, 'like', '2022-05-06 20:57:07', 1, 0),
(239, 64, 63, 740, 'like', '2022-05-06 20:57:35', 1, 0),
(240, 64, 63, 740, 'comment', '2022-05-06 20:58:13', 1, 0),
(243, 65, 63, 0, 'follow', '2022-05-06 21:24:48', 1, 0),
(244, 63, 66, 0, 'follow', '2022-05-06 21:25:57', 1, 0),
(245, 64, 66, 0, 'follow', '2022-05-06 21:25:57', 1, 0),
(246, 65, 66, 0, 'follow', '2022-05-06 21:25:58', 1, 0),
(251, 63, 66, 737, 'like', '2022-05-06 21:28:11', 1, 0),
(252, 66, 67, 0, 'follow', '2022-05-06 21:30:10', 1, 0),
(254, 63, 67, 0, 'follow', '2022-05-06 21:30:11', 1, 0),
(256, 63, 65, 0, 'follow', '2022-05-06 21:32:38', 1, 0),
(257, 67, 65, 0, 'follow', '2022-05-06 21:32:39', 0, 0),
(258, 66, 65, 0, 'follow', '2022-05-06 21:32:39', 1, 0),
(259, 64, 65, 0, 'follow', '2022-05-06 21:32:46', 1, 0),
(260, 66, 65, 742, 'like', '2022-05-06 21:37:57', 1, 0),
(263, 63, 68, 0, 'follow', '2022-05-06 21:42:32', 1, 0),
(264, 66, 68, 0, 'follow', '2022-05-06 21:42:33', 1, 0),
(265, 64, 68, 0, 'follow', '2022-05-06 21:42:33', 1, 0),
(266, 63, 68, 737, 'like', '2022-05-06 21:42:37', 1, 0),
(268, 63, 68, 737, 'retweet', '2022-05-06 21:44:34', 1, 0),
(269, 67, 68, 0, 'follow', '2022-05-06 21:44:38', 0, 0),
(270, 65, 68, 0, 'follow', '2022-05-06 21:44:38', 0, 0),
(271, 63, 64, 747, 'like', '2022-05-06 21:53:41', 0, 0),
(272, 68, 64, 0, 'follow', '2022-05-06 21:53:45', 1, 0),
(273, 66, 64, 0, 'follow', '2022-05-06 21:53:45', 1, 0),
(274, 67, 64, 0, 'follow', '2022-05-06 21:53:46', 0, 0),
(275, 65, 64, 0, 'follow', '2022-05-06 21:53:51', 0, 0),
(276, 63, 65, 747, 'like', '2022-05-06 21:54:10', 0, 0),
(277, 63, 66, 747, 'like', '2022-05-06 21:54:20', 0, 0),
(278, 67, 66, 0, 'follow', '2022-05-06 21:54:22', 0, 0),
(279, 68, 66, 0, 'follow', '2022-05-06 21:54:23', 1, 0),
(280, 68, 65, 0, 'follow', '2022-05-09 08:12:09', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_on`) VALUES
(737, 63, '2022-05-06 20:49:09'),
(740, 64, '2022-05-06 20:56:24'),
(741, 64, '2022-05-06 20:56:48'),
(742, 66, '2022-05-06 21:27:43'),
(743, 65, '2022-05-06 21:37:41'),
(745, 68, '2022-05-06 21:44:34'),
(746, 68, '2022-05-06 21:50:33'),
(747, 63, '2022-05-06 21:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` varchar(140) COLLATE utf16_unicode_ci NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `retweets`
--

CREATE TABLE `retweets` (
  `post_id` int(11) NOT NULL,
  `retweet_msg` varchar(140) COLLATE utf16_unicode_ci DEFAULT NULL,
  `tweet_id` int(11) DEFAULT NULL,
  `retweet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `retweets`
--

INSERT INTO `retweets` (`post_id`, `retweet_msg`, `tweet_id`, `retweet_id`) VALUES
(741, NULL, 737, NULL),
(745, NULL, 737, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `id` int(11) NOT NULL,
  `hashtag` varchar(140) COLLATE utf16_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`id`, `hashtag`, `created_on`) VALUES
(16, '039', '2022-05-06 19:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `post_id` int(11) NOT NULL,
  `status` varchar(140) COLLATE utf16_unicode_ci DEFAULT NULL,
  `img` text COLLATE utf16_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`post_id`, `status`, `img`) VALUES
(737, 'My first tweet!', 'tweet-62756da53655f.png'),
(740, '{code/} this is fun 😍', 'tweet-62756f5850a26.png'),
(742, 'Toujours sourire à la Vie. 😄😄😄😄😄', 'tweet-627576afdc211.png'),
(743, '', 'tweet-62757905592a0.gif'),
(746, '', 'tweet-62757c098894e.png'),
(747, '', 'tweet-62757cb844fc2.gif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) COLLATE utf16_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf16_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf16_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf16_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `imgCover` varchar(255) COLLATE utf16_unicode_ci NOT NULL DEFAULT 'cover.png',
  `bio` varchar(140) COLLATE utf16_unicode_ci NOT NULL DEFAULT '',
  `location` varchar(255) COLLATE utf16_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf16_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `img`, `imgCover`, `bio`, `location`, `website`) VALUES
(63, 'Yassine_Bouriga', 'yassinebouriga@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Yassine Bouriga', 'user-62756b126fc76.jpg', 'user-62756b432a913.jfif', '', '', ''),
(64, 'Youssef_Fray', 'yousseffray@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Youssef Fray', 'user-62756e5b806eb.jpg', 'user-62756e5b806f1.png', '', '', ''),
(65, 'Firas_Rebai', 'firasrebai@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Firas Rebai', 'user-6275780466142.jpg', 'cover.png', '', '', ''),
(66, 'Martial_Simen_Simen', 'martialsimensimen@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Martial Simen Simen', 'user-627576693e044.jpg', 'cover.png', '', '', ''),
(67, 'Naoures_Ouanes', 'naouresouanes@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Naoures Ouanes', 'user-6275777d8c010.jpg', 'cover.png', '', '', ''),
(68, 'Anis_Gharsellaoui', 'anisgharsellaoui@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Anis Gharsellaoui', 'user-627579f90af35.PNG', 'user-62757a2467a92.png', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follower_id` (`follower_id`),
  ADD KEY `following_id` (`following_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `likes_ibfk_2` (`post_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_ibfk_1` (`notify_for`),
  ADD KEY `notifications_ibfk_2` (`notify_from`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `retweets`
--
ALTER TABLE `retweets`
  ADD PRIMARY KEY (`post_id`) USING BTREE,
  ADD KEY `retweet_id` (`retweet_id`),
  ADD KEY `retweets_ibfk_2` (`tweet_id`);

--
-- Indexes for table `trends`
--
ALTER TABLE `trends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hashtag` (`hashtag`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=748;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `trends`
--
ALTER TABLE `trends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`notify_for`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`notify_from`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `retweets`
--
ALTER TABLE `retweets`
  ADD CONSTRAINT `retweets_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `retweets_ibfk_2` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `retweets_ibfk_3` FOREIGN KEY (`retweet_id`) REFERENCES `retweets` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tweets`
--
ALTER TABLE `tweets`
  ADD CONSTRAINT `tweets_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
