-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table cricket.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping data for table cricket.matches: ~6 rows (approximately)
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` (`id`, `team1`, `team2`, `matchDate`, `winner`, `created_at`, `updated_at`) VALUES
	(1, 2, 4, '2018-07-15', 2, NULL, NULL),
	(2, 3, 1, '2018-07-16', 3, NULL, NULL),
	(3, 4, 3, '2018-07-17', 4, NULL, NULL),
	(4, 1, 2, '2018-07-18', 2, NULL, NULL),
	(5, 4, 1, '2018-07-19', 4, NULL, NULL),
	(6, 3, 2, '2018-07-21', 2, NULL, NULL);
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;

-- Dumping data for table cricket.migrations: ~6 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_02_20_234533_create_teams_table', 1),
	(5, '2020_02_21_000044_create_players_table', 1),
	(6, '2020_02_22_184209_create_matches_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping data for table cricket.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping data for table cricket.players: ~44 rows (approximately)
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` (`id`, `teamId`, `firstName`, `lastName`, `imageUri`, `jerseyNumber`, `country`, `matches`, `runs`, `highestScores`, `fifties`, `hundreds`, `created_at`, `updated_at`) VALUES
	(1, 2, 'Rohit', 'Sharma', 'http://p.imgci.com/db/PICTURES/CMS/222900/222915.jpg', 1, 'India', 224, 9000, 264, 50, 29, NULL, NULL),
	(2, 2, 'Shikhar', 'Dhawan', 'http://p.imgci.com/db/PICTURES/CMS/263700/263700.icon.jpg', 2, 'India', 136, 5688, 143, 29, 17, NULL, NULL),
	(3, 2, 'Virat', 'Kohli', 'http://p.imgci.com/db/PICTURES/CMS/289000/289002.1.jpg', 3, 'India', 248, 11000, 183, 58, 43, NULL, NULL),
	(4, 2, 'Lokesh', 'Rahul', 'http://p.imgci.com/db/PICTURES/CMS/289000/289001.icon.jpg', 4, 'India', 32, 2000, 124, 7, 4, NULL, NULL),
	(5, 2, 'Hardik', 'Pandya', 'http://p.imgci.com/db/PICTURES/CMS/263700/263702.icon.jpg', 5, 'India', 54, 957, 83, 5, 0, NULL, NULL),
	(6, 2, 'Manish', 'Pandey', 'http://p.imgci.com/db/PICTURES/CMS/184200/184251.icon.jpg', 6, 'India', 26, 492, 104, 2, 1, NULL, NULL),
	(7, 2, 'Mahendra', 'Singh', 'http://p.imgci.com/db/PICTURES/CMS/263700/263705.icon.jpg', 7, 'India', 350, 10000, 183, 73, 10, NULL, NULL),
	(8, 2, 'Jasprit', 'Bumarh', 'http://p.imgci.com/db/PICTURES/CMS/263700/263704.icon.jpg', 8, 'India', 64, 19, 10, 0, 0, NULL, NULL),
	(9, 2, 'Bhuvneshwar', 'Kumar', 'http://p.imgci.com/db/PICTURES/CMS/289000/289003.icon.jpg', 9, 'India', 114, 526, 53, 1, 0, NULL, NULL),
	(10, 2, 'Ravindra', 'Jadeja', 'http://p.imgci.com/db/PICTURES/CMS/263700/263701.21.jpg', 10, 'India', 165, 2296, 87, 12, 0, NULL, NULL),
	(11, 2, 'Kuldeep', 'Yadav', 'http://p.imgci.com/db/PICTURES/CMS/179400/179447.1.jpg', 11, 'India', 60, 118, 32, 0, 0, NULL, NULL),
	(12, 1, '\r\nMashrafe', 'Mortaza', 'http://p.imgci.com/db/PICTURES/CMS/263500/263576.jpg', 1, 'Bangladesh', 214, 5900, 123, 20, 16, NULL, NULL),
	(13, 1, 'Abu', 'Hider', 'http://p.imgci.com/db/PICTURES/CMS/179500/179563.icon.jpg', 2, 'Bangladesh', 136, 1890, 102, 20, 2, NULL, NULL),
	(14, 1, 'Ariful', 'Haque', 'http://p.imgci.com/db/PICTURES/CMS/225200/225272.icon.jpg', 3, 'Bangladesh', 12, 267, 57, 1, 0, NULL, NULL),
	(15, 1, 'Liton', 'Das', 'http://p.imgci.com/db/PICTURES/CMS/179500/179581.1.jpg', 4, 'Bangladesh', 33, 768, 121, 3, 1, NULL, NULL),
	(16, 1, 'Mustafizur', 'Rahman', 'http://p.imgci.com/db/PICTURES/CMS/263500/263578.jpg', 5, 'Bangladesh', 54, 658, 80, 5, 0, NULL, NULL),
	(17, 1, 'Mehidy', 'Hasan', 'http://p.imgci.com/db/PICTURES/CMS/263600/263609.icon.jpg', 6, 'Bangladesh', 26, 492, 104, 2, 1, NULL, NULL),
	(18, 1, 'Rubel', 'Hossain', 'http://p.imgci.com/db/PICTURES/CMS/263500/263594.jpg', 7, 'Bangladesh', 101, 140, 17, 0, 0, NULL, NULL),
	(19, 1, 'Mominul', 'Haque', 'http://p.imgci.com/db/PICTURES/CMS/181200/181235.1.jpg', 8, 'Bangladesh', 28, 601, 60, 1, 0, NULL, NULL),
	(20, 1, 'Shakib', 'Hasan', 'http://p.imgci.com/db/PICTURES/CMS/263500/263584.icon.jpg', 9, 'Bangladesh', 206, 6517, 134, 47, 9, NULL, NULL),
	(21, 1, 'Tamim', 'Iqbal', 'http://p.imgci.com/db/PICTURES/CMS/263600/263604.jpg', 10, 'Bangladesh', 204, 6896, 154, 47, 12, NULL, NULL),
	(22, 1, 'Mosaddek', 'Hossain', 'http://p.imgci.com/db/PICTURES/CMS/263600/263607.1.jpg', 11, 'Bangladesh', 35, 902, 52, 1, 0, NULL, NULL),
	(23, 4, '\r\nAngelo', 'Mathews', 'http://p.imgci.com/db/PICTURES/CMS/263500/263576.jpg', 1, 'Sri Lanka', 214, 5812, 139, 40, 3, NULL, NULL),
	(24, 4, 'Akila', 'Dananjaya', 'http://p.imgci.com/db/PICTURES/CMS/203200/203267.1.jpg', 2, 'Sri Lanka', 136, 1890, 102, 20, 2, NULL, NULL),
	(25, 4, 'Kusal', 'Mendis', 'http://p.imgci.com/db/PICTURES/CMS/263600/263666.icon.png', 3, 'Sri Lanka', 12, 267, 57, 1, 0, NULL, NULL),
	(26, 4, 'Lasith', 'Malinga', 'http://p.imgci.com/db/PICTURES/CMS/263600/263672.icon.png', 4, 'Sri Lanka', 33, 768, 121, 3, 1, NULL, NULL),
	(27, 4, 'Kusal', 'Perera', 'http://p.imgci.com/db/PICTURES/CMS/263600/263669.icon.png', 5, 'Sri Lanka', 54, 658, 80, 5, 0, NULL, NULL),
	(28, 4, 'Upul', 'Tharanga', 'http://p.imgci.com/db/PICTURES/CMS/263600/263682.icon.png', 6, 'Sri Lanka', 26, 492, 104, 2, 1, NULL, NULL),
	(29, 4, 'Thisara', 'Perera', 'http://p.imgci.com/db/PICTURES/CMS/263600/263680.icon.png', 7, 'Sri Lanka', 101, 140, 17, 0, 0, NULL, NULL),
	(30, 4, 'Dinesh', 'Chandimal', 'http://p.imgci.com/db/PICTURES/CMS/263600/263665.icon.png', 8, 'Sri Lanka', 28, 601, 60, 1, 0, NULL, NULL),
	(31, 4, 'Kasun', 'Rajitha', 'http://p.imgci.com/db/PICTURES/CMS/294200/294298.icon.jpg', 9, 'Sri Lanka', 206, 6517, 134, 47, 9, NULL, NULL),
	(32, 4, 'Niroshan', 'Dickwella', 'http://p.imgci.com/db/PICTURES/CMS/263600/263673.icon.png', 10, 'Sri Lanka', 204, 6896, 154, 47, 12, NULL, NULL),
	(33, 4, 'Dhananjaya', 'Silva', 'http://p.imgci.com/db/PICTURES/CMS/243000/243035.icon.jpg', 11, 'Sri Lanka', 35, 902, 52, 1, 0, NULL, NULL),
	(34, 3, '\r\nSarfaraz', 'Ahmed', 'http://p.imgci.com/db/PICTURES/CMS/263600/263614.icon.jpg', 1, 'Pakistan', 116, 2302, 105, 11, 2, NULL, NULL),
	(35, 3, 'Babar', 'Azam', 'http://p.imgci.com/db/PICTURES/CMS/263500/263587.1.jpg', 2, 'Pakistan', 74, 3359, 125, 15, 11, NULL, NULL),
	(36, 3, 'Imamul', 'Haq', 'http://p.imgci.com/db/PICTURES/CMS/179500/179507.1.jpg', 3, 'Pakistan', 37, 1761, 151, 6, 7, NULL, NULL),
	(37, 3, 'Shoaib', 'Malik', 'http://p.imgci.com/db/PICTURES/CMS/263600/263620.icon.jpg', 4, 'Pakistan', 287, 7685, 141, 43, 9, NULL, NULL),
	(38, 3, 'Shan', 'Masood', 'http://p.imgci.com/db/PICTURES/CMS/188800/188839.icon.jpg', 5, 'Pakistan', 54, 658, 80, 5, 0, NULL, NULL),
	(39, 3, 'Shadab', 'Khan', 'http://p.imgci.com/db/PICTURES/CMS/263600/263616.icon.jpg', 6, 'Pakistan', 26, 492, 104, 2, 1, NULL, NULL),
	(40, 3, 'Mohammad', 'Amir', 'http://p.imgci.com/db/PICTURES/CMS/263600/263608.icon.jpg', 7, 'Pakistan', 101, 140, 17, 0, 0, NULL, NULL),
	(41, 3, 'Hasan', 'Ali', 'http://p.imgci.com/db/PICTURES/CMS/263600/263601.icon.jpg', 8, 'Pakistan', 28, 601, 60, 1, 0, NULL, NULL),
	(42, 3, 'Fakhar', 'Zaman', 'http://p.imgci.com/db/PICTURES/CMS/263500/263592.icon.jpg', 9, 'Pakistan', 206, 6517, 134, 47, 9, NULL, NULL),
	(43, 3, 'Faheem', 'Ashraf', 'http://p.imgci.com/db/PICTURES/CMS/263500/263589.icon.jpg', 10, 'Pakistan', 204, 6896, 154, 47, 12, NULL, NULL),
	(44, 3, 'Junaid', 'Khan', 'http://p.imgci.com/db/PICTURES/CMS/263600/263606.icon.jpg', 11, 'Pakistan', 35, 902, 52, 1, 0, NULL, NULL);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;

-- Dumping data for table cricket.teams: ~4 rows (approximately)
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` (`id`, `name`, `logoUri`, `clubState`, `created_at`, `updated_at`) VALUES
	(1, 'Bangladesh', 'https://a1.espncdn.com/combiner/i?img=/i/teamlogos/cricket/500/25.png&h=50&w=50', 'Bangladesh', NULL, NULL),
	(2, 'India', 'https://a1.espncdn.com/combiner/i?img=/i/teamlogos/cricket/500/6.png&h=50&w=50', 'India', NULL, NULL),
	(3, 'Pakistan', 'https://a1.espncdn.com/combiner/i?img=/i/teamlogos/cricket/500/7.png&h=50&w=50', 'Pakistan', NULL, NULL),
	(4, 'Sri Lanka', 'https://a1.espncdn.com/combiner/i?img=/i/teamlogos/cricket/500/8.png&h=50&w=50', 'Sri Lanka', NULL, NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;

-- Dumping data for table cricket.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
