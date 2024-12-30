-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 12:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinemadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `booking_date` date NOT NULL DEFAULT curdate(),
  `booking_time` time NOT NULL DEFAULT curtime()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `user_name`, `user_email`, `message`, `created_at`) VALUES
(1, 'Damithu', 'damithu@gmail.com', 'The layout is clean and visually appealing and even the booking process is smooth. Love using your site!', '2024-12-27 23:54:18'),
(2, 'Simeshaa', 'simeesha@gmail.com', 'The movie trailer integration is a nice touch, but including movie ratings and reviews would help users make better decisions', '2024-12-28 00:58:01'),
(3, 'Amandi', 'amandi@gmail.com', 'Excellent contrast and font size ensure readability! Notifications for upcoming showtimes or promotions would enhance user engagement', '2024-12-28 00:59:59'),
(4, 'Shelly', 'ryan@gmail.com', 'Consider adding a progress indicator during the booking process', '2024-12-28 01:01:14'),
(5, 'Minada', 'minada965@gmail.com', 'Adding a search bar for movies or theaters would improve accessibility', '2024-12-28 01:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `trailer_url` varchar(255) DEFAULT NULL,
  `release_date` date NOT NULL,
  `status` enum('Now Showing','Coming Soon') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `title`, `description`, `image_url`, `trailer_url`, `release_date`, `status`, `created_at`) VALUES
(1, 'Alienoid: Return to the Future', 'A mystical time portal connects ancient Korea and modern-day Earth, intertwining alien prisoners, sorcerers, and futuristic warriors in a thrilling battle to protect humanity, blending science fiction, fantasy, and action-packed storytelling across eras', 'https://d2v0j9zp5u17nn.cloudfront.net/wp-content/uploads/2024/01/04132916/8c54467d993ea35eabdd314961deb796-1024x683.jpg', 'https://youtu.be/snjYMx5A7KU?si=9bCtI5SZB67H22FF', '2024-01-10', 'Now Showing', '2024-12-27 19:52:51'),
(2, 'Avatar: The Way of Water', 'Jake Sully and Neytiri navigate family life, face new threats, and explore Pandora’s breathtaking oceans, blending stunning visuals with themes of love, resilience, and environmental harmony in this epic continuation of their story', 'https://www.thebanner.org/sites/default/files/styles/article_detail_header/public/2023-01/avatar-way-of-water.jpg?itok=3SeSRjXH', 'https://youtu.be/d9MyW72ELq0?si=6w1CX8f7UVP_ZbxM', '2022-12-16', 'Now Showing', '2024-12-27 19:54:21'),
(3, 'The Wild Robot', 'A lone robot named Roz awakens on a remote island, learning to survive, communicate with animals, and discover her purpose, blending themes of nature, technology, and friendship in a heartwarming tale of resilience and belonging', 'https://i.ytimg.com/vi/5ee9fMX7HNg/maxresdefault.jpg', 'https://youtu.be/67vbA5ZJdKQ?si=xA1luUBsBfZ6LGa2', '2024-08-29', 'Now Showing', '2024-12-27 19:55:16'),
(4, 'One Piece Film: Red', 'Luffy and the Straw Hat crew attend a concert by Uta, a world-famous diva with a mysterious past, uncovering secrets that ignite a thrilling adventure filled with music, action, and the pursuit of freedom', 'https://www.acmodasi.in/amdb/images/movie/f/1/one-piece-film-red-2022-10134.jpg', 'https://youtu.be/eU0i7L3cakI?si=t5kLVMg1FAsoncM_', '2022-08-06', 'Now Showing', '2024-12-27 19:59:21'),
(5, 'Avatar: Fire and Ash', 'If fire represents hatred, anger, and violence, then ash represents the aftermath (grief and loss), which in turn leads to more violence, anger, and hatred (fire). In essence, a vicious cycle', 'https://i.ytimg.com/vi/q_ZbQwbRJoE/maxresdefault.jpg', 'https://youtu.be/JnlGeWRiBms?si=Ub1oyDy8KZjoxsf8', '2025-12-19', 'Coming Soon', '2024-12-27 20:00:44'),
(6, '28 Years Later', 'A deadly virus resurfaces 28 years after its initial outbreak, plunging survivors into chaos as they face new threats, moral dilemmas, and the fight for humanity\'s survival in a world forever altered by the infection', 'https://www.redsharknews.com/hubfs/28%20years%20later%20movie%20poster.jpg', 'https://youtu.be/mcvLKldPM08?si=Ibyi3J-1pH_yyGZy', '2025-06-20', 'Coming Soon', '2024-12-27 20:01:52'),
(7, 'Sonic the Hedgehog 3', 'Sonic, Tails, and Knuckles face Shadow the Hedgehog, a powerful new adversary, whose mysterious abilities test their unity and strength, leading to unexpected alliances and thrilling confrontations in their most daring adventure yet', 'https://www.dexerto.com/cdn-image/wp-content/uploads/2024/12/13/sonic-3-shadow-poster.jpg?width=1200&quality=60&format=auto', 'https://youtu.be/qSu6i2iFMO0?si=R_LYUMSBVLZl10Z4', '2024-12-20', 'Now Showing', '2024-12-27 20:04:15'),
(8, 'Frozen 3', 'Anna and Elsa embark on a new adventure beyond Arendelle, uncovering secrets, facing challenges that test their bond, and discovering deeper truths about their family\'s legacy in a journey of courage and self-discovery', 'https://i.ytimg.com/vi/uDzfo2N3Zs0/maxresdefault.jpg', 'https://youtu.be/xJgAypHXCZo?si=9gayiTDa18DwNTWH', '2027-11-24', 'Coming Soon', '2024-12-27 20:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
  `name` varchar(100) NOT NULL UNIQUE,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Dumping data for table `movies`
--

INSERT INTO `users` (`name`, `email`, `password`) VALUES
(1, 'minababo', 'minada965@gmail.com', '1234'),

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seat_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `seat_row` char(1) NOT NULL,
  `seat_column` int(11) NOT NULL,
  `is_booked` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`seat_id`, `movie_id`, `seat_row`, `seat_column`, `is_booked`) VALUES
