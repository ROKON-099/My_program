-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2026 at 06:15 PM
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
-- Database: `quizrank`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_records`
--

CREATE TABLE `academic_records` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `cgpa` decimal(4,2) DEFAULT NULL,
  `department_rank` int(11) DEFAULT NULL,
  `batch_rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic_records`
--

INSERT INTO `academic_records` (`id`, `student_id`, `semester`, `cgpa`, `department_rank`, `batch_rank`) VALUES
(1, 7, 'Current', 3.92, 2, 1),
(2, 8, 'Current', 3.85, 4, 2),
(3, 9, 'Current', 3.78, 6, 3),
(4, 10, 'Current', 3.74, 8, 4),
(5, 11, 'Current', 3.70, 10, 5),
(6, 12, 'Current', 3.66, 12, 6),
(7, 13, 'Current', 3.61, 14, 7),
(8, 14, 'Current', 3.58, 16, 8),
(9, 15, 'Current', 3.55, 18, 9),
(10, 16, 'Current', 3.50, 20, 10),
(11, 17, 'Current', 3.47, 22, 11),
(12, 18, 'Current', 3.43, 24, 12),
(13, 19, 'Current', 3.40, 26, 13),
(14, 20, 'Current', 3.35, 28, 14),
(15, 21, 'Current', 3.30, 30, 15),
(16, 22, 'Current', 3.95, 1, 1),
(17, 23, 'Current', 3.88, 3, 2),
(18, 24, 'Current', 3.82, 5, 3),
(19, 25, 'Current', 3.76, 7, 4),
(20, 26, 'Current', 3.72, 9, 5),
(21, 27, 'Current', 3.68, 11, 6),
(22, 28, 'Current', 3.64, 13, 7),
(23, 29, 'Current', 3.60, 15, 8),
(24, 30, 'Current', 3.56, 17, 9),
(25, 31, 'Current', 3.52, 19, 10),
(26, 32, 'Current', 3.48, 21, 11),
(27, 33, 'Current', 3.44, 23, 12),
(28, 34, 'Current', 3.41, 25, 13),
(29, 35, 'Current', 3.37, 27, 14),
(30, 36, 'Current', 3.32, 29, 15),
(32, 7, 'Previous', 3.84, NULL, NULL),
(33, 8, 'Previous', 3.78, NULL, NULL),
(34, 9, 'Previous', 3.70, NULL, NULL),
(35, 10, 'Previous', 3.68, NULL, NULL),
(36, 11, 'Previous', 3.63, NULL, NULL),
(37, 12, 'Previous', 3.59, NULL, NULL),
(38, 13, 'Previous', 3.55, NULL, NULL),
(39, 14, 'Previous', 3.51, NULL, NULL),
(40, 15, 'Previous', 3.48, NULL, NULL),
(41, 16, 'Previous', 3.44, NULL, NULL),
(42, 17, 'Previous', 3.40, NULL, NULL),
(43, 18, 'Previous', 3.37, NULL, NULL),
(44, 19, 'Previous', 3.34, NULL, NULL),
(45, 20, 'Previous', 3.30, NULL, NULL),
(46, 21, 'Previous', 3.25, NULL, NULL),
(47, 22, 'Previous', 3.87, NULL, NULL),
(48, 23, 'Previous', 3.81, NULL, NULL),
(49, 24, 'Previous', 3.75, NULL, NULL),
(50, 25, 'Previous', 3.69, NULL, NULL),
(51, 26, 'Previous', 3.65, NULL, NULL),
(52, 27, 'Previous', 3.61, NULL, NULL),
(53, 28, 'Previous', 3.57, NULL, NULL),
(54, 29, 'Previous', 3.53, NULL, NULL),
(55, 30, 'Previous', 3.49, NULL, NULL),
(56, 31, 'Previous', 3.45, NULL, NULL),
(57, 32, 'Previous', 3.41, NULL, NULL),
(58, 33, 'Previous', 3.38, NULL, NULL),
(59, 34, 'Previous', 3.34, NULL, NULL),
(60, 35, 'Previous', 3.30, NULL, NULL),
(61, 36, 'Previous', 3.26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `topic` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `quiz_date` date DEFAULT NULL,
  `quiz_time` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `teacher_id`, `subject_id`, `topic`, `message`, `quiz_date`, `quiz_time`, `created_at`) VALUES
(2, 5, NULL, 'Important Notice', 'Tomorrow there will be no regular class.', NULL, NULL, '2026-10-02 18:29:53'),
(3, 31, NULL, 'Important Notice', 'Tomorrow there will be no regular class.', NULL, NULL, '2026-10-02 18:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option_a` varchar(500) NOT NULL,
  `option_b` varchar(500) NOT NULL,
  `option_c` varchar(500) NOT NULL,
  `option_d` varchar(500) NOT NULL,
  `correct_answer` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`) VALUES
(1, 1, 'How many select lines does a 16-to-1 multiplexer require', '1', '2', '3', '4', 'D'),
(2, 1, 'How many select lines does a 8-to-1 multiplexer require', '1', '2', '3', '4', 'C'),
(3, 1, 'How many select lines does a 4-to-1 multiplexer require', '1', '2', '3', '4', 'B'),
(4, 1, 'How many select lines does a 32-to-1 multiplexer require', '1', '2', '3', '5', 'D'),
(5, 1, 'How many select lines does a 64-to-1 multiplexer require', '4', '5', '6', '7', 'B'),
(6, 1, 'How many select lines does a 16-to-1 multiplexer require', '1', '2', '3', '4', 'D'),
(7, 1, 'How many select lines does a 8-to-1 multiplexer require', '1', '2', '3', '4', 'C'),
(8, 1, 'How many output lines does a 1-to-16 demultiplexer require', '3', '4', '1', '3', 'C'),
(9, 1, 'How many select lines does a 1-to-8 multiplexer require', '1', '2', '3', '4', 'C'),
(10, 1, 'How many select lines does a 1-to-4 multiplexer require', '1', '2', '3', '4', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `topic` varchar(150) NOT NULL,
  `quiz_date` date NOT NULL,
  `quiz_time` time NOT NULL,
  `total_questions` int(11) DEFAULT 10,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `subject_id`, `topic`, `quiz_date`, `quiz_time`, `total_questions`, `created_by`, `created_at`) VALUES
(1, 15, 'MUX', '2026-10-03', '10:19:00', 10, 3, '2026-10-09 15:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempts`
--

