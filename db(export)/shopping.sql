-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2020 at 09:00 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `email`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$MJoplxHk7AlaqHUKvlqgg.vZo8NlXmHw.JQF9AkZHCcf1q96pX2l2', 'Administrator', NULL, 'rcXOcq8bAokQojUQa2rW9mVpOpMZqtAz49hdpoAGgNOdewaRYfRy7IuvUTYY', '2020-09-09 14:50:24', '2020-09-09 14:50:24'),
(2, 'x-man11', '$2y$10$zk1WL34qXI6rjKsQSDMgfugPCfk4vSsqYO3l6U0tWoDu4h8nxNixO', 'man@yahoo.com', NULL, 'CO2UqntBwc8oXt4Fn5p0cEgwrEB1h3Yq56EjPPFUhhuhXG77u2X0ugi6px8b', '2020-09-13 14:37:50', '2020-09-13 14:37:50'),
(3, 'ionMan', '$2y$10$iJj4i.YDwb7HeEr91E9DQedzaGmiF6.1zA0.NDwH.ERIIyJSNFXZG', 'manmarius42@yahoo.com', 'poza1.jpg', 'iQNKMGzr1K0XhK76wvx1E8KWcH1G0qEmzPfyh5oEYo1nOUuIXlkOAZnDEJoG', '2020-09-15 16:19:20', '2020-09-15 16:19:20'),
(4, 'ion', '$2y$10$v81XGvCucXTnVYAbhD1GxeuU17UgtysAm5MkCruTrtsWK1VNU.XCS', 'ion@gmail.com', '2020-09-21-14-35-14-IMG-20200828-WA0028.jpg', 'oZck6b7bDItBwPEVTRJgm9TJEBNGveFBCqwRiuSM8f8dNvzD4bM3eEJy15AD', '2020-09-21 11:35:14', '2020-09-21 11:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `created_at`, `updated_at`) VALUES
(2, NULL, 'masina', '2020-12-07 12:36:43', '2020-12-07 12:36:43'),
(3, NULL, 'telefoane', '2020-12-07 12:36:53', '2020-12-07 12:36:53'),
(4, 3, 'Samsung A10', '2020-12-07 12:37:06', '2020-12-07 12:37:06'),
(5, 2, 'dacia1300', '2020-12-07 13:02:49', '2020-12-07 13:02:49'),
(6, NULL, 'calculatoare', '2020-12-07 13:07:29', '2020-12-07 13:07:29'),
(7, 6, 'laptop', '2020-12-07 13:08:10', '2020-12-07 13:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Marius', '0734256', 'manmarius42@yahoo.com', 'este o pagina agreabila', '2020-12-14', '2020-12-14'),
(2, 'Nelutu', '07342562345', 'ion11@gmail.com', 'este o pagina web', '2020-12-14', '2020-12-14'),
(3, 'Nelutu', '07342562345', 'ion11@gmail.com', 'este o pagina web', '2020-12-14', '2020-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `browse` text DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `email`, `browse`, `ip`, `created_at`, `updated_at`) VALUES
(6, 'manmarius42@yahoo.com', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0', '127.0.0.1', '2020-12-09', '2020-12-09'),
(7, 'vasile@yahoo.com', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0', '127.0.0.1', '2020-12-09', '2020-12-09'),
(8, 'vasilke@yahoo.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '::1', '2020-12-09', '2020-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `venue_id`, `start_time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'piesa de teatru', 2, '2020-12-09 14:30:20', '2020-12-09 10:31:29', '2020-12-09 10:31:29', NULL),
(2, 'fotbal', 3, '2002-10-28 14:32:01', '2020-12-09 10:32:36', '2020-12-09 10:32:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `attendees` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `attendees`, `start_time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'vasile', '2020-12-11 11:34:53', '2020-12-08 07:34:56', '2020-12-08 07:34:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_07_141408_create_categories_table', 2),
(5, '2019_11_13_000004_create_venues_table', 3),
(6, '2019_11_13_000005_create_events_table', 3),
(7, '2019_11_13_000006_create_meetings_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categorie_id`, `name`, `slug`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(3, 48, 'masina22', 'ford34', 'este o masina din anul 2012', '383', '2019-12-06-16-11-08-grap3.jpg', '2019-12-05 07:05:17', '2020-12-03 08:35:55'),
(4, 22, 'masina', 'nou', 'este masina noua', '33000', NULL, '2020-12-03 07:59:34', '2020-12-03 07:59:34'),
(5, 7, 'non', 'voluptatibus', 'Reiciendis blanditiis eum quo tenetur eum. Dolores et earum aut. Pariatur aliquid saepe asperiores tempora ipsum et. Aliquid pariatur qui iusto voluptatum dicta est error officiis.', '4', '776fa42deed980604c4872a9f60a8520.png', '2020-12-03 08:22:38', '2020-12-03 08:22:38'),
(6, 24, 'ad', 'amet', 'Quidem aut earum consequatur ut eaque quae. Deleniti ut explicabo labore sint. Qui officia aut eaque exercitationem sed sit amet.', '4', '2781364c30dfd58f3536fb3078421bce.png', '2020-12-03 08:22:38', '2020-12-03 08:26:04'),
(7, 8, 'aut', 'aut', 'Officia eos aut omnis et consectetur sed et in. Ut optio laboriosam possimus est voluptas at. Reprehenderit ut eaque at fugit.', '8', '3d634c12fe7c1d873dc293d92fa2b719.png', '2020-12-03 08:22:39', '2020-12-03 08:22:39'),
(8, 6, 'nostrum', 'est', 'Labore qui qui fugit itaque consequatur a. Aut vel rerum placeat aliquam facilis et. Ut delectus tenetur ea consectetur praesentium ullam libero. Doloribus voluptatem dolorum aut iste recusandae voluptatem omnis.', '2', '91335335cea146d90d6a0047eee6a49d.png', '2020-12-03 08:22:39', '2020-12-03 08:22:39'),
(9, 4, 'sed', 'et', 'Fugit modi porro qui soluta animi beatae temporibus voluptas. Nesciunt quidem dolore suscipit qui ut. Nemo id omnis sunt temporibus eveniet facere est in. Consequuntur neque ipsa deserunt fugiat quam.', '4', 'a2fe35118102e9a1a60a34a6cb8297d9.png', '2020-12-03 08:22:40', '2020-12-03 08:22:40'),
(10, 1, 'eos', 'et', 'Aut tempora illum qui nisi ratione ullam harum. Est inventore nam in et. Velit necessitatibus rerum numquam eveniet omnis non doloremque. Aspernatur odit eos tempore itaque ab itaque ullam.', '0', 'a37878befc71d52fd6c4e69d463835be.png', '2020-12-03 08:22:41', '2020-12-03 08:22:41'),
(11, 7, 'quisquam', 'et', 'Dolore molestias voluptatum cum voluptates sit. Autem perspiciatis natus iure placeat sunt maiores voluptatem aut. Ut id tempore qui vel aut est fuga.', '1', '8e07953b862fefb841729307e8797d27.png', '2020-12-03 08:22:41', '2020-12-03 08:22:41'),
(12, 8, 'reprehenderit', 'ipsam', 'Voluptatem incidunt aspernatur saepe laborum est blanditiis facilis. Corrupti alias aut facilis dolores reiciendis enim similique. Et quia consectetur hic expedita consequatur maxime esse sint.', '4', 'd80da6cb375a4e85ad04bd6939598848.png', '2020-12-03 08:22:42', '2020-12-03 08:22:42'),
(13, 5, 'quasi', 'aut', 'Omnis sunt incidunt natus alias earum. Aut ex numquam non alias. Accusantium ea quam perspiciatis nostrum et. Quibusdam dolorum quia velit impedit nam fugiat et.', '7', '390b06175c803f04a36aa36df43d7e88.png', '2020-12-03 08:22:43', '2020-12-03 08:22:43'),
(14, 2, 'veniam', 'aspernatur', 'Consequatur facilis eos exercitationem qui. Rem consequatur laudantium ut corrupti ea aut non.', '8', '640b8792eb215d87eef16d6748412d30.png', '2020-12-03 08:22:43', '2020-12-03 08:22:43'),
(15, 5, 'sed', 'soluta', 'Quaerat qui et eaque at. Alias asperiores deserunt maiores et beatae impedit quis. Accusantium aut itaque amet est quo nam sed.', '0', 'd9b1ff74a0d1775b72606c96aef61bf2.png', '2020-12-03 08:22:44', '2020-12-03 08:22:44'),
(16, 5, 'facere', 'quia', 'Quidem quia quo consequuntur adipisci porro sint quo. Ut temporibus eum esse voluptatibus veniam necessitatibus velit. Labore inventore soluta aliquid quasi quis. Eum voluptatem maxime inventore id.', '6', '0e5a9ebd9505f16078a94e5a845f3372.png', '2020-12-03 08:22:44', '2020-12-03 08:22:44'),
(17, 5, 'vel', 'magnam', 'Alias accusamus est sint ut iusto veniam. Dignissimos inventore alias veritatis ea expedita ea. Fugiat officiis corporis aut iste. Id voluptatem eligendi consequatur voluptas dolore. Quibusdam neque voluptas architecto temporibus.', '2', 'af85f420ee0ba2bef5e8d8ceb9cc7ddc.png', '2020-12-03 08:22:45', '2020-12-03 08:22:45'),
(18, 38, 'voluptatem', 'maxime', 'Dolor quae iure sunt et quo officiis et voluptate. Explicabo minus quis amet quia ex dolorem eligendi. Alias voluptatibus aliquam qui officiis porro id.', '2', '625a73905dd8c3ffc49c7a3667bc1b8c.png', '2020-12-03 08:22:46', '2020-12-03 08:35:37'),
(19, 0, 'delectus', 'natus', 'Voluptatibus molestiae fugiat vero corrupti autem voluptatem. Tempora officia aliquam perspiciatis quae autem repellendus. Fugiat eaque recusandae qui velit et et amet assumenda. Ad aperiam ut architecto quo laudantium.', '7', '53e1d7d47175952eb37ab48a7de1914a.png', '2020-12-03 08:22:46', '2020-12-03 08:22:46'),
(20, 5, 'et', 'natus', 'Nobis qui sint ipsum atque voluptatum magni. Sequi mollitia et ratione ut sit non. Eligendi sunt velit similique voluptatem magnam. Natus eveniet ea impedit quibusdam.', '6', 'f54f4ddb587210c4f5f8e595255b2a5b.png', '2020-12-03 08:22:47', '2020-12-03 08:22:47'),
(21, 7, 'illo', 'quaerat', 'Libero ut quam expedita quasi est. Autem quaerat corporis aut nostrum. Qui fugit ipsum laborum amet. Sint ducimus nisi assumenda officiis totam.', '7', '77a8079421b4d04c4df4bec949606665.png', '2020-12-03 08:22:48', '2020-12-03 08:22:48'),
(22, 8, 'sunt', 'autem', 'Eligendi odio quasi quo aspernatur. Consequatur laboriosam est expedita soluta ea. Quos omnis vero commodi.', '3', 'e258a7d313fa84702cb3055735a48f42.png', '2020-12-03 08:22:48', '2020-12-03 08:22:48'),
(23, 9, 'laudantium', 'voluptatem', 'Maxime nihil illo ratione sequi iste. Excepturi assumenda autem itaque. Dolore soluta sapiente eum perspiciatis et alias deleniti. Suscipit qui dolore est incidunt qui qui provident. Cupiditate nihil quisquam eum.', '0', '7359a1dded5dc2a38edbc3c5ef025d2d.png', '2020-12-03 08:22:49', '2020-12-03 08:22:49'),
(24, 3, 'culpa', 'et', 'Asperiores ab quasi nesciunt voluptate ex eum commodi. Dicta qui quam minima nisi impedit qui doloribus. Voluptas nulla neque aut est sunt corrupti vel.', '6', '99358a73d2ca046c417b1e03942daf8d.png', '2020-12-03 08:22:49', '2020-12-03 08:22:49'),
(25, 5, 'aut', 'tempora', 'Labore commodi sapiente nisi possimus fugit iure. Eos suscipit aut et modi hic quia perferendis. Et voluptas rerum rerum occaecati quia. Debitis quia ut laborum repellendus unde.', '5130\n', 'bee0bea6b5c557a267975f3dad2a8a8a.png', '2020-12-03 08:31:43', '2020-12-03 08:31:43'),
(26, 8, 'vero', 'qui', 'Consectetur nesciunt laborum omnis magnam nemo laboriosam est molestiae. Perferendis rerum rem et et cumque dolorem.', '5384\n', '67cac1a3a4b4caaf8d42046518872c22.png', '2020-12-03 08:31:43', '2020-12-03 08:31:43'),
(27, 5, 'praesentium', 'ut', 'Ea sint deserunt ea in. Consequuntur qui est similique. Corrupti optio saepe ducimus non.', '5134\n', '64e65b76a62327d4c4fbf3d04658e696.png', '2020-12-03 08:31:44', '2020-12-03 08:31:44'),
(28, 6, 'est', 'dolor', 'Dolorem nihil saepe eum neque repellat necessitatibus laboriosam. Saepe hic placeat aspernatur eius laudantium deserunt voluptas. Facere quia aspernatur ducimus. Exercitationem facere distinctio eveniet molestiae et saepe.', '5536\n', 'a368a944bdddb0a81d9573fb51eda988.png', '2020-12-03 08:31:45', '2020-12-03 08:31:45'),
(29, 6, 'consequatur', 'officia', 'Incidunt accusamus nihil perferendis sint minus hic id consequatur. Nobis incidunt nesciunt sit hic eum cum fuga vero. Fuga ipsam aut rerum.', '2246\n', 'e912c8ec66250c1e679ef03ef4c88a30.png', '2020-12-03 08:31:45', '2020-12-03 08:31:45'),
(30, 1, 'qui', 'quo', 'Harum aut debitis velit. Eveniet minima culpa harum veniam nam. Molestias natus aperiam cumque neque ut sit non. Qui ut cumque temporibus atque at sed quod. Odit aliquid eius pariatur ut.', '4534\n', '2605906c0de617b54ae7abd4f2c5124a.png', '2020-12-03 08:31:46', '2020-12-03 08:31:46'),
(31, 5, 'alias', 'aliquam', 'Velit et possimus quas excepturi. Repudiandae veniam quisquam similique et. Natus dolorem rerum numquam modi.', '4498\n', 'feddfe04e0a0517b74937248b8b1a05e.png', '2020-12-03 08:31:47', '2020-12-03 08:31:47'),
(32, 5, 'quasi', 'ut', 'Delectus voluptatem aliquid sapiente facere. Et ab pariatur quam aperiam iste dolorem. Optio sit ad quo perferendis eum cupiditate. Quae cupiditate officiis totam quod incidunt.', '1825\n', 'f9bf1099e3cfbd84ddd75146bf48fcce.png', '2020-12-03 08:31:47', '2020-12-03 08:31:47'),
(33, 1, 'ut', 'et', 'Libero qui ex amet. Odit aut at id vitae rerum quo. Et ducimus nesciunt culpa sed.', '5512\n', '31de6d89a9d23b785768d88e87010fca.png', '2020-12-03 08:31:48', '2020-12-03 08:31:48'),
(34, 9, 'recusandae', 'omnis', 'Soluta maiores enim aliquid molestias quo. Eum temporibus quia totam inventore. Voluptas ad et ratione quis incidunt quia deserunt.', '4861\n', '07742d915c6a9b9a31b023bd271d6af7.png', '2020-12-03 08:31:49', '2020-12-03 08:31:49'),
(35, 0, 'eligendi', 'autem', 'Necessitatibus et temporibus amet quam. Quis aut deserunt sint id et. Tempora cumque quaerat aut aut ut provident.', '1503\n', '4aba34a37ac98f33e24fd0dec3fc32da.png', '2020-12-03 08:31:49', '2020-12-03 08:31:49'),
(36, 1, 'et', 'voluptate', 'Molestias aut eum rerum ipsa quasi minima dolorum. Dolores ut aut et et expedita. Vel ipsum quod at vel fugit.', '5999\n', 'd31ec64851bdc3d7adacd90f96527300.png', '2020-12-03 08:31:50', '2020-12-03 08:31:50'),
(37, 6, 'veritatis', 'corporis', 'Voluptate officiis atque laborum. Reprehenderit aut molestiae tenetur inventore quas.', '4393\n', 'd87956510082c0b5396b4772ff42d476.png', '2020-12-03 08:31:50', '2020-12-03 08:31:50'),
(38, 5, 'numquam', 'reiciendis', 'Hic excepturi amet dignissimos placeat nesciunt ullam unde. Ex totam tempora architecto laborum optio officia cumque. Non facere deserunt quidem aspernatur deserunt.', '5996\n', 'a6998188cb3d1d7a9ff530437b04f47f.png', '2020-12-03 08:31:51', '2020-12-03 08:31:51'),
(39, 9, 'sit', 'architecto', 'Quam repellendus sunt ut expedita. Reprehenderit commodi omnis adipisci sit ut. Eos eos quisquam placeat nobis laboriosam doloribus quidem. Corporis quia vel atque id libero quia rerum. Aut voluptatem eius omnis consequatur consectetur sunt fuga.', '2073\n', '8a4409dc9624bae929b44bc7a59cd784.png', '2020-12-03 08:31:52', '2020-12-03 08:31:52'),
(40, 5, 'voluptas', 'beatae', 'Omnis occaecati dolorem hic qui fuga molestiae vel. Minima quia optio aut tempora blanditiis dolorum. Quasi dolor odit ipsum et accusantium assumenda molestiae.', '3076\n', '9ca6e58fa0d222d62708e5fba6ae17e3.png', '2020-12-03 08:31:52', '2020-12-03 08:31:52'),
(41, 4, 'molestiae', 'ut', 'Doloremque ducimus at necessitatibus hic tenetur repellendus. Ut eligendi dolor quia quam ea odit voluptate. Ab saepe deleniti vel dicta corporis aut reiciendis.', '4599\n', '10a705d92432eb139402e1ea3acf759b.png', '2020-12-03 08:31:53', '2020-12-03 08:31:53'),
(42, 1, 'ab', 'odit', 'Repellat fugiat commodi eum. Assumenda eum itaque ut cum et voluptate similique. A blanditiis omnis ducimus reiciendis qui et assumenda. Rerum eaque expedita dolore dicta omnis ut ut.', '5249\n', 'fa47aea4d049bf2bc246d3a5acf59056.png', '2020-12-03 08:31:54', '2020-12-03 08:31:54'),
(43, 5, 'quo', 'est', 'Ea enim fuga sint molestiae nisi nemo sunt quia. Voluptatem expedita maiores quaerat pariatur. Voluptatem distinctio ipsum exercitationem eum sequi ex earum inventore.', '1959\n', '3788dba1bc50dd4a5350d0a5497a64d5.png', '2020-12-03 08:31:54', '2020-12-03 08:31:54'),
(44, 6, 'repellat', 'deleniti', 'Voluptas voluptate veritatis repellat praesentium et. Eum tempora qui excepturi nesciunt provident sint. Nostrum inventore nostrum voluptatem voluptatem eaque.', '3373\n', '7622eec35d41deaa8057c63fba9cf832.png', '2020-12-03 08:31:55', '2020-12-03 08:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `photo`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'man', 'ion@gmail.com', '1606751180.jpg', NULL, '$2y$10$IeATC5CVH6fHylOXrH6Svu7RQ9wUxstlohWT1vFJDDNwpjjG9Vbla', NULL, '2020-11-30 13:46:20', '2020-11-30 13:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'cinema', 'targu-mures', '2020-12-08 07:32:46', '2020-12-08 07:32:46', NULL),
(2, 'teatru', 'str brasov Brasov', '2020-12-08 07:35:20', '2020-12-08 07:35:20', NULL),
(3, 'sport', 'str pandurilor Cluj', '2020-12-09 10:31:53', '2020-12-09 10:31:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
