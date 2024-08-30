-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Aug 30, 2024 at 01:10 PM
-- Server version: 8.3.0
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `albakr`
--

-- --------------------------------------------------------

--
-- Table structure for table `additions`
--

DROP TABLE IF EXISTS `additions`;
CREATE TABLE IF NOT EXISTS `additions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `additions`
--

INSERT INTO `additions` (`id`, `name`, `price`, `active`, `created_at`, `updated_at`) VALUES
(1, '\"{\\\"en\\\":\\\"Dr. Janice Toy MD\\\",\\\"ar\\\":\\\"Mr. Selmer Cormier MD\\\"}\"', 8631, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(2, '\"{\\\"en\\\":\\\"Paxton Doyle DDS\\\",\\\"ar\\\":\\\"Mr. Korbin Ernser PhD\\\"}\"', 7340, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(3, '\"{\\\"en\\\":\\\"Wilber Stanton\\\",\\\"ar\\\":\\\"Garnett Legros\\\"}\"', 921, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(4, '\"{\\\"en\\\":\\\"Ethyl Gibson\\\",\\\"ar\\\":\\\"Tyson Koch\\\"}\"', 6127, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(5, '\"{\\\"en\\\":\\\"Jerrod Hill Sr.\\\",\\\"ar\\\":\\\"Henriette Dare\\\"}\"', 4487, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(6, '\"{\\\"en\\\":\\\"Ila Kertzmann II\\\",\\\"ar\\\":\\\"Shanny Dickens Sr.\\\"}\"', 6090, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(7, '\"{\\\"en\\\":\\\"Pansy Renner\\\",\\\"ar\\\":\\\"Lloyd King\\\"}\"', 3113, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(8, '\"{\\\"en\\\":\\\"Markus Crooks\\\",\\\"ar\\\":\\\"Mathias Dickinson\\\"}\"', 5932, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(9, '\"{\\\"en\\\":\\\"Prof. Dave Braun I\\\",\\\"ar\\\":\\\"Lavina Schneider\\\"}\"', 7879, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(10, '\"{\\\"en\\\":\\\"Darby Emard DDS\\\",\\\"ar\\\":\\\"Maximillian Emmerich\\\"}\"', 7464, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(11, '\"{\\\"en\\\":\\\"Arielle Adams DVM\\\",\\\"ar\\\":\\\"Baron Grimes\\\"}\"', 4509, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(12, '\"{\\\"en\\\":\\\"Dr. Aimee Stamm III\\\",\\\"ar\\\":\\\"Emie Gulgowski II\\\"}\"', 5454, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(13, '\"{\\\"en\\\":\\\"Prof. Keven Beahan DDS\\\",\\\"ar\\\":\\\"Kenton Ruecker\\\"}\"', 3586, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(14, '\"{\\\"en\\\":\\\"Kennith Russel\\\",\\\"ar\\\":\\\"Darrion Kuphal\\\"}\"', 2535, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(15, '\"{\\\"en\\\":\\\"Dr. Kameron Quigley I\\\",\\\"ar\\\":\\\"Alene Watsica\\\"}\"', 540, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(16, '\"{\\\"en\\\":\\\"Kari Krajcik\\\",\\\"ar\\\":\\\"Kris Price Sr.\\\"}\"', 1018, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(17, '\"{\\\"en\\\":\\\"Madelyn Johnson\\\",\\\"ar\\\":\\\"Mr. Jedidiah Kirlin\\\"}\"', 8479, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(18, '\"{\\\"en\\\":\\\"Lonny Leuschke\\\",\\\"ar\\\":\\\"Savannah Dickinson\\\"}\"', 3100, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(19, '\"{\\\"en\\\":\\\"Aileen Upton\\\",\\\"ar\\\":\\\"Maddison Gusikowski\\\"}\"', 1052, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(20, '\"{\\\"en\\\":\\\"Mariela Mante\\\",\\\"ar\\\":\\\"Burdette Leuschke\\\"}\"', 7460, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building` int DEFAULT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `information` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `geo_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_city_id_foreign` (`city_id`),
  KEY `addresses_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `name`, `neighborhood`, `building`, `area`, `type`, `active`, `information`, `geo_address`, `longitude`, `latitude`, `city_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rigoberto Kunze', 'dolor', NULL, NULL, 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(2, 'Mafalda Dickens', 'dolor', NULL, 'Zena Fall', 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(3, 'Dr. Vladimir Maggio II', 'ut', 46179, 'Jeremie Landing', 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(4, 'Bailey Schroeder II', 'ullam', 88014, 'Purdy Fall', 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(5, 'Dr. Braulio Schneider', 'quo', NULL, 'Tatyana Row', 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(6, 'Arianna Padberg', 'et', 38658, NULL, 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(7, 'Emilio Roberts', 'officia', 3190, 'Kertzmann Fall', 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(8, 'Norbert Feeney', 'eum', NULL, 'Delpha Inlet', 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(9, 'Henriette Lueilwitz', 'minima', 2822, NULL, 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(10, 'Garfield Runolfsson', 'qui', 7425, 'Reta Crest', 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(11, 'Lavonne Vandervort II', 'aut', NULL, NULL, 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(12, 'Cletus Bergnaum', 'commodi', 29177, 'Jillian View', 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(13, 'Mayra Carter', 'vel', NULL, NULL, 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(14, 'Nathan Zieme MD', 'reprehenderit', 31517, 'Pink Inlet', 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(15, 'Prof. Soledad Franecki III', 'ipsum', NULL, 'Madge Trafficway', 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(16, 'Kira Streich', 'quos', NULL, NULL, 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(17, 'Bill Fritsch', 'quos', 5330, NULL, 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(18, 'Jaycee Gusikowski', 'esse', NULL, NULL, 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(19, 'Nola Predovic', 'aut', 30395, 'Roob Mills', 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(20, 'Mr. Layne Mayer', 'earum', 99388, 'Diana Locks', 'home', 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `img`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"enim\",\"ar\":\"id\"}', '{\"en\":\"Commodi voluptates sint et accusantium. Qui quasi optio optio adipisci ullam inventore distinctio sint. In rerum eos nisi soluta cupiditate animi magni.\",\"ar\":\"Explicabo repudiandae ut voluptatibus aut officia corrupti quae. Distinctio pariatur ut perspiciatis eos dolor maiores cum vel. Nam quo incidunt ut corrupti sit commodi qui. Et sint recusandae vero in.\"}', '1.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(2, '{\"en\":\"voluptas\",\"ar\":\"aut\"}', '{\"en\":\"Omnis quos harum velit assumenda dolores architecto. Ut est sequi non ut quisquam quo accusamus et. Excepturi natus et sit ea quibusdam id.\",\"ar\":\"Et ut doloremque eum repellendus fugiat. Aperiam minima deleniti dolorum doloremque aliquid aut. Iure maiores eum earum dolores asperiores architecto et. Rerum ducimus dignissimos sit enim.\"}', '2.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(3, '{\"en\":\"itaque\",\"ar\":\"neque\"}', '{\"en\":\"Asperiores voluptatem neque deserunt optio ipsam. Ut exercitationem molestiae odio adipisci. Nam et aut excepturi excepturi ducimus. Tempora fugiat sed minima.\",\"ar\":\"Aut est itaque voluptas voluptas itaque. Et deserunt quasi possimus omnis autem. Laboriosam omnis officiis et qui adipisci cum nam labore.\"}', '3.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(4, '{\"en\":\"eius\",\"ar\":\"eos\"}', '{\"en\":\"Minus dolor molestiae autem saepe vel porro laudantium. Omnis ut illo reiciendis necessitatibus omnis. Et eligendi dolor suscipit quam rerum.\",\"ar\":\"Maxime beatae distinctio velit. Esse dolores id assumenda et sit tenetur neque. Quae eum inventore accusamus in ipsam. Fugit eius voluptatem aut.\"}', '4.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(5, '{\"en\":\"suscipit\",\"ar\":\"aut\"}', '{\"en\":\"Optio quis ut aspernatur blanditiis. Nulla modi est consequatur quia explicabo. Dolor illum doloribus quas in cum. Et voluptatum eos voluptatem facilis temporibus eum sed. Mollitia nostrum quia ipsa nostrum minima.\",\"ar\":\"Enim expedita corporis ut eum qui eius. Nemo incidunt consequatur eveniet nemo doloribus et et. Magnam necessitatibus porro sint. Nemo nihil consequatur accusamus optio id aut.\"}', '5.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(6, '{\"en\":\"dolorem\",\"ar\":\"sit\"}', '{\"en\":\"Dolor asperiores veritatis reiciendis accusantium. Atque ut porro ex itaque in. Excepturi iure temporibus ut ab corrupti impedit. Est veritatis est molestiae qui unde dolores repellendus.\",\"ar\":\"Maxime aliquam enim veniam. Eaque maiores beatae voluptatem commodi. Tempore numquam voluptatem in architecto vel suscipit.\"}', '6.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(7, '{\"en\":\"optio\",\"ar\":\"quis\"}', '{\"en\":\"Et eos quis quod nostrum. Esse cum qui repellat. Quam qui voluptatibus in repellat nihil vero aliquam. In aperiam qui ea nostrum numquam.\",\"ar\":\"Laboriosam neque error rerum consequatur dolorum perspiciatis tempora. Debitis omnis alias voluptates illo inventore quia. Quas pariatur incidunt sapiente doloremque consequatur.\"}', '7.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(8, '{\"en\":\"consequatur\",\"ar\":\"ullam\"}', '{\"en\":\"Accusantium cum veritatis deleniti. Modi nam delectus sint est. Sunt suscipit aut dolorum sed et hic.\",\"ar\":\"Quod maiores aliquam maxime. Ut rem tempora ad quia mollitia quas quasi.\"}', '8.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(9, '{\"en\":\"et\",\"ar\":\"vero\"}', '{\"en\":\"Ipsa laudantium provident quis quisquam sequi consequatur veniam. Consectetur quia ut recusandae est culpa. Dolor alias sint ut veniam ea quam neque.\",\"ar\":\"Enim reiciendis iure voluptas eum odit autem et. Dolores qui adipisci vero totam. Inventore ipsum enim nisi non nesciunt assumenda eos. Officia voluptatibus placeat vel molestias impedit fugit.\"}', '9.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(10, '{\"en\":\"nulla\",\"ar\":\"consectetur\"}', '{\"en\":\"Laborum pariatur minima voluptas voluptatum odio ullam. Exercitationem perspiciatis in dolores est maxime molestiae temporibus. At asperiores aspernatur quisquam facere non id. Cum voluptas molestiae amet omnis.\",\"ar\":\"Fuga cumque dolor quis est eaque perspiciatis quis. Facere repudiandae repudiandae velit quod sit itaque. Necessitatibus modi maiores deserunt est consectetur aut.\"}', '10.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(11, '{\"en\":\"nulla\",\"ar\":\"omnis\"}', '{\"en\":\"Illum quas a velit totam dolor sunt maiores. Sed dicta molestiae dicta est. Magnam voluptatem nulla est nobis.\",\"ar\":\"Consequatur iure dolor distinctio quia dolores aliquam in. Illum ut aut reiciendis est consectetur enim.\"}', '11.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(12, '{\"en\":\"quas\",\"ar\":\"velit\"}', '{\"en\":\"Ex facilis ipsa rem sunt ut provident numquam. Impedit accusantium ad quia voluptas. Ut corporis inventore autem dolore quasi et ad.\",\"ar\":\"Rerum maiores qui doloremque maiores eveniet id autem. Similique beatae mollitia repellendus harum nisi et. Ut explicabo maxime cum. Eveniet unde perspiciatis nemo impedit quia consequuntur ipsum.\"}', '12.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(13, '{\"en\":\"consectetur\",\"ar\":\"pariatur\"}', '{\"en\":\"Qui aut blanditiis autem voluptatem magnam soluta. Et ullam ullam vel voluptas minus quia praesentium. Nihil quaerat et aut quas. Neque quia deleniti architecto omnis laudantium ullam.\",\"ar\":\"Ea asperiores ducimus ipsa. Fugiat ut ducimus expedita laudantium. Possimus hic blanditiis ut est fugit alias recusandae.\"}', '13.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(14, '{\"en\":\"delectus\",\"ar\":\"quibusdam\"}', '{\"en\":\"Beatae temporibus nesciunt debitis voluptas non dolores non commodi. Voluptatem nihil dolorum exercitationem dicta. Ad necessitatibus ut officiis ut numquam dolorem.\",\"ar\":\"Voluptas dolorum dignissimos fuga aut rerum accusantium. Et accusantium autem quia veritatis consequatur aut praesentium omnis. Rerum voluptatem officia ea recusandae doloribus. Voluptas et sint perferendis ea nemo iusto.\"}', '14.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(15, '{\"en\":\"hic\",\"ar\":\"velit\"}', '{\"en\":\"Corrupti id ipsam nisi debitis earum. Non iure quam officiis eum et voluptatem sit. Rerum est aut minima fugiat minima voluptatem iste. Porro consequatur rerum quas occaecati.\",\"ar\":\"Tempore sit culpa voluptas quos. Amet non et voluptate sit. Rerum maiores aut dolorem dolorem. Totam quis non deserunt dicta placeat.\"}', '15.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(16, '{\"en\":\"ex\",\"ar\":\"aut\"}', '{\"en\":\"Corporis consectetur est officiis sit dolor neque ut. Nihil aut et aperiam et quasi. Reprehenderit eum voluptatem veritatis et esse saepe.\",\"ar\":\"Non similique quaerat et voluptatum ut. Exercitationem accusamus non animi praesentium nihil modi. Voluptatem esse ut architecto deleniti. Ipsum culpa nostrum et rem deserunt sunt.\"}', '16.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(17, '{\"en\":\"voluptatem\",\"ar\":\"ipsam\"}', '{\"en\":\"Corporis sit modi numquam inventore iste. Expedita fugiat unde et. Sint eius id nisi.\",\"ar\":\"Ut animi dolor laboriosam est aut cumque. Dolores sed beatae excepturi in omnis laborum eius. Commodi in commodi perspiciatis et autem velit ipsa.\"}', '17.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(18, '{\"en\":\"voluptatem\",\"ar\":\"est\"}', '{\"en\":\"Tenetur alias accusamus a aut quas quae. Amet quo explicabo rerum itaque. Alias autem et voluptates. Provident quo et vel est expedita et quaerat.\",\"ar\":\"Commodi eos dicta optio excepturi hic. Ducimus totam est reprehenderit et. Corporis et tenetur atque pariatur quas et.\"}', '18.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(19, '{\"en\":\"quis\",\"ar\":\"omnis\"}', '{\"en\":\"Sunt ut animi debitis deserunt iste. Repudiandae est quo vero nostrum quis sint qui.\",\"ar\":\"Repudiandae odio maxime qui dolorem assumenda maxime. Alias placeat consequuntur rerum quia aut nihil. Autem rerum cupiditate et est qui. Voluptas natus distinctio ex voluptas.\"}', '19.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(20, '{\"en\":\"dolores\",\"ar\":\"qui\"}', '{\"en\":\"Fugit facilis ipsam consectetur quibusdam quia ex sit. Eaque soluta cumque et et tenetur. Aut cumque quia animi.\",\"ar\":\"Impedit est quo itaque earum placeat. Qui provident nihil tempora ad placeat aut molestiae. Dolorum et placeat et cupiditate laudantium occaecati.\"}', '20.png', '2024-08-29 17:41:28', '2024-08-29 17:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `total_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 4925, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(2, 1, 444, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(3, 1, 7056, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(4, 1, 5846, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(5, 1, 6397, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(6, 1, 3338, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(7, 1, 4466, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(8, 1, 8180, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(9, 1, 3601, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(10, 1, 8279, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(11, 1, 5713, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(12, 1, 8961, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(13, 1, 8811, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(14, 1, 9865, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(15, 1, 498, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(16, 1, 7355, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(17, 1, 3255, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(18, 1, 7559, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(19, 1, 4838, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(20, 1, 4693, '2024-08-29 17:41:28', '2024-08-29 17:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE IF NOT EXISTS `cart_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  `addition_quantity` int DEFAULT NULL,
  `total_addition_price` double DEFAULT NULL,
  `total` double NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `cart_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_items_product_id_foreign` (`product_id`),
  KEY `cart_items_cart_id_foreign` (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `quantity`, `price`, `addition_quantity`, `total_addition_price`, `total`, `product_id`, `cart_id`, `created_at`, `updated_at`) VALUES
(1, 5, 4149, 2, 4603, 710, 7, 3, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(2, 2, 2341, 2, 2862, 8412, 20, 5, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(3, 5, 7081, 8, 3019, 6575, 15, 8, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(4, 4, 5047, 1, 795, 6317, 15, 7, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(5, 9, 6214, 6, 1891, 2539, 4, 4, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(6, 6, 2828, 2, 1322, 6701, 3, 6, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(7, 2, 2424, 3, 6510, 7871, 14, 2, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(8, 10, 8544, 5, 1831, 4495, 15, 8, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(9, 1, 6152, 10, 275, 2569, 14, 5, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(10, 8, 5756, 9, 9765, 8821, 13, 9, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(11, 3, 5742, 10, 1402, 8673, 20, 9, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(12, 1, 6417, 1, 6609, 6503, 4, 9, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(13, 5, 4170, 7, 4649, 2893, 6, 4, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(14, 8, 5282, 1, 3154, 5877, 19, 6, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(15, 2, 7737, 9, 501, 7915, 11, 6, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(16, 6, 8562, 6, 8315, 8243, 2, 6, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(17, 1, 4067, 5, 6220, 3743, 4, 6, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(18, 4, 9746, 3, 7166, 5887, 5, 9, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(19, 8, 498, 7, 5580, 9919, 7, 2, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(20, 8, 6027, 6, 2873, 1833, 5, 9, '2024-08-29 17:41:28', '2024-08-29 17:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `img`, `active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Split Air Conditioner\",\"ar\":\"\\u0645\\u0643\\u064a\\u0641 \\u0627\\u0633\\u0628\\u0644\\u062a\"}', '{\"en\":\"Description for \\u0645\\u0643\\u064a\\u0641 \\u0627\\u0633\\u0628\\u0644\\u062a in English.\",\"ar\":\"\\u0648\\u0635\\u0641 \\u0644\\u0640 \\u0645\\u0643\\u064a\\u0641 \\u0627\\u0633\\u0628\\u0644\\u062a \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629.\"}', '1.png', 1, NULL, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(2, '{\"en\":\"Package Air Conditioner\",\"ar\":\"\\u0645\\u0643\\u064a\\u0641 \\u0628\\u0627\\u0643\\u064a\\u062c\"}', '{\"en\":\"Description for \\u0645\\u0643\\u064a\\u0641 \\u0628\\u0627\\u0643\\u064a\\u062c in English.\",\"ar\":\"\\u0648\\u0635\\u0641 \\u0644\\u0640 \\u0645\\u0643\\u064a\\u0641 \\u0628\\u0627\\u0643\\u064a\\u062c \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629.\"}', '2.png', 1, NULL, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(3, '{\"en\":\"Floor-standing Air Conditioner\",\"ar\":\"\\u0645\\u0643\\u064a\\u0641 \\u062f\\u0648\\u0644\\u0627\\u0628\\u064a\"}', '{\"en\":\"Description for \\u0645\\u0643\\u064a\\u0641 \\u062f\\u0648\\u0644\\u0627\\u0628\\u064a in English.\",\"ar\":\"\\u0648\\u0635\\u0641 \\u0644\\u0640 \\u0645\\u0643\\u064a\\u0641 \\u062f\\u0648\\u0644\\u0627\\u0628\\u064a \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629.\"}', '3.png', 1, NULL, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(4, '{\"en\":\"Concealed Air Conditioner\",\"ar\":\"\\u0645\\u0643\\u064a\\u0641 \\u0645\\u062e\\u0641\\u064a\"}', '{\"en\":\"Description for \\u0645\\u0643\\u064a\\u0641 \\u0645\\u062e\\u0641\\u064a in English.\",\"ar\":\"\\u0648\\u0635\\u0641 \\u0644\\u0640 \\u0645\\u0643\\u064a\\u0641 \\u0645\\u062e\\u0641\\u064a \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629.\"}', '4.png', 1, NULL, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(5, '{\"en\":\"Cassette Air Conditioner\",\"ar\":\"\\u0645\\u0643\\u064a\\u0641 \\u0643\\u0627\\u0633\\u064a\\u062a\"}', '{\"en\":\"Description for \\u0645\\u0643\\u064a\\u0641 \\u0643\\u0627\\u0633\\u064a\\u062a in English.\",\"ar\":\"\\u0648\\u0635\\u0641 \\u0644\\u0640 \\u0645\\u0643\\u064a\\u0641 \\u0643\\u0627\\u0633\\u064a\\u062a \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629.\"}', '5.png', 1, NULL, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(6, '{\"en\":\"Wall-mounted Air Conditioner\",\"ar\":\"\\u0645\\u0643\\u064a\\u0641 \\u062c\\u062f\\u0627\\u0631\\u064a\"}', '{\"en\":\"Description for \\u0645\\u0643\\u064a\\u0641 \\u062c\\u062f\\u0627\\u0631\\u064a in English.\",\"ar\":\"\\u0648\\u0635\\u0641 \\u0644\\u0640 \\u0645\\u0643\\u064a\\u0641 \\u062c\\u062f\\u0627\\u0631\\u064a \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629.\"}', '6.png', 1, NULL, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(7, '{\"en\":\"Aluminum Air Conditioning Ducts\",\"ar\":\"\\u0641\\u062a\\u062d\\u0627\\u062a \\u0627\\u0644\\u062a\\u0643\\u064a\\u064a\\u0641 \\u0627\\u0644\\u0623\\u0644\\u0648\\u0645\\u0646\\u064a\\u0648\\u0645\"}', '{\"en\":\"Description for \\u0641\\u062a\\u062d\\u0627\\u062a \\u0627\\u0644\\u062a\\u0643\\u064a\\u064a\\u0641 \\u0627\\u0644\\u0623\\u0644\\u0648\\u0645\\u0646\\u064a\\u0648\\u0645 in English.\",\"ar\":\"\\u0648\\u0635\\u0641 \\u0644\\u0640 \\u0641\\u062a\\u062d\\u0627\\u062a \\u0627\\u0644\\u062a\\u0643\\u064a\\u064a\\u0641 \\u0627\\u0644\\u0623\\u0644\\u0648\\u0645\\u0646\\u064a\\u0648\\u0645 \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629.\"}', '7.png', 1, NULL, '2024-08-29 17:41:28', '2024-08-29 17:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `discount` double NOT NULL DEFAULT '1',
  `min_order` double NOT NULL DEFAULT '1',
  `max_discount` double NOT NULL DEFAULT '1',
  `user_limit` int NOT NULL DEFAULT '0',
  `use_limit` int NOT NULL DEFAULT '0',
  `use_count` int NOT NULL DEFAULT '0',
  `date_start` timestamp NULL DEFAULT NULL,
  `date_expire` timestamp NULL DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `description`, `code`, `type`, `discount`, `min_order`, `max_discount`, `user_limit`, `use_limit`, `use_count`, `date_start`, `date_expire`, `active`, `created_at`, `updated_at`) VALUES
(1, 'distinctio', NULL, 'debitis', 'percentage', 74, 77, 74, 79, 42, 80, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(2, 'officia', NULL, 'aliquam', 'percentage', 74, 80, 36, 30, 93, 62, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(3, 'optio', NULL, 'vel', 'percentage', 78, 42, 84, 53, 44, 78, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(4, 'sint', NULL, 'nemo', 'percentage', 72, 5, 27, 57, 92, 19, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(5, 'temporibus', NULL, 'dolore', 'percentage', 5, 68, 96, 4, 13, 94, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(6, 'ipsam', NULL, 'deserunt', 'percentage', 49, 17, 60, 12, 8, 95, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(7, 'dolorum', NULL, 'ut', 'percentage', 53, 8, 8, 17, 45, 32, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(8, 'accusamus', NULL, 'quia', 'percentage', 60, 11, 21, 24, 78, 41, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(9, 'dignissimos', NULL, 'numquam', 'percentage', 19, 40, 72, 94, 48, 47, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(10, 'id', NULL, 'sint', 'percentage', 75, 52, 9, 84, 93, 91, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(11, 'pariatur', NULL, 'nihil', 'percentage', 74, 68, 2, 35, 16, 91, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(12, 'rerum', NULL, 'cum', 'percentage', 61, 15, 82, 42, 59, 24, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(13, 'non', NULL, 'earum', 'percentage', 43, 39, 65, 38, 19, 13, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(14, 'omnis', NULL, 'beatae', 'percentage', 19, 44, 2, 92, 19, 9, NULL, NULL, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(15, 'facilis', NULL, 'consequatur', 'percentage', 22, 66, 2, 16, 64, 65, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(16, 'odit', NULL, 'corporis', 'percentage', 95, 15, 95, 74, 13, 55, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(17, 'maxime', NULL, 'voluptate', 'percentage', 5, 85, 15, 29, 15, 98, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(18, 'voluptatem', NULL, 'perspiciatis', 'percentage', 76, 91, 64, 45, 6, 10, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(19, 'magnam', NULL, 'fugiat', 'percentage', 91, 10, 28, 30, 100, 87, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(20, 'nesciunt', NULL, 'labore', 'percentage', 38, 57, 31, 76, 95, 37, NULL, NULL, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favorites_product_id_foreign` (`product_id`),
  KEY `favorites_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 17, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(2, 5, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(3, 3, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(4, 13, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(5, 3, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(6, 6, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(7, 18, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(8, 10, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(9, 5, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(10, 10, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(11, 2, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(12, 4, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(13, 9, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(14, 8, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(15, 8, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(16, 3, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(17, 16, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(18, 11, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(19, 19, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(20, 12, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `active`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '1.png', 1, 21, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(2, '2.png', 1, 22, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(3, '3.png', 1, 23, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(4, '4.png', 1, 24, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(5, '5.png', 1, 25, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(6, '6.png', 1, 26, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(7, '7.png', 1, 27, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(8, '8.png', 1, 28, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(9, '9.png', 1, 29, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(10, '10.png', 1, 30, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(11, '11.png', 1, 31, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(12, '12.png', 1, 32, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(13, '13.png', 1, 33, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(14, '14.png', 1, 34, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(15, '15.png', 1, 35, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(16, '16.png', 1, 36, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(17, '17.png', 1, 37, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(18, '18.png', 1, 38, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(19, '19.png', 1, 39, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(20, '20.png', 1, 40, '2024-08-29 17:41:29', '2024-08-29 17:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_05_11_000000_create_otps_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_08_24_195818_create_categories_table', 1),
(7, '2024_08_24_200036_create_brands_table', 1),
(8, '2024_08_24_200136_create_products_table', 1),
(9, '2024_08_24_201150_create_additions_table', 1),
(10, '2024_08_24_201312_create_product_addition_table', 1),
(11, '2024_08_24_201325_create_product_category_table', 1),
(12, '2024_08_24_203057_create_rates_table', 1),
(13, '2024_08_24_203314_create_favorites_table', 1),
(14, '2024_08_24_203520_create_payments_table', 1),
(15, '2024_08_24_203553_create_carts_table', 1),
(16, '2024_08_24_203602_create_cart_items_table', 1),
(17, '2024_08_24_203610_create_coupons_table', 1),
(18, '2024_08_24_203620_create_orders_table', 1),
(19, '2024_08_24_203629_create_order_items_table', 1),
(20, '2024_08_24_210132_create_cities_table', 1),
(21, '2024_08_24_211827_create_addresses_table', 1),
(22, '2024_08_24_213702_create_shippings_table', 1),
(23, '2024_08_24_215252_create_user_product_addition_table', 1),
(24, '2024_08_28_185033_create_images_table', 1),
(25, '2024_08_29_163538_create_price_requests_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `total` double NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `payment_id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_payment_id_foreign` (`payment_id`),
  KEY `orders_coupon_id_foreign` (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total`, `status`, `user_id`, `payment_id`, `coupon_id`, `created_at`, `updated_at`) VALUES
(1, 6243, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(2, 4086, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(3, 6401, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(4, 8312, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(5, 3382, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(6, 1220, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(7, 6159, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(8, 380, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(9, 2928, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(10, 2414, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(11, 8011, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(12, 2580, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(13, 5575, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(14, 825, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(15, 9196, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(16, 6428, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(17, 7335, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(18, 1001, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(19, 3816, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(20, 4232, 'processing', 1, 1, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  `addition_quantity` int DEFAULT NULL,
  `total_addition_price` double DEFAULT NULL,
  `total` double NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_order_id_foreign` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `quantity`, `price`, `addition_quantity`, `total_addition_price`, `total`, `product_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1063, 3, 1979, 6187, 18, 2, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(2, 3, 2609, 9, 8315, 9692, 13, 9, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(3, 6, 5569, 1, 402, 5753, 20, 8, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(4, 4, 3919, 1, 7498, 9354, 3, 7, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(5, 6, 7556, 3, 930, 7421, 5, 4, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(6, 6, 860, 2, 4189, 7680, 17, 3, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(7, 8, 9344, 7, 891, 7361, 8, 7, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(8, 9, 4780, 1, 2946, 4713, 15, 7, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(9, 8, 1492, 9, 2898, 8460, 5, 8, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(10, 10, 8076, 6, 9891, 198, 13, 9, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(11, 5, 8264, 3, 2860, 3860, 12, 6, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(12, 8, 4612, 9, 247, 5841, 5, 5, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(13, 3, 9904, 8, 7447, 8779, 18, 9, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(14, 7, 6410, 8, 9681, 3974, 4, 9, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(15, 2, 711, 8, 7450, 7041, 11, 3, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(16, 2, 1642, 4, 5185, 9505, 4, 3, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(17, 4, 2609, 7, 7707, 3715, 19, 8, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(18, 7, 1328, 6, 1886, 5648, 5, 2, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(19, 10, 8019, 5, 9788, 7601, 5, 2, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(20, 8, 9563, 9, 2990, 425, 9, 4, '2024-08-29 17:41:29', '2024-08-29 17:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

DROP TABLE IF EXISTS `otps`;
CREATE TABLE IF NOT EXISTS `otps` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validity` int NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `otps_id_index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `identifier`, `token`, `validity`, `valid`, `created_at`, `updated_at`) VALUES
(1, 'shahdelmnyar26@gmail.com', '03437', 60, 0, '2024-08-29 17:40:47', '2024-08-29 17:41:13'),
(2, 'shahdelmnyar26@gmail.com', '92865', 60, 0, '2024-08-29 18:30:20', '2024-08-29 18:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('shahdelmnyar26@gmail.com', '92865', '2024-08-29 18:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'card', '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(2, 'cash', '2024-08-29 17:41:28', '2024-08-29 17:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth-token', '5b182674828f81dd5ece0c9e9be525882d0b40af5185ce9abf0c83ff49497a8f', '[\"*\"]', '2024-08-30 08:59:24', NULL, '2024-08-29 17:41:19', '2024-08-30 08:59:24'),
(2, 'App\\Models\\User', 1, 'auth-token', '2652d155e3ebeaa6bfa204d796252be04b8c37ab3b7634b6d0fbb0a101e57df3', '[\"*\"]', NULL, NULL, '2024-08-29 18:29:05', '2024-08-29 18:29:05'),
(3, 'App\\Models\\User', 1, 'auth-token', 'afc1fdbcd8c66073365cbdc80d5855a449acd170811d39d09aefdf0ff1a9c7fb', '[\"*\"]', NULL, NULL, '2024-08-29 18:31:56', '2024-08-29 18:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `price_requests`
--

DROP TABLE IF EXISTS `price_requests`;
CREATE TABLE IF NOT EXISTS `price_requests` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `price_requests_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_requests`
--

INSERT INTO `price_requests` (`id`, `first_name`, `last_name`, `phone`, `email`, `type`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Mariela', 'Strosin', '+13869085353', 'clara.lakin@okeefe.net', 'ea', 'Est sunt aut error est doloribus.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(2, 'Davion', 'Corwin', '+13602595102', 'percy65@gmail.com', 'est', 'Deleniti qui unde beatae sed fuga atque enim atque.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(3, 'Moses', 'Dooley', '830-999-5835', 'schmitt.nicholas@hotmail.com', 'deserunt', 'Eos labore consectetur blanditiis dignissimos at sit.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(4, 'Rebeca', 'Wintheiser', '+1-763-498-5386', 'rosanna23@gmail.com', 'earum', 'Dicta minus ex laborum.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(5, 'Mozelle', 'Cummerata', '1-219-898-6521', 'schultz.lucio@kris.biz', 'ut', 'Provident atque sapiente deserunt itaque perspiciatis.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(6, 'Robb', 'Heaney', '(430) 513-9494', 'otho69@hotmail.com', 'ipsa', 'Hic eligendi fugit inventore quis et.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(7, 'Matilde', 'Thompson', '1-319-738-0157', 'nmuller@hotmail.com', 'blanditiis', 'Deleniti enim blanditiis cupiditate doloribus delectus magni et.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(8, 'Fredrick', 'Reinger', '689.525.6485', 'nova.gerlach@hotmail.com', 'in', 'Fuga aliquam quas at et enim.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(9, 'Dallas', 'Kris', '1-425-797-6462', 'pzboncak@heaney.net', 'rem', 'Aut facere et est eum nisi eos.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(10, 'Israel', 'Jacobi', '504.537.7834', 'marks.hassie@jacobson.com', 'id', 'Sit amet beatae deleniti veritatis illo consectetur saepe.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(11, 'Dan', 'Labadie', '936-499-9141', 'maybell21@stracke.com', 'porro', 'Vero pariatur maiores voluptas dolore.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(12, 'Genoveva', 'Runolfsdottir', '1-731-479-5808', 'woconner@bartoletti.com', 'sit', 'Praesentium dolor iure quas et.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(13, 'Triston', 'Schowalter', '(207) 704-4312', 'krajcik.lucius@luettgen.com', 'veritatis', 'Eos atque laborum rerum quidem minima sit rem.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(14, 'Raven', 'Bartell', '+13524175711', 'janessa.mante@dietrich.com', 'eos', 'Et qui molestiae culpa voluptatem et.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(15, 'Estelle', 'Walker', '341.653.4984', 'rrohan@yahoo.com', 'dolorum', 'Nostrum qui reiciendis distinctio dolor saepe.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(16, 'Kasandra', 'Koepp', '+1-628-745-4620', 'erika.streich@gmail.com', 'aspernatur', 'Quibusdam officiis rem sequi unde.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(17, 'Keeley', 'Gutkowski', '+1-870-564-5958', 'immanuel.strosin@considine.com', 'commodi', 'Sed iste quo sit accusamus quidem et.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(18, 'Sanford', 'Huels', '774.486.0204', 'margarette.langosh@yahoo.com', 'quas', 'Earum rem officiis inventore magnam.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(19, 'Polly', 'Dickinson', '+19809712307', 'akeem.keeling@rippin.com', 'debitis', 'Nesciunt quia debitis recusandae repellendus in.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(20, 'Mallie', 'Roob', '+1-586-517-3924', 'ahirthe@yahoo.com', 'aut', 'Sequi consequatur vitae culpa pariatur.', 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(21, 'shahd', 'elmnyar', '01020658024', 'shahdelmnyar26@gmail.com', 'products', 'test', 1, '2024-08-29 18:23:49', '2024-08-29 18:23:49'),
(22, 'shahd', 'elmnyar', '01020658024', 'shahdelmnyar26@gmail.com', 'products', 'test', 1, '2024-08-29 18:25:12', '2024-08-29 18:25:12'),
(23, 'shahd', 'elmnyar', '01020658024', 'shahdelmnyar26@gmail.com', 'products', 'test', 1, '2024-08-29 18:25:32', '2024-08-29 18:25:32'),
(24, 'shahd', 'elmnyar', '01020658024', 'shahdelmnyar26@gmail.com', 'products', 'test', 1, '2024-08-29 18:25:55', '2024-08-29 18:25:55'),
(25, 'shahd', 'elmnyar', '01020658024', 'shahdelmnyar26@gmail.com', 'products', 'test', 1, '2024-08-29 18:27:30', '2024-08-29 18:27:30'),
(26, 'shahd', 'elmnyar', '01020658024', 'shahdelmnyar26@gmail.com', 'products', 'test', 1, '2024-08-30 07:49:36', '2024-08-30 07:49:36'),
(27, 'shahd', 'elmnyar', '01020658024', 'shahdelmnyar26@gmail.com', 'products', 'test', 1, '2024-08-30 07:52:22', '2024-08-30 07:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `active` tinyint NOT NULL DEFAULT '1',
  `brand_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_brand_id_foreign` (`brand_id`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `discount`, `discount_type`, `active`, `brand_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, '\"{\\\"en\\\":\\\"MaxAir Cassette Unit\\\",\\\"ar\\\":\\\"\\\\u0648\\\\u062d\\\\u062f\\\\u0629 \\\\u0643\\\\u0627\\\\u0633\\\\u064a\\\\u062a MaxAir\\\"}\"', '{\"en\":\"Aperiam illo dolorum quibusdam occaecati cupiditate ratione odit. Quis voluptatem maxime molestiae et fugiat. Aut tempore veritatis facilis dolores.\",\"ar\":\"Consequuntur a et quia consequuntur consequuntur quis et. Repudiandae cupiditate pariatur earum quos nisi asperiores eligendi. Velit fuga molestiae rerum officiis rerum. Accusamus mollitia in minima odio.\"}', 3989, 25, 'percentage', 1, 16, 3, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(2, '\"{\\\"en\\\":\\\"CoolBreeze Split Unit\\\",\\\"ar\\\":\\\"\\\\u0648\\\\u062d\\\\u062f\\\\u0629 \\\\u0627\\\\u0633\\\\u0628\\\\u0644\\\\u062a CoolBreeze\\\"}\"', '{\"en\":\"Iste sapiente est vero possimus. Officia qui fugit magnam illum dolorem officiis. Nihil accusantium animi facilis consectetur cumque architecto sit.\",\"ar\":\"Sint modi ad alias mollitia id totam quis. Illum laborum minima quaerat beatae excepturi. Molestias saepe velit sed excepturi magnam. Voluptas a reiciendis perferendis.\"}', 8039, 59, 'percentage', 1, 15, 5, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(3, '\"{\\\"en\\\":\\\"CoolBreeze Split Unit\\\",\\\"ar\\\":\\\"\\\\u0648\\\\u062d\\\\u062f\\\\u0629 \\\\u0627\\\\u0633\\\\u0628\\\\u0644\\\\u062a CoolBreeze\\\"}\"', '{\"en\":\"Aspernatur exercitationem nostrum laboriosam velit voluptatem atque inventore facilis. Perspiciatis doloremque sit voluptatem quo dicta quibusdam ad et. Accusamus voluptate et excepturi quia aut. Deleniti sit magni dolores sequi.\",\"ar\":\"Enim libero assumenda qui impedit reiciendis quod esse voluptate. Debitis dolore perferendis error quae natus maiores aliquid ipsa. Eos mollitia quisquam est omnis.\"}', 4966, 5, 'percentage', 1, 16, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(4, '\"{\\\"en\\\":\\\"AluDuct Premium\\\",\\\"ar\\\":\\\"\\\\u0641\\\\u062a\\\\u062d\\\\u0627\\\\u062a \\\\u0627\\\\u0644\\\\u062a\\\\u0643\\\\u064a\\\\u064a\\\\u0641 AluDuct Premium\\\"}\"', '{\"en\":\"Iure fugit velit qui et est sint. In nulla quae et praesentium quaerat quo dolorem. Voluptatem ad nobis sint suscipit quia quis. Sapiente ratione quis consectetur non voluptas eveniet reprehenderit.\",\"ar\":\"Reprehenderit odit fuga nemo velit est alias laudantium. Sint dolorem eos assumenda amet. Ducimus animi voluptatem repudiandae voluptatum.\"}', 9088, 70, 'percentage', 1, 15, 6, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(5, '\"{\\\"en\\\":\\\"AluDuct Premium\\\",\\\"ar\\\":\\\"\\\\u0641\\\\u062a\\\\u062d\\\\u0627\\\\u062a \\\\u0627\\\\u0644\\\\u062a\\\\u0643\\\\u064a\\\\u064a\\\\u0641 AluDuct Premium\\\"}\"', '{\"en\":\"Quo delectus qui qui necessitatibus. Eius ducimus et totam in qui.\",\"ar\":\"Culpa eum odit rerum repellendus eveniet ullam. Hic unde similique ipsa aliquam blanditiis aut. In aut culpa doloremque aut quod soluta.\"}', 5713, 85, 'percentage', 1, 4, 7, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(6, '\"{\\\"en\\\":\\\"MegaCool Pack Unit\\\",\\\"ar\\\":\\\"\\\\u0648\\\\u062d\\\\u062f\\\\u0629 \\\\u0628\\\\u0627\\\\u0643\\\\u064a\\\\u062c MegaCool\\\"}\"', '{\"en\":\"Eligendi in nisi consequatur earum. Est fugit molestiae aut est quis pariatur. Rerum nemo ullam qui porro laboriosam tempora iste.\",\"ar\":\"Molestiae eligendi eos eos veniam facere accusamus. Autem ipsa ut maxime ea vitae vel non aut. Facere voluptates consectetur velit quia.\"}', 8497, 6, 'percentage', 1, 5, 7, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(7, '\"{\\\"en\\\":\\\"CassetteChill 360\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u0643\\\\u0627\\\\u0633\\\\u064a\\\\u062a CassetteChill 360\\\"}\"', '{\"en\":\"Ipsum ipsa ut et nulla totam non labore. Eos autem voluptatem asperiores et itaque perferendis.\",\"ar\":\"Quo voluptas qui dicta consequuntur ullam veritatis consectetur. Est repudiandae voluptas sit omnis qui est maxime rerum. Tenetur molestias velit autem assumenda accusamus.\"}', 9900, 100, 'percentage', 1, 15, 3, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(8, '\"{\\\"en\\\":\\\"EcoChill Wall AC\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u062c\\\\u062f\\\\u0627\\\\u0631\\\\u064a EcoChill\\\"}\"', '{\"en\":\"Molestiae fugit ullam eligendi sit architecto autem similique. Modi quo doloremque facere nihil odit facere numquam sed. Ut distinctio vel ut voluptatem. Sed nihil ad soluta fuga nam.\",\"ar\":\"Cumque rerum mollitia ut. Quam et deserunt adipisci omnis quis consequatur. Sunt officiis quibusdam voluptas cum magnam velit.\"}', 4407, 65, 'percentage', 1, 13, 6, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(9, '\"{\\\"en\\\":\\\"EcoChill Wall AC\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u062c\\\\u062f\\\\u0627\\\\u0631\\\\u064a EcoChill\\\"}\"', '{\"en\":\"At sunt nihil odio repudiandae sit. Id nulla commodi rerum vero est aut nulla. Quidem blanditiis nesciunt nostrum aspernatur dolores natus eligendi. Incidunt ducimus rerum et.\",\"ar\":\"Natus dolor doloribus nesciunt quos maxime. Nihil ut ad placeat facilis. Odit quia numquam eveniet nam explicabo minima illo.\"}', 5970, 25, 'percentage', 1, 1, 6, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(10, '\"{\\\"en\\\":\\\"EcoChill Wall AC\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u062c\\\\u062f\\\\u0627\\\\u0631\\\\u064a EcoChill\\\"}\"', '{\"en\":\"Non aut ipsa inventore sed omnis occaecati ullam. Et recusandae dolores magni. Nisi dolor ipsam consequuntur non quia. Laboriosam ut omnis alias aut.\",\"ar\":\"Ut ut occaecati commodi adipisci at. Eos doloremque eveniet sapiente ipsa consectetur. Et ut eos exercitationem facere culpa consequuntur. Velit ut sint eaque soluta.\"}', 1111, 89, 'percentage', 1, 5, 6, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(11, '\"{\\\"en\\\":\\\"EcoChill Wall AC\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u062c\\\\u062f\\\\u0627\\\\u0631\\\\u064a EcoChill\\\"}\"', '{\"en\":\"Et illum nihil expedita voluptatem voluptate. Laboriosam assumenda et illo eaque beatae eos et. Vel in sit accusantium maxime. Libero omnis dolores amet.\",\"ar\":\"Est maxime fugiat officiis qui dolores. Veniam ut sequi molestiae distinctio perferendis aperiam deleniti. Illo iste dicta quidem dolores nihil itaque qui. Sint dolore est minima ut nisi et.\"}', 8201, 28, 'percentage', 1, 2, 7, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(12, '\"{\\\"en\\\":\\\"InvisiCool System\\\",\\\"ar\\\":\\\"\\\\u0646\\\\u0638\\\\u0627\\\\u0645 \\\\u062a\\\\u0643\\\\u064a\\\\u064a\\\\u0641 InvisiCool\\\"}\"', '{\"en\":\"Voluptatum beatae autem officiis nisi nihil voluptate. Est repellendus ipsa suscipit provident.\",\"ar\":\"Ipsum excepturi temporibus rerum illum. Neque deleniti debitis sapiente a architecto occaecati placeat. Ut corporis autem quibusdam eaque voluptatibus officiis.\"}', 9730, 80, 'percentage', 1, 7, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(13, '\"{\\\"en\\\":\\\"FlexiAir Ducts\\\",\\\"ar\\\":\\\"\\\\u0641\\\\u062a\\\\u062d\\\\u0627\\\\u062a FlexiAir\\\"}\"', '{\"en\":\"Ab et cum a rerum nihil autem. A assumenda non sit quaerat provident. Sed et repellat eos laudantium autem.\",\"ar\":\"Sunt qui vel ut expedita. Iste magnam molestias mollitia qui ducimus recusandae aliquid. Quidem atque et autem sunt. Nam cum rem quia ea.\"}', 176, 76, 'percentage', 1, 8, 3, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(14, '\"{\\\"en\\\":\\\"TotalComfort Package AC\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u0628\\\\u0627\\\\u0643\\\\u064a\\\\u062c TotalComfort\\\"}\"', '{\"en\":\"Qui sint ad quidem perspiciatis molestiae qui et. Qui quos voluptatibus consectetur non quia quisquam sunt voluptas.\",\"ar\":\"Et sapiente soluta fugit. Ipsa magni debitis ipsum pariatur numquam sit. Et explicabo ut quia debitis.\"}', 6683, 13, 'percentage', 1, 17, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(15, '\"{\\\"en\\\":\\\"InvisiCool System\\\",\\\"ar\\\":\\\"\\\\u0646\\\\u0638\\\\u0627\\\\u0645 \\\\u062a\\\\u0643\\\\u064a\\\\u064a\\\\u0641 InvisiCool\\\"}\"', '{\"en\":\"Beatae earum illum vero ut ad. Earum eius in beatae tempore adipisci provident. Nobis tempore animi officiis quae. Odit aut voluptas odio id.\",\"ar\":\"Quisquam assumenda ad voluptatem laudantium voluptas ut. Distinctio in qui velit sunt ut accusantium. Iste hic sunt odit omnis impedit quia. Cum aut minus ea aut voluptate voluptatem.\"}', 5915, 71, 'percentage', 1, 3, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(16, '\"{\\\"en\\\":\\\"FlexiAir Ducts\\\",\\\"ar\\\":\\\"\\\\u0641\\\\u062a\\\\u062d\\\\u0627\\\\u062a FlexiAir\\\"}\"', '{\"en\":\"Recusandae voluptates sapiente at porro dolorem dolorum. Voluptas porro omnis labore ea sequi odit non. Repudiandae aut non consequatur et.\",\"ar\":\"Ut itaque sunt minus atque repellat. Velit consequatur in sapiente et et voluptas. Ut est magni rerum quia quis laborum laboriosam qui. Veniam et doloribus vitae quisquam ea animi eum.\"}', 6240, 67, 'percentage', 1, 4, 4, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(17, '\"{\\\"en\\\":\\\"FloorMaster Pro\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u062f\\\\u0648\\\\u0644\\\\u0627\\\\u0628\\\\u064a FloorMaster Pro\\\"}\"', '{\"en\":\"Voluptatem eveniet vel fugit ut ut voluptas. Esse earum velit officiis inventore quo ab eos. Consectetur in eveniet sed quibusdam maiores.\",\"ar\":\"Necessitatibus quisquam et dolorum minus. Ipsam sunt eius corrupti fugit. Esse in molestias culpa tenetur. Dolores harum quo ut est magni animi eveniet.\"}', 1864, 88, 'percentage', 1, 7, 3, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(18, '\"{\\\"en\\\":\\\"AirPro Split AC\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u0627\\\\u0633\\\\u0628\\\\u0644\\\\u062a AirPro\\\"}\"', '{\"en\":\"Saepe velit debitis molestiae beatae deserunt atque tenetur. Praesentium cum quasi non quaerat modi.\",\"ar\":\"Voluptatem magnam dicta saepe mollitia. Non corporis suscipit itaque quas facilis dolorem ipsum. Distinctio perspiciatis maiores suscipit minus consequatur qui.\"}', 5775, 33, 'percentage', 1, 4, 6, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(19, '\"{\\\"en\\\":\\\"CoolMaster Wall AC\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u062c\\\\u062f\\\\u0627\\\\u0631\\\\u064a CoolMaster\\\"}\"', '{\"en\":\"Et eum sit magni magnam facere officia. Hic qui dignissimos ex beatae officia. Qui et fugiat blanditiis odio deserunt ut animi. Aut quibusdam dolores velit.\",\"ar\":\"Delectus quod suscipit illo ipsa molestias sint facilis. Aut ut beatae consequatur fugiat nihil nihil qui. Id beatae ut porro sint. Eligendi eos enim a est nesciunt ut.\"}', 1905, 50, 'percentage', 1, 2, 3, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(20, '\"{\\\"en\\\":\\\"PackCool Elite\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u0628\\\\u0627\\\\u0643\\\\u064a\\\\u062c PackCool Elite\\\"}\"', '{\"en\":\"Numquam est molestiae facilis at rem. Et nihil et sed dolor similique. Nulla ullam sint optio alias eligendi laboriosam distinctio. Debitis optio quo repudiandae non. Sed molestiae aut voluptas aut iste.\",\"ar\":\"Non non impedit debitis ut vel. Nostrum quo qui corporis enim et et. Necessitatibus et voluptatem ut similique excepturi.\"}', 581, 9, 'percentage', 1, 4, 3, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(21, '\"{\\\"en\\\":\\\"FlexiAir Ducts\\\",\\\"ar\\\":\\\"\\\\u0641\\\\u062a\\\\u062d\\\\u0627\\\\u062a FlexiAir\\\"}\"', '{\"en\":\"Totam et praesentium et expedita autem consequatur. Natus similique culpa assumenda nulla repellendus iusto. Hic veritatis odio incidunt aut. Ut error aliquam nihil nemo maxime.\",\"ar\":\"Officiis quaerat officia ab assumenda. Fuga minima aut cupiditate et rerum optio. Quaerat facere optio quisquam iste voluptatum assumenda sed.\"}', 6631, 6, 'percentage', 1, 17, 4, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(22, '\"{\\\"en\\\":\\\"FloorMaster Pro\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u062f\\\\u0648\\\\u0644\\\\u0627\\\\u0628\\\\u064a FloorMaster Pro\\\"}\"', '{\"en\":\"Et ducimus non quis enim. Eum repudiandae libero aspernatur in officiis facere corrupti repellendus. Molestiae et illum quia et cupiditate velit aut. Dolor numquam unde adipisci corporis aliquam. Sit consequuntur ducimus consectetur et voluptatem.\",\"ar\":\"Vitae quasi dolorem eaque. Reiciendis dolorem incidunt quaerat aut ad omnis quis vel. Est assumenda amet enim repellat debitis.\"}', 3748, 35, 'percentage', 1, 5, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(23, '\"{\\\"en\\\":\\\"InvisiCool System\\\",\\\"ar\\\":\\\"\\\\u0646\\\\u0638\\\\u0627\\\\u0645 \\\\u062a\\\\u0643\\\\u064a\\\\u064a\\\\u0641 InvisiCool\\\"}\"', '{\"en\":\"Enim blanditiis in doloremque nihil corrupti. Excepturi ea ut veniam. Sit officiis voluptatem dolorem quaerat.\",\"ar\":\"Dolorem vero quo qui ullam. Tenetur dolorem modi ut aut eos eveniet. Nesciunt commodi tenetur est quis veritatis dignissimos aliquid quaerat.\"}', 7960, 3, 'percentage', 1, 5, 7, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(24, '\"{\\\"en\\\":\\\"FloorMaster Pro\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u062f\\\\u0648\\\\u0644\\\\u0627\\\\u0628\\\\u064a FloorMaster Pro\\\"}\"', '{\"en\":\"Quis praesentium nobis ut quam porro sunt totam. Est hic facere ipsam nesciunt eum ut. Repellendus animi aspernatur rerum eos.\",\"ar\":\"Rerum debitis quos et sed. Libero corporis architecto aut repellat qui tempora. Ullam culpa natus qui qui sit est ullam saepe.\"}', 3655, 14, 'percentage', 1, 8, 5, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(25, '\"{\\\"en\\\":\\\"PowerCool Floor Unit\\\",\\\"ar\\\":\\\"\\\\u0648\\\\u062d\\\\u062f\\\\u0629 \\\\u062f\\\\u0648\\\\u0644\\\\u0627\\\\u0628\\\\u064a PowerCool\\\"}\"', '{\"en\":\"Provident sequi sed dolores suscipit asperiores neque quibusdam unde. Aliquam occaecati fuga in placeat aut quaerat. Est et accusamus aut ipsa. Qui quod ea omnis voluptatum in saepe aperiam.\",\"ar\":\"Maxime blanditiis quasi recusandae. Numquam similique sed fugit molestiae sapiente. Quia sapiente nihil et. Fugiat aut quibusdam recusandae at sed ut nihil.\"}', 3006, 84, 'percentage', 1, 12, 7, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(26, '\"{\\\"en\\\":\\\"UltraCool Wall Unit\\\",\\\"ar\\\":\\\"\\\\u0648\\\\u062d\\\\u062f\\\\u0629 \\\\u062c\\\\u062f\\\\u0627\\\\u0631\\\\u064a UltraCool\\\"}\"', '{\"en\":\"Quam autem nostrum voluptatem quas. Ab voluptatum aliquam corrupti commodi ipsam exercitationem dolore. Libero quo eligendi enim blanditiis. Ea voluptas est magnam et eum sit.\",\"ar\":\"Aut magnam assumenda hic optio et. Quasi excepturi consectetur et esse ipsa. Ullam labore impedit sit ut qui eveniet.\"}', 9992, 89, 'percentage', 1, 8, 4, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(27, '\"{\\\"en\\\":\\\"SplitCool 5000\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u0627\\\\u0633\\\\u0628\\\\u0644\\\\u062a SplitCool 5000\\\"}\"', '{\"en\":\"Doloribus quia et qui quas. Est sit quis temporibus sit quasi. Sit sint et ab recusandae est nulla.\",\"ar\":\"Consequatur laborum alias sed quae sequi. Esse adipisci eos consequatur facilis. Et rem dolores non ut ullam veritatis.\"}', 5644, 95, 'percentage', 1, 11, 4, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(28, '\"{\\\"en\\\":\\\"UltraCool Wall Unit\\\",\\\"ar\\\":\\\"\\\\u0648\\\\u062d\\\\u062f\\\\u0629 \\\\u062c\\\\u062f\\\\u0627\\\\u0631\\\\u064a UltraCool\\\"}\"', '{\"en\":\"Iste et incidunt blanditiis molestias veritatis aut repudiandae. Voluptatibus accusantium vitae minus quidem. Aliquam et ut omnis.\",\"ar\":\"Excepturi molestiae voluptatibus aut illo. Ut ad perferendis dicta aliquam eos tempora. Ut quaerat fuga ab rerum praesentium facere.\"}', 2885, 22, 'percentage', 1, 15, 5, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(29, '\"{\\\"en\\\":\\\"PowerCool Floor Unit\\\",\\\"ar\\\":\\\"\\\\u0648\\\\u062d\\\\u062f\\\\u0629 \\\\u062f\\\\u0648\\\\u0644\\\\u0627\\\\u0628\\\\u064a PowerCool\\\"}\"', '{\"en\":\"Similique eos ipsa nihil ut suscipit. Sunt enim possimus et eum. Nisi mollitia cupiditate sed sit ad quidem et. Omnis et adipisci et.\",\"ar\":\"Facere officia sit error cum dolorem eligendi sit ut. Maiores laboriosam voluptatem vitae quia architecto vel ratione. Est voluptatum et ut quia similique.\"}', 6305, 97, 'percentage', 1, 13, 5, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(30, '\"{\\\"en\\\":\\\"CoolMaster Wall AC\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u062c\\\\u062f\\\\u0627\\\\u0631\\\\u064a CoolMaster\\\"}\"', '{\"en\":\"Praesentium excepturi aspernatur debitis doloribus. Iusto in consequuntur dolorum consequuntur. Voluptas voluptate debitis voluptatum qui ab. Delectus esse omnis magni nemo natus voluptatem ipsa voluptatum.\",\"ar\":\"Beatae ut rem rerum consequatur deleniti nam. Voluptatem harum culpa officiis quasi voluptatum sit quos. Eaque cupiditate non delectus id quo id animi.\"}', 9815, 2, 'percentage', 1, 13, 7, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(31, '\"{\\\"en\\\":\\\"CoolMaster Wall AC\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u062c\\\\u062f\\\\u0627\\\\u0631\\\\u064a CoolMaster\\\"}\"', '{\"en\":\"Quisquam velit asperiores ratione nostrum. Quidem commodi eveniet quis aliquam molestiae.\",\"ar\":\"Aspernatur dolores eveniet enim tempora ut corporis. Provident cum et aspernatur. Voluptates tenetur asperiores deserunt dignissimos.\"}', 5227, 94, 'percentage', 1, 3, 6, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(32, '\"{\\\"en\\\":\\\"SplitCool 5000\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u0627\\\\u0633\\\\u0628\\\\u0644\\\\u062a SplitCool 5000\\\"}\"', '{\"en\":\"Sit sed beatae quia magni neque doloribus hic. Et laborum distinctio et. Est ut maxime commodi harum dolorem.\",\"ar\":\"Illo nesciunt excepturi qui quia sed. Nostrum ea qui neque. Harum quod natus dolores repellat repellat dolor. Nostrum impedit hic et deserunt doloremque illum.\"}', 2317, 75, 'percentage', 1, 17, 7, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(33, '\"{\\\"en\\\":\\\"AluDuct Premium\\\",\\\"ar\\\":\\\"\\\\u0641\\\\u062a\\\\u062d\\\\u0627\\\\u062a \\\\u0627\\\\u0644\\\\u062a\\\\u0643\\\\u064a\\\\u064a\\\\u0641 AluDuct Premium\\\"}\"', '{\"en\":\"Ut quidem iste saepe. Et non consequatur ut. Tempora nisi quasi aperiam voluptatem illum.\",\"ar\":\"Quos aut veritatis quos velit facere velit. Saepe dolores vel officiis et et ipsa consequatur. Magnam cum error qui omnis commodi quisquam qui ea.\"}', 4370, 24, 'percentage', 1, 20, 2, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(34, '\"{\\\"en\\\":\\\"Hideaway AC Unit\\\",\\\"ar\\\":\\\"\\\\u0648\\\\u062d\\\\u062f\\\\u0629 \\\\u062a\\\\u0643\\\\u064a\\\\u064a\\\\u0641 Hideaway\\\"}\"', '{\"en\":\"Ut dolor ipsum consectetur tempore nam. Magni voluptates qui provident eius sit similique nemo. Aliquid non sed maxime.\",\"ar\":\"Non quis enim ducimus harum qui. Saepe quisquam error in dolor eum quis repellat.\"}', 7211, 71, 'percentage', 1, 15, 6, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(35, '\"{\\\"en\\\":\\\"CoolBreeze Split Unit\\\",\\\"ar\\\":\\\"\\\\u0648\\\\u062d\\\\u062f\\\\u0629 \\\\u0627\\\\u0633\\\\u0628\\\\u0644\\\\u062a CoolBreeze\\\"}\"', '{\"en\":\"Libero omnis aut cumque vero. Ullam et consequatur voluptates et nihil. Voluptas nihil soluta modi laboriosam repellendus.\",\"ar\":\"Exercitationem voluptate omnis consequatur est et dolor. Culpa excepturi omnis quaerat molestias reprehenderit excepturi. Repellat cum eum ut voluptatem quia repudiandae recusandae.\"}', 7938, 75, 'percentage', 1, 15, 4, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(36, '\"{\\\"en\\\":\\\"FloorMaster Pro\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u062f\\\\u0648\\\\u0644\\\\u0627\\\\u0628\\\\u064a FloorMaster Pro\\\"}\"', '{\"en\":\"Consequatur perspiciatis beatae dolores aut et neque. Veniam et sed laudantium ut eius. Voluptate consequuntur omnis eveniet aperiam.\",\"ar\":\"Praesentium laborum dolorem officia alias qui voluptate dolores. Aperiam sed fuga laborum veritatis. Illum dignissimos optio asperiores error ut.\"}', 2322, 26, 'percentage', 1, 2, 6, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(37, '\"{\\\"en\\\":\\\"CoolMaster Wall AC\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u062c\\\\u062f\\\\u0627\\\\u0631\\\\u064a CoolMaster\\\"}\"', '{\"en\":\"Repudiandae quisquam vitae corporis nam velit. Aperiam et quis quia nulla est sequi animi.\",\"ar\":\"Dolor quis beatae dignissimos quae et. Saepe qui labore sed aut dolor consequatur omnis. Fugiat numquam sunt cum optio maxime pariatur molestiae.\"}', 8334, 10, 'percentage', 1, 20, 1, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(38, '\"{\\\"en\\\":\\\"EliteFloor AC\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u062f\\\\u0648\\\\u0644\\\\u0627\\\\u0628\\\\u064a EliteFloor\\\"}\"', '{\"en\":\"Autem eius illum aut numquam. Deserunt ut hic enim ad libero. Blanditiis quo rerum reprehenderit voluptatem quas. Enim corporis commodi sapiente.\",\"ar\":\"Doloribus unde doloremque libero iste labore. Voluptatem dolor sed ipsa et. Provident aliquam in rem quod eum amet nihil.\"}', 5438, 23, 'percentage', 1, 18, 7, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(39, '\"{\\\"en\\\":\\\"ProCool Cassette AC\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0643\\\\u064a\\\\u0641 \\\\u0643\\\\u0627\\\\u0633\\\\u064a\\\\u062a ProCool\\\"}\"', '{\"en\":\"Et ipsum quasi quia ex eligendi voluptatem est pariatur. Modi itaque et atque et. Mollitia voluptatibus necessitatibus ipsa ad officia distinctio.\",\"ar\":\"Quis ipsam et et dolorem mollitia odio. Aperiam ab alias harum vel quas nesciunt. Facilis saepe necessitatibus cupiditate ex ad. Quis dolorem minus quisquam id.\"}', 9553, 33, 'percentage', 1, 6, 6, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(40, '\"{\\\"en\\\":\\\"AluFlow Air Ducts\\\",\\\"ar\\\":\\\"\\\\u0641\\\\u062a\\\\u062d\\\\u0627\\\\u062a \\\\u0627\\\\u0644\\\\u062a\\\\u0643\\\\u064a\\\\u064a\\\\u0641 AluFlow\\\"}\"', '{\"en\":\"Molestiae officiis assumenda incidunt alias omnis ipsa autem. Non voluptatum rem minima.\",\"ar\":\"Pariatur odit placeat debitis eaque architecto. Et iure numquam reprehenderit velit asperiores. Quia ratione earum sed incidunt sint in. Consequatur magnam voluptate occaecati.\"}', 2200, 33, 'percentage', 1, 7, 4, '2024-08-29 17:41:29', '2024-08-29 17:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_addition`
--

DROP TABLE IF EXISTS `product_addition`;
CREATE TABLE IF NOT EXISTS `product_addition` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `addition_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_addition_product_id_foreign` (`product_id`),
  KEY `product_addition_addition_id_foreign` (`addition_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_addition`
--

INSERT INTO `product_addition` (`id`, `product_id`, `addition_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_category_product_id_foreign` (`product_id`),
  KEY `product_category_category_id_foreign` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
CREATE TABLE IF NOT EXISTS `rates` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `rate` double NOT NULL DEFAULT '1',
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `product_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rates_product_id_foreign` (`product_id`),
  KEY `rates_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `rate`, `comment`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 4, 'Neque eveniet id rem delectus amet officia omnis excepturi.', 5, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(2, 3, 'Ea magni ex eveniet delectus.', 1, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(3, 3, 'Quas quam rem veniam dolores.', 3, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(4, 4, 'Illo sapiente sunt cupiditate mollitia iste totam.', 9, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(5, 5, 'Et est est voluptates porro explicabo rem a.', 14, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(6, 1, 'Necessitatibus recusandae quis sit et.', 20, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(7, 1, 'Ipsa atque officia voluptatem aut mollitia corrupti qui.', 19, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(8, 5, 'Sint iure ab eos sunt esse.', 4, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(9, 5, 'Vitae ut nisi numquam omnis.', 12, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(10, 2, 'Velit sapiente laudantium velit ut a error tempora quia.', 7, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(11, 1, 'Facilis reiciendis omnis consequuntur hic.', 19, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(12, 2, 'Sunt quaerat neque ab deserunt est dolorem sint.', 6, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(13, 5, 'Est sed quos nisi tempore rerum.', 11, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(14, 4, 'Ut ex et eum architecto error.', 7, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(15, 3, 'Ex vero tenetur ipsum distinctio sed.', 3, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(16, 5, 'Dolore qui temporibus qui quibusdam repellendus repellat libero.', 12, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(17, 5, 'Qui qui reiciendis dolor et voluptatem velit assumenda qui.', 11, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(18, 5, 'Nulla ut nihil assumenda in quod atque ex.', 7, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(19, 2, 'Amet quasi voluptas ut esse.', 17, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28'),
(20, 1, 'Repellendus voluptas possimus cum pariatur voluptatem.', 15, 1, '2024-08-29 17:41:28', '2024-08-29 17:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
CREATE TABLE IF NOT EXISTS `shippings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'omnis', 1039, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(2, 'et', 6497, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(3, 'qui', 9049, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(4, 'nam', 3152, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(5, 'voluptatem', 3556, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(6, 'sit', 1602, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(7, 'provident', 4948, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(8, 'neque', 3552, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(9, 'nemo', 7138, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(10, 'occaecati', 5234, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(11, 'nihil', 5904, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(12, 'fugiat', 9669, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(13, 'est', 650, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(14, 'quis', 685, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(15, 'ullam', 7236, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(16, 'eum', 4376, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(17, 'doloremque', 6862, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(18, 'doloremque', 7581, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(19, 'quibusdam', 5682, '2024-08-29 17:41:29', '2024-08-29 17:41:29'),
(20, 'explicabo', 3944, '2024-08-29 17:41:29', '2024-08-29 17:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_validated` tinyint(1) NOT NULL DEFAULT '0',
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ar',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `name`, `phone`, `email`, `email_verified_at`, `password`, `otp_validated`, `lang`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shahd', 'elmnyar', '\"shahd elmnyar\"', '01020658024', 'shahdelmnyar26@gmail.com', '2024-08-29 17:41:13', '$2y$10$PuaTBP3mgtgIEceR7SsaIeYaziqoBxY5erIFZ7N9Df549g/Pqcga6', 0, 'ar', NULL, '2024-08-29 17:40:47', '2024-08-29 18:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_product_addition`
--

DROP TABLE IF EXISTS `user_product_addition`;
CREATE TABLE IF NOT EXISTS `user_product_addition` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `addition_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_product_addition_user_id_foreign` (`user_id`),
  KEY `user_product_addition_product_id_foreign` (`product_id`),
  KEY `user_product_addition_addition_id_foreign` (`addition_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