CREATE TABLE `quiz_attempts` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `current_question` int(11) DEFAULT 0,
  `score` int(11) DEFAULT 0,
  `question_started_at` datetime NOT NULL,
  `started_at` datetime DEFAULT current_timestamp(),
  `completed_at` datetime DEFAULT NULL,
  `status` enum('IN_PROGRESS','COMPLETED') DEFAULT 'IN_PROGRESS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_attempts`
--

INSERT INTO `quiz_attempts` (`id`, `student_id`, `quiz_id`, `current_question`, `score`, `question_started_at`, `started_at`, `completed_at`, `status`) VALUES
(1, 30, 1, 9, 6, '2026-10-03 11:41:28', '2026-10-03 11:34:44', '2026-10-03 11:41:31', 'COMPLETED'),
(2, 29, 1, 9, 8, '2026-10-03 12:04:14', '2026-10-03 12:03:41', '2026-10-03 12:04:17', 'COMPLETED'),
(3, 28, 1, 9, 8, '2026-10-03 12:05:29', '2026-10-03 12:05:00', '2026-10-03 12:05:31', 'COMPLETED'),
(4, 27, 1, 9, 7, '2026-10-07 23:13:07', '2026-10-07 23:12:26', '2026-10-07 23:13:09', 'COMPLETED'),
(5, 26, 1, 9, 8, '2026-10-07 23:15:10', '2026-10-07 23:14:04', '2026-10-07 23:15:13', 'COMPLETED'),
(6, 25, 1, 9, 7, '2026-10-09 22:00:14', '2026-10-09 21:59:32', '2026-10-09 22:00:17', 'COMPLETED');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempt_answers`
--

CREATE TABLE `quiz_attempt_answers` (
  `id` int(11) NOT NULL,
  `attempt_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `selected_answer` char(1) DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT 0,
  `answered_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_results`
