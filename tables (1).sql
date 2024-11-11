-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 01:15 PM
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
-- Database: `tables`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('558922117fcef', '5589221195248'),
('55892211e44d5', '55892211f1fa7'),
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('558923538f48d', '558923539a46c'),
('55892353f05c4', '55892354051be'),
('558973f4389ac', '558973f462e61'),
('558973f4c46f2', '558973f4d4abe'),
('558973f51600d', '558973f526fc5'),
('558973f55d269', '558973f57af07'),
('558973f5abb1a', '558973f5e764a'),
('5589751a63091', '5589751a81bf4'),
('5589751ad32b8', '5589751adbdbd'),
('5589751b304ef', '5589751b3b04d'),
('5589751b749c9', '5589751b9a98c'),
('672e6202665dd', '672e620266b43'),
('672e620268b02', '672e6202690c8'),
('672e62026adb1', '672e62026b64f'),
('672e62026d96f', '672e62026ddc7'),
('672e620270327', '672e620272ba6'),
('672e6279ad0f7', '672e6279ad97c'),
('672e6279b010b', '672e6279b08f0'),
('672e6279b2946', '672e6279b2f29'),
('672fa0311a46a', '672fa0311ac2e'),
('672fa0311cd31', '672fa0311d55d'),
('672fa0311f93b', '672fa0311ff75'),
('672fa03121f22', '672fa0312252f'),
('672fa03125365', '672fa03126906'),
('672fa11a79476', '672fa11a79cb2');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('5584ddd0da0ab', 'netcamp', 'sunnygkp10@gmail.com', 'feedback', ';mLBLB', '2015-06-20', '05:28:16am'),
('5586ee27af2c9', 'vikas', 'vikas@gmail.com', 'trial feedback', 'triaal feedbak', '2015-06-21', '07:02:31pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('asas@woi.com', '672e626783990', 3, 3, 3, 0, '2024-11-09 17:41:48'),
('matthewhartono9946@gmail.com', '672fa0139d78c', 5, 5, 5, 0, '2024-11-09 18:04:17'),
('johndoe1@example.com', '672fa1133f448', -1, 1, 0, 1, '2024-11-11 12:08:46'),
('alicej@example.com', '672fa1133f448', 1, 1, 1, 0, '2024-11-11 12:10:00'),
('alicej@example.com', '672fa0139d78c', 5, 5, 5, 0, '2024-11-11 12:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `loginattempts`
--

CREATE TABLE `loginattempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) UNSIGNED DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loginattempts`
--

INSERT INTO `loginattempts` (`id`, `user`, `ip`, `timestamp`) VALUES
(1, 5, '::1', 1731326951),
(2, 5, '::1', 1731326952),
(3, 5, '::1', 1731326953),
(4, 5, '::1', 1731326953),
(5, 5, '::1', 1731326953),
(6, 5, '::1', 1731326954);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('558922117fcef', 'echo', '5589221195248'),
('558922117fcef', 'print', '558922119525a'),
('558922117fcef', 'printf', '5589221195265'),
('558922117fcef', 'cout', '5589221195270'),
('55892211e44d5', 'int a', '55892211f1f97'),
('55892211e44d5', '$a', '55892211f1fa7'),
('55892211e44d5', 'long int a', '55892211f1fb4'),
('55892211e44d5', 'int a$', '55892211f1fbd'),
('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),
('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('558923538f48d', '255.0.0.0', '558923539a46c'),
('558923538f48d', '255.255.255.0', '558923539a480'),
('558923538f48d', '255.255.0.0', '558923539a48b'),
('558923538f48d', 'none of these', '558923539a495'),
('55892353f05c4', '192.168.1.100', '5589235405192'),
('55892353f05c4', '172.168.16.2', '55892354051a3'),
('55892353f05c4', '10.0.0.0.1', '55892354051b4'),
('55892353f05c4', '11.11.11.11', '55892354051be'),
('558973f4389ac', 'containing root file-system required during bootup', '558973f462e44'),
('558973f4389ac', ' Contains only scripts to be executed during bootup', '558973f462e56'),
('558973f4389ac', ' Contains root-file system and drivers required to be preloaded during bootup', '558973f462e61'),
('558973f4389ac', 'None of the above', '558973f462e6b'),
('558973f4c46f2', 'Kernel', '558973f4d4abe'),
('558973f4c46f2', 'Shell', '558973f4d4acf'),
('558973f4c46f2', 'Commands', '558973f4d4ad9'),
('558973f4c46f2', 'Script', '558973f4d4ae3'),
('558973f51600d', 'Boot Loading', '558973f526f9d'),
('558973f51600d', ' Boot Record', '558973f526fb9'),
('558973f51600d', ' Boot Strapping', '558973f526fc5'),
('558973f51600d', ' Booting', '558973f526fce'),
('558973f55d269', ' Quick boot', '558973f57aef1'),
('558973f55d269', 'Cold boot', '558973f57af07'),
('558973f55d269', ' Hot boot', '558973f57af17'),
('558973f55d269', ' Fast boot', '558973f57af27'),
('558973f5abb1a', 'bash', '558973f5e7623'),
('558973f5abb1a', ' Csh', '558973f5e7636'),
('558973f5abb1a', ' ksh', '558973f5e7640'),
('558973f5abb1a', ' sh', '558973f5e764a'),
('5589751a63091', 'q', '5589751a81bd6'),
('5589751a63091', 'wq', '5589751a81be8'),
('5589751a63091', ' both (a) and (b)', '5589751a81bf4'),
('5589751a63091', ' none of the mentioned', '5589751a81bfd'),
('5589751ad32b8', ' moves screen down one page', '5589751adbdbd'),
('5589751ad32b8', 'moves screen up one page', '5589751adbdce'),
('5589751ad32b8', 'moves screen up one line', '5589751adbdd8'),
('5589751ad32b8', ' moves screen down one line', '5589751adbde2'),
('5589751b304ef', ' yy', '5589751b3b04d'),
('5589751b304ef', 'yw', '5589751b3b05e'),
('5589751b304ef', 'yc', '5589751b3b069'),
('5589751b304ef', ' none of the mentioned', '5589751b3b073'),
('5589751b749c9', 'X', '5589751b9a98c'),
('5589751b749c9', 'x', '5589751b9a9a5'),
('5589751b749c9', 'D', '5589751b9a9b7'),
('5589751b749c9', 'd', '5589751b9a9c9'),
('5589751bd02ec', 'autoindentation is not possible in vi editor', '5589751bdadaa'),
('672e6202665dd', 'a', '672e620266b43'),
('672e6202665dd', 'a', '672e620266b46'),
('672e6202665dd', 'a', '672e620266b47'),
('672e6202665dd', 'a', '672e620266b48'),
('672e620268b02', 'b', '672e6202690c6'),
('672e620268b02', 'b', '672e6202690c8'),
('672e620268b02', 'b', '672e6202690c9'),
('672e620268b02', 'b', '672e6202690ca'),
('672e62026adb1', 'c', '672e62026b64a'),
('672e62026adb1', 'c', '672e62026b64e'),
('672e62026adb1', 'c', '672e62026b64f'),
('672e62026adb1', 'c', '672e62026b650'),
('672e62026d96f', 'd', '672e62026ddc3'),
('672e62026d96f', 'd', '672e62026ddc5'),
('672e62026d96f', 'd', '672e62026ddc6'),
('672e62026d96f', 'd', '672e62026ddc7'),
('672e620270327', 'e', '672e620272b9f'),
('672e620270327', 'e', '672e620272ba4'),
('672e620270327', 'e', '672e620272ba5'),
('672e620270327', 'e', '672e620272ba6'),
('672e6279ad0f7', 'a', '672e6279ad97c'),
('672e6279ad0f7', 'a', '672e6279ad983'),
('672e6279ad0f7', 'a', '672e6279ad985'),
('672e6279ad0f7', 'a', '672e6279ad986'),
('672e6279b010b', 'b', '672e6279b08ec'),
('672e6279b010b', 'b', '672e6279b08f0'),
('672e6279b010b', 'b', '672e6279b08f2'),
('672e6279b010b', 'b', '672e6279b08f3'),
('672e6279b2946', 'c', '672e6279b2f24'),
('672e6279b2946', 'c', '672e6279b2f28'),
('672e6279b2946', 'c', '672e6279b2f29'),
('672e6279b2946', 'c', '672e6279b2f2a'),
('672fa0311a46a', 'a', '672fa0311ac2e'),
('672fa0311a46a', 'a', '672fa0311ac34'),
('672fa0311a46a', 'a', '672fa0311ac36'),
('672fa0311a46a', 'a', '672fa0311ac37'),
('672fa0311cd31', 'b', '672fa0311d557'),
('672fa0311cd31', 'b', '672fa0311d55d'),
('672fa0311cd31', 'b', '672fa0311d55f'),
('672fa0311cd31', 'b', '672fa0311d560'),
('672fa0311f93b', 'c', '672fa0311ff6f'),
('672fa0311f93b', 'c', '672fa0311ff74'),
('672fa0311f93b', 'c', '672fa0311ff75'),
('672fa0311f93b', 'c', '672fa0311ff76'),
('672fa03121f22', 'd', '672fa03122528'),
('672fa03121f22', 'd', '672fa0312252d'),
('672fa03121f22', 'd', '672fa0312252e'),
('672fa03121f22', 'd', '672fa0312252f'),
('672fa03125365', 'd', '672fa031268fd'),
('672fa03125365', 'd', '672fa03126904'),
('672fa03125365', 'd', '672fa03126905'),
('672fa03125365', 'd', '672fa03126906'),
('672fa11a79476', 'a', '672fa11a79cb2'),
('672fa11a79476', 'a', '672fa11a79cb8'),
('672fa11a79476', 'a', '672fa11a79cb9'),
('672fa11a79476', 'a', '672fa11a79cbb');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558921841f1ec', '558922117fcef', 'what is command for print in php??', 4, 1),
('558921841f1ec', '55892211e44d5', 'which is a variable of php??', 4, 2),
('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
('558922ec03021', '558923538f48d', 'what is correct mask for A class IP???', 4, 1),
('558922ec03021', '55892353f05c4', 'which is not a private IP??', 4, 2),
('55897338a6659', '558973f4389ac', 'On Linux, initrd is a file', 4, 1),
('55897338a6659', '558973f4c46f2', 'Which is loaded into memory when system is booted?', 4, 2),
('55897338a6659', '558973f51600d', ' The process of starting up a computer is known as', 4, 3),
('55897338a6659', '558973f55d269', ' Bootstrapping is also known as', 4, 4),
('55897338a6659', '558973f5abb1a', 'The shell used for Single user mode shell is:', 4, 5),
('5589741f9ed52', '5589751a63091', ' Which command is used to close the vi editor?', 4, 1),
('5589741f9ed52', '5589751ad32b8', ' In vi editor, the key combination CTRL+f', 4, 2),
('5589741f9ed52', '5589751b304ef', ' Which vi editor command copies the current line of the file?', 4, 3),
('5589741f9ed52', '5589751b749c9', ' Which command is used to delete the character before the cursor location in vi editor?', 4, 4),
('5589741f9ed52', '5589751bd02ec', ' Which one of the following statement is true?', 4, 5),
('672e61d471e9f', '672e6202665dd', 'a', 4, 1),
('672e61d471e9f', '672e620268b02', 'b', 4, 2),
('672e61d471e9f', '672e62026adb1', 'c', 4, 3),
('672e61d471e9f', '672e62026d96f', 'd', 4, 4),
('672e61d471e9f', '672e620270327', 'e', 4, 5),
('672e626783990', '672e6279ad0f7', 'a', 4, 1),
('672e626783990', '672e6279b010b', 'b', 4, 2),
('672e626783990', '672e6279b2946', 'c', 4, 3),
('672fa0139d78c', '672fa0311a46a', 'a', 4, 1),
('672fa0139d78c', '672fa0311cd31', 'b', 4, 2),
('672fa0139d78c', '672fa0311f93b', 'c', 4, 3),
('672fa0139d78c', '672fa03121f22', 'd', 4, 4),
('672fa0139d78c', '672fa03125365', 'd', 4, 5),
('672fa1133f448', '672fa11a79476', 'a', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('558921841f1ec', 'Php Coding', 2, 1, 2, 5, '', 'PHP', '2015-06-23 09:06:12'),
('5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2015-06-23 09:09:03'),
('558922ec03021', 'Networking', 2, 1, 2, 5, '', 'networking', '2015-06-23 09:12:12'),
('55897338a6659', 'Linux:startup', 2, 1, 5, 10, '', 'linux', '2015-06-23 14:54:48'),
('5589741f9ed52', 'Linux :vi Editor', 2, 1, 5, 10, '', 'linux', '2015-06-23 14:58:39'),
('671e7f0a28e19', 'Adadada', 1, 0, 4, 5, '', '', '2024-10-27 17:57:30'),
('672e61d471e9f', 'Tes', 1, 1, 5, 5, 'adad', '', '2024-11-08 19:09:08'),
('672e626783990', 'A', 1, 1, 3, 1, '', '', '2024-11-08 19:11:35'),
('672fa0139d78c', 'Adadada', 1, 1, 5, 0, 'ada', 'aaa', '2024-11-09 17:46:59'),
('672fa1133f448', 'Adadadaddc', 1, 1, 1, 0, 'a', 'aaa', '2024-11-09 17:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('matthewhartono9945@gmail.com', 0, '2024-11-11 11:59:10'),
('johndoe1@example.com', -1, '2024-11-11 12:08:46'),
('alicej@example.com', 6, '2024-11-11 12:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) UNSIGNED DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `timestamp` int(10) UNSIGNED DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `role` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `verified`, `role`) VALUES
(3, 'matthew', 'matthewhartono9945@gmail.com', '$2y$10$HBsME8vZ9COaZBOWCOn9Lu.4XTE9Ex/goDcBWSmgH7G9UBIJCSNuO', 1, 'admin'),
(4, 'John Doe', 'johndoe1@example.com', '$2y$10$HBsME8vZ9COaZBOWCOn9Lu.4XTE9Ex/goDcBWSmgH7G9UBIJCSNuO', 1, 'student'),
(5, 'Jane Smith', 'janesmith2@example.com', '$2y$10$HBsME8vZ9COaZBOWCOn9Lu.4XTE9Ex/goDcBWSmgH7G9UBIJCSNuO', 1, 'student'),
(6, 'Alice Johnson', 'alicej@example.com', '$2y$10$HBsME8vZ9COaZBOWCOn9Lu.4XTE9Ex/goDcBWSmgH7G9UBIJCSNuO', 1, 'student'),
(7, 'Bob Brown', 'bobbrown3@example.com', '$2y$10$HBsME8vZ9COaZBOWCOn9Lu.4XTE9Ex/goDcBWSmgH7G9UBIJCSNuO', 1, 'student'),
(8, 'Charlie White', 'charliewhite4@example.com', '$2y$10$HBsME8vZ9COaZBOWCOn9Lu.4XTE9Ex/goDcBWSmgH7G9UBIJCSNuO', 1, 'student'),
(9, 'David Green', 'davidgreen5@example.com', '$2y$10$HBsME8vZ9COaZBOWCOn9Lu.4XTE9Ex/goDcBWSmgH7G9UBIJCSNuO', 1, 'student'),
(10, 'Eva Black', 'evablack6@example.com', '$2y$10$HBsME8vZ9COaZBOWCOn9Lu.4XTE9Ex/goDcBWSmgH7G9UBIJCSNuO', 1, 'student'),
(11, 'Frank Gray', 'frankgray7@example.com', '$2y$10$HBsME8vZ9COaZBOWCOn9Lu.4XTE9Ex/goDcBWSmgH7G9UBIJCSNuO', 1, 'student'),
(12, 'Grace Pink', 'gracepink8@example.com', '$2y$10$HBsME8vZ9COaZBOWCOn9Lu.4XTE9Ex/goDcBWSmgH7G9UBIJCSNuO', 1, 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loginattempts`
--
ALTER TABLE `loginattempts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginattempts`
--
ALTER TABLE `loginattempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
