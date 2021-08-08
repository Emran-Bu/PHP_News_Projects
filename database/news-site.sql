-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2021 at 07:09 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(56, 'Entertainment', 2),
(57, 'Politics', 2),
(58, 'Health', 1),
(59, 'Sports', 3);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(91, 'Two', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium eligendi veniam, labore nisi neque sit adipisci. Voluptate cupiditate distinctio veritatis veniam molestias, similique debitis fugit voluptatum nihil odio tempora sequi fuga perspiciatis cum tempore unde ipsum aliquid vel placeat amet, omnis eligendi quia impedit! Debitis eligendi dolorem neque voluptas eveniet voluptate odio eaque ratione iusto est. Laborum excepturi minus atque labore. Ab deserunt accusamus quasi, magni quibusdam neque veniam corrupti totam laudantium? Error vel in provident ab necessitatibus excepturi maxime eaque ipsum quisquam assumenda incidunt atque fugiat, sapiente, quo placeat. Laudantium ea placeat id nulla? Inventore voluptates neque recusandae voluptate quasi ullam quidem enim odit rerum pariatur. Quibusdam consectetur nobis modi ipsa dolore, vitae adipisci nesciunt voluptas consequatur rerum accusantium saepe, praesentium temporibus nostrum deleniti quia! Repellat consectetur deserunt fuga ipsum adipisci, iusto similique molestias temporibus explicabo, expedita itaque, in molestiae eos. Laboriosam recusandae impedit distinctio eos. Sunt dicta similique in minus eveniet. Ipsa rerum ab nesciunt eum adipisci harum non fugiat dignissimos aut nisi corporis alias, aperiam aspernatur sunt voluptatum deleniti? Accusantium, vel ea voluptatem quasi enim, facere numquam totam reiciendis possimus, sapiente qui dignissimos officiis. Quam obcaecati necessitatibus doloribus', '57', '20 Jul, 2021', 24, '99977943320.JPG'),
(90, 'One', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium eligendi veniam, labore nisi neque sit adipisci. Voluptate cupiditate distinctio veritatis veniam molestias, similique debitis fugit voluptatum nihil odio tempora sequi fuga perspiciatis cum tempore unde ipsum aliquid vel placeat amet, omnis eligendi quia impedit! Debitis eligendi dolorem neque voluptas eveniet voluptate odio eaque ratione iusto est. Laborum excepturi minus atque labore. Ab deserunt accusamus quasi, magni quibusdam neque veniam corrupti totam laudantium? Error vel in provident ab necessitatibus excepturi maxime eaque ipsum quisquam assumenda incidunt atque fugiat, sapiente, quo placeat. Laudantium ea placeat id nulla? Inventore voluptates neque recusandae voluptate quasi ullam quidem enim odit rerum pariatur. Quibusdam consectetur nobis modi ipsa dolore, vitae adipisci nesciunt voluptas consequatur rerum accusantium saepe, praesentium temporibus nostrum deleniti quia! Repellat consectetur deserunt fuga ipsum adipisci, iusto similique molestias temporibus explicabo, expedita itaque, in molestiae eos. Laboriosam recusandae impedit distinctio eos. Sunt dicta similique in minus eveniet. Ipsa rerum ab nesciunt eum adipisci harum non fugiat dignissimos aut nisi corporis alias, aperiam aspernatur sunt voluptatum deleniti? Accusantium, vel ea voluptatem quasi enim, facere numquam totam reiciendis possimus, sapiente qui dignissimos officiis. Quam obcaecati necessitatibus doloribus', '56', '20 Jul, 2021', 24, '97583917516.jpg'),
(92, 'Three', '                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium eligendi veniam, labore nisi neque sit adipisci. Voluptate cupiditate distinctio veritatis veniam molestias, similique debitis fugit voluptatum nihil odio tempora sequi fuga perspiciatis cum tempore unde ipsum aliquid vel placeat amet, omnis eligendi quia impedit! Debitis eligendi dolorem neque voluptas eveniet voluptate odio eaque ratione iusto est. Laborum excepturi minus atque labore. Ab deserunt accusamus quasi, magni quibusdam neque veniam corrupti totam laudantium? Error vel in provident ab necessitatibus excepturi maxime eaque ipsum quisquam assumenda incidunt atque fugiat, sapiente, quo placeat. Laudantium ea placeat id nulla? Inventore voluptates neque recusandae voluptate quasi ullam quidem enim odit rerum pariatur. Quibusdam consectetur nobis modi ipsa dolore, vitae adipisci nesciunt voluptas consequatur rerum accusantium saepe, praesentium temporibus nostrum deleniti quia! Repellat consectetur deserunt fuga ipsum adipisci, iusto similique molestias temporibus explicabo, expedita itaque, in molestiae eos. Laboriosam recusandae impedit distinctio eos. Sunt dicta similique in minus eveniet. Ipsa rerum ab nesciunt eum adipisci harum non fugiat dignissimos aut nisi corporis alias, aperiam aspernatur sunt voluptatum deleniti? Accusantium, vel ea voluptatem quasi enim, facere numquam totam reiciendis possimus, sapiente qui dignissimos officiis. Quam obcaecati necessitatibus doloribus                ', '59', '20 Jul, 2021', 24, '54421690125.jpg'),
(93, 'Four', '                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium eligendi veniam, labore nisi neque sit adipisci. Voluptate cupiditate distinctio veritatis veniam molestias, similique debitis fugit voluptatum nihil odio tempora sequi fuga perspiciatis cum tempore unde ipsum aliquid vel placeat amet, omnis eligendi quia impedit! Debitis eligendi dolorem neque voluptas eveniet voluptate odio eaque ratione iusto est. Laborum excepturi minus atque labore. Ab deserunt accusamus quasi, magni quibusdam neque veniam corrupti totam laudantium? Error vel in provident ab necessitatibus excepturi maxime eaque ipsum quisquam assumenda incidunt atque fugiat, sapiente, quo placeat. Laudantium ea placeat id nulla? Inventore voluptates neque recusandae voluptate quasi ullam quidem enim odit rerum pariatur. Quibusdam consectetur nobis modi ipsa dolore, vitae adipisci nesciunt voluptas consequatur rerum accusantium saepe, praesentium temporibus nostrum deleniti quia! Repellat consectetur deserunt fuga ipsum adipisci, iusto similique molestias temporibus explicabo, expedita itaque, in molestiae eos. Laboriosam recusandae impedit distinctio eos. Sunt dicta similique in minus eveniet. Ipsa rerum ab nesciunt eum adipisci harum non fugiat dignissimos aut nisi corporis alias, aperiam aspernatur sunt voluptatum deleniti? Accusantium, vel ea voluptatem quasi enim, facere numquam totam reiciendis possimus, sapiente qui dignissimos officiis. Quam obcaecati necessitatibus doloribus                ', '58', '20 Jul, 2021', 24, '915545921_in_the_net.jpg'),
(94, 'six', '                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium eligendi veniam, labore nisi neque sit adipisci. Voluptate cupiditate distinctio veritatis veniam molestias, similique debitis fugit voluptatum nihil odio tempora sequi fuga perspiciatis cum tempore unde ipsum aliquid vel placeat amet, omnis eligendi quia impedit! Debitis eligendi dolorem neque voluptas eveniet voluptate odio eaque ratione iusto est. Laborum excepturi minus atque labore. Ab deserunt accusamus quasi, magni quibusdam neque veniam corrupti totam laudantium? Error vel in provident ab necessitatibus excepturi maxime eaque ipsum quisquam assumenda incidunt atque fugiat, sapiente, quo placeat. Laudantium ea placeat id nulla? Inventore voluptates neque recusandae voluptate quasi ullam quidem enim odit rerum pariatur. Quibusdam consectetur nobis modi ipsa dolore, vitae adipisci nesciunt voluptas consequatur rerum accusantium saepe, praesentium temporibus nostrum deleniti quia! Repellat consectetur deserunt fuga ipsum adipisci, iusto similique molestias temporibus explicabo, expedita itaque, in molestiae eos. Laboriosam recusandae impedit distinctio eos. Sunt dicta similique in minus eveniet. Ipsa rerum ab nesciunt eum adipisci harum non fugiat dignissimos aut nisi corporis alias, aperiam aspernatur sunt voluptatum deleniti? Accusantium, vel ea voluptatem quasi enim, facere numquam totam reiciendis possimus, sapiente qui dignissimos officiis. Quam obcaecati necessitatibus doloribus                ', '58', '20 Jul, 2021', 28, '673273390Argentina-Soccer-Team-wallpaper-27-512x341.jpg'),
(95, 'Five', '                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium eligendi veniam, labore nisi neque sit adipisci. Voluptate cupiditate distinctio veritatis veniam molestias, similique debitis fugit voluptatum nihil odio tempora sequi fuga perspiciatis cum tempore unde ipsum aliquid vel placeat amet, omnis eligendi quia impedit! Debitis eligendi dolorem neque voluptas eveniet voluptate odio eaque ratione iusto est. Laborum excepturi minus atque labore. Ab deserunt accusamus quasi, magni quibusdam neque veniam corrupti totam laudantium? Error vel in provident ab necessitatibus excepturi maxime eaque ipsum quisquam assumenda incidunt atque fugiat, sapiente, quo placeat. Laudantium ea placeat id nulla? Inventore voluptates neque recusandae voluptate quasi ullam quidem enim odit rerum pariatur. Quibusdam consectetur nobis modi ipsa dolore, vitae adipisci nesciunt voluptas consequatur rerum accusantium saepe, praesentium temporibus nostrum deleniti quia! Repellat consectetur deserunt fuga ipsum adipisci, iusto similique molestias temporibus explicabo, expedita itaque, in molestiae eos. Laboriosam recusandae impedit distinctio eos. Sunt dicta similique in minus eveniet. Ipsa rerum ab nesciunt eum adipisci harum non fugiat dignissimos aut nisi corporis alias, aperiam aspernatur sunt voluptatum deleniti? Accusantium, vel ea voluptatem quasi enim, facere numquam totam reiciendis possimus, sapiente qui dignissimos officiis. Quam obcaecati necessitatibus doloribus                ', '56', '20 Jul, 2021', 28, '114659889attack.jpg'),
(96, 'Seven', '                                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusantium eligendi veniam, labore nisi neque sit adipisci. Voluptate cupiditate distinctio veritatis veniam molestias, similique debitis fugit voluptatum nihil odio tempora sequi fuga perspiciatis cum tempore unde ipsum aliquid vel placeat amet, omnis eligendi quia impedit! Debitis eligendi dolorem neque voluptas eveniet voluptate odio eaque ratione iusto est. Laborum excepturi minus atque labore. Ab deserunt accusamus quasi, magni quibusdam neque veniam corrupti totam laudantium? Error vel in provident ab necessitatibus excepturi maxime eaque ipsum quisquam assumenda incidunt atque fugiat, sapiente, quo placeat. Laudantium ea placeat id nulla? Inventore voluptates neque recusandae voluptate quasi ullam quidem enim odit rerum pariatur. Quibusdam consectetur nobis modi ipsa dolore, vitae adipisci nesciunt voluptas consequatur rerum accusantium saepe, praesentium temporibus nostrum deleniti quia! Repellat consectetur deserunt fuga ipsum adipisci, iusto similique molestias temporibus explicabo, expedita itaque, in molestiae eos. Laboriosam recusandae impedit distinctio eos. Sunt dicta similique in minus eveniet. Ipsa rerum ab nesciunt eum adipisci harum non fugiat dignissimos aut nisi corporis alias, aperiam aspernatur sunt voluptatum deleniti? Accusantium, vel ea voluptatem quasi enim, facere numquam totam reiciendis possimus, sapiente qui dignissimos officiis. Quam obcaecati necessitatibus doloribus                                                                                                                                                                                                ', '57', '20 Jul, 2021', 30, '997560692ad16.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`websitename`, `logo`, `footerdesc`) VALUES
('Emran News Website', '445187584news.jpg', '                    © Copyright 2021 News | Powered by <a href=\"https://freelancer-emran.github.io/Portfolio/\">Emran Portfolio</a>\r\n                                                ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(24, 'Emran', 'Hasan', 'emranhasan', '21232f297a57a5a743894a0e4a801fc3', 1),
(28, 'Meera', 'Khan', 'meerakhan', '55232d6cee75030476853a5ee47588fa', 0),
(27, 'Salman', 'Khan', 'salmankhan', '03346657feea0490a4d4f677faa0583d', 0),
(29, 'Juhi', 'Chawla', 'juhichawla', '920e3e1ffd0aa54c60a84af197f40c5b', 0),
(30, 'Riaz', 'Khan', 'riazkhan', '22957f76b6dff06fceb58e6c57023ca6', 0),
(31, 'Ehav', 'Babu', 'ehavbabu', '6ce0198a8e172d594adfd0502bed3399', 0),
(32, 'Eshan', 'Mahmud', 'eshanmahmud', '13f36795e1e02bd00b6ccc6eb5629b14', 0),
(33, 'mamun', 'khan', 'mamun', 'c8e36a853fe91f3a4a3c4d739e830139', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