--

INSERT INTO `quiz_results` (`id`, `student_id`, `quiz_id`, `score`, `total`, `submitted_at`) VALUES
(1, 30, 1, 6, 10, '2026-10-03 05:41:31'),
(2, 29, 1, 8, 10, '2026-10-03 06:04:17'),
(3, 28, 1, 8, 10, '2026-10-03 06:05:31'),
(4, 27, 1, 7, 10, '2026-10-07 17:13:09'),
(5, 26, 1, 8, 10, '2026-10-07 17:15:13'),
(6, 25, 1, 7, 10, '2026-10-09 16:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `enrolled_type` varchar(30) DEFAULT 'Regular'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`id`, `student_id`, `subject_id`, `enrolled_type`) VALUES
(504, 7, 1, 'Regular'),
(505, 7, 2, 'Regular'),
(506, 7, 3, 'Regular'),
(507, 7, 4, 'Regular'),
(508, 7, 5, 'Regular'),
(509, 7, 6, 'Regular'),
(510, 7, 7, 'Regular'),
(511, 7, 8, 'Regular'),
(512, 8, 1, 'Regular'),
(513, 8, 2, 'Regular'),
(514, 8, 3, 'Regular'),
(515, 8, 4, 'Regular'),
(516, 8, 5, 'Regular'),
(517, 8, 6, 'Regular'),
(518, 8, 7, 'Regular'),
(519, 8, 8, 'Regular'),
(520, 9, 1, 'Regular'),
(521, 9, 2, 'Regular'),
(522, 9, 3, 'Regular'),
(523, 9, 4, 'Regular'),
(524, 9, 5, 'Regular'),
(525, 9, 6, 'Regular'),
(526, 9, 7, 'Regular'),
(527, 9, 8, 'Regular'),
(528, 10, 1, 'Regular'),
(529, 10, 2, 'Regular'),
(530, 10, 3, 'Regular'),
(531, 10, 4, 'Regular'),
(532, 10, 5, 'Regular'),
(533, 10, 6, 'Regular'),
(534, 10, 7, 'Regular'),
(535, 10, 8, 'Regular'),
(536, 11, 1, 'Regular'),
(537, 11, 2, 'Regular'),
(538, 11, 3, 'Regular'),
(539, 11, 4, 'Regular'),
(540, 11, 5, 'Regular'),
(541, 11, 6, 'Regular'),
(542, 11, 7, 'Regular'),
(543, 11, 8, 'Regular'),
(544, 12, 1, 'Regular'),
(545, 12, 2, 'Regular'),
(546, 12, 3, 'Regular'),
(547, 12, 4, 'Regular'),
(548, 12, 5, 'Regular'),
(549, 12, 6, 'Regular'),
(550, 12, 7, 'Regular'),
(551, 12, 8, 'Regular'),
(552, 13, 1, 'Regular'),
(553, 13, 2, 'Regular'),
(554, 13, 3, 'Regular'),
(555, 13, 4, 'Regular'),
(556, 13, 5, 'Regular'),
(557, 13, 6, 'Regular'),
(558, 13, 7, 'Regular'),
(559, 13, 8, 'Regular'),
(560, 14, 1, 'Regular'),
(561, 14, 2, 'Regular'),
(562, 14, 3, 'Regular'),
(563, 14, 4, 'Regular'),
(564, 14, 5, 'Regular'),
(565, 14, 6, 'Regular'),
(566, 14, 7, 'Regular'),
(567, 14, 8, 'Regular'),
(568, 15, 1, 'Regular'),
(569, 15, 2, 'Regular'),
(570, 15, 3, 'Regular'),
(571, 15, 4, 'Regular'),
(572, 15, 5, 'Regular'),
(573, 15, 6, 'Regular'),
(574, 15, 7, 'Regular'),
(575, 15, 8, 'Regular'),
(576, 16, 1, 'Regular'),
(577, 16, 2, 'Regular'),
(578, 16, 3, 'Regular'),
(579, 16, 4, 'Regular'),
(580, 16, 5, 'Regular'),
(581, 16, 6, 'Regular'),
(582, 16, 7, 'Regular'),
(583, 16, 8, 'Regular'),
(584, 17, 1, 'Regular'),
(585, 17, 2, 'Regular'),
(586, 17, 3, 'Regular'),
(587, 17, 4, 'Regular'),
(588, 17, 5, 'Regular'),
(589, 17, 6, 'Regular'),
(590, 17, 7, 'Regular'),
(591, 17, 8, 'Regular'),
(592, 18, 1, 'Regular'),
(593, 18, 2, 'Regular'),
(594, 18, 3, 'Regular'),
(595, 18, 4, 'Regular'),
(596, 18, 5, 'Regular'),
(597, 18, 6, 'Regular'),
(598, 18, 7, 'Regular'),
(599, 18, 8, 'Regular'),
(600, 19, 1, 'Regular'),
(601, 19, 2, 'Regular'),
(602, 19, 3, 'Regular'),
(603, 19, 4, 'Regular'),
(604, 19, 5, 'Regular'),
(605, 19, 6, 'Regular'),
(606, 19, 7, 'Regular'),
(607, 19, 8, 'Regular'),
(608, 20, 1, 'Regular'),
(609, 20, 2, 'Regular'),
(610, 20, 3, 'Regular'),
(611, 20, 4, 'Regular'),
(612, 20, 5, 'Regular'),
(613, 20, 6, 'Regular'),
(614, 20, 7, 'Regular'),
(615, 20, 8, 'Regular'),
(616, 21, 1, 'Regular'),
(617, 21, 2, 'Regular'),
(618, 21, 3, 'Regular'),
(619, 21, 4, 'Regular'),
(620, 21, 5, 'Regular'),
(621, 21, 6, 'Regular'),
(622, 21, 7, 'Regular'),
(623, 21, 8, 'Regular'),
(624, 22, 9, 'Regular'),
(625, 22, 10, 'Regular'),
(626, 22, 11, 'Regular'),
(627, 22, 12, 'Regular'),
(628, 22, 13, 'Regular'),
(629, 22, 14, 'Regular'),
(630, 22, 15, 'Regular'),
(631, 22, 16, 'Regular'),
(632, 23, 9, 'Regular'),
(633, 23, 10, 'Regular'),
(634, 23, 11, 'Regular'),
(635, 23, 12, 'Regular'),
(636, 23, 13, 'Regular'),
(637, 23, 14, 'Regular'),
(638, 23, 15, 'Regular'),
(639, 23, 16, 'Regular'),
(640, 24, 9, 'Regular'),
(641, 24, 10, 'Regular'),
(642, 24, 11, 'Regular'),
(643, 24, 12, 'Regular'),
(644, 24, 13, 'Regular'),
(645, 24, 14, 'Regular'),
(646, 24, 15, 'Regular'),
(647, 24, 16, 'Regular'),
(648, 25, 9, 'Regular'),
(649, 25, 10, 'Regular'),
(650, 25, 11, 'Regular'),
(651, 25, 12, 'Regular'),
(652, 25, 13, 'Regular'),
(653, 25, 14, 'Regular'),
(654, 25, 15, 'Regular'),
(655, 25, 16, 'Regular'),
(656, 26, 9, 'Regular'),
(657, 26, 10, 'Regular'),
(658, 26, 11, 'Regular'),
(659, 26, 12, 'Regular'),
(660, 26, 13, 'Regular'),
(661, 26, 14, 'Regular'),
(662, 26, 15, 'Regular'),
(663, 26, 16, 'Regular'),
(664, 27, 9, 'Regular'),
(665, 27, 10, 'Regular'),
(666, 27, 11, 'Regular'),
(667, 27, 12, 'Regular'),
(668, 27, 13, 'Regular'),
(669, 27, 14, 'Regular'),
(670, 27, 15, 'Regular'),
(671, 27, 16, 'Regular'),
(672, 28, 9, 'Regular'),
(673, 28, 10, 'Regular'),
(674, 28, 11, 'Regular'),
(675, 28, 12, 'Regular'),
(676, 28, 13, 'Regular'),
(677, 28, 14, 'Regular'),
(678, 28, 15, 'Regular'),
(679, 28, 16, 'Regular'),
(680, 29, 9, 'Regular'),
(681, 29, 10, 'Regular'),
(682, 29, 11, 'Regular'),
(683, 29, 12, 'Regular'),
(684, 29, 13, 'Regular'),
(685, 29, 14, 'Regular'),
(686, 29, 15, 'Regular'),
(687, 29, 16, 'Regular'),
(688, 30, 9, 'Regular'),
(689, 30, 10, 'Regular'),
(690, 30, 11, 'Regular'),
(691, 30, 12, 'Regular'),
(692, 30, 13, 'Regular'),
(693, 30, 14, 'Regular'),
(694, 30, 15, 'Regular'),
(695, 30, 16, 'Regular'),
(696, 31, 9, 'Regular'),
(697, 31, 10, 'Regular'),
(698, 31, 11, 'Regular'),
(699, 31, 12, 'Regular'),
(700, 31, 13, 'Regular'),
(701, 31, 14, 'Regular'),
(702, 31, 15, 'Regular'),
(703, 31, 16, 'Regular'),
(704, 32, 9, 'Regular'),
(705, 32, 10, 'Regular'),
(706, 32, 11, 'Regular'),
(707, 32, 12, 'Regular'),
(708, 32, 13, 'Regular'),
(709, 32, 14, 'Regular'),
(710, 32, 15, 'Regular'),
(711, 32, 16, 'Regular'),
(712, 33, 9, 'Regular'),
(713, 33, 10, 'Regular'),
(714, 33, 11, 'Regular'),
(715, 33, 12, 'Regular'),
(716, 33, 13, 'Regular'),
(717, 33, 14, 'Regular'),
(718, 33, 15, 'Regular'),
(719, 33, 16, 'Regular'),
(720, 34, 9, 'Regular'),
(721, 34, 10, 'Regular'),
(722, 34, 11, 'Regular'),
(723, 34, 12, 'Regular'),
(724, 34, 13, 'Regular'),
(725, 34, 14, 'Regular'),
(726, 34, 15, 'Regular'),
(727, 34, 16, 'Regular'),
(728, 35, 9, 'Regular'),
(729, 35, 10, 'Regular'),
(730, 35, 11, 'Regular'),
(731, 35, 12, 'Regular'),
(732, 35, 13, 'Regular'),
(733, 35, 14, 'Regular'),
(734, 35, 15, 'Regular'),
(735, 35, 16, 'Regular'),
(736, 36, 9, 'Regular'),
(737, 36, 10, 'Regular'),
(738, 36, 11, 'Regular'),
(739, 36, 12, 'Regular'),
(740, 36, 13, 'Regular'),
(741, 36, 14, 'Regular'),
(742, 36, 15, 'Regular'),
(743, 36, 16, 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `teacher_id`, `batch`) VALUES
(1, 'Object Oriented Programming-II', 4, '19th'),
(2, 'Object Oriented Programming-II Lab', 4, '19th'),
(3, 'Design and Analysis of Algorithm', 4, '19th'),
(4, 'Design and Analysis of Algorithm Lab', 4, '19th'),
(5, 'Numerical Methods', 5, '19th'),
(6, 'Digital System Design', 5, '19th'),
(7, 'Digital System Design Lab', 5, '19th'),
(8, 'Probability and Statistics', 5, '19th'),
(9, 'Data Structure', 6, '20th'),
(10, 'Data Structure Lab', 6, '20th'),
(11, 'Physics', 6, '20th'),
(12, 'Physics Lab', 6, '20th'),
(13, 'Mathematics', 3, '20th'),
(14, 'Mathematics Lab', 3, '20th'),
(15, 'Digital Logic Design', 3, '20th'),
(16, 'Digital Logic Design Lab', 3, '20th');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('STUDENT','TEACHER') NOT NULL,
  `department` varchar(100) NOT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `password`, `role`, `department`, `batch`, `created_at`) VALUES