(1, 1, 'A', 1, 0),
(2, 1, 'A', 2, 0),
(3, 1, 'A', 3, 0),
(4, 1, 'A', 4, 0),
(5, 1, 'A', 5, 0),
(6, 1, 'B', 1, 0),
(7, 1, 'B', 2, 0),
(8, 1, 'B', 3, 0),
(9, 1, 'B', 4, 0),
(10, 1, 'B', 5, 0),
(11, 1, 'C', 1, 0),
(12, 1, 'C', 2, 0),
(13, 1, 'C', 3, 0),
(14, 1, 'C', 4, 0),
(15, 1, 'C', 5, 0),
(16, 1, 'D', 1, 0),
(17, 1, 'D', 2, 0),
(18, 1, 'D', 3, 0),
(19, 1, 'D', 4, 0),
(20, 1, 'D', 5, 0),
(21, 4, 'A', 1, 0),
(22, 4, 'A', 2, 0),
(23, 4, 'A', 3, 0),
(24, 4, 'A', 4, 0),
(25, 4, 'A', 5, 0),
(26, 4, 'B', 1, 0),
(27, 4, 'B', 2, 0),
(28, 4, 'B', 3, 0),
(29, 4, 'B', 4, 0),
(30, 4, 'B', 5, 0),
(31, 4, 'C', 1, 0),
(32, 4, 'C', 2, 0),
(33, 4, 'C', 3, 0),
(34, 4, 'C', 4, 0),
(35, 4, 'C', 5, 0),
(36, 4, 'D', 1, 0),
(37, 4, 'D', 2, 0),
(38, 4, 'D', 3, 0),
(39, 4, 'D', 4, 0),
(40, 4, 'D', 5, 0),
(41, 2, 'A', 1, 0),
(42, 2, 'A', 2, 0),
(43, 2, 'A', 3, 0),
(44, 2, 'A', 4, 0),
(45, 2, 'A', 5, 0),
(46, 2, 'B', 1, 0),
(47, 2, 'B', 2, 0),
(48, 2, 'B', 3, 0),
(49, 2, 'B', 4, 0),
(50, 2, 'B', 5, 0),
(51, 3, 'A', 1, 0),
(52, 3, 'A', 2, 0),
(53, 3, 'A', 3, 0),
(54, 3, 'A', 4, 0),
(55, 3, 'A', 5, 0),
(56, 3, 'B', 1, 0),
(57, 3, 'B', 2, 0),
(58, 3, 'B', 3, 0),
(59, 3, 'B', 4, 0),
(60, 3, 'B', 5, 0),
(61, 7, 'A', 1, 0),
(62, 7, 'A', 2, 0),
(63, 7, 'A', 3, 0),
(64, 7, 'A', 4, 0),
(65, 7, 'A', 5, 0),
(66, 7, 'B', 1, 0),
(67, 7, 'B', 2, 0),
(68, 7, 'B', 3, 0),
(69, 7, 'B', 4, 0),
(70, 7, 'B', 5, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
