-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 03:20 PM
-- Server version: 8.0.32
-- PHP Version: 8.2.0
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinebookstore_db`
--
-- --------------------------------------------------------
--
-- Table structure for table `cart`
--
CREATE TABLE
  `cart` (
    `id` int NOT NULL,
    `user_id` int NOT NULL,
    `name` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `price` int NOT NULL,
      `quantity` int NOT NULL,
      `image` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- --------------------------------------------------------
--
-- Table structure for table `message`
--
CREATE TABLE
  `message` (
    `id` int NOT NULL,
    `user_id` int NOT NULL,
    `name` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `email` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `number` varchar(12) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `message` varchar(500) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- --------------------------------------------------------
--
-- Table structure for table `orders`
--
CREATE TABLE
  `orders` (
    `id` int NOT NULL,
    `user_id` int NOT NULL,
    `name` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `number` varchar(12) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `email` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `method` varchar(50) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `address` varchar(500) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `total_products` varchar(1000) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `total_price` int NOT NULL,
      `placed_on` varchar(50) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `payment_status` varchar(20) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'pending'
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

-- --------------------------------------------------------
--
-- Table structure for table `products`
--
CREATE TABLE
  `products` (
    `id` int NOT NULL,
    `name` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `price` int NOT NULL,
      `image` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `description` varchar(500) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `video` varchar(20000) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'o',
      `Category` varchar(50) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

--
-- Dumping data for table `products`
--
INSERT INTO
  `products` (
    `id`,
    `name`,
    `price`,
    `image`,
    `description`,
    `video`,
    `Category`
  )
VALUES
  (
    53,
    'Learning  Python ',
    1500,
    'Python.jpeg',
    ' Python is a general-purpose, versatile and popular programming language.',
    'data pyt.mp4',
    'Python'
  ),
  (
    54,
    'Design India',
    2000,
    'Design India.jpeg',
    'The contemporary Indian design of today would not have being able to exist without the traditional one',
    'WhatsApp Video 2022-11-09 at 4.42.23 PM.mp4',
    'Pyt'
  ),
  (
    55,
    'Railway Engineering',
    2500,
    'Railway.jpeg',
    'Railway Engineering has been specially designed for undergraduate students of civil engineering',
    'Railway.mp4',
    'Engineering'
  ),
  (
    56,
    'Geographic Information Technology',
    3000,
    'Geographic.jpeg',
    'Geographic Technologies Group (GTG) is committed to advancing the science of location intelligence ',
    'Geographic.mp4',
    'Python'
  ),
  (
    57,
    'Distributed Computing',
    3500,
    'Distributed computing.jpeg',
    'Distributed computing is a field of computer science that studies distributed systems.',
    'Distributed Computing.mp4',
    'India'
  ),
  (
    58,
    'Better Photography Engineering',
    2200,
    'Better Photography.jpeg',
    'Photography is the art, application, and practice of creating durable images by recording light.',
    'WhatsApp Video 2022-11-09 at 4.42.22 PM (1).mp4',
    'Engineering'
  ),
  (
    59,
    'Probability The Science of Uncertanity',
    30000,
    'Probability The Science of Uncertanity.jpeg',
    'A unique introduction to probability and statistics, with the emphasis on the effective use of computer programs and an integrated approach to inference. The book provides a well-balanced mix of theory and applications, with examples of real-world data and analysis appearing throughout the text.',
    'probability.mp4',
    'probability'
  ),
  (
    60,
    'Probability and Random Processes',
    3000,
    'Probability and Random Processes.jpeg',
    'The third edition of this successful text gives a rigorous introduction to probability theory and the discussion of the most important random processes in some depth. It includes various topics which are suitable for undergraduate courses, but are not routinely taught. It is suitable to the beginner, and provides a taste and encouragement for more advanced work.',
    'probability and random.mp4',
    'probability'
  ),
  (
    61,
    'Probability and Statistical Inference',
    5000,
    'Probability and Statistical Inference.jpeg',
    'Written by three veteran statisticians, this applied introduction to probability and statistics emphasizes the existence of variation in almost every process, and how the study of probability and statistics helps us understand this variation.',
    'probability and stat inf.mp4',
    'probability'
  ),
  (
    62,
    'Statistics Using R',
    7000,
    'Statistics Using R.jpeg',
    'Computer software is an essential tool for many statistical modelling and data analysis techniques, aiding in the implementation of large data sets in order to obtain useful results. R is one of the most powerful and flexible statistical software packages available, and enables the user to apply a wide variety of statistical methods ranging from simple regression to generalized linear modelling',
    'stat usin r.mp4',
    'probability'
  ),
  (
    63,
    'Statistical Analysis with R',
    1700,
    'Statistical Analysis with R.jpeg',
    'Understanding the world of R programming and analysis has never been easier Most guides to R, whether books or online, focus on R functions and procedures. But now, thanks to Statistical Analysis with R For Dummies',
    'stat any with r.mp4',
    'probability'
  ),
  (
    64,
    'Probability and Statistics',
    700,
    'Probability and Statistics.jpeg',
    'This book is designed for engineering students studying the core paper on probability and statistics during their second or third years. It includes detailed explanation of theory with numerous examples and exercises, as well as relevant references to engineering applications.',
    'probability and stat.mp4',
    'probability'
  ),
  (
    65,
    'Power Electronics and Motor Control',
    400,
    'Power Electronics and Motor Control.jpeg',
    'In recent years, great changes have taken place in the types of semiconductor devices used as power switches. This clear and concise advanced textbook is a comprehensive introduction to power electronics. It considers analog electronics, electric motor control and adjustable speed electrical drives, both a.c. And d.c. ',
    'PE and MC.mp4',
    'power electronics'
  ),
  (
    66,
    'Power Electronics: Principles and Applications',
    700,
    'Power Electronics Principles and Applications.jpeg',
    'Power Electronics is a specialized branch of electrical engineering. It is concerned with the study of using solid state electronic devices in the conversion and control of electric power.  The adaptation of semiconductor devices in power control has led to rapid advances in the field. Semiconductor devices have enabled energy control at high power levels as they are capable of switching large currents at high voltages.',
    'PE prin and app.mp4',
    'power electronics'
  ),
  (
    67,
    'Power Electronics',
    700,
    'Power Electronics.jpeg',
    'This book is designed to sever a textbook for the students of engineering studying a course on power Electronics. It provides a lucid and comprehensive treatment of the topics covered in the book. This book would be found suitable as a textbook for the students pursuing courses in the areas of the Electrical, Electronics, Instrumentation, Telecommunications and Mechatronics.',
    'PE.mp4',
    'power electronics'
  ),
  (
    68,
    'Power Electronics: Converters, Applications and Design',
    1900,
    'Power Electronics Converters, Applications.jpeg',
    'Power Electronics offers cohesive and in-depth presentation of power electronics fundamentals for applications and design in an easy-to-follow step-by-step manner. A detailed coverage of practical and emerging power electronic converters based on new generation of power semiconductor devices is also included. ',
    'PE Con and app.mp4',
    'power electronics'
  ),
  (
    69,
    'Power Electronics: Converters, Applications and Design (3rd edition)',
    2000,
    'Power Electronics Con 3rd edit.jpeg',
    'Power Electronics offers cohesive and in-depth presentation of power electronics fundamentals for applications and design in an easy-to-follow step-by-step manner. A detailed coverage of practical and emerging power electronic converters based on new generation of power semiconductor devices is also included. ',
    'PE Con 3rd edit.mp4',
    'power electronics'
  ),
  (
    70,
    'Power Electronics (2nd edition)',
    600,
    'Power Electronics 2nd edit.jpeg',
    'With this revised edition we aim to present a text on Power Electronics for the UG level which will provide a comprehensive coverage of converters, choppers, inverters and motor drives. All this, with a rich pedagogy to support the conceptual understanding and integral use of PSPICE.',
    'PE 2nd edit.mp4',
    'power electronics'
  ),
  (
    71,
    'Artificial Intelligence (3rd edition)',
    800,
    'Artificial Intelligence 3rd edit.jpeg',
    'This edition captures the changes that have taken place in the field of artificial intelligence (AI) since the last edition in 2003. There have been important applications of AI technology, such as the widespread deployment of practical speech recognition, machine translation, autonomous vehicles, and household robotics.',
    'AI 3rd edit.mp4',
    'artificial intelligence'
  ),
  (
    72,
    'Artificial Intelligence A New Synthesis',
    400,
    'Artificial Intelligence A New Synthesis.jpeg',
    'ntelligent agents are employed as the central characters in this new introductory text. Beginning with elementary reactive agents, Nilsson gradually increases their cognitive horsepower to illustrate the most important and lasting ideas in AI. ',
    'AI a new syn.mp4',
    'artificial intelligence'
  ),
  (
    73,
    'Artificial Intelligence on the Sinclair QL',
    16400,
    'Artificial Intelligence on Sinclair QL.jpeg',
    ' Artificial Intelligence is a comprehensive book for undergraduate students of Computer Science Engineering. The book comprises chapters on heuristic search techniques, using predicate logic, symbolic reasoning under uncertainty, weak slot-and-filler structures, natural language processing, connectionist models and fuzzy logic systems. ',
    'AI on sinclair QL.mp4',
    'artificial intelligence'
  ),
  (
    74,
    'Artificial Intelligence ',
    1000,
    'Artificial Intelligence.jpeg',
    'This Edition brings readers up to date on the latest technologies, presents concepts in a more unified manner, and offers new or expanded coverage of machine learning, deep learning, transfer learning, multiagent systems, robotics, natural language processing, causality, probabilistic programming, privacy, fairness, and safe AI.',
    'AI.mp4',
    'artificial intelligence'
  ),
  (
    75,
    'Artificial Intelligence and Expert Systems',
    4000,
    'Artificial Intelligence and Expert Systems.jpeg',
    'This book is designed to identify some of the current applications and techniques of artificial intelligence as an aid to solving problems and accomplishing tasks. ',
    'AI and ES.mp4',
    'artificial intelligence'
  ),
  (
    76,
    'Artificial Intelligence Structures and Strategies for Complex Problem Solving',
    21000,
    'Artificial Intelligence Struct and Strat.jpeg',
    'In this accessible, comprehensive text, George Luger captures the essence of artificial intelligence–solving the complex problems that arise wherever computer technology is applied. ',
    'AI struct and strat.mp4',
    'artificial intelligence'
  );

-- --------------------------------------------------------
--
-- Table structure for table `rent`
--
CREATE TABLE
  `rent` (
    `id` int NOT NULL,
    `user_id` int NOT NULL,
    `name` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `number` varchar(12) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `email` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `method` varchar(50) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `address` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `total_products` varchar(1000) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `total_price` int NOT NULL,
      `rent_start` varchar(50) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'simply',
      `rent_end` varchar(50) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `payment_status` varchar(20) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'pending'
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- --------------------------------------------------------
--
-- Table structure for table `users`
--
CREATE TABLE
  `users` (
    `id` int NOT NULL,
    `name` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `email` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `password` varchar(100) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
      `user_type` varchar(20) CHARACTER
    SET
      utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'user'
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb3 COLLATE = utf8mb3_unicode_ci;

--
--
--
-- Indexes for dumped tables
--
--
-- Indexes for table `cart`
--
ALTER TABLE `cart` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users` ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart` MODIFY `id` int NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 218;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message` MODIFY `id` int NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders` MODIFY `id` int NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products` MODIFY `id` int NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 77;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent` MODIFY `id` int NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 89;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users` MODIFY `id` int NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 25;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;