(3, 'T001', 'Karim Ahmed', '123456', 'TEACHER', 'Computer Science and Engineering', NULL, '2026-10-02 14:44:49'),
(4, 'T002', 'Sabbir Hossain', '123456', 'TEACHER', 'Computer Science and Engineering', NULL, '2026-10-02 14:44:49'),
(5, 'T003', 'Nusrat Jahan', '123456', 'TEACHER', 'Computer Science and Engineering', NULL, '2026-10-02 14:44:49'),
(6, 'T004', 'Mahmudul Hasan', '123456', 'TEACHER', 'Computer Science and Engineering', NULL, '2026-10-02 14:44:49'),
(7, 'CSE001', 'Rahim Ahmed', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(8, 'CSE002', 'Sakib Hasan', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(9, 'CSE003', 'Tanvir Hossain', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(10, 'CSE004', 'Nayeem Islam', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(11, 'CSE005', 'Fahim Rahman', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(12, 'CSE006', 'Mehedi Hasan', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(13, 'CSE007', 'Arif Hossain', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(14, 'CSE008', 'Shakil Ahmed', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(15, 'CSE009', 'Rifat Karim', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(16, 'CSE010', 'Imran Hossain', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(17, 'CSE011', 'Hasan Mahmud', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(18, 'CSE012', 'Siam Ahmed', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(19, 'CSE013', 'Adnan Kabir', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(20, 'CSE014', 'Shuvo Islam', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(21, 'CSE015', 'Rakib Hasan', '123456', 'STUDENT', 'Computer Science and Engineering', '19th', '2026-10-02 14:44:49'),
(22, 'CSE016', 'Arafat Hossain', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(23, 'CSE017', 'Sohan Ahmed', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(24, 'CSE018', 'Tamim Iqbal', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(25, 'CSE019', 'Jahid Hasan', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(26, 'CSE020', 'Rony Islam', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(27, 'CSE021', 'Mushfiq Rahman', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(28, 'CSE022', 'Nafis Ahmed', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(29, 'CSE023', 'Shafin Hossain', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(30, 'CSE024', 'Tahmid Hasan', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(31, 'CSE025', 'Rahat Islam', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(32, 'CSE026', 'Fardin Ahmed', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(33, 'CSE027', 'Anik Hasan', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(34, 'CSE028', 'Sajid Hossain', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(35, 'CSE029', 'Mahin Islam', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49'),
(36, 'CSE030', 'Foysal Ahmed', '123456', 'STUDENT', 'Computer Science and Engineering', '20th', '2026-10-02 14:44:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_records`
--
ALTER TABLE `academic_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`quiz_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quiz_attempt_answers`
--
ALTER TABLE `quiz_attempt_answers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attempt_id` (`attempt_id`,`question_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`subject_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_records`
--
ALTER TABLE `academic_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quiz_attempt_answers`
--
ALTER TABLE `quiz_attempt_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=744;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_records`
--
ALTER TABLE `academic_records`
  ADD CONSTRAINT `academic_records_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notices_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD CONSTRAINT `quiz_attempts_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_attempts_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_attempt_answers`
--
ALTER TABLE `quiz_attempt_answers`
  ADD CONSTRAINT `quiz_attempt_answers_ibfk_1` FOREIGN KEY (`attempt_id`) REFERENCES `quiz_attempts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_attempt_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD CONSTRAINT `quiz_results_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_results_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD CONSTRAINT `student_courses_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_courses_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
