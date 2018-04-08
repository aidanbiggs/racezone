-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2018 at 02:38 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_05_164645_create_posts_table', 1),
(4, '2018_04_05_211925_add_user_id_to_posts', 2),
(10, '2018_04_06_003439_update_posts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `racer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `race_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `racer_name`, `race_time`, `user_id`) VALUES
(95, 'Midlands 5k', 'A race for runners of all abilities, this easy, flat and traffic-free course encompasses a short run and back along the Farborough Dam followed by a lap of the reservoir, starting and finishing close to the country park.', '2018-04-08 12:45:49', '2018-04-08 12:45:49', 'Jimmy Run', '01:02:03', 2),
(93, 'Arnold 5K', 'A race to the chopper, time to truly find out if it bleeds, can we kill it?', '2018-04-08 12:43:34', '2018-04-08 12:43:34', 'Mr.Freeze', '01:03:04', 2),
(90, 'Arnold 5K', 'A race to the chopper, time to truly find out if it bleeds, can we kill it?', '2018-04-08 12:43:34', '2018-04-08 12:43:34', 'The Terminator', '00:01:00', 2),
(91, 'Arnold 5K', 'A race to the chopper, time to truly find out if it bleeds, can we kill it?', '2018-04-08 12:43:34', '2018-04-08 12:43:34', 'John Matrix', '02:03:41', 2),
(92, 'Arnold 5K', 'A race to the chopper, time to truly find out if it bleeds, can we kill it?', '2018-04-08 12:43:34', '2018-04-08 12:43:34', 'Detective John Kimble', '01:02:32', 2),
(89, 'The Grand National', 'I think I may be on the wrong type of race website', '2018-04-08 12:39:18', '2018-04-08 12:39:18', 'THE DUTCHMAN', '00:04:04', 2),
(86, 'The Grand National', 'I think I may be on the wrong type of race website', '2018-04-08 12:39:18', '2018-04-08 12:39:18', 'TOTAL RECALL', '00:05:11', 2),
(87, 'The Grand National', 'I think I may be on the wrong type of race website', '2018-04-08 12:39:18', '2018-04-08 12:39:18', 'TIGER ROLL', '00:07:33', 2),
(88, 'The Grand National', 'I think I may be on the wrong type of race website', '2018-04-08 12:39:18', '2018-04-08 12:39:18', 'THE LAST SAMURI', '00:03:34', 2),
(37, 'Birmingham 10K', 'Starting on Jennens Road, next to Aston University, the route heads downhill past Selfridges and the Bullring Shopping Centre and into Digbeth. It then heads out along Pershore Road to the furthest turn point at Cannon Hill Park. The route winds through the park and then crosses the road outside of Edgbaston Cricket Ground. The route then passes Calthorpe Park before returning back through Digbeth and up a short hill, back to Jennens Road where runners will finish by the Royal Birmingham Conservatoire.', '2018-04-07 23:26:26', '2018-04-07 23:26:26', 'Aidan', '01:32:03', 1),
(38, 'Birmingham 10K', 'Starting on Jennens Road, next to Aston University, the route heads downhill past Selfridges and the Bullring Shopping Centre and into Digbeth. It then heads out along Pershore Road to the furthest turn point at Cannon Hill Park. The route winds through the park and then crosses the road outside of Edgbaston Cricket Ground. The route then passes Calthorpe Park before returning back through Digbeth and up a short hill, back to Jennens Road where runners will finish by the Royal Birmingham Conservatoire.', '2018-04-07 23:26:26', '2018-04-07 23:26:26', 'Bidan', '01:32:03', 1),
(39, 'Birmingham 10K', 'Starting on Jennens Road, next to Aston University, the route heads downhill past Selfridges and the Bullring Shopping Centre and into Digbeth. It then heads out along Pershore Road to the furthest turn point at Cannon Hill Park. The route winds through the park and then crosses the road outside of Edgbaston Cricket Ground. The route then passes Calthorpe Park before returning back through Digbeth and up a short hill, back to Jennens Road where runners will finish by the Royal Birmingham Conservatoire.', '2018-04-07 23:26:26', '2018-04-07 23:26:26', 'Cidan', '01:32:03', 1),
(40, 'Birmingham 10K', 'Starting on Jennens Road, next to Aston University, the route heads downhill past Selfridges and the Bullring Shopping Centre and into Digbeth. It then heads out along Pershore Road to the furthest turn point at Cannon Hill Park. The route winds through the park and then crosses the road outside of Edgbaston Cricket Ground. The route then passes Calthorpe Park before returning back through Digbeth and up a short hill, back to Jennens Road where runners will finish by the Royal Birmingham Conservatoire.', '2018-04-07 23:26:26', '2018-04-07 23:26:26', 'Didan', '01:32:03', 1),
(41, 'Birmingham 10K', 'Starting on Jennens Road, next to Aston University, the route heads downhill past Selfridges and the Bullring Shopping Centre and into Digbeth. It then heads out along Pershore Road to the furthest turn point at Cannon Hill Park. The route winds through the park and then crosses the road outside of Edgbaston Cricket Ground. The route then passes Calthorpe Park before returning back through Digbeth and up a short hill, back to Jennens Road where runners will finish by the Royal Birmingham Conservatoire.', '2018-04-07 23:26:26', '2018-04-07 23:26:26', 'Eidan', '01:32:03', 1),
(42, 'Birmingham 15K', 'The Birmingham Track Club is pleased to host the 27th running of the Ellis Porch Statue to Statue 15k. Starting in the shadow of Vulcan\'s statue and finishing near the Statue of Liberty, the race winds its way through the scenic neighborhoods of Mountain Brook, Alabama. The course gently rolls and is generally downhill for the first six miles. Runners then head up a pair of hills that are among the most challenging you\'ll find. The reward for climbing the hills is a fast mile-and-a-half downhill finish that\'s sure to generate the quickest splits you\'ve ever run. Yes, it\'s a challenging course but you haven\'t run Birmingham until you run the race we like to call The South\'s Toughest 15k!', '2018-04-07 23:27:39', '2018-04-07 23:27:39', 'Stephen', '02:32:03', 1),
(43, 'Birmingham 15K', 'The Birmingham Track Club is pleased to host the 27th running of the Ellis Porch Statue to Statue 15k. Starting in the shadow of Vulcan\'s statue and finishing near the Statue of Liberty, the race winds its way through the scenic neighborhoods of Mountain Brook, Alabama. The course gently rolls and is generally downhill for the first six miles. Runners then head up a pair of hills that are among the most challenging you\'ll find. The reward for climbing the hills is a fast mile-and-a-half downhill finish that\'s sure to generate the quickest splits you\'ve ever run. Yes, it\'s a challenging course but you haven\'t run Birmingham until you run the race we like to call The South\'s Toughest 15k!', '2018-04-07 23:27:39', '2018-04-07 23:27:39', 'Brian', '02:32:03', 1),
(44, 'Birmingham 15K', 'The Birmingham Track Club is pleased to host the 27th running of the Ellis Porch Statue to Statue 15k. Starting in the shadow of Vulcan\'s statue and finishing near the Statue of Liberty, the race winds its way through the scenic neighborhoods of Mountain Brook, Alabama. The course gently rolls and is generally downhill for the first six miles. Runners then head up a pair of hills that are among the most challenging you\'ll find. The reward for climbing the hills is a fast mile-and-a-half downhill finish that\'s sure to generate the quickest splits you\'ve ever run. Yes, it\'s a challenging course but you haven\'t run Birmingham until you run the race we like to call The South\'s Toughest 15k!', '2018-04-07 23:27:39', '2018-04-07 23:27:39', 'Lucy', '02:32:03', 1),
(45, 'Birmingham 15K', 'The Birmingham Track Club is pleased to host the 27th running of the Ellis Porch Statue to Statue 15k. Starting in the shadow of Vulcan\'s statue and finishing near the Statue of Liberty, the race winds its way through the scenic neighborhoods of Mountain Brook, Alabama. The course gently rolls and is generally downhill for the first six miles. Runners then head up a pair of hills that are among the most challenging you\'ll find. The reward for climbing the hills is a fast mile-and-a-half downhill finish that\'s sure to generate the quickest splits you\'ve ever run. Yes, it\'s a challenging course but you haven\'t run Birmingham until you run the race we like to call The South\'s Toughest 15k!', '2018-04-07 23:27:39', '2018-04-07 23:27:39', 'Marie', '02:32:03', 1),
(46, 'Wolverhampton Inflatable 5k', 'Wolverhampton we are back. The UK’s best Inflatable Assault course has got even bigger, bouncier and more insane. We have added crazy NEW obstacles to make the most fun and extreme inflatable obstacle event ever created.', '2018-04-07 23:29:14', '2018-04-07 23:29:14', 'Blossom', '01:02:03', 1),
(47, 'Wolverhampton Inflatable 5k', 'Wolverhampton we are back. The UK’s best Inflatable Assault course has got even bigger, bouncier and more insane. We have added crazy NEW obstacles to make the most fun and extreme inflatable obstacle event ever created.', '2018-04-07 23:29:14', '2018-04-07 23:29:14', 'Buttercup', '01:02:03', 1),
(48, 'Wolverhampton Inflatable 5k', 'Wolverhampton we are back. The UK’s best Inflatable Assault course has got even bigger, bouncier and more insane. We have added crazy NEW obstacles to make the most fun and extreme inflatable obstacle event ever created.', '2018-04-07 23:29:14', '2018-04-07 23:29:14', 'Crystal', '01:02:03', 1),
(49, 'Carvers Wolverhampton Half Marathon', 'A fantastic mix of run for fun participants and highly tuned athletes. For those of a competitive nature this is the ideal environment – 13 miles of pain and suffering culminating in an unbelievable high. For the rest its a personal challenge, a day to remember and fantastic atmosphere where everyone is up for it.', '2018-04-07 23:30:54', '2018-04-07 23:30:54', 'Mr Test', '01:01:02', 1),
(50, 'Carvers Wolverhampton Half Marathon', 'A fantastic mix of run for fun participants and highly tuned athletes. For those of a competitive nature this is the ideal environment – 13 miles of pain and suffering culminating in an unbelievable high. For the rest its a personal challenge, a day to remember and fantastic atmosphere where everyone is up for it.', '2018-04-07 23:30:54', '2018-04-07 23:30:54', 'Mrs Test', '01:01:02', 1),
(51, 'Carvers Wolverhampton Half Marathon', 'A fantastic mix of run for fun participants and highly tuned athletes. For those of a competitive nature this is the ideal environment – 13 miles of pain and suffering culminating in an unbelievable high. For the rest its a personal challenge, a day to remember and fantastic atmosphere where everyone is up for it.', '2018-04-07 23:30:54', '2018-04-07 23:30:54', 'Test Jr', '01:01:02', 1),
(52, 'Carvers Wolverhampton Half Marathon', 'A fantastic mix of run for fun participants and highly tuned athletes. For those of a competitive nature this is the ideal environment – 13 miles of pain and suffering culminating in an unbelievable high. For the rest its a personal challenge, a day to remember and fantastic atmosphere where everyone is up for it.', '2018-04-07 23:30:54', '2018-04-07 23:30:54', 'Ms Test', '01:01:02', 1),
(97, 'Midlands 5k', 'A race for runners of all abilities, this easy, flat and traffic-free course encompasses a short run and back along the Farborough Dam followed by a lap of the reservoir, starting and finishing close to the country park.', '2018-04-08 12:45:49', '2018-04-08 12:45:49', 'Samantha Callus', '01:13:13', 2),
(96, 'Midlands 5k', 'A race for runners of all abilities, this easy, flat and traffic-free course encompasses a short run and back along the Farborough Dam followed by a lap of the reservoir, starting and finishing close to the country park.', '2018-04-08 12:45:49', '2018-04-08 12:45:49', 'Johh Sprinty', '02:05:01', 2),
(82, 'Carvers Wolverhampton Half Marathon', 'A fantastic mix of run for fun participants and highly tuned athletes. For those of a competitive nature this is the ideal environment – 13 miles of pain and suffering culminating in an unbelievable high. For the rest its a personal challenge, a day to remember and fantastic atmosphere where everyone is up for it.', '2018-04-07 23:46:04', '2018-04-07 23:46:04', 'Mr Test', '01:01:02', 1),
(83, 'Carvers Wolverhampton Half Marathon', 'A fantastic mix of run for fun participants and highly tuned athletes. For those of a competitive nature this is the ideal environment – 13 miles of pain and suffering culminating in an unbelievable high. For the rest its a personal challenge, a day to remember and fantastic atmosphere where everyone is up for it.', '2018-04-07 23:46:04', '2018-04-07 23:46:04', 'Mrs Test', '01:01:02', 1),
(84, 'Carvers Wolverhampton Half Marathon', 'A fantastic mix of run for fun participants and highly tuned athletes. For those of a competitive nature this is the ideal environment – 13 miles of pain and suffering culminating in an unbelievable high. For the rest its a personal challenge, a day to remember and fantastic atmosphere where everyone is up for it.', '2018-04-07 23:46:04', '2018-04-07 23:46:04', 'Test Jr', '01:01:02', 1),
(85, 'Carvers Wolverhampton Half Marathon', 'A fantastic mix of run for fun participants and highly tuned athletes. For those of a competitive nature this is the ideal environment – 13 miles of pain and suffering culminating in an unbelievable high. For the rest its a personal challenge, a day to remember and fantastic atmosphere where everyone is up for it.', '2018-04-07 23:46:04', '2018-04-07 23:46:04', 'Ms Test', '01:01:02', 1),
(94, 'Arnold 5K', 'A race to the chopper, time to truly find out if it bleeds, can we kill it?', '2018-04-08 12:43:34', '2018-04-08 12:43:34', 'Dutch', '00:30:10', 2),
(98, 'Midlands 5k', 'A race for runners of all abilities, this easy, flat and traffic-free course encompasses a short run and back along the Farborough Dam followed by a lap of the reservoir, starting and finishing close to the country park.', '2018-04-08 12:45:49', '2018-04-08 12:45:49', 'Dash Mighty', '01:01:01', 2),
(99, 'Midlands 5k', 'A race for runners of all abilities, this easy, flat and traffic-free course encompasses a short run and back along the Farborough Dam followed by a lap of the reservoir, starting and finishing close to the country park.', '2018-04-08 12:45:49', '2018-04-08 12:45:49', 'Julie McSlow', '05:04:07', 2),
(100, 'Bournemouth Bay Run', 'Enjoy running alongside the English Channel coastline to raise vital funds for the fight against heart disease.  With four distances to choose from, there really is something for everyone. Take on the stunning half marathon route, 10K race, or get the whole family involved in the 5K or 1K fun run.', '2018-04-08 12:47:39', '2018-04-08 12:47:39', 'Jim Crab', '01:1711', 2),
(101, 'Bournemouth Bay Run', 'Enjoy running alongside the English Channel coastline to raise vital funds for the fight against heart disease.  With four distances to choose from, there really is something for everyone. Take on the stunning half marathon route, 10K race, or get the whole family involved in the 5K or 1K fun run.', '2018-04-08 12:47:39', '2018-04-08 12:47:39', 'John Fish', '01:13:13', 2),
(102, 'Bournemouth Bay Run', 'Enjoy running alongside the English Channel coastline to raise vital funds for the fight against heart disease.  With four distances to choose from, there really is something for everyone. Take on the stunning half marathon route, 10K race, or get the whole family involved in the 5K or 1K fun run.', '2018-04-08 12:47:39', '2018-04-08 12:47:39', 'Samantha Shell', '00:59:13', 2),
(103, 'Bournemouth Bay Run', 'Enjoy running alongside the English Channel coastline to raise vital funds for the fight against heart disease.  With four distances to choose from, there really is something for everyone. Take on the stunning half marathon route, 10K race, or get the whole family involved in the 5K or 1K fun run.', '2018-04-08 12:47:39', '2018-04-08 12:47:39', 'Evan Eel', '01:31:22', 2),
(104, 'Bournemouth Bay Run', 'Enjoy running alongside the English Channel coastline to raise vital funds for the fight against heart disease.  With four distances to choose from, there really is something for everyone. Take on the stunning half marathon route, 10K race, or get the whole family involved in the 5K or 1K fun run.', '2018-04-08 12:47:39', '2018-04-08 12:47:39', 'Simon Sand', '03:12:34', 2),
(105, 'Great Birmingham 10K', 'Quickly becoming one of the most popular road running 10Ks in the UK. Based in the heart of the electric city of Birmingham, the route features a lap of Edgbaston Cricket Ground, the Bullring and an unforgettable tour of the UK\'s second largest city.', '2018-04-08 13:03:04', '2018-04-08 13:03:04', 'Rick Runner', '01:02:03', 2),
(106, 'Great Birmingham 10K', 'Quickly becoming one of the most popular road running 10Ks in the UK. Based in the heart of the electric city of Birmingham, the route features a lap of Edgbaston Cricket Ground, the Bullring and an unforgettable tour of the UK\'s second largest city.', '2018-04-08 13:03:04', '2018-04-08 13:03:04', 'Dick Dasher', '01:41:21', 2),
(107, 'Great Birmingham 10K', 'Quickly becoming one of the most popular road running 10Ks in the UK. Based in the heart of the electric city of Birmingham, the route features a lap of Edgbaston Cricket Ground, the Bullring and an unforgettable tour of the UK\'s second largest city.', '2018-04-08 13:03:04', '2018-04-08 13:03:04', 'Simon Sprinter', '01:32:41', 2),
(108, 'Great Birmingham 10K', 'Quickly becoming one of the most popular road running 10Ks in the UK. Based in the heart of the electric city of Birmingham, the route features a lap of Edgbaston Cricket Ground, the Bullring and an unforgettable tour of the UK\'s second largest city.', '2018-04-08 13:03:04', '2018-04-08 13:03:04', 'Samantha spurter', '01:12:12', 2),
(109, 'Great Birmingham 10K', 'Quickly becoming one of the most popular road running 10Ks in the UK. Based in the heart of the electric city of Birmingham, the route features a lap of Edgbaston Cricket Ground, the Bullring and an unforgettable tour of the UK\'s second largest city.', '2018-04-08 13:03:04', '2018-04-08 13:03:04', 'Carla Canter', '01:32:13', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aidan B', 'aidanbiggs@biggsmail.com', '$2y$10$xOMszJF7IE20CMEPBeqYgeR/yJLIlkyMndCTIXOiHPY4bip5OdDXe', NULL, '2018-04-05 23:51:03', '2018-04-05 23:51:03'),
(2, 'Bidan Aiggs', 'biggsaidan@biggsmail.com', '$2y$10$RCfEOz5SCUo2mNsujR9Ij.YdLPAWYzo20St4IN5mNfU1qadVxCQXu', 'UCItUGy4vuzEUP1hdhCfze6Ogc9gniIKAc13GYTAIQN2m6hzSW2uxEh3IJ9T', '2018-04-08 12:32:39', '2018-04-08 12:32:39');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
