-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 16, 2025 at 05:36 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u633178708_gcp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'aHnwG0ubKckR5pxXK8jsbVdBXd3Wtqfn', 1, '2025-08-02 02:15:35', '2025-08-02 02:15:35', '2025-08-02 02:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT 1,
  `tablet_image` varchar(191) DEFAULT NULL,
  `mobile_image` varchar(191) DEFAULT NULL,
  `ads_type` varchar(191) DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`, `open_in_new_tab`, `tablet_image`, `mobile_image`, `ads_type`, `google_adsense_slot_id`) VALUES
(1, 'Top Slider Image 1', '2030-08-02 00:00:00', 'not_set', 'VC2C8Q1UGCBG', 'promotion/1.jpg', '/products', 0, 1, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38', 1, NULL, NULL, NULL, NULL),
(2, 'Top Slider Image 2', '2030-08-02 00:00:00', 'not_set', 'NBDWRXTSVZ8N', 'promotion/2.jpg', '/products', 0, 2, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38', 1, NULL, NULL, NULL, NULL),
(3, 'Homepage middle 1', '2030-08-02 00:00:00', 'not_set', 'IZ6WU8KUALYD', 'promotion/3.jpg', '/products', 0, 3, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38', 1, NULL, NULL, NULL, NULL),
(4, 'Homepage middle 2', '2030-08-02 00:00:00', 'not_set', 'ILSFJVYFGCPZ', 'promotion/4.jpg', '/products', 0, 4, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38', 1, NULL, NULL, NULL, NULL),
(5, 'Homepage middle 3', '2030-08-02 00:00:00', 'not_set', 'ZDOZUZZIU7FT', 'promotion/5.jpg', '/products', 0, 5, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38', 1, NULL, NULL, NULL, NULL),
(6, 'Homepage big 1', '2030-08-02 00:00:00', 'not_set', 'Q9YDUIC9HSWS', 'promotion/6.jpg', '/products', 0, 6, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38', 1, NULL, NULL, NULL, NULL),
(7, 'Homepage bottom small', '2030-08-02 00:00:00', 'not_set', '6GZJTSVFMDDC', 'promotion/7.jpg', '/products', 0, 7, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38', 1, NULL, NULL, NULL, NULL),
(8, 'Product sidebar', '2030-08-02 00:00:00', 'product-sidebar', '56MPZHGTWTX3', 'promotion/8.jpg', '/products', 0, 8, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38', 1, NULL, NULL, NULL, NULL),
(9, 'Homepage big 2', '2030-08-02 00:00:00', 'not_set', 'IZ6WU8KUALYE', 'promotion/9.jpg', '/products', 0, 9, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads_translations`
--

CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ads_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `tablet_image` varchar(191) DEFAULT NULL,
  `mobile_image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) NOT NULL,
  `request` longtext DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `actor_id` bigint(20) UNSIGNED NOT NULL,
  `actor_type` varchar(191) DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_name` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `user_type`, `module`, `request`, `action`, `user_agent`, `ip_address`, `actor_id`, `actor_type`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'Botble\\ACL\\Models\\User', 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2409:40d0:14ef:fda2:9c64:2792:87e5:ce77', 1, 'Botble\\ACL\\Models\\User', 1, 'Dimagital Media And Technologies Pvt. Ltd.', 'info', '2025-09-16 17:32:25', '2025-09-16 17:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce', 0, 'Ullam quidem et sunt mollitia odio. Quas sunt libero fuga nihil ipsum omnis ipsa. Maxime deserunt deserunt optio facilis quisquam.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(2, 'Fashion', 0, 'Voluptatem aliquam dicta officia non. Hic eius id itaque eligendi. Molestias quia sed distinctio voluptatem sunt. Dolores incidunt et perferendis quo asperiores et expedita.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(3, 'Electronic', 0, 'Voluptas mollitia vel et quod itaque. Ipsum ullam animi id et ut. Pariatur officiis eius ut nam non ut ipsum.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(4, 'Commercial', 0, 'Fugit ad ut rerum rerum. Occaecati ratione molestiae molestiae voluptatem odio.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2025-08-02 02:15:36', '2025-08-02 02:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `record_id` varchar(40) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities_translations`
--

CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) NOT NULL,
  `cities_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` longtext NOT NULL,
  `custom_fields` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `custom_fields`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Frank Sauer', 'armstrong.samir@example.net', '+14308262825', '9596 Pauline Causeway Suite 408\nFelipashire, CO 98734-9825', 'Libero placeat expedita rem nesciunt qui sed.', 'Ea omnis delectus quisquam corrupti. Ipsum et nam qui sunt ducimus. Accusantium autem ad accusamus enim et non. Quos architecto facere necessitatibus quas et nihil. Necessitatibus modi culpa nulla tempora voluptatem sequi. In sed dolorem occaecati modi. Impedit doloremque et mollitia consequatur quod qui. Repellendus nam sint id quia esse.', NULL, 'unread', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(2, 'Dr. Earnest Heidenreich', 'stracke.darren@example.org', '+17794018010', '981 Ryleigh Island\nBartontown, HI 08594-8750', 'Nobis minima dolorem ut.', 'Aperiam aut accusamus delectus et rerum ut minus. Laboriosam cum qui corrupti. Minima distinctio sit est quis quam est pariatur. Rerum omnis voluptatem saepe placeat eius cupiditate qui. Nihil ipsum ratione dolorem sint consequatur qui. Natus dolorem nostrum quibusdam dolores et eos molestiae. Vero mollitia quidem qui dolorem aspernatur suscipit. Assumenda eos eos quia dignissimos nihil ratione. Omnis non provident et necessitatibus quod tempore ab. Qui architecto velit possimus expedita.', NULL, 'read', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(3, 'Kendra Bernier', 'emann@example.net', '1-283-610-8265', '353 Zachary Springs Suite 704\nJamaalton, MI 79668', 'Labore ut et perspiciatis laborum sed nihil.', 'Natus dolore in est quisquam quod illo in. Ut magnam quia quae. Omnis recusandae non voluptates autem provident perferendis voluptatibus. Est recusandae est nam sed est voluptate aliquid. Laborum repellat eos culpa ducimus quisquam autem accusamus saepe. Quo sed rerum laudantium sed sint sit accusantium. Minima totam harum odio eos provident possimus recusandae. Ut vel porro itaque eum aut.', NULL, 'read', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(4, 'Prof. Nicholas Nitzsche', 'khowell@example.com', '+1 (325) 368-4340', '314 Savannah Spur\nBarrowston, IL 67794-8745', 'Beatae nam labore labore sunt distinctio in in.', 'Est eos est voluptas. Hic sit voluptatem ut quidem libero hic nam. Maiores consequatur est rerum. Saepe est minus deserunt iure libero. Consequatur sunt impedit et non enim minus fugiat fugiat. Quia ipsum odit occaecati ea nesciunt. Consequuntur veniam impedit nemo ad quaerat consequatur. Aut sit eligendi repellat ut est iure. Et ipsam iusto voluptatem voluptates ea aut. Voluptatem doloribus perspiciatis ut.', NULL, 'unread', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(5, 'Andreane Weber', 'hubert.ruecker@example.net', '1-813-247-6925', '7955 Murazik Garden\nSouth Royce, MO 83882', 'Recusandae excepturi dolor omnis quo aut natus.', 'Voluptate accusantium iusto ullam ex ad. Aspernatur et ut reprehenderit distinctio impedit labore in. Adipisci doloremque et sint esse et voluptatum saepe. Quaerat iusto reiciendis blanditiis debitis aut aut eveniet. Ipsam laboriosam ut alias officia fuga ratione. Vel ab et tempora tempore fugiat perspiciatis a quis. Animi ipsam esse autem rerum qui totam aliquid.', NULL, 'read', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(6, 'Mr. Consuelo Block', 'bettie88@example.org', '(364) 332-7999', '768 Wilmer Plaza Apt. 641\nJohnstonhaven, AL 56448-4019', 'Ipsa adipisci quis voluptas aut.', 'Vel voluptate nam quis nobis qui necessitatibus saepe. Non voluptas expedita hic sed. Explicabo consequuntur voluptatem facilis magni rem animi enim. Molestiae maxime sint cum. Beatae velit omnis quasi et eligendi accusamus. Et molestiae facere minima placeat beatae dolores. Corrupti molestiae et minus aliquid vel tenetur repudiandae. Aut distinctio vitae nesciunt asperiores eveniet.', NULL, 'unread', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(7, 'Laurie Kirlin', 'deanna54@example.org', '(706) 799-7958', '8014 Zane Keys\nFeeneybury, MI 51170-4253', 'Neque sunt rem consequatur ut iusto.', 'Nihil ea vel minus ratione aut. Quia explicabo tenetur molestiae assumenda libero nisi. Voluptas eligendi perspiciatis quisquam totam fuga qui. Quos qui saepe sint placeat ducimus quod. Omnis dignissimos et sint tempora omnis magni consequatur sequi. Quia minima inventore voluptas a accusantium voluptatem ut. Facere sed possimus quaerat iste et.', NULL, 'unread', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(8, 'Mrs. Janelle Paucek IV', 'hilpert.murphy@example.org', '(281) 694-6730', '950 Chelsie Plaza Suite 108\nLake Dasiastad, LA 63670', 'Quo et maiores possimus.', 'Qui quis molestiae laudantium voluptatem officiis itaque fugit qui. Repudiandae reprehenderit enim magnam laboriosam doloribus. Culpa ut recusandae aut reiciendis id cupiditate. At enim molestiae veritatis possimus. In adipisci qui rerum dolor error. Iure officia reiciendis suscipit. At sapiente nisi quibusdam architecto id debitis. Voluptatibus quas blanditiis voluptatem dolor. Assumenda inventore impedit mollitia dolorem dolores.', NULL, 'read', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(9, 'Miss Lilliana Zulauf DVM', 'jwalter@example.net', '+1-573-814-5505', '19050 Zora Place Apt. 577\nEast Laurenceview, ME 18337-6495', 'Sint et aperiam eos perspiciatis numquam.', 'Consectetur veritatis et maiores ea assumenda. Blanditiis nemo modi fugit necessitatibus in sint. Aliquam qui velit eum quo esse. Ducimus consequatur qui occaecati illum. Odio itaque eos animi voluptatem molestias. Enim dignissimos vitae voluptates in assumenda. Aut saepe rem possimus quam quidem doloribus. Et perferendis placeat qui et laudantium quos molestiae rerum. Ut voluptas provident sequi iusto quia beatae minus. Ducimus quo explicabo aut quaerat mollitia eum sunt.', NULL, 'read', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(10, 'Mr. Kristoffer Pfeffer III', 'westley76@example.org', '1-458-873-0521', '84160 Lockman Point Apt. 056\nEast Annetteshire, ME 18289-6077', 'Velit voluptates voluptas maxime praesentium.', 'Cupiditate et est reprehenderit nisi est. Beatae voluptatum quaerat et. Ut ut blanditiis et officia doloremque illum laborum debitis. Iste neque voluptatum nihil occaecati cum. Molestias placeat iure voluptates placeat molestiae eius voluptatibus. Repellendus facere quisquam accusamus sunt vitae quas. Quia voluptatem doloremque vero ex perspiciatis debitis.', NULL, 'read', '2025-08-02 02:15:34', '2025-08-02 02:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields`
--

CREATE TABLE `contact_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields_translations`
--

CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `placeholder` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options`
--

CREATE TABLE `contact_custom_field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options_translations`
--

CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `nationality` varchar(120) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries_translations`
--

CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) NOT NULL,
  `countries_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `nationality` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_1', '2025-09-16 17:32:33', '2025-09-16 17:32:33'),
(2, 'widget_total_2', '2025-09-16 17:32:33', '2025-09-16 17:32:33'),
(3, 'widget_total_3', '2025-09-16 17:32:33', '2025-09-16 17:32:33'),
(4, 'widget_total_4', '2025-09-16 17:32:33', '2025-09-16 17:32:33'),
(5, 'widget_total_themes', '2025-09-16 17:32:33', '2025-09-16 17:32:33'),
(6, 'widget_total_users', '2025-09-16 17:32:33', '2025-09-16 17:32:33'),
(7, 'widget_total_plugins', '2025-09-16 17:32:33', '2025-09-16 17:32:33'),
(8, 'widget_total_pages', '2025-09-16 17:32:33', '2025-09-16 17:32:33'),
(9, 'widget_posts_recent', '2025-09-16 17:32:33', '2025-09-16 17:32:33'),
(10, 'widget_audit_logs', '2025-09-16 17:32:33', '2025-09-16 17:32:33'),
(11, 'widget_ecommerce_report_general', '2025-09-16 17:32:33', '2025-09-16 17:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_tokens`
--

CREATE TABLE `device_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) NOT NULL,
  `platform` varchar(191) DEFAULT NULL,
  `app_version` varchar(191) DEFAULT NULL,
  `device_id` varchar(191) DEFAULT NULL,
  `user_type` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_abandoned_carts`
--

CREATE TABLE `ec_abandoned_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `session_id` varchar(191) DEFAULT NULL,
  `cart_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`cart_data`)),
  `total_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `items_count` int(11) NOT NULL DEFAULT 0,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `abandoned_at` timestamp NULL DEFAULT NULL,
  `reminder_sent_at` timestamp NULL DEFAULT NULL,
  `reminders_sent` int(11) NOT NULL DEFAULT 0,
  `is_recovered` tinyint(1) NOT NULL DEFAULT 0,
  `recovered_at` timestamp NULL DEFAULT NULL,
  `recovered_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands`
--

INSERT INTO `ec_brands` (`id`, `name`, `description`, `website`, `logo`, `status`, `order`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Fashion live', NULL, NULL, 'brands/1.jpg', 'published', 0, 1, '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(2, 'Hand crafted', NULL, NULL, 'brands/2.jpg', 'published', 1, 1, '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(3, 'Mestonix', NULL, NULL, 'brands/3.jpg', 'published', 2, 1, '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(4, 'Sunshine', NULL, NULL, 'brands/4.jpg', 'published', 3, 1, '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(5, 'Pure', NULL, NULL, 'brands/5.jpg', 'published', 4, 1, '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(6, 'Anfold', NULL, NULL, 'brands/6.jpg', 'published', 5, 1, '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(7, 'Automotive', NULL, NULL, 'brands/7.jpg', 'published', 6, 1, '2025-08-02 02:14:57', '2025-08-02 02:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands_translations`
--

CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_brands_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(60) NOT NULL,
  `instance` varchar(60) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decimals` tinyint(3) UNSIGNED DEFAULT 0,
  `order` int(10) UNSIGNED DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 2, 0, 1, 1, '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(2, 'EUR', '€', 0, 2, 1, 0, 0.84, '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(3, 'VND', '₫', 0, 0, 2, 0, 23203, '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(4, 'NGN', '₦', 1, 2, 2, 0, 895.52, '2025-08-02 02:14:57', '2025-08-02 02:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) DEFAULT NULL,
  `private_notes` text DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `vendor_verified_at` datetime DEFAULT NULL,
  `stripe_account_id` varchar(191) DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customers`
--

INSERT INTO `ec_customers` (`id`, `name`, `email`, `password`, `avatar`, `dob`, `phone`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `email_verify_token`, `status`, `block_reason`, `private_notes`, `is_vendor`, `vendor_verified_at`, `stripe_account_id`, `stripe_account_active`) VALUES
(1, 'Agustin Pouros I', 'customer@botble.com', '$2y$12$Fsy15LE374jAMV7/D0jsx.Z1qD0OFmJ1HAZ/OI8RTNC32wcs23HH.', 'customers/8.jpg', '1999-07-21', '+18729098263', NULL, '2025-08-02 02:15:30', '2025-08-02 02:15:30', '2025-08-02 09:15:30', NULL, 'activated', NULL, NULL, 0, NULL, NULL, 0),
(2, 'Ms. Imogene Davis MD', 'vendor@botble.com', '$2y$12$N1vdhXthR/BvtEXRSLJKhuIVUqduJ4C5U7HHNypsHrUKvyK3QPB4m', 'customers/10.jpg', '2000-07-22', '+13015428174', NULL, '2025-08-02 02:15:30', '2025-08-02 02:15:41', '2025-08-02 09:15:30', NULL, 'activated', NULL, NULL, 1, '2025-08-02 09:15:41', NULL, 0),
(3, 'Addie Sauer', 'erica.hayes@example.com', '$2y$12$3BI65q9sdXs19rOmj/x2ceySW1aYdWQRHoPvtSSoHQ5QoNdqcSASS', 'customers/1.jpg', '1982-07-16', '+14427454535', NULL, '2025-08-02 02:15:30', '2025-08-02 02:15:42', '2025-08-02 09:15:30', NULL, 'activated', NULL, NULL, 1, '2025-08-02 09:15:41', NULL, 0),
(4, 'Sheridan Hilpert', 'helena02@example.org', '$2y$12$q7p7GaeefiMYt1Mey.LpD.qfSRe/budvol1uFmSwVHVvRb/yv01bq', 'customers/2.jpg', '1999-07-29', '+17247311790', NULL, '2025-08-02 02:15:31', '2025-08-02 02:15:42', '2025-08-02 09:15:31', NULL, 'activated', NULL, NULL, 1, '2025-08-02 09:15:41', NULL, 0),
(5, 'Arnulfo Monahan', 'vsporer@example.net', '$2y$12$/K68q91jHRFTv.1vpAyfwebqEw8MsbfzcQJRzx4u7EV6YyQcIWfnC', 'customers/3.jpg', '1991-07-16', '+16234312791', NULL, '2025-08-02 02:15:31', '2025-08-02 02:15:42', '2025-08-02 09:15:31', NULL, 'activated', NULL, NULL, 1, '2025-08-02 09:15:41', NULL, 0),
(6, 'Lottie Carter II', 'tobin07@example.org', '$2y$12$2Sv7f2Pb2Txm46aTt1L97OTza3uOGmzjpcxAYJTSSW56Skj5iGwQq', 'customers/4.jpg', '1983-07-06', '+15395214154', NULL, '2025-08-02 02:15:32', '2025-08-02 02:15:43', '2025-08-02 09:15:32', NULL, 'activated', NULL, NULL, 1, '2025-08-02 09:15:41', NULL, 0),
(7, 'Hilma Purdy', 'bergstrom.shaniya@example.org', '$2y$12$VTFk/TOZQiO0FHBL9lYUCOCjl3.zp0F5BT.uLfdWHouBdTcL3sWK2', 'customers/5.jpg', '1979-07-22', '+15396080968', NULL, '2025-08-02 02:15:32', '2025-08-02 02:15:43', '2025-08-02 09:15:32', NULL, 'activated', NULL, NULL, 1, '2025-08-02 09:15:41', NULL, 0),
(8, 'Dr. Leo Frami', 'purdy.yadira@example.net', '$2y$12$eKGDH3C7V9xs1JeOR0Yd8OFbJgzkqKiey5K0MHOrLCoh1gjSVASgi', 'customers/6.jpg', '1985-07-26', '+12035352013', NULL, '2025-08-02 02:15:33', '2025-08-02 02:15:43', '2025-08-02 09:15:33', NULL, 'activated', NULL, NULL, 1, '2025-08-02 09:15:41', NULL, 0),
(9, 'Miss Karine Ledner DVM', 'jhammes@example.net', '$2y$12$d.SXpzAlPbozrHHUDAtrzeclRTLoLxOCcKoXe6T1pQHfrGgeSKBEq', 'customers/7.jpg', '1976-07-13', '+17315536747', NULL, '2025-08-02 02:15:33', '2025-08-02 02:15:44', '2025-08-02 09:15:33', NULL, 'activated', NULL, NULL, 0, NULL, NULL, 0),
(10, 'Michaela Hickle V', 'annette.ohara@example.org', '$2y$12$HmfoQ9rFYrIEQ0.ctJa.HunQOKx5jBWKtJgHJh5N7kd0eUvIdI93e', 'customers/8.jpg', '1998-07-29', '+12726994459', NULL, '2025-08-02 02:15:33', '2025-08-02 02:15:44', '2025-08-02 09:15:33', NULL, 'activated', NULL, NULL, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_addresses`
--

INSERT INTO `ec_customer_addresses` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `address`, `customer_id`, `is_default`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'Agustin Pouros I', 'customer@botble.com', '+17175723594', 'SN', 'Texas', 'Francistown', '1178 Sabrina Trail', 1, 1, '2025-08-02 02:15:30', '2025-08-02 02:15:30', '99469-9689'),
(2, 'Agustin Pouros I', 'customer@botble.com', '+19174929002', 'HR', 'Wyoming', 'Wainoside', '366 Demarco Fords', 1, 0, '2025-08-02 02:15:30', '2025-08-02 02:15:30', '21936-9946'),
(3, 'Ms. Imogene Davis MD', 'vendor@botble.com', '+13525952516', 'CD', 'South Dakota', 'East Jonasfort', '1018 Champlin Lane', 2, 1, '2025-08-02 02:15:30', '2025-08-02 02:15:30', '52891-1115'),
(4, 'Ms. Imogene Davis MD', 'vendor@botble.com', '+15139003842', 'AD', 'Virginia', 'Port Alysha', '972 Aidan Ridge Suite 785', 2, 0, '2025-08-02 02:15:30', '2025-08-02 02:15:30', '03256-0652'),
(5, 'Addie Sauer', 'erica.hayes@example.com', '+12482721367', 'DK', 'Missouri', 'New Estrella', '40911 Borer Brook', 3, 1, '2025-08-02 02:15:30', '2025-08-02 02:15:30', '12392'),
(6, 'Sheridan Hilpert', 'helena02@example.org', '+12242124465', 'VN', 'Oregon', 'East Kennedystad', '58477 Tyson Flats', 4, 1, '2025-08-02 02:15:31', '2025-08-02 02:15:31', '69220'),
(7, 'Arnulfo Monahan', 'vsporer@example.net', '+15593411145', 'MP', 'Nevada', 'Lake Jesusside', '5485 Kulas Keys Suite 521', 5, 1, '2025-08-02 02:15:31', '2025-08-02 02:15:31', '35955'),
(8, 'Lottie Carter II', 'tobin07@example.org', '+16368917228', 'AX', 'South Carolina', 'East Cloydburgh', '104 Destiney Haven', 6, 1, '2025-08-02 02:15:32', '2025-08-02 02:15:32', '54549-1569'),
(9, 'Hilma Purdy', 'bergstrom.shaniya@example.org', '+12817870089', 'CR', 'Arizona', 'Lake Dorcasville', '767 Becker Trail', 7, 1, '2025-08-02 02:15:32', '2025-08-02 02:15:32', '98134'),
(10, 'Dr. Leo Frami', 'purdy.yadira@example.net', '+18208991810', 'BW', 'Rhode Island', 'Lake Shania', '76122 Jeanie Hill Suite 352', 8, 1, '2025-08-02 02:15:33', '2025-08-02 02:15:33', '25585'),
(11, 'Miss Karine Ledner DVM', 'jhammes@example.net', '+15302231096', 'GH', 'Indiana', 'Paucekstad', '80509 Hegmann Via', 9, 1, '2025-08-02 02:15:33', '2025-08-02 02:15:33', '70253-9004'),
(12, 'Michaela Hickle V', 'annette.ohara@example.org', '+18705537277', 'TV', 'Wisconsin', 'Cronaberg', '960 Schneider Junctions Suite 587', 10, 1, '2025-08-02 02:15:33', '2025-08-02 02:15:33', '68145');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_deletion_requests`
--

CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `customer_phone` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `token` varchar(191) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_used_coupons`
--

CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` double DEFAULT NULL,
  `type` varchar(60) DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT 0,
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT 0,
  `discount_on` varchar(20) DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) NOT NULL DEFAULT 'amount',
  `target` varchar(100) NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT 0,
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_discounts`
--

INSERT INTO `ec_discounts` (`id`, `title`, `code`, `start_date`, `end_date`, `quantity`, `total_used`, `value`, `type`, `can_use_with_promotion`, `can_use_with_flash_sale`, `discount_on`, `product_quantity`, `type_option`, `target`, `min_order_price`, `apply_via_url`, `display_at_checkout`, `created_at`, `updated_at`, `description`, `store_id`) VALUES
(1, 'Discount 1', '5A0VIVJGXWJN', '2025-08-01 09:15:34', '2025-08-11 09:15:34', NULL, 0, 362, 'coupon', 0, 0, NULL, NULL, 'same-price', 'all-orders', NULL, 0, 1, '2025-08-02 02:15:34', '2025-08-02 02:15:34', NULL, NULL),
(2, 'Discount 2', 'ZY6OS2HTQ7SZ', '2025-08-01 09:15:34', '2025-09-01 09:15:34', NULL, 0, 228, 'coupon', 0, 0, NULL, NULL, 'amount', 'all-orders', NULL, 0, 1, '2025-08-02 02:15:34', '2025-08-02 02:15:34', NULL, NULL),
(3, 'Discount 3', 'SX1MZFLEASSE', '2025-08-01 09:15:34', '2025-08-19 09:15:34', NULL, 0, 968, 'coupon', 0, 0, NULL, NULL, 'shipping', 'all-orders', NULL, 0, 1, '2025-08-02 02:15:34', '2025-08-02 02:15:34', NULL, NULL),
(4, 'Discount 4', 'ZYXBBQEVITGF', '2025-08-01 09:15:34', '2025-08-09 09:15:34', NULL, 0, 735, 'coupon', 0, 0, NULL, NULL, 'amount', 'all-orders', NULL, 0, 1, '2025-08-02 02:15:34', '2025-08-02 02:15:34', NULL, NULL),
(5, 'Discount 5', 'CENM9EK1QRWK', '2025-08-01 09:15:34', NULL, NULL, 0, 316, 'coupon', 0, 0, NULL, NULL, 'same-price', 'all-orders', NULL, 0, 1, '2025-08-02 02:15:34', '2025-08-02 02:15:34', NULL, NULL),
(6, 'Discount 6', '3CUK4X9MNHWS', '2025-08-01 09:15:34', '2025-08-14 09:15:34', NULL, 0, 231, 'coupon', 0, 0, NULL, NULL, 'same-price', 'all-orders', NULL, 0, 1, '2025-08-02 02:15:34', '2025-08-02 02:15:34', NULL, NULL),
(7, 'Discount 7', 'DFCNG76SYOOU', '2025-08-01 09:15:34', '2025-08-14 09:15:34', NULL, 0, 17, 'coupon', 0, 0, NULL, NULL, 'same-price', 'all-orders', NULL, 0, 1, '2025-08-02 02:15:34', '2025-08-02 02:15:34', NULL, NULL),
(8, 'Discount 8', 'SJ86WFUBG7JT', '2025-08-01 09:15:34', '2025-09-01 09:15:34', NULL, 0, 595, 'coupon', 0, 0, NULL, NULL, 'same-price', 'all-orders', NULL, 0, 1, '2025-08-02 02:15:34', '2025-08-02 02:15:34', NULL, NULL),
(9, 'Discount 9', 'HH1BUQSDLVDD', '2025-08-01 09:15:34', '2025-08-24 09:15:34', NULL, 0, 92, 'coupon', 0, 0, NULL, NULL, 'percentage', 'all-orders', NULL, 0, 1, '2025-08-02 02:15:34', '2025-08-02 02:15:34', NULL, NULL),
(10, 'Discount 10', 'KASZSISGZKGW', '2025-08-01 09:15:34', '2025-08-04 09:15:34', NULL, 0, 279, 'coupon', 0, 0, NULL, NULL, 'amount', 'all-orders', NULL, 0, 1, '2025-08-02 02:15:34', '2025-08-02 02:15:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_categories`
--

CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `product_collection_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Winter Sale', '2025-09-01 00:00:00', 'published', '2025-08-02 02:15:34', '2025-08-02 02:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales_translations`
--

CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_flash_sales_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sale_products`
--

INSERT INTO `ec_flash_sale_products` (`flash_sale_id`, `product_id`, `price`, `quantity`, `sold`) VALUES
(1, 1, 378.756, 7, 2),
(1, 2, 151.4457, 6, 3),
(1, 3, 472.27, 17, 2),
(1, 4, 794.1532, 17, 5),
(1, 5, 354.1146, 13, 1),
(1, 6, 500.4806, 16, 3),
(1, 7, 831.7425, 10, 5),
(1, 8, 412.0535, 19, 4),
(1, 9, 668.0294, 18, 2),
(1, 10, 421.704, 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_options`
--

CREATE TABLE `ec_global_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_global_options`
--

INSERT INTO `ec_global_options` (`id`, `name`, `option_type`, `required`, `created_at`, `updated_at`) VALUES
(1, 'Warranty', 'Botble\\Ecommerce\\Option\\OptionType\\RadioButton', 1, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(2, 'RAM', 'Botble\\Ecommerce\\Option\\OptionType\\RadioButton', 1, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(3, 'CPU', 'Botble\\Ecommerce\\Option\\OptionType\\RadioButton', 1, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(4, 'HDD', 'Botble\\Ecommerce\\Option\\OptionType\\Dropdown', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_options_translations`
--

CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_global_options_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_option_value`
--

CREATE TABLE `ec_global_option_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL COMMENT 'option id',
  `option_value` tinytext DEFAULT NULL COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int(11) NOT NULL DEFAULT 9999,
  `affect_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_global_option_value`
--

INSERT INTO `ec_global_option_value` (`id`, `option_id`, `option_value`, `affect_price`, `order`, `affect_type`, `created_at`, `updated_at`) VALUES
(1, 1, '1 Year', 0, 9999, 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(2, 1, '2 Year', 10, 9999, 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(3, 1, '3 Year', 20, 9999, 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(4, 2, '4GB', 0, 9999, 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(5, 2, '8GB', 10, 9999, 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(6, 2, '16GB', 20, 9999, 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(7, 3, 'Core i5', 0, 9999, 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(8, 3, 'Core i7', 10, 9999, 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(9, 3, 'Core i9', 20, 9999, 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(10, 4, '128GB', 0, 9999, 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(11, 4, '256GB', 10, 9999, 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(12, 4, '512GB', 20, 9999, 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_option_value_translations`
--

CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_global_option_value_id` bigint(20) UNSIGNED NOT NULL,
  `option_value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_product_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_invoices`
--

CREATE TABLE `ec_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `company_logo` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `customer_phone` varchar(191) DEFAULT NULL,
  `customer_address` varchar(191) DEFAULT NULL,
  `customer_country` varchar(191) DEFAULT NULL,
  `customer_state` varchar(191) DEFAULT NULL,
  `customer_city` varchar(191) DEFAULT NULL,
  `customer_zip_code` varchar(191) DEFAULT NULL,
  `customer_address_line` varchar(191) DEFAULT NULL,
  `customer_tax_id` varchar(191) DEFAULT NULL,
  `sub_total` decimal(15,2) UNSIGNED NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT 0.00,
  `shipping_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `payment_fee` decimal(15,2) DEFAULT 0.00,
  `discount_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `shipping_option` varchar(60) DEFAULT NULL,
  `shipping_method` varchar(60) NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) DEFAULT NULL,
  `discount_description` varchar(191) DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_invoice_items`
--

CREATE TABLE `ec_invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(15,2) UNSIGNED NOT NULL,
  `tax_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_options`
--

CREATE TABLE `ec_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) DEFAULT NULL COMMENT 'option type',
  `product_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 9999,
  `required` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_options_translations`
--

CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_options_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_option_value`
--

CREATE TABLE `ec_option_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL COMMENT 'option id',
  `option_value` tinytext DEFAULT NULL COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int(11) NOT NULL DEFAULT 9999,
  `affect_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_option_value_translations`
--

CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_option_value_id` bigint(20) UNSIGNED NOT NULL,
  `option_value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_option` varchar(60) DEFAULT NULL,
  `shipping_method` varchar(60) NOT NULL DEFAULT 'default',
  `status` varchar(120) NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT 0.00,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `payment_fee` decimal(15,2) DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `coupon_code` varchar(120) DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_description` varchar(191) DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT 0,
  `cancellation_reason` varchar(191) DEFAULT NULL,
  `cancellation_reason_description` varchar(191) DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) DEFAULT NULL,
  `private_notes` text DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `type` varchar(60) NOT NULL DEFAULT 'shipping_address'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `extras` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT 0.00,
  `options` text DEFAULT NULL,
  `product_options` text DEFAULT NULL COMMENT 'product option data',
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) NOT NULL,
  `product_image` varchar(191) DEFAULT NULL,
  `weight` double DEFAULT 0,
  `restock_quantity` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) NOT NULL DEFAULT 'physical',
  `times_downloaded` int(11) NOT NULL DEFAULT 0,
  `license_code` text DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_referrals`
--

CREATE TABLE `ec_order_referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(39) DEFAULT NULL,
  `landing_domain` varchar(191) DEFAULT NULL,
  `landing_page` varchar(191) DEFAULT NULL,
  `landing_params` varchar(191) DEFAULT NULL,
  `referral` varchar(191) DEFAULT NULL,
  `gclid` varchar(191) DEFAULT NULL,
  `fclid` varchar(191) DEFAULT NULL,
  `utm_source` varchar(191) DEFAULT NULL,
  `utm_campaign` varchar(191) DEFAULT NULL,
  `utm_medium` varchar(191) DEFAULT NULL,
  `utm_term` varchar(191) DEFAULT NULL,
  `utm_content` varchar(191) DEFAULT NULL,
  `referrer_url` text DEFAULT NULL,
  `referrer_domain` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_returns`
--

CREATE TABLE `ec_order_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Order ID',
  `store_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Customer ID',
  `reason` text DEFAULT NULL COMMENT 'Reason return order',
  `order_status` varchar(191) DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_return_histories`
--

CREATE TABLE `ec_order_return_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_return_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `reason` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_return_items`
--

CREATE TABLE `ec_order_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_return_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Order product id',
  `product_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) NOT NULL,
  `product_image` varchar(191) DEFAULT NULL,
  `qty` int(11) NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_tax_information`
--

CREATE TABLE `ec_order_tax_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(120) NOT NULL,
  `company_address` varchar(191) NOT NULL,
  `company_tax_code` varchar(20) NOT NULL,
  `company_email` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `images` text DEFAULT NULL,
  `video_media` text DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `with_storehouse_management` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `stock_status` varchar(191) DEFAULT 'in_stock',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT 0,
  `sale_type` tinyint(4) NOT NULL DEFAULT 0,
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT 0,
  `created_by_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) DEFAULT NULL,
  `product_type` varchar(60) DEFAULT 'physical',
  `barcode` varchar(150) DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT 0,
  `license_code_type` enum('auto_generate','pick_from_list') NOT NULL DEFAULT 'auto_generate',
  `minimum_order_quantity` int(10) UNSIGNED DEFAULT 0,
  `maximum_order_quantity` int(10) UNSIGNED DEFAULT 0,
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT 0,
  `specification_table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `video_media`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `stock_status`, `is_featured`, `brand_id`, `is_variation`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `tax_id`, `views`, `created_at`, `updated_at`, `created_by_id`, `created_by_type`, `image`, `product_type`, `barcode`, `cost_per_item`, `generate_license_code`, `license_code_type`, `minimum_order_quantity`, `maximum_order_quantity`, `notify_attachment_updated`, `specification_table_id`, `store_id`, `approved_by`) VALUES
(1, 'Smart Home Speaker', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\",\"products\\/1-4.jpg\"]', NULL, 'YA-168-A1', 0, 14, 0, 1, 'in_stock', 0, 6, 0, 0, 676.35, NULL, NULL, NULL, 11, 13, 16, 717, NULL, 95074, '2025-08-02 02:15:25', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '4837364535611', NULL, 0, 'auto_generate', 0, 0, 0, 1, 4, 0),
(2, 'Headphone Ultra Bass', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\",\"products\\/2-4.jpg\"]', NULL, 'O5-190-A1', 0, 20, 0, 1, 'in_stock', 0, 2, 0, 0, 240.39, NULL, NULL, NULL, 12, 10, 18, 778, NULL, 93681, '2025-08-02 02:15:25', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9362103046691', NULL, 0, 'auto_generate', 0, 0, 0, 2, 1, 0),
(3, 'Boxed - Bluetooth Headphone', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\",\"products\\/3-4.jpg\"]', NULL, 'XJ-156-A1', 0, 14, 0, 1, 'in_stock', 1, 2, 0, 0, 944.54, NULL, NULL, NULL, 12, 17, 11, 626, NULL, 143095, '2025-08-02 02:15:25', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '3209835736314', NULL, 0, 'auto_generate', 0, 0, 0, 2, 5, 0),
(4, 'Camera Samsung SS-24 (Digital)', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\",\"products\\/4-4.jpg\"]', NULL, 'SG-186', 0, 12, 0, 1, 'in_stock', 0, 1, 0, 0, 1407.18, 1073.18, NULL, NULL, 18, 13, 19, 802, NULL, 74568, '2025-08-02 02:15:25', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '1053252400189', NULL, 0, 'auto_generate', 0, 0, 0, 2, 5, 0),
(5, 'Macbook Pro 2015', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\",\"products\\/5-4.jpg\"]', NULL, 'Q0-183-A1', 0, 17, 0, 1, 'in_stock', 0, 7, 0, 0, 843.13, NULL, NULL, NULL, 16, 17, 19, 790, NULL, 117022, '2025-08-02 02:15:25', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8518098875131', NULL, 0, 'auto_generate', 0, 0, 0, 1, 1, 0),
(6, 'Apple Watch Serial 7', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/6-1.jpg\",\"products\\/6-2.jpg\",\"products\\/6-3.jpg\",\"products\\/6-4.jpg\"]', NULL, '90-177', 0, 15, 0, 1, 'in_stock', 1, 7, 0, 0, 942.46, 820.46, NULL, NULL, 17, 18, 15, 556, NULL, 185223, '2025-08-02 02:15:25', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7218629037472', NULL, 0, 'auto_generate', 0, 0, 0, 2, 4, 0),
(7, 'Macbook Pro 13 inch', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/7-1.jpg\",\"products\\/7-2.jpg\",\"products\\/7-3.jpg\"]', NULL, 'T5-184-A1', 0, 17, 0, 1, 'in_stock', 0, 1, 0, 0, 1108.99, NULL, NULL, NULL, 13, 12, 17, 821, NULL, 181910, '2025-08-02 02:15:25', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1976986176741', NULL, 0, 'auto_generate', 0, 0, 0, 2, 4, 0),
(8, 'Apple Keyboard (Digital)', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\",\"products\\/8-4.jpg\"]', NULL, 'MP-139', 0, 15, 0, 1, 'in_stock', 0, 7, 0, 0, 1650.45, 496.45, NULL, NULL, 15, 17, 17, 745, NULL, 66593, '2025-08-02 02:15:25', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '8452752791866', NULL, 0, 'auto_generate', 0, 0, 0, 2, 1, 0),
(9, 'MacSafe 80W', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/9-1.jpg\",\"products\\/9-2.jpg\",\"products\\/9-3.jpg\"]', NULL, 'BN-193-A1', 0, 19, 0, 1, 'in_stock', 0, 2, 0, 0, 1629.34, NULL, NULL, NULL, 11, 18, 13, 785, NULL, 26253, '2025-08-02 02:15:25', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0620262713687', NULL, 0, 'auto_generate', 0, 0, 0, 2, 5, 0),
(10, 'Hand playstation', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/10-1.jpg\",\"products\\/10-2.jpg\",\"products\\/10-3.jpg\",\"products\\/10-4.jpg\"]', NULL, 'IB-167', 0, 20, 0, 1, 'in_stock', 1, 3, 0, 0, 1077.26, 1054.26, NULL, NULL, 19, 10, 11, 865, NULL, 193082, '2025-08-02 02:15:25', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0140915995470', NULL, 0, 'auto_generate', 0, 0, 0, 1, 9, 0),
(11, 'Apple Airpods Serial 3', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\",\"products\\/11-4.jpg\"]', NULL, '5L-153', 0, 20, 0, 1, 'in_stock', 0, 2, 0, 0, 655.58, 188.58, NULL, NULL, 11, 13, 20, 736, NULL, 109058, '2025-08-02 02:15:25', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0635810337642', NULL, 0, 'auto_generate', 0, 0, 0, 1, 8, 0),
(12, 'Cool Smart Watches (Digital)', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\",\"products\\/12-4.jpg\"]', NULL, 'WY-147', 0, 13, 0, 1, 'in_stock', 1, 4, 0, 0, 1884.14, 888.14, NULL, NULL, 18, 18, 15, 542, NULL, 181931, '2025-08-02 02:15:25', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '7941711404301', NULL, 0, 'auto_generate', 0, 0, 0, 1, 9, 0),
(13, 'Black Smart Watches', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/13-1.jpg\",\"products\\/13-2.jpg\",\"products\\/13-3.jpg\",\"products\\/13-4.jpg\"]', NULL, 'Q1-102-A1', 0, 15, 0, 1, 'in_stock', 1, 2, 0, 0, 118.78, NULL, NULL, NULL, 10, 19, 19, 524, NULL, 185104, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9103972604281', NULL, 0, 'auto_generate', 0, 0, 0, 1, 8, 0),
(14, 'Leather Watch In Black', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/14-1.jpg\",\"products\\/14-2.jpg\",\"products\\/14-3.jpg\",\"products\\/14-4.jpg\"]', NULL, 'DT-134-A1', 0, 10, 0, 1, 'in_stock', 0, 1, 0, 0, 216.28, NULL, NULL, NULL, 11, 16, 12, 877, NULL, 89322, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9225403119383', NULL, 0, 'auto_generate', 0, 0, 0, 2, 9, 0),
(15, 'Macbook Pro 2015 13 inch', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/15-1.jpg\",\"products\\/15-2.jpg\",\"products\\/15-3.jpg\",\"products\\/15-4.jpg\"]', NULL, 'KT-137', 0, 14, 0, 1, 'in_stock', 1, 5, 0, 0, 1287.61, 952.8314, NULL, NULL, 14, 14, 18, 502, NULL, 60023, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '6268945658654', NULL, 0, 'auto_generate', 0, 0, 0, 2, 3, 0),
(16, 'Historic Alarm Clock (Digital)', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\"]', NULL, 'JX-179-A1', 0, 18, 0, 1, 'in_stock', 0, 1, 0, 0, 821.79, 673.8678, NULL, NULL, 20, 20, 11, 666, NULL, 2148, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '4939154861129', NULL, 0, 'auto_generate', 0, 0, 0, 1, 4, 0),
(17, 'Black Glasses', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\",\"products\\/17-4.jpg\"]', NULL, 'PF-157-A1', 0, 18, 0, 1, 'in_stock', 1, 5, 0, 0, 317.96, NULL, NULL, NULL, 20, 17, 12, 856, NULL, 172293, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '4570974537414', NULL, 0, 'auto_generate', 0, 0, 0, 2, 5, 0),
(18, 'Phillips Mouse', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\",\"products\\/18-4.jpg\"]', NULL, 'SR-129-A1', 0, 12, 0, 1, 'in_stock', 0, 6, 0, 0, 880.74, NULL, NULL, NULL, 17, 10, 17, 836, NULL, 63217, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1341894238810', NULL, 0, 'auto_generate', 0, 0, 0, 2, 1, 0);
INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `video_media`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `stock_status`, `is_featured`, `brand_id`, `is_variation`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `tax_id`, `views`, `created_at`, `updated_at`, `created_by_id`, `created_by_type`, `image`, `product_type`, `barcode`, `cost_per_item`, `generate_license_code`, `license_code_type`, `minimum_order_quantity`, `maximum_order_quantity`, `notify_attachment_updated`, `specification_table_id`, `store_id`, `approved_by`) VALUES
(19, 'Gaming Keyboard', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\",\"products\\/19-4.jpg\"]', NULL, 'KJ-124', 0, 14, 0, 1, 'in_stock', 0, 6, 0, 0, 592.03, 528.03, NULL, NULL, 19, 18, 19, 773, NULL, 92476, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2581508612592', NULL, 0, 'auto_generate', 0, 0, 0, 2, 8, 0),
(20, 'Wireless Keyboard (Digital)', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\",\"products\\/20-4.jpg\"]', NULL, 'ZG-165-A1', 0, 15, 0, 1, 'in_stock', 1, 5, 0, 0, 1279.27, 959.4525, NULL, NULL, 19, 16, 16, 681, NULL, 97116, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '8062974081531', NULL, 0, 'auto_generate', 0, 0, 0, 2, 9, 0),
(21, 'Black Smart Watches', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/21-1.jpg\",\"products\\/21-2.jpg\",\"products\\/21-3.jpg\",\"products\\/21-4.jpg\"]', NULL, 'IJ-162', 0, 11, 0, 1, 'in_stock', 0, 3, 0, 0, 383.34, 283.6716, NULL, NULL, 13, 12, 15, 552, NULL, 26505, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2429052756211', NULL, 0, 'auto_generate', 0, 0, 0, 2, 4, 0),
(22, 'Smart Home Speaker', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\",\"products\\/22-4.jpg\"]', NULL, 'VP-138-A1', 0, 13, 0, 1, 'in_stock', 1, 7, 0, 0, 481.11, NULL, NULL, NULL, 15, 17, 18, 636, NULL, 65501, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '3393721776642', NULL, 0, 'auto_generate', 0, 0, 0, 2, 2, 0),
(23, 'Headphone Ultra Bass', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\",\"products\\/23-4.jpg\"]', NULL, 'YM-176', 0, 12, 0, 1, 'in_stock', 0, 4, 0, 0, 138.94, 29.94, NULL, NULL, 13, 12, 12, 697, NULL, 116208, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8747456577237', NULL, 0, 'auto_generate', 0, 0, 0, 1, 6, 0),
(24, 'Boxed - Bluetooth Headphone (Digital)', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/24-1.jpg\",\"products\\/24-2.jpg\",\"products\\/24-3.jpg\",\"products\\/24-4.jpg\"]', NULL, 'NE-148', 0, 16, 0, 1, 'in_stock', 0, 2, 0, 0, 441.84, 26.84, NULL, NULL, 11, 18, 11, 670, NULL, 48337, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '2149385036889', NULL, 0, 'auto_generate', 0, 0, 0, 2, 4, 0),
(25, 'Camera Samsung SS-24', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/25-1.jpg\",\"products\\/25-2.jpg\",\"products\\/25-3.jpg\",\"products\\/25-4.jpg\"]', NULL, '5N-176', 0, 17, 0, 1, 'in_stock', 0, 4, 0, 0, 635.2, 197.2, NULL, NULL, 13, 19, 10, 508, NULL, 7384, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7232091145442', NULL, 0, 'auto_generate', 0, 0, 0, 2, 6, 0),
(26, 'Leather Watch In Black', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/26-1.jpg\",\"products\\/26-2.jpg\",\"products\\/26-3.jpg\",\"products\\/26-4.jpg\"]', NULL, 'YB-118-A1', 0, 11, 0, 1, 'in_stock', 0, 6, 0, 0, 760.59, NULL, NULL, NULL, 13, 20, 16, 596, NULL, 98128, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2477890804632', NULL, 0, 'auto_generate', 0, 0, 0, 2, 5, 0),
(27, 'Apple iPhone 13 Plus', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/27-1.jpg\",\"products\\/27-2.jpg\",\"products\\/27-3.jpg\",\"products\\/27-4.jpg\"]', NULL, 'MH-141', 0, 14, 0, 1, 'in_stock', 0, 2, 0, 0, 1461.93, 289.93, NULL, NULL, 19, 13, 16, 513, NULL, 160126, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9292608153795', NULL, 0, 'auto_generate', 0, 0, 0, 1, 1, 0),
(28, 'Macbook Pro 2015 (Digital)', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/28-1.jpg\",\"products\\/28-2.jpg\",\"products\\/28-3.jpg\",\"products\\/28-4.jpg\"]', NULL, 'ST-148-A1', 0, 17, 0, 1, 'in_stock', 1, 5, 0, 0, 441.68, 379.8448, NULL, NULL, 15, 19, 11, 654, NULL, 74155, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '4971573630801', NULL, 0, 'auto_generate', 0, 0, 0, 2, 2, 0),
(29, 'Apple Watch Serial 7', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/29-1.jpg\",\"products\\/29-2.jpg\",\"products\\/29-3.jpg\"]', NULL, 'C8-180-A1', 0, 11, 0, 1, 'in_stock', 0, 4, 0, 0, 1161.98, NULL, NULL, NULL, 18, 15, 19, 777, NULL, 13138, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2792482158550', NULL, 0, 'auto_generate', 0, 0, 0, 2, 9, 0),
(30, 'Macbook Pro 13 inch', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/30-1.jpg\",\"products\\/30-2.jpg\",\"products\\/30-3.jpg\",\"products\\/30-4.jpg\"]', NULL, 'SO-172-A1', 0, 19, 0, 1, 'in_stock', 0, 6, 0, 0, 1363.43, NULL, NULL, NULL, 19, 14, 20, 842, NULL, 125578, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '6471854827558', NULL, 0, 'auto_generate', 0, 0, 0, 1, 5, 0),
(31, 'Apple Keyboard', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/31-1.jpg\",\"products\\/31-2.jpg\",\"products\\/31-3.jpg\",\"products\\/31-4.jpg\"]', NULL, 'LI-125', 0, 20, 0, 1, 'in_stock', 0, 6, 0, 0, 674.71, 282.71, NULL, NULL, 11, 19, 17, 867, NULL, 46972, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0696232611468', NULL, 0, 'auto_generate', 0, 0, 0, 2, 9, 0),
(32, 'MacSafe 80W (Digital)', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/32-1.jpg\",\"products\\/32-2.jpg\",\"products\\/32-3.jpg\",\"products\\/32-4.jpg\"]', NULL, 'WV-126-A1', 0, 15, 0, 1, 'in_stock', 0, 6, 0, 0, 307.7, 221.544, NULL, NULL, 15, 11, 20, 827, NULL, 162570, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '0077046314057', NULL, 0, 'auto_generate', 0, 0, 0, 2, 2, 0),
(33, 'Hand playstation', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/33-1.jpg\",\"products\\/33-2.jpg\",\"products\\/33-3.jpg\",\"products\\/33-4.jpg\"]', NULL, 'HO-150', 0, 12, 0, 1, 'in_stock', 0, 1, 0, 0, 562.4, 416.176, NULL, NULL, 17, 20, 16, 821, NULL, 90972, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '6938712697680', NULL, 0, 'auto_generate', 0, 0, 0, 2, 9, 0),
(34, 'Apple Airpods Serial 3', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/34-1.jpg\",\"products\\/34-2.jpg\",\"products\\/34-3.jpg\",\"products\\/34-4.jpg\"]', NULL, '3W-120-A1', 0, 11, 0, 1, 'in_stock', 0, 4, 0, 0, 872.95, NULL, NULL, NULL, 18, 14, 18, 652, NULL, 102196, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9541517395681', NULL, 0, 'auto_generate', 0, 0, 0, 2, 1, 0),
(35, 'Cool Smart Watches', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/35-1.jpg\",\"products\\/35-2.jpg\",\"products\\/35-3.jpg\",\"products\\/35-4.jpg\"]', NULL, 'H8-120-A1', 0, 10, 0, 1, 'in_stock', 0, 1, 0, 0, 1138.93, NULL, NULL, NULL, 13, 19, 19, 642, NULL, 23078, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '6604269226078', NULL, 0, 'auto_generate', 0, 0, 0, 1, 7, 0),
(36, 'Black Smart Watches (Digital)', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/36-1.jpg\",\"products\\/36-2.jpg\",\"products\\/36-3.jpg\"]', NULL, 'VZ-111', 0, 16, 0, 1, 'in_stock', 0, 3, 0, 0, 1479.79, 1109.8425, NULL, NULL, 18, 10, 19, 703, NULL, 42686, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '9454530639260', NULL, 0, 'auto_generate', 0, 0, 0, 1, 9, 0);
INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `video_media`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `stock_status`, `is_featured`, `brand_id`, `is_variation`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `tax_id`, `views`, `created_at`, `updated_at`, `created_by_id`, `created_by_type`, `image`, `product_type`, `barcode`, `cost_per_item`, `generate_license_code`, `license_code_type`, `minimum_order_quantity`, `maximum_order_quantity`, `notify_attachment_updated`, `specification_table_id`, `store_id`, `approved_by`) VALUES
(37, 'Leather Watch In Black', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/37-1.jpg\",\"products\\/37-2.jpg\",\"products\\/37-3.jpg\"]', NULL, 'DZ-111', 0, 13, 0, 1, 'in_stock', 1, 6, 0, 0, 1232.61, 1204.61, NULL, NULL, 20, 15, 15, 813, NULL, 30885, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1690935923803', NULL, 0, 'auto_generate', 0, 0, 0, 2, 1, 0),
(38, 'Macbook Pro 2015 13 inch', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/38-1.jpg\",\"products\\/38-2.jpg\",\"products\\/38-3.jpg\",\"products\\/38-4.jpg\"]', NULL, 'ZR-146', 0, 10, 0, 1, 'in_stock', 0, 3, 0, 0, 703.98, 369.98, NULL, NULL, 12, 13, 13, 896, NULL, 137171, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7476896020416', NULL, 0, 'auto_generate', 0, 0, 0, 2, 3, 0),
(39, 'Sony WH-1000XM4 Wireless Headphones', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/39-1.jpg\",\"products\\/39-2.jpg\",\"products\\/39-3.jpg\",\"products\\/39-4.jpg\"]', NULL, 'VS-182-A1', 0, 19, 0, 1, 'in_stock', 0, 2, 0, 0, 984.73, NULL, NULL, NULL, 16, 14, 16, 509, NULL, 140341, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8294733522065', NULL, 0, 'auto_generate', 0, 0, 0, 1, 6, 0),
(40, 'Samsung Galaxy S22 Ultra (Digital)', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/40-1.jpg\",\"products\\/40-2.jpg\",\"products\\/40-3.jpg\",\"products\\/40-4.jpg\"]', NULL, 'FC-179-A1', 0, 12, 0, 1, 'in_stock', 1, 2, 0, 0, 1997.38, 1717.7468, NULL, NULL, 17, 17, 11, 800, NULL, 129879, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '8292362402567', NULL, 0, 'auto_generate', 0, 0, 0, 2, 4, 0),
(41, 'Dell XPS 15 Laptop', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/41-1.jpg\",\"products\\/41-2.jpg\",\"products\\/41-3.jpg\",\"products\\/41-4.jpg\"]', NULL, 'OL-193-A1', 0, 18, 0, 1, 'in_stock', 0, 6, 0, 0, 1771.89, NULL, NULL, NULL, 18, 14, 14, 875, NULL, 158193, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2170082754363', NULL, 0, 'auto_generate', 0, 0, 0, 2, 3, 0),
(42, 'iPad Pro 12.9-inch', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/42-1.jpg\",\"products\\/42-2.jpg\",\"products\\/42-3.jpg\"]', NULL, 'WV-186', 0, 14, 0, 1, 'in_stock', 0, 5, 0, 0, 1577, 226, NULL, NULL, 18, 14, 18, 879, NULL, 136859, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0689401859662', NULL, 0, 'auto_generate', 0, 0, 0, 2, 4, 0),
(43, 'Bose QuietComfort Earbuds', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/43-1.jpg\",\"products\\/43-2.jpg\",\"products\\/43-3.jpg\"]', NULL, 'N3-185-A1', 0, 15, 0, 1, 'in_stock', 1, 6, 0, 0, 588.11, NULL, NULL, NULL, 12, 16, 19, 668, NULL, 157001, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7099357789709', NULL, 0, 'auto_generate', 0, 0, 0, 1, 1, 0),
(44, 'LG OLED C1 Series TV (Digital)', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/44-1.jpg\",\"products\\/44-2.jpg\",\"products\\/44-3.jpg\"]', NULL, 'MV-147-A1', 0, 19, 0, 1, 'in_stock', 1, 6, 0, 0, 1387.55, 1151.6665, NULL, NULL, 10, 16, 14, 575, NULL, 13302, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '9097984997137', NULL, 0, 'auto_generate', 0, 0, 0, 1, 1, 0),
(45, 'Dyson V11 Vacuum Cleaner', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/45-1.jpg\",\"products\\/45-2.jpg\",\"products\\/45-3.jpg\",\"products\\/45-4.jpg\"]', NULL, '6P-200', 0, 16, 0, 1, 'in_stock', 1, 5, 0, 0, 554.84, 552.84, NULL, NULL, 10, 19, 20, 759, NULL, 152818, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7605513574661', NULL, 0, 'auto_generate', 0, 0, 0, 1, 3, 0),
(46, 'Nintendo Switch OLED Model', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/46-1.jpg\",\"products\\/46-2.jpg\",\"products\\/46-3.jpg\",\"products\\/46-4.jpg\"]', NULL, 'UW-131-A1', 0, 10, 0, 1, 'in_stock', 0, 5, 0, 0, 1005.16, NULL, NULL, NULL, 15, 13, 16, 703, NULL, 52043, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '3315629009967', NULL, 0, 'auto_generate', 0, 0, 0, 1, 9, 0),
(47, 'Canon EOS R5 Camera', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/47-1.jpg\",\"products\\/47-2.jpg\",\"products\\/47-3.jpg\"]', NULL, '04-171-A1', 0, 17, 0, 1, 'in_stock', 0, 5, 0, 0, 225.42, NULL, NULL, NULL, 11, 19, 19, 598, NULL, 123981, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1224569946947', NULL, 0, 'auto_generate', 0, 0, 0, 1, 3, 0),
(48, 'Fitbit Sense Smartwatch (Digital)', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/48-1.jpg\",\"products\\/48-2.jpg\",\"products\\/48-3.jpg\",\"products\\/48-4.jpg\"]', NULL, 'YZ-199', 0, 14, 0, 1, 'in_stock', 0, 5, 0, 0, 1190.37, 662.37, NULL, NULL, 12, 13, 10, 592, NULL, 67957, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '8245878919333', NULL, 0, 'auto_generate', 0, 0, 0, 1, 8, 0),
(49, 'Sonos Beam Soundbar', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/49-1.jpg\",\"products\\/49-2.jpg\",\"products\\/49-3.jpg\",\"products\\/49-4.jpg\"]', NULL, 'MU-156-A1', 0, 11, 0, 1, 'in_stock', 0, 6, 0, 0, 945.71, NULL, NULL, NULL, 16, 14, 15, 731, NULL, 159697, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0864952639912', NULL, 0, 'auto_generate', 0, 0, 0, 2, 2, 0),
(50, 'Logitech MX Master 3 Mouse', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/50-1.jpg\",\"products\\/50-2.jpg\",\"products\\/50-3.jpg\",\"products\\/50-4.jpg\"]', NULL, 'O0-142-A1', 0, 17, 0, 1, 'in_stock', 0, 4, 0, 0, 1377.34, NULL, NULL, NULL, 17, 17, 19, 714, NULL, 195793, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0354123277406', NULL, 0, 'auto_generate', 0, 0, 0, 1, 3, 0),
(51, 'Kindle Paperwhite E-reader', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/51-1.jpg\",\"products\\/51-2.jpg\",\"products\\/51-3.jpg\",\"products\\/51-4.jpg\"]', NULL, 'O3-147', 0, 15, 0, 1, 'in_stock', 0, 2, 0, 0, 849.73, 730.7678, NULL, NULL, 18, 18, 19, 567, NULL, 117791, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0965810919099', NULL, 0, 'auto_generate', 0, 0, 0, 2, 3, 0),
(52, 'GoPro HERO10 Black (Digital)', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/52-1.jpg\",\"products\\/52-2.jpg\",\"products\\/52-3.jpg\"]', NULL, 'CR-162', 0, 18, 0, 1, 'in_stock', 0, 2, 0, 0, 1935.48, 1567.7388, NULL, NULL, 16, 18, 11, 889, NULL, 62545, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '6443687602411', NULL, 0, 'auto_generate', 0, 0, 0, 1, 3, 0),
(53, 'Anker PowerCore Power Bank', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/53-1.jpg\",\"products\\/53-2.jpg\",\"products\\/53-3.jpg\",\"products\\/53-4.jpg\"]', NULL, 'LL-154-A1', 0, 14, 0, 1, 'in_stock', 0, 4, 0, 0, 679.84, NULL, NULL, NULL, 19, 18, 15, 575, NULL, 9974, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1018922992357', NULL, 0, 'auto_generate', 0, 0, 0, 1, 8, 0),
(54, 'Product 54', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/54-1.jpg\",\"products\\/54-2.jpg\",\"products\\/54-3.jpg\"]', NULL, 'VB-148', 0, 12, 0, 1, 'in_stock', 0, 5, 0, 0, 789, 524, NULL, NULL, 14, 19, 12, 610, NULL, 22675, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '5359911059269', NULL, 0, 'auto_generate', 0, 0, 0, 1, 7, 0),
(55, 'Smart Home Speaker', NULL, NULL, 'published', '[\"products\\/1-2.jpg\"]', NULL, 'YA-168-A1', 0, 14, 0, 1, 'in_stock', 0, 6, 1, 0, 676.35, NULL, NULL, NULL, 11, 13, 16, 717, NULL, 0, '2025-08-02 02:15:26', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0748024141346', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(56, 'Smart Home Speaker', NULL, NULL, 'published', '[\"products\\/1-3.jpg\"]', NULL, 'YA-168-A1-A2', 0, 14, 0, 1, 'in_stock', 0, 6, 1, 0, 676.35, NULL, NULL, NULL, 11, 13, 16, 717, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9982569575230', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0);
INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `video_media`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `stock_status`, `is_featured`, `brand_id`, `is_variation`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `tax_id`, `views`, `created_at`, `updated_at`, `created_by_id`, `created_by_type`, `image`, `product_type`, `barcode`, `cost_per_item`, `generate_license_code`, `license_code_type`, `minimum_order_quantity`, `maximum_order_quantity`, `notify_attachment_updated`, `specification_table_id`, `store_id`, `approved_by`) VALUES
(57, 'Smart Home Speaker', NULL, NULL, 'published', '[\"products\\/1-4.jpg\"]', NULL, 'YA-168-A1-A3', 0, 14, 0, 1, 'in_stock', 0, 6, 1, 0, 676.35, NULL, NULL, NULL, 11, 13, 16, 717, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8541784246885', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(58, 'Headphone Ultra Bass', NULL, NULL, 'published', '[\"products\\/2-2.jpg\"]', NULL, 'O5-190-A1', 0, 20, 0, 1, 'in_stock', 0, 2, 1, 0, 240.39, NULL, NULL, NULL, 12, 10, 18, 778, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7553088222961', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(59, 'Boxed - Bluetooth Headphone', NULL, NULL, 'published', '[\"products\\/3-2.jpg\"]', NULL, 'XJ-156-A1', 0, 14, 0, 1, 'in_stock', 0, 2, 1, 0, 944.54, NULL, NULL, NULL, 12, 17, 11, 626, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1716606094181', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(60, 'Boxed - Bluetooth Headphone', NULL, NULL, 'published', '[\"products\\/3-3.jpg\"]', NULL, 'XJ-156-A1-A2', 0, 14, 0, 1, 'in_stock', 0, 2, 1, 0, 944.54, NULL, NULL, NULL, 12, 17, 11, 626, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1184208233640', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(61, 'Macbook Pro 2015', NULL, NULL, 'published', '[\"products\\/5-2.jpg\"]', NULL, 'Q0-183-A1', 0, 17, 0, 1, 'in_stock', 0, 7, 1, 0, 843.13, NULL, NULL, NULL, 16, 17, 19, 790, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '4032954752199', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(62, 'Macbook Pro 2015', NULL, NULL, 'published', '[\"products\\/5-3.jpg\"]', NULL, 'Q0-183-A1-A2', 0, 17, 0, 1, 'in_stock', 0, 7, 1, 0, 843.13, NULL, NULL, NULL, 16, 17, 19, 790, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2267477793998', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(63, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/7-2.jpg\"]', NULL, 'T5-184-A1', 0, 17, 0, 1, 'in_stock', 0, 1, 1, 0, 1108.99, NULL, NULL, NULL, 13, 12, 17, 821, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7865555985393', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(64, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/7-3.jpg\"]', NULL, 'T5-184-A1-A2', 0, 17, 0, 1, 'in_stock', 0, 1, 1, 0, 1108.99, NULL, NULL, NULL, 13, 12, 17, 821, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '5347895303072', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(65, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/7-1.jpg\"]', NULL, 'T5-184-A1-A3', 0, 17, 0, 1, 'in_stock', 0, 1, 1, 0, 1108.99, NULL, NULL, NULL, 13, 12, 17, 821, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2802898199532', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(66, 'MacSafe 80W', NULL, NULL, 'published', '[\"products\\/9-2.jpg\"]', NULL, 'BN-193-A1', 0, 19, 0, 1, 'in_stock', 0, 2, 1, 0, 1629.34, NULL, NULL, NULL, 11, 18, 13, 785, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '6863118226755', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(67, 'MacSafe 80W', NULL, NULL, 'published', '[\"products\\/9-3.jpg\"]', NULL, 'BN-193-A1-A2', 0, 19, 0, 1, 'in_stock', 0, 2, 1, 0, 1629.34, NULL, NULL, NULL, 11, 18, 13, 785, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7476449627024', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(68, 'Black Smart Watches', NULL, NULL, 'published', '[\"products\\/13-2.jpg\"]', NULL, 'Q1-102-A1', 0, 15, 0, 1, 'in_stock', 0, 2, 1, 0, 118.78, NULL, NULL, NULL, 10, 19, 19, 524, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0949064920858', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(69, 'Leather Watch In Black', NULL, NULL, 'published', '[\"products\\/14-2.jpg\"]', NULL, 'DT-134-A1', 0, 10, 0, 1, 'in_stock', 0, 1, 1, 0, 216.28, NULL, NULL, NULL, 11, 16, 12, 877, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '3906940698789', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(70, 'Leather Watch In Black', NULL, NULL, 'published', '[\"products\\/14-3.jpg\"]', NULL, 'DT-134-A1-A2', 0, 10, 0, 1, 'in_stock', 0, 1, 1, 0, 216.28, NULL, NULL, NULL, 11, 16, 12, 877, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2412167033414', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(71, 'Leather Watch In Black', NULL, NULL, 'published', '[\"products\\/14-4.jpg\"]', NULL, 'DT-134-A1-A3', 0, 10, 0, 1, 'in_stock', 0, 1, 1, 0, 216.28, NULL, NULL, NULL, 11, 16, 12, 877, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1102167718817', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(72, 'Leather Watch In Black', NULL, NULL, 'published', '[\"products\\/14-1.jpg\"]', NULL, 'DT-134-A1-A4', 0, 10, 0, 1, 'in_stock', 0, 1, 1, 0, 216.28, NULL, NULL, NULL, 11, 16, 12, 877, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '4315642963771', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(73, 'Historic Alarm Clock (Digital)', NULL, NULL, 'published', '[\"products\\/16-2.jpg\"]', NULL, 'JX-179-A1', 0, 18, 0, 1, 'in_stock', 0, 1, 1, 0, 821.79, 673.8678, NULL, NULL, 20, 20, 11, 666, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '2858570655513', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(74, 'Black Glasses', NULL, NULL, 'published', '[\"products\\/17-2.jpg\"]', NULL, 'PF-157-A1', 0, 18, 0, 1, 'in_stock', 0, 5, 1, 0, 317.96, NULL, NULL, NULL, 20, 17, 12, 856, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8110718241281', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(75, 'Black Glasses', NULL, NULL, 'published', '[\"products\\/17-3.jpg\"]', NULL, 'PF-157-A1-A2', 0, 18, 0, 1, 'in_stock', 0, 5, 1, 0, 317.96, NULL, NULL, NULL, 20, 17, 12, 856, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7821008582847', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(76, 'Phillips Mouse', NULL, NULL, 'published', '[\"products\\/18-2.jpg\"]', NULL, 'SR-129-A1', 0, 12, 0, 1, 'in_stock', 0, 6, 1, 0, 880.74, NULL, NULL, NULL, 17, 10, 17, 836, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '4300050869197', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(77, 'Wireless Keyboard (Digital)', NULL, NULL, 'published', '[\"products\\/20-2.jpg\"]', NULL, 'ZG-165-A1', 0, 15, 0, 1, 'in_stock', 0, 5, 1, 0, 1279.27, 959.4525, NULL, NULL, 19, 16, 16, 681, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '7358905750531', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(78, 'Wireless Keyboard (Digital)', NULL, NULL, 'published', '[\"products\\/20-3.jpg\"]', NULL, 'ZG-165-A1-A2', 0, 15, 0, 1, 'in_stock', 0, 5, 1, 0, 1279.27, 1036.2087, NULL, NULL, 19, 16, 16, 681, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '1870903984016', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(79, 'Wireless Keyboard (Digital)', NULL, NULL, 'published', '[\"products\\/20-4.jpg\"]', NULL, 'ZG-165-A1-A3', 0, 15, 0, 1, 'in_stock', 0, 5, 1, 0, 1279.27, 1100.1722, NULL, NULL, 19, 16, 16, 681, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '5821708091795', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(80, 'Wireless Keyboard (Digital)', NULL, NULL, 'published', '[\"products\\/20-1.jpg\"]', NULL, 'ZG-165-A1-A4', 0, 15, 0, 1, 'in_stock', 0, 5, 1, 0, 1279.27, 1036.2087, NULL, NULL, 19, 16, 16, 681, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '8150256495005', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(81, 'Wireless Keyboard (Digital)', NULL, NULL, 'published', '[\"products\\/20-1.jpg\"]', NULL, 'ZG-165-A1-A5', 0, 15, 0, 1, 'in_stock', 0, 5, 1, 0, 1279.27, 1125.7576, NULL, NULL, 19, 16, 16, 681, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '1447407723610', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(82, 'Smart Home Speaker', NULL, NULL, 'published', '[\"products\\/22-2.jpg\"]', NULL, 'VP-138-A1', 0, 13, 0, 1, 'in_stock', 0, 7, 1, 0, 481.11, NULL, NULL, NULL, 15, 17, 18, 636, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '4186670024525', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(83, 'Leather Watch In Black', NULL, NULL, 'published', '[\"products\\/26-2.jpg\"]', NULL, 'YB-118-A1', 0, 11, 0, 1, 'in_stock', 0, 6, 1, 0, 760.59, NULL, NULL, NULL, 13, 20, 16, 596, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '6078773147097', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(84, 'Leather Watch In Black', NULL, NULL, 'published', '[\"products\\/26-3.jpg\"]', NULL, 'YB-118-A1-A2', 0, 11, 0, 1, 'in_stock', 0, 6, 1, 0, 760.59, NULL, NULL, NULL, 13, 20, 16, 596, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '5656395689921', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(85, 'Macbook Pro 2015 (Digital)', NULL, NULL, 'published', '[\"products\\/28-2.jpg\"]', NULL, 'ST-148-A1', 0, 17, 0, 1, 'in_stock', 0, 5, 1, 0, 441.68, 379.8448, NULL, NULL, 15, 19, 11, 654, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '0494660834592', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(86, 'Macbook Pro 2015 (Digital)', NULL, NULL, 'published', '[\"products\\/28-3.jpg\"]', NULL, 'ST-148-A1-A2', 0, 17, 0, 1, 'in_stock', 0, 5, 1, 0, 441.68, 309.176, NULL, NULL, 15, 19, 11, 654, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '4314330703118', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(87, 'Apple Watch Serial 7', NULL, NULL, 'published', '[\"products\\/29-2.jpg\"]', NULL, 'C8-180-A1', 0, 11, 0, 1, 'in_stock', 0, 4, 1, 0, 1161.98, NULL, NULL, NULL, 18, 15, 19, 777, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '6096108819013', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(88, 'Apple Watch Serial 7', NULL, NULL, 'published', '[\"products\\/29-3.jpg\"]', NULL, 'C8-180-A1-A2', 0, 11, 0, 1, 'in_stock', 0, 4, 1, 0, 1161.98, NULL, NULL, NULL, 18, 15, 19, 777, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8988570293249', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(89, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/30-2.jpg\"]', NULL, 'SO-172-A1', 0, 19, 0, 1, 'in_stock', 0, 6, 1, 0, 1363.43, NULL, NULL, NULL, 19, 14, 20, 842, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2396562267677', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(90, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/30-3.jpg\"]', NULL, 'SO-172-A1-A2', 0, 19, 0, 1, 'in_stock', 0, 6, 1, 0, 1363.43, NULL, NULL, NULL, 19, 14, 20, 842, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7938317989233', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(91, 'Macbook Pro 13 inch', NULL, NULL, 'published', '[\"products\\/30-4.jpg\"]', NULL, 'SO-172-A1-A3', 0, 19, 0, 1, 'in_stock', 0, 6, 1, 0, 1363.43, NULL, NULL, NULL, 19, 14, 20, 842, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '4465773957337', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(92, 'MacSafe 80W (Digital)', NULL, NULL, 'published', '[\"products\\/32-2.jpg\"]', NULL, 'WV-126-A1', 0, 15, 0, 1, 'in_stock', 0, 6, 1, 0, 307.7, 221.544, NULL, NULL, 15, 11, 20, 827, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '2226510647308', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(93, 'MacSafe 80W (Digital)', NULL, NULL, 'published', '[\"products\\/32-3.jpg\"]', NULL, 'WV-126-A1-A2', 0, 15, 0, 1, 'in_stock', 0, 6, 1, 0, 307.7, 261.545, NULL, NULL, 15, 11, 20, 827, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '4660088036696', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(94, 'Apple Airpods Serial 3', NULL, NULL, 'published', '[\"products\\/34-2.jpg\"]', NULL, '3W-120-A1', 0, 11, 0, 1, 'in_stock', 0, 4, 1, 0, 872.95, NULL, NULL, NULL, 18, 14, 18, 652, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8491112338815', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(95, 'Apple Airpods Serial 3', NULL, NULL, 'published', '[\"products\\/34-3.jpg\"]', NULL, '3W-120-A1-A2', 0, 11, 0, 1, 'in_stock', 0, 4, 1, 0, 872.95, NULL, NULL, NULL, 18, 14, 18, 652, NULL, 0, '2025-08-02 02:15:27', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0026333047284', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(96, 'Cool Smart Watches', NULL, NULL, 'published', '[\"products\\/35-2.jpg\"]', NULL, 'H8-120-A1', 0, 10, 0, 1, 'in_stock', 0, 1, 1, 0, 1138.93, NULL, NULL, NULL, 13, 19, 19, 642, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0227202308509', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(97, 'Cool Smart Watches', NULL, NULL, 'published', '[\"products\\/35-3.jpg\"]', NULL, 'H8-120-A1-A2', 0, 10, 0, 1, 'in_stock', 0, 1, 1, 0, 1138.93, NULL, NULL, NULL, 13, 19, 19, 642, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '2430557880950', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(98, 'Sony WH-1000XM4 Wireless Headphones', NULL, NULL, 'published', '[\"products\\/39-2.jpg\"]', NULL, 'VS-182-A1', 0, 19, 0, 1, 'in_stock', 0, 2, 1, 0, 984.73, NULL, NULL, NULL, 16, 14, 16, 509, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9662106908546', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(99, 'Sony WH-1000XM4 Wireless Headphones', NULL, NULL, 'published', '[\"products\\/39-3.jpg\"]', NULL, 'VS-182-A1-A2', 0, 19, 0, 1, 'in_stock', 0, 2, 1, 0, 984.73, NULL, NULL, NULL, 16, 14, 16, 509, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9429804707570', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(100, 'Sony WH-1000XM4 Wireless Headphones', NULL, NULL, 'published', '[\"products\\/39-4.jpg\"]', NULL, 'VS-182-A1-A3', 0, 19, 0, 1, 'in_stock', 0, 2, 1, 0, 984.73, NULL, NULL, NULL, 16, 14, 16, 509, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '5773595857988', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(101, 'Sony WH-1000XM4 Wireless Headphones', NULL, NULL, 'published', '[\"products\\/39-1.jpg\"]', NULL, 'VS-182-A1-A4', 0, 19, 0, 1, 'in_stock', 0, 2, 1, 0, 984.73, NULL, NULL, NULL, 16, 14, 16, 509, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8606342980158', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(102, 'Samsung Galaxy S22 Ultra (Digital)', NULL, NULL, 'published', '[\"products\\/40-2.jpg\"]', NULL, 'FC-179-A1', 0, 12, 0, 1, 'in_stock', 0, 2, 1, 0, 1997.38, 1717.7468, NULL, NULL, 17, 17, 11, 800, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '4634584133050', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(103, 'Samsung Galaxy S22 Ultra (Digital)', NULL, NULL, 'published', '[\"products\\/40-3.jpg\"]', NULL, 'FC-179-A1-A2', 0, 12, 0, 1, 'in_stock', 0, 2, 1, 0, 1997.38, 1597.904, NULL, NULL, 17, 17, 11, 800, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '3598970159042', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(104, 'Dell XPS 15 Laptop', NULL, NULL, 'published', '[\"products\\/41-2.jpg\"]', NULL, 'OL-193-A1', 0, 18, 0, 1, 'in_stock', 0, 6, 1, 0, 1771.89, NULL, NULL, NULL, 18, 14, 14, 875, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '6644682278155', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(105, 'Dell XPS 15 Laptop', NULL, NULL, 'published', '[\"products\\/41-3.jpg\"]', NULL, 'OL-193-A1-A2', 0, 18, 0, 1, 'in_stock', 0, 6, 1, 0, 1771.89, NULL, NULL, NULL, 18, 14, 14, 875, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '5133662176358', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(106, 'Bose QuietComfort Earbuds', NULL, NULL, 'published', '[\"products\\/43-2.jpg\"]', NULL, 'N3-185-A1', 0, 15, 0, 1, 'in_stock', 0, 6, 1, 0, 588.11, NULL, NULL, NULL, 12, 16, 19, 668, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1082954234334', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(107, 'Bose QuietComfort Earbuds', NULL, NULL, 'published', '[\"products\\/43-3.jpg\"]', NULL, 'N3-185-A1-A2', 0, 15, 0, 1, 'in_stock', 0, 6, 1, 0, 588.11, NULL, NULL, NULL, 12, 16, 19, 668, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0025151894704', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(108, 'LG OLED C1 Series TV (Digital)', NULL, NULL, 'published', '[\"products\\/44-2.jpg\"]', NULL, 'MV-147-A1', 0, 19, 0, 1, 'in_stock', 0, 6, 1, 0, 1387.55, 1151.6665, NULL, NULL, 10, 16, 14, 575, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '1836572320999', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(109, 'LG OLED C1 Series TV (Digital)', NULL, NULL, 'published', '[\"products\\/44-3.jpg\"]', NULL, 'MV-147-A1-A2', 0, 19, 0, 1, 'in_stock', 0, 6, 1, 0, 1387.55, 1123.9155, NULL, NULL, 10, 16, 14, 575, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '1325098908434', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(110, 'LG OLED C1 Series TV (Digital)', NULL, NULL, 'published', '[\"products\\/44-1.jpg\"]', NULL, 'MV-147-A1-A3', 0, 19, 0, 1, 'in_stock', 0, 6, 1, 0, 1387.55, 985.1605, NULL, NULL, 10, 16, 14, 575, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '0274470727013', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(111, 'LG OLED C1 Series TV (Digital)', NULL, NULL, 'published', '[\"products\\/44-1.jpg\"]', NULL, 'MV-147-A1-A4', 0, 19, 0, 1, 'in_stock', 0, 6, 1, 0, 1387.55, 1221.044, NULL, NULL, 10, 16, 14, 575, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'digital', '0548199960403', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(112, 'Nintendo Switch OLED Model', NULL, NULL, 'published', '[\"products\\/46-2.jpg\"]', NULL, 'UW-131-A1', 0, 10, 0, 1, 'in_stock', 0, 5, 1, 0, 1005.16, NULL, NULL, NULL, 15, 13, 16, 703, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '5490357980400', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(113, 'Nintendo Switch OLED Model', NULL, NULL, 'published', '[\"products\\/46-3.jpg\"]', NULL, 'UW-131-A1-A2', 0, 10, 0, 1, 'in_stock', 0, 5, 1, 0, 1005.16, NULL, NULL, NULL, 15, 13, 16, 703, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0996665962312', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(114, 'Canon EOS R5 Camera', NULL, NULL, 'published', '[\"products\\/47-2.jpg\"]', NULL, '04-171-A1', 0, 17, 0, 1, 'in_stock', 0, 5, 1, 0, 225.42, NULL, NULL, NULL, 11, 19, 19, 598, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '1805562907267', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(115, 'Canon EOS R5 Camera', NULL, NULL, 'published', '[\"products\\/47-3.jpg\"]', NULL, '04-171-A1-A2', 0, 17, 0, 1, 'in_stock', 0, 5, 1, 0, 225.42, NULL, NULL, NULL, 11, 19, 19, 598, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0559395213064', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(116, 'Sonos Beam Soundbar', NULL, NULL, 'published', '[\"products\\/49-2.jpg\"]', NULL, 'MU-156-A1', 0, 11, 0, 1, 'in_stock', 0, 6, 1, 0, 945.71, NULL, NULL, NULL, 16, 14, 15, 731, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '6753580672504', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(117, 'Sonos Beam Soundbar', NULL, NULL, 'published', '[\"products\\/49-3.jpg\"]', NULL, 'MU-156-A1-A2', 0, 11, 0, 1, 'in_stock', 0, 6, 1, 0, 945.71, NULL, NULL, NULL, 16, 14, 15, 731, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8664115177662', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(118, 'Sonos Beam Soundbar', NULL, NULL, 'published', '[\"products\\/49-4.jpg\"]', NULL, 'MU-156-A1-A3', 0, 11, 0, 1, 'in_stock', 0, 6, 1, 0, 945.71, NULL, NULL, NULL, 16, 14, 15, 731, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '3920112009128', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(119, 'Sonos Beam Soundbar', NULL, NULL, 'published', '[\"products\\/49-1.jpg\"]', NULL, 'MU-156-A1-A4', 0, 11, 0, 1, 'in_stock', 0, 6, 1, 0, 945.71, NULL, NULL, NULL, 16, 14, 15, 731, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8958267734317', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(120, 'Logitech MX Master 3 Mouse', NULL, NULL, 'published', '[\"products\\/50-2.jpg\"]', NULL, 'O0-142-A1', 0, 17, 0, 1, 'in_stock', 0, 4, 1, 0, 1377.34, NULL, NULL, NULL, 17, 17, 19, 714, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '0787264740933', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(121, 'Logitech MX Master 3 Mouse', NULL, NULL, 'published', '[\"products\\/50-3.jpg\"]', NULL, 'O0-142-A1-A2', 0, 17, 0, 1, 'in_stock', 0, 4, 1, 0, 1377.34, NULL, NULL, NULL, 17, 17, 19, 714, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '7991810113260', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(122, 'Logitech MX Master 3 Mouse', NULL, NULL, 'published', '[\"products\\/50-4.jpg\"]', NULL, 'O0-142-A1-A3', 0, 17, 0, 1, 'in_stock', 0, 4, 1, 0, 1377.34, NULL, NULL, NULL, 17, 17, 19, 714, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '8360329201673', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(123, 'Anker PowerCore Power Bank', NULL, NULL, 'published', '[\"products\\/53-2.jpg\"]', NULL, 'LL-154-A1', 0, 14, 0, 1, 'in_stock', 0, 4, 1, 0, 679.84, NULL, NULL, NULL, 19, 18, 15, 575, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '9826524361400', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0),
(124, 'Anker PowerCore Power Bank', NULL, NULL, 'published', '[\"products\\/53-3.jpg\"]', NULL, 'LL-154-A1-A2', 0, 14, 0, 1, 'in_stock', 0, 4, 1, 0, 679.84, NULL, NULL, NULL, 19, 18, 15, 575, NULL, 0, '2025-08-02 02:15:28', '2025-08-02 02:15:44', 0, 'Botble\\ACL\\Models\\User', NULL, 'physical', '4284457401443', NULL, 0, 'auto_generate', 0, 0, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_products_translations`
--

CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_products_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `color` varchar(120) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes`
--

INSERT INTO `ec_product_attributes` (`id`, `attribute_set_id`, `title`, `slug`, `color`, `image`, `is_default`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Green', 'green', '#5FB7D4', NULL, 1, 1, '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(2, 1, 'Blue', 'blue', '#333333', NULL, 0, 2, '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(3, 1, 'Red', 'red', '#DA323F', NULL, 0, 3, '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(4, 1, 'Black', 'black', '#2F366C', NULL, 0, 4, '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(5, 1, 'Brown', 'brown', '#87554B', NULL, 0, 5, '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(6, 2, 'S', 's', NULL, NULL, 1, 1, '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(7, 2, 'M', 'm', NULL, NULL, 0, 2, '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(8, 2, 'L', 'l', NULL, NULL, 0, 3, '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(9, 2, 'XL', 'xl', NULL, NULL, 0, 4, '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(10, 2, 'XXL', 'xxl', NULL, NULL, 0, 5, '2025-08-02 02:14:58', '2025-08-02 02:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes_translations`
--

CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_attributes_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `display_layout` varchar(191) NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_comparable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_use_in_product_listing` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets`
--

INSERT INTO `ec_product_attribute_sets` (`id`, `title`, `slug`, `display_layout`, `is_searchable`, `is_comparable`, `is_use_in_product_listing`, `status`, `order`, `created_at`, `updated_at`, `use_image_from_product_variation`) VALUES
(1, 'Color', 'color', 'visual', 1, 1, 1, 'published', 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 0),
(2, 'Size', 'size', 'text', 1, 1, 1, 'published', 1, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_attribute_sets_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` mediumtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `icon_image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`, `icon`, `icon_image`) VALUES
(1, 'Hot Promotions', 0, NULL, 'published', 0, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-star', NULL),
(2, 'Electronics', 0, NULL, 'published', 1, 'product-categories/1.jpg', 1, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-laundry', NULL),
(3, 'Consumer Electronic', 2, NULL, 'published', 0, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(4, 'Home Audio & Theaters', 3, NULL, 'published', 0, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(5, 'TV & Videos', 3, NULL, 'published', 1, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(6, 'Camera, Photos & Videos', 3, NULL, 'published', 2, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(7, 'Cellphones & Accessories', 3, NULL, 'published', 3, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(8, 'Headphones', 3, NULL, 'published', 4, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(9, 'Videos games', 3, NULL, 'published', 5, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(10, 'Wireless Speakers', 3, NULL, 'published', 6, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(11, 'Office Electronic', 3, NULL, 'published', 7, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(12, 'Accessories & Parts', 2, NULL, 'published', 1, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(13, 'Digital Cables', 12, NULL, 'published', 0, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(14, 'Audio & Video Cables', 12, NULL, 'published', 1, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(15, 'Batteries', 12, NULL, 'published', 2, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(16, 'Clothing', 0, NULL, 'published', 2, 'product-categories/2.jpg', 1, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-shirt', NULL),
(17, 'Computers', 0, NULL, 'published', 3, 'product-categories/3.jpg', 1, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-desktop', NULL),
(18, 'Computer & Technologies', 17, NULL, 'published', 0, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(19, 'Computer & Tablets', 18, NULL, 'published', 0, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(20, 'Laptop', 18, NULL, 'published', 1, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(21, 'Monitors', 18, NULL, 'published', 2, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(22, 'Computer Components', 18, NULL, 'published', 3, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(23, 'Networking', 17, NULL, 'published', 1, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(24, 'Drive & Storages', 23, NULL, 'published', 0, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(25, 'Gaming Laptop', 23, NULL, 'published', 1, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(26, 'Security & Protection', 23, NULL, 'published', 2, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(27, 'Accessories', 23, NULL, 'published', 3, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, NULL),
(28, 'Home & Kitchen', 0, NULL, 'published', 4, 'product-categories/4.jpg', 1, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-lampshade', NULL),
(29, 'Health & Beauty', 0, NULL, 'published', 5, 'product-categories/5.jpg', 1, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-heart-pulse', NULL),
(30, 'Jewelry & Watch', 0, NULL, 'published', 6, 'product-categories/6.jpg', 1, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-diamond2', NULL),
(31, 'Technology Toys', 0, NULL, 'published', 7, 'product-categories/7.jpg', 1, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-desktop', NULL),
(32, 'Phones', 0, NULL, 'published', 8, 'product-categories/8.jpg', 1, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-smartphone', NULL),
(33, 'Babies & Moms', 0, NULL, 'published', 9, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-baby-bottle', NULL),
(34, 'Sport & Outdoor', 0, NULL, 'published', 10, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-baseball', NULL),
(35, 'Books & Office', 0, NULL, 'published', 11, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-book2', NULL),
(36, 'Cars & Motorcycles', 0, NULL, 'published', 12, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-car-siren', NULL),
(37, 'Home Improvements', 0, NULL, 'published', 13, NULL, 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', 'icon-wrench', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories_translations`
--

CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categorizables`
--

CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_category_product`
--

INSERT INTO `ec_product_category_product` (`category_id`, `product_id`) VALUES
(6, 1),
(12, 1),
(15, 1),
(24, 1),
(1, 2),
(9, 2),
(10, 2),
(27, 2),
(2, 3),
(9, 3),
(11, 3),
(37, 3),
(1, 4),
(16, 4),
(33, 4),
(37, 4),
(20, 5),
(24, 5),
(25, 5),
(35, 5),
(17, 6),
(26, 6),
(34, 6),
(37, 6),
(5, 7),
(30, 7),
(31, 7),
(33, 7),
(2, 8),
(6, 8),
(14, 8),
(27, 8),
(25, 9),
(33, 9),
(36, 9),
(37, 9),
(2, 10),
(13, 10),
(21, 10),
(29, 10),
(12, 11),
(17, 11),
(23, 11),
(30, 11),
(5, 12),
(6, 12),
(19, 12),
(37, 12),
(16, 13),
(17, 13),
(29, 13),
(36, 13),
(13, 14),
(20, 14),
(26, 14),
(36, 14),
(13, 15),
(18, 15),
(24, 15),
(29, 15),
(10, 16),
(12, 16),
(23, 16),
(26, 16),
(28, 17),
(30, 17),
(33, 17),
(37, 17),
(11, 18),
(25, 18),
(28, 18),
(37, 18),
(6, 19),
(13, 19),
(25, 19),
(30, 19),
(8, 20),
(9, 20),
(10, 20),
(16, 20),
(2, 21),
(9, 21),
(21, 21),
(23, 21),
(5, 22),
(16, 22),
(18, 22),
(26, 22),
(7, 23),
(17, 23),
(18, 23),
(22, 23),
(2, 24),
(20, 24),
(22, 24),
(25, 24),
(6, 25),
(25, 25),
(27, 25),
(37, 25),
(2, 26),
(9, 26),
(26, 26),
(29, 26),
(8, 27),
(12, 27),
(13, 27),
(15, 27),
(2, 28),
(16, 28),
(19, 28),
(28, 28),
(3, 29),
(6, 29),
(8, 29),
(36, 29),
(8, 30),
(16, 30),
(19, 30),
(33, 30),
(5, 31),
(20, 31),
(25, 31),
(29, 31),
(3, 32),
(23, 32),
(27, 32),
(36, 32),
(5, 33),
(6, 33),
(13, 33),
(35, 33),
(4, 34),
(5, 34),
(16, 34),
(26, 34),
(9, 35),
(12, 35),
(36, 35),
(37, 35),
(16, 36),
(27, 36),
(30, 36),
(36, 36),
(1, 37),
(7, 37),
(18, 37),
(20, 37),
(4, 38),
(22, 38),
(26, 38),
(31, 38),
(4, 39),
(5, 39),
(10, 39),
(22, 39),
(8, 40),
(9, 40),
(12, 40),
(14, 40),
(6, 41),
(10, 41),
(25, 41),
(27, 41),
(4, 42),
(9, 42),
(32, 42),
(36, 42),
(3, 43),
(4, 43),
(16, 43),
(22, 43),
(8, 44),
(17, 44),
(35, 44),
(36, 44),
(17, 45),
(19, 45),
(26, 45),
(35, 45),
(13, 46),
(23, 46),
(30, 46),
(33, 46),
(17, 47),
(26, 47),
(28, 47),
(35, 47),
(8, 48),
(15, 48),
(20, 48),
(25, 48),
(9, 49),
(24, 49),
(30, 49),
(33, 49),
(3, 50),
(9, 50),
(20, 50),
(30, 50),
(1, 51),
(3, 51),
(4, 51),
(22, 51),
(17, 52),
(27, 52),
(29, 52),
(35, 52),
(2, 53),
(14, 53),
(20, 53),
(28, 53),
(11, 54),
(18, 54),
(25, 54),
(31, 54);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2025-08-02 02:14:58', '2025-08-02 02:14:58', 0),
(2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2025-08-02 02:14:58', '2025-08-02 02:14:58', 0),
(3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2025-08-02 02:14:58', '2025-08-02 02:14:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections_translations`
--

CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_collections_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collection_products`
--

INSERT INTO `ec_product_collection_products` (`product_collection_id`, `product_id`) VALUES
(3, 1),
(3, 2),
(3, 3),
(2, 4),
(2, 5),
(1, 6),
(3, 7),
(3, 8),
(3, 9),
(1, 10),
(3, 11),
(2, 12),
(3, 13),
(1, 14),
(3, 15),
(2, 16),
(1, 17),
(3, 18),
(3, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(2, 25),
(2, 26),
(1, 27),
(3, 28),
(2, 29),
(1, 30),
(2, 31),
(1, 32),
(3, 33),
(2, 34),
(1, 35),
(3, 36),
(2, 37),
(1, 38),
(1, 39),
(1, 40),
(2, 41),
(1, 42),
(2, 43),
(3, 44),
(3, 45),
(2, 46),
(2, 47),
(1, 48),
(3, 49),
(1, 50),
(3, 51),
(1, 52),
(1, 53),
(2, 54);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint(20) UNSIGNED NOT NULL,
  `to_product_id` bigint(20) UNSIGNED NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT 0,
  `price` decimal(15,2) DEFAULT 0.00,
  `price_type` varchar(191) NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

INSERT INTO `ec_product_cross_sale_relations` (`from_product_id`, `to_product_id`, `is_variant`, `price`, `price_type`, `apply_to_all_variations`) VALUES
(1, 7, 0, 0.00, 'fixed', 1),
(1, 12, 0, 0.00, 'fixed', 1),
(1, 16, 0, 0.00, 'fixed', 1),
(1, 24, 0, 0.00, 'fixed', 1),
(1, 26, 0, 0.00, 'fixed', 1),
(1, 36, 0, 0.00, 'fixed', 1),
(1, 50, 0, 0.00, 'fixed', 1),
(2, 18, 0, 0.00, 'fixed', 1),
(2, 19, 0, 0.00, 'fixed', 1),
(2, 20, 0, 0.00, 'fixed', 1),
(2, 27, 0, 0.00, 'fixed', 1),
(2, 41, 0, 0.00, 'fixed', 1),
(2, 47, 0, 0.00, 'fixed', 1),
(2, 52, 0, 0.00, 'fixed', 1),
(3, 12, 0, 0.00, 'fixed', 1),
(3, 13, 0, 0.00, 'fixed', 1),
(3, 14, 0, 0.00, 'fixed', 1),
(3, 37, 0, 0.00, 'fixed', 1),
(3, 46, 0, 0.00, 'fixed', 1),
(3, 48, 0, 0.00, 'fixed', 1),
(3, 52, 0, 0.00, 'fixed', 1),
(4, 7, 0, 0.00, 'fixed', 1),
(4, 14, 0, 0.00, 'fixed', 1),
(4, 20, 0, 0.00, 'fixed', 1),
(4, 30, 0, 0.00, 'fixed', 1),
(4, 41, 0, 0.00, 'fixed', 1),
(4, 42, 0, 0.00, 'fixed', 1),
(4, 44, 0, 0.00, 'fixed', 1),
(5, 11, 0, 0.00, 'fixed', 1),
(5, 13, 0, 0.00, 'fixed', 1),
(5, 15, 0, 0.00, 'fixed', 1),
(5, 16, 0, 0.00, 'fixed', 1),
(5, 32, 0, 0.00, 'fixed', 1),
(5, 43, 0, 0.00, 'fixed', 1),
(5, 49, 0, 0.00, 'fixed', 1),
(6, 1, 0, 0.00, 'fixed', 1),
(6, 4, 0, 0.00, 'fixed', 1),
(6, 5, 0, 0.00, 'fixed', 1),
(6, 17, 0, 0.00, 'fixed', 1),
(6, 22, 0, 0.00, 'fixed', 1),
(6, 33, 0, 0.00, 'fixed', 1),
(6, 40, 0, 0.00, 'fixed', 1),
(7, 22, 0, 0.00, 'fixed', 1),
(7, 35, 0, 0.00, 'fixed', 1),
(7, 36, 0, 0.00, 'fixed', 1),
(7, 39, 0, 0.00, 'fixed', 1),
(7, 41, 0, 0.00, 'fixed', 1),
(7, 43, 0, 0.00, 'fixed', 1),
(8, 1, 0, 0.00, 'fixed', 1),
(8, 3, 0, 0.00, 'fixed', 1),
(8, 15, 0, 0.00, 'fixed', 1),
(8, 19, 0, 0.00, 'fixed', 1),
(8, 31, 0, 0.00, 'fixed', 1),
(8, 37, 0, 0.00, 'fixed', 1),
(8, 53, 0, 0.00, 'fixed', 1),
(9, 5, 0, 0.00, 'fixed', 1),
(9, 11, 0, 0.00, 'fixed', 1),
(9, 32, 0, 0.00, 'fixed', 1),
(9, 36, 0, 0.00, 'fixed', 1),
(9, 39, 0, 0.00, 'fixed', 1),
(9, 43, 0, 0.00, 'fixed', 1),
(9, 49, 0, 0.00, 'fixed', 1),
(10, 14, 0, 0.00, 'fixed', 1),
(10, 19, 0, 0.00, 'fixed', 1),
(10, 24, 0, 0.00, 'fixed', 1),
(10, 34, 0, 0.00, 'fixed', 1),
(10, 39, 0, 0.00, 'fixed', 1),
(10, 46, 0, 0.00, 'fixed', 1),
(10, 47, 0, 0.00, 'fixed', 1),
(11, 8, 0, 0.00, 'fixed', 1),
(11, 18, 0, 0.00, 'fixed', 1),
(11, 21, 0, 0.00, 'fixed', 1),
(11, 29, 0, 0.00, 'fixed', 1),
(11, 39, 0, 0.00, 'fixed', 1),
(11, 42, 0, 0.00, 'fixed', 1),
(12, 3, 0, 0.00, 'fixed', 1),
(12, 15, 0, 0.00, 'fixed', 1),
(12, 29, 0, 0.00, 'fixed', 1),
(12, 30, 0, 0.00, 'fixed', 1),
(12, 41, 0, 0.00, 'fixed', 1),
(12, 44, 0, 0.00, 'fixed', 1),
(13, 22, 0, 0.00, 'fixed', 1),
(13, 24, 0, 0.00, 'fixed', 1),
(13, 30, 0, 0.00, 'fixed', 1),
(13, 36, 0, 0.00, 'fixed', 1),
(13, 43, 0, 0.00, 'fixed', 1),
(13, 45, 0, 0.00, 'fixed', 1),
(14, 15, 0, 0.00, 'fixed', 1),
(14, 25, 0, 0.00, 'fixed', 1),
(14, 34, 0, 0.00, 'fixed', 1),
(14, 40, 0, 0.00, 'fixed', 1),
(14, 45, 0, 0.00, 'fixed', 1),
(14, 52, 0, 0.00, 'fixed', 1),
(14, 54, 0, 0.00, 'fixed', 1),
(15, 5, 0, 0.00, 'fixed', 1),
(15, 22, 0, 0.00, 'fixed', 1),
(15, 27, 0, 0.00, 'fixed', 1),
(15, 30, 0, 0.00, 'fixed', 1),
(15, 33, 0, 0.00, 'fixed', 1),
(15, 35, 0, 0.00, 'fixed', 1),
(15, 49, 0, 0.00, 'fixed', 1),
(16, 14, 0, 0.00, 'fixed', 1),
(16, 17, 0, 0.00, 'fixed', 1),
(16, 20, 0, 0.00, 'fixed', 1),
(16, 41, 0, 0.00, 'fixed', 1),
(16, 46, 0, 0.00, 'fixed', 1),
(16, 47, 0, 0.00, 'fixed', 1),
(17, 11, 0, 0.00, 'fixed', 1),
(17, 16, 0, 0.00, 'fixed', 1),
(17, 23, 0, 0.00, 'fixed', 1),
(17, 24, 0, 0.00, 'fixed', 1),
(17, 25, 0, 0.00, 'fixed', 1),
(17, 45, 0, 0.00, 'fixed', 1),
(17, 48, 0, 0.00, 'fixed', 1),
(18, 7, 0, 0.00, 'fixed', 1),
(18, 9, 0, 0.00, 'fixed', 1),
(18, 11, 0, 0.00, 'fixed', 1),
(18, 16, 0, 0.00, 'fixed', 1),
(18, 27, 0, 0.00, 'fixed', 1),
(18, 37, 0, 0.00, 'fixed', 1),
(18, 42, 0, 0.00, 'fixed', 1),
(19, 3, 0, 0.00, 'fixed', 1),
(19, 10, 0, 0.00, 'fixed', 1),
(19, 15, 0, 0.00, 'fixed', 1),
(19, 16, 0, 0.00, 'fixed', 1),
(19, 41, 0, 0.00, 'fixed', 1),
(19, 43, 0, 0.00, 'fixed', 1),
(19, 53, 0, 0.00, 'fixed', 1),
(20, 5, 0, 0.00, 'fixed', 1),
(20, 7, 0, 0.00, 'fixed', 1),
(20, 11, 0, 0.00, 'fixed', 1),
(20, 14, 0, 0.00, 'fixed', 1),
(20, 25, 0, 0.00, 'fixed', 1),
(20, 28, 0, 0.00, 'fixed', 1),
(20, 44, 0, 0.00, 'fixed', 1),
(21, 4, 0, 0.00, 'fixed', 1),
(21, 16, 0, 0.00, 'fixed', 1),
(21, 29, 0, 0.00, 'fixed', 1),
(21, 35, 0, 0.00, 'fixed', 1),
(21, 44, 0, 0.00, 'fixed', 1),
(21, 53, 0, 0.00, 'fixed', 1),
(22, 7, 0, 0.00, 'fixed', 1),
(22, 9, 0, 0.00, 'fixed', 1),
(22, 24, 0, 0.00, 'fixed', 1),
(22, 33, 0, 0.00, 'fixed', 1),
(22, 40, 0, 0.00, 'fixed', 1),
(22, 48, 0, 0.00, 'fixed', 1),
(23, 8, 0, 0.00, 'fixed', 1),
(23, 12, 0, 0.00, 'fixed', 1),
(23, 18, 0, 0.00, 'fixed', 1),
(23, 28, 0, 0.00, 'fixed', 1),
(23, 29, 0, 0.00, 'fixed', 1),
(23, 40, 0, 0.00, 'fixed', 1),
(23, 42, 0, 0.00, 'fixed', 1),
(24, 18, 0, 0.00, 'fixed', 1),
(24, 21, 0, 0.00, 'fixed', 1),
(24, 22, 0, 0.00, 'fixed', 1),
(24, 25, 0, 0.00, 'fixed', 1),
(24, 26, 0, 0.00, 'fixed', 1),
(24, 33, 0, 0.00, 'fixed', 1),
(24, 50, 0, 0.00, 'fixed', 1),
(25, 1, 0, 0.00, 'fixed', 1),
(25, 26, 0, 0.00, 'fixed', 1),
(25, 28, 0, 0.00, 'fixed', 1),
(25, 31, 0, 0.00, 'fixed', 1),
(25, 41, 0, 0.00, 'fixed', 1),
(25, 49, 0, 0.00, 'fixed', 1),
(26, 10, 0, 0.00, 'fixed', 1),
(26, 21, 0, 0.00, 'fixed', 1),
(26, 34, 0, 0.00, 'fixed', 1),
(26, 37, 0, 0.00, 'fixed', 1),
(26, 38, 0, 0.00, 'fixed', 1),
(26, 47, 0, 0.00, 'fixed', 1),
(26, 48, 0, 0.00, 'fixed', 1),
(27, 3, 0, 0.00, 'fixed', 1),
(27, 7, 0, 0.00, 'fixed', 1),
(27, 13, 0, 0.00, 'fixed', 1),
(27, 32, 0, 0.00, 'fixed', 1),
(27, 42, 0, 0.00, 'fixed', 1),
(28, 13, 0, 0.00, 'fixed', 1),
(28, 20, 0, 0.00, 'fixed', 1),
(28, 41, 0, 0.00, 'fixed', 1),
(28, 44, 0, 0.00, 'fixed', 1),
(28, 50, 0, 0.00, 'fixed', 1),
(29, 5, 0, 0.00, 'fixed', 1),
(29, 17, 0, 0.00, 'fixed', 1),
(29, 20, 0, 0.00, 'fixed', 1),
(29, 34, 0, 0.00, 'fixed', 1),
(29, 40, 0, 0.00, 'fixed', 1),
(29, 47, 0, 0.00, 'fixed', 1),
(29, 54, 0, 0.00, 'fixed', 1),
(30, 7, 0, 0.00, 'fixed', 1),
(30, 15, 0, 0.00, 'fixed', 1),
(30, 32, 0, 0.00, 'fixed', 1),
(30, 42, 0, 0.00, 'fixed', 1),
(30, 44, 0, 0.00, 'fixed', 1),
(30, 50, 0, 0.00, 'fixed', 1),
(30, 54, 0, 0.00, 'fixed', 1),
(31, 6, 0, 0.00, 'fixed', 1),
(31, 8, 0, 0.00, 'fixed', 1),
(31, 18, 0, 0.00, 'fixed', 1),
(31, 22, 0, 0.00, 'fixed', 1),
(31, 29, 0, 0.00, 'fixed', 1),
(31, 47, 0, 0.00, 'fixed', 1),
(31, 53, 0, 0.00, 'fixed', 1),
(32, 8, 0, 0.00, 'fixed', 1),
(32, 18, 0, 0.00, 'fixed', 1),
(32, 24, 0, 0.00, 'fixed', 1),
(32, 29, 0, 0.00, 'fixed', 1),
(32, 30, 0, 0.00, 'fixed', 1),
(32, 34, 0, 0.00, 'fixed', 1),
(32, 50, 0, 0.00, 'fixed', 1),
(33, 4, 0, 0.00, 'fixed', 1),
(33, 9, 0, 0.00, 'fixed', 1),
(33, 11, 0, 0.00, 'fixed', 1),
(33, 23, 0, 0.00, 'fixed', 1),
(33, 27, 0, 0.00, 'fixed', 1),
(33, 30, 0, 0.00, 'fixed', 1),
(33, 47, 0, 0.00, 'fixed', 1),
(34, 10, 0, 0.00, 'fixed', 1),
(34, 13, 0, 0.00, 'fixed', 1),
(34, 18, 0, 0.00, 'fixed', 1),
(34, 27, 0, 0.00, 'fixed', 1),
(34, 49, 0, 0.00, 'fixed', 1),
(34, 52, 0, 0.00, 'fixed', 1),
(34, 53, 0, 0.00, 'fixed', 1),
(35, 1, 0, 0.00, 'fixed', 1),
(35, 9, 0, 0.00, 'fixed', 1),
(35, 17, 0, 0.00, 'fixed', 1),
(35, 20, 0, 0.00, 'fixed', 1),
(35, 22, 0, 0.00, 'fixed', 1),
(35, 30, 0, 0.00, 'fixed', 1),
(35, 42, 0, 0.00, 'fixed', 1),
(36, 5, 0, 0.00, 'fixed', 1),
(36, 7, 0, 0.00, 'fixed', 1),
(36, 15, 0, 0.00, 'fixed', 1),
(36, 32, 0, 0.00, 'fixed', 1),
(36, 51, 0, 0.00, 'fixed', 1),
(36, 52, 0, 0.00, 'fixed', 1),
(37, 4, 0, 0.00, 'fixed', 1),
(37, 7, 0, 0.00, 'fixed', 1),
(37, 20, 0, 0.00, 'fixed', 1),
(37, 21, 0, 0.00, 'fixed', 1),
(37, 25, 0, 0.00, 'fixed', 1),
(37, 31, 0, 0.00, 'fixed', 1),
(37, 43, 0, 0.00, 'fixed', 1),
(38, 3, 0, 0.00, 'fixed', 1),
(38, 10, 0, 0.00, 'fixed', 1),
(38, 12, 0, 0.00, 'fixed', 1),
(38, 20, 0, 0.00, 'fixed', 1),
(38, 28, 0, 0.00, 'fixed', 1),
(38, 45, 0, 0.00, 'fixed', 1),
(38, 51, 0, 0.00, 'fixed', 1),
(39, 4, 0, 0.00, 'fixed', 1),
(39, 15, 0, 0.00, 'fixed', 1),
(39, 18, 0, 0.00, 'fixed', 1),
(39, 25, 0, 0.00, 'fixed', 1),
(39, 40, 0, 0.00, 'fixed', 1),
(39, 41, 0, 0.00, 'fixed', 1),
(39, 42, 0, 0.00, 'fixed', 1),
(40, 10, 0, 0.00, 'fixed', 1),
(40, 13, 0, 0.00, 'fixed', 1),
(40, 24, 0, 0.00, 'fixed', 1),
(40, 35, 0, 0.00, 'fixed', 1),
(40, 36, 0, 0.00, 'fixed', 1),
(40, 47, 0, 0.00, 'fixed', 1),
(40, 48, 0, 0.00, 'fixed', 1),
(41, 4, 0, 0.00, 'fixed', 1),
(41, 5, 0, 0.00, 'fixed', 1),
(41, 12, 0, 0.00, 'fixed', 1),
(41, 28, 0, 0.00, 'fixed', 1),
(41, 37, 0, 0.00, 'fixed', 1),
(41, 46, 0, 0.00, 'fixed', 1),
(41, 53, 0, 0.00, 'fixed', 1),
(42, 3, 0, 0.00, 'fixed', 1),
(42, 5, 0, 0.00, 'fixed', 1),
(42, 13, 0, 0.00, 'fixed', 1),
(42, 16, 0, 0.00, 'fixed', 1),
(42, 39, 0, 0.00, 'fixed', 1),
(42, 48, 0, 0.00, 'fixed', 1),
(42, 52, 0, 0.00, 'fixed', 1),
(43, 29, 0, 0.00, 'fixed', 1),
(43, 33, 0, 0.00, 'fixed', 1),
(43, 42, 0, 0.00, 'fixed', 1),
(43, 48, 0, 0.00, 'fixed', 1),
(43, 51, 0, 0.00, 'fixed', 1),
(43, 52, 0, 0.00, 'fixed', 1),
(44, 1, 0, 0.00, 'fixed', 1),
(44, 6, 0, 0.00, 'fixed', 1),
(44, 7, 0, 0.00, 'fixed', 1),
(44, 13, 0, 0.00, 'fixed', 1),
(44, 19, 0, 0.00, 'fixed', 1),
(44, 40, 0, 0.00, 'fixed', 1),
(44, 46, 0, 0.00, 'fixed', 1),
(45, 11, 0, 0.00, 'fixed', 1),
(45, 12, 0, 0.00, 'fixed', 1),
(45, 13, 0, 0.00, 'fixed', 1),
(45, 22, 0, 0.00, 'fixed', 1),
(45, 32, 0, 0.00, 'fixed', 1),
(45, 38, 0, 0.00, 'fixed', 1),
(46, 14, 0, 0.00, 'fixed', 1),
(46, 18, 0, 0.00, 'fixed', 1),
(46, 19, 0, 0.00, 'fixed', 1),
(46, 41, 0, 0.00, 'fixed', 1),
(46, 45, 0, 0.00, 'fixed', 1),
(46, 47, 0, 0.00, 'fixed', 1),
(46, 53, 0, 0.00, 'fixed', 1),
(47, 2, 0, 0.00, 'fixed', 1),
(47, 4, 0, 0.00, 'fixed', 1),
(47, 12, 0, 0.00, 'fixed', 1),
(47, 13, 0, 0.00, 'fixed', 1),
(47, 36, 0, 0.00, 'fixed', 1),
(47, 41, 0, 0.00, 'fixed', 1),
(47, 46, 0, 0.00, 'fixed', 1),
(48, 11, 0, 0.00, 'fixed', 1),
(48, 13, 0, 0.00, 'fixed', 1),
(48, 15, 0, 0.00, 'fixed', 1),
(48, 17, 0, 0.00, 'fixed', 1),
(48, 27, 0, 0.00, 'fixed', 1),
(48, 46, 0, 0.00, 'fixed', 1),
(48, 49, 0, 0.00, 'fixed', 1),
(49, 3, 0, 0.00, 'fixed', 1),
(49, 6, 0, 0.00, 'fixed', 1),
(49, 15, 0, 0.00, 'fixed', 1),
(49, 22, 0, 0.00, 'fixed', 1),
(49, 23, 0, 0.00, 'fixed', 1),
(49, 32, 0, 0.00, 'fixed', 1),
(49, 44, 0, 0.00, 'fixed', 1),
(50, 6, 0, 0.00, 'fixed', 1),
(50, 13, 0, 0.00, 'fixed', 1),
(50, 15, 0, 0.00, 'fixed', 1),
(50, 29, 0, 0.00, 'fixed', 1),
(50, 39, 0, 0.00, 'fixed', 1),
(50, 44, 0, 0.00, 'fixed', 1),
(50, 46, 0, 0.00, 'fixed', 1),
(51, 12, 0, 0.00, 'fixed', 1),
(51, 17, 0, 0.00, 'fixed', 1),
(51, 24, 0, 0.00, 'fixed', 1),
(51, 30, 0, 0.00, 'fixed', 1),
(51, 32, 0, 0.00, 'fixed', 1),
(51, 33, 0, 0.00, 'fixed', 1),
(51, 43, 0, 0.00, 'fixed', 1),
(52, 4, 0, 0.00, 'fixed', 1),
(52, 10, 0, 0.00, 'fixed', 1),
(52, 27, 0, 0.00, 'fixed', 1),
(52, 40, 0, 0.00, 'fixed', 1),
(52, 47, 0, 0.00, 'fixed', 1),
(53, 5, 0, 0.00, 'fixed', 1),
(53, 14, 0, 0.00, 'fixed', 1),
(53, 24, 0, 0.00, 'fixed', 1),
(53, 26, 0, 0.00, 'fixed', 1),
(53, 49, 0, 0.00, 'fixed', 1),
(53, 50, 0, 0.00, 'fixed', 1),
(53, 51, 0, 0.00, 'fixed', 1),
(54, 29, 0, 0.00, 'fixed', 1),
(54, 31, 0, 0.00, 'fixed', 1),
(54, 37, 0, 0.00, 'fixed', 1),
(54, 40, 0, 0.00, 'fixed', 1),
(54, 46, 0, 0.00, 'fixed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_files`
--

CREATE TABLE `ec_product_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url` varchar(400) DEFAULT NULL,
  `extras` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_files`
--

INSERT INTO `ec_product_files` (`id`, `product_id`, `url`, `extras`, `created_at`, `updated_at`) VALUES
(1, 4, 'ecommerce/digital-product-files/4-1.jpg', '{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"4-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(2, 4, 'ecommerce/digital-product-files/4-2.jpg', '{\"filename\":\"4-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"4-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(3, 8, 'ecommerce/digital-product-files/8-1.jpg', '{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"8-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(4, 8, 'ecommerce/digital-product-files/8-2.jpg', '{\"filename\":\"8-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"8-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(5, 12, 'ecommerce/digital-product-files/12-1.jpg', '{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"12-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(6, 12, 'ecommerce/digital-product-files/12-2.jpg', '{\"filename\":\"12-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"12-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(7, 16, 'ecommerce/digital-product-files/16-1.jpg', '{\"filename\":\"16-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"16-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(8, 16, 'ecommerce/digital-product-files/16-2.jpg', '{\"filename\":\"16-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"16-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(9, 20, 'ecommerce/digital-product-files/20-1.jpg', '{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"20-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(10, 20, 'ecommerce/digital-product-files/20-2.jpg', '{\"filename\":\"20-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"20-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(11, 24, 'ecommerce/digital-product-files/24-1.jpg', '{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"24-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(12, 24, 'ecommerce/digital-product-files/24-2.jpg', '{\"filename\":\"24-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"24-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(13, 28, 'ecommerce/digital-product-files/28-1.jpg', '{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"28-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(14, 28, 'ecommerce/digital-product-files/28-2.jpg', '{\"filename\":\"28-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"28-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(15, 32, 'ecommerce/digital-product-files/32-1.jpg', '{\"filename\":\"32-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"32-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(16, 32, 'ecommerce/digital-product-files/32-2.jpg', '{\"filename\":\"32-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"32-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(17, 36, 'ecommerce/digital-product-files/36-1.jpg', '{\"filename\":\"36-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"36-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(18, 36, 'ecommerce/digital-product-files/36-2.jpg', '{\"filename\":\"36-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"36-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(19, 40, 'ecommerce/digital-product-files/40-1.jpg', '{\"filename\":\"40-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"40-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(20, 40, 'ecommerce/digital-product-files/40-2.jpg', '{\"filename\":\"40-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"40-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(21, 44, 'ecommerce/digital-product-files/44-1.jpg', '{\"filename\":\"44-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"44-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(22, 44, 'ecommerce/digital-product-files/44-2.jpg', '{\"filename\":\"44-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"44-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(23, 48, 'ecommerce/digital-product-files/48-1.jpg', '{\"filename\":\"48-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"48-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(24, 48, 'ecommerce/digital-product-files/48-2.jpg', '{\"filename\":\"48-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"48-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(25, 52, 'ecommerce/digital-product-files/52-1.jpg', '{\"filename\":\"52-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"52-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(26, 52, 'ecommerce/digital-product-files/52-2.jpg', '{\"filename\":\"52-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"52-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(27, 73, 'ecommerce/digital-product-files/16-2.jpg', '{\"filename\":\"16-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"16-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(28, 77, 'ecommerce/digital-product-files/20-2.jpg', '{\"filename\":\"20-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"20-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(29, 78, 'ecommerce/digital-product-files/20-3.jpg', '{\"filename\":\"20-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"20-3\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(30, 79, 'ecommerce/digital-product-files/20-4.jpg', '{\"filename\":\"20-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"20-4\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(31, 80, 'ecommerce/digital-product-files/20-1.jpg', '{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"20-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(32, 81, 'ecommerce/digital-product-files/20-1.jpg', '{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"20-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(33, 85, 'ecommerce/digital-product-files/28-2.jpg', '{\"filename\":\"28-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"28-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(34, 86, 'ecommerce/digital-product-files/28-3.jpg', '{\"filename\":\"28-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"28-3\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(35, 92, 'ecommerce/digital-product-files/32-2.jpg', '{\"filename\":\"32-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"32-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(36, 93, 'ecommerce/digital-product-files/32-3.jpg', '{\"filename\":\"32-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"32-3\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(37, 102, 'ecommerce/digital-product-files/40-2.jpg', '{\"filename\":\"40-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"40-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(38, 103, 'ecommerce/digital-product-files/40-3.jpg', '{\"filename\":\"40-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"40-3\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(39, 108, 'ecommerce/digital-product-files/44-2.jpg', '{\"filename\":\"44-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"44-2\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(40, 109, 'ecommerce/digital-product-files/44-3.jpg', '{\"filename\":\"44-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"44-3\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(41, 110, 'ecommerce/digital-product-files/44-1.jpg', '{\"filename\":\"44-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"44-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28'),
(42, 111, 'ecommerce/digital-product-files/44-1.jpg', '{\"filename\":\"44-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-08-02 09:15:28\",\"name\":\"44-1\",\"extension\":\"jpg\"}', '2025-08-02 02:15:28', '2025-08-02 02:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `color` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`, `text_color`) VALUES
(1, 'Hot', '#d71e2d', 'published', '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL),
(2, 'New', '#02856e', 'published', '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL),
(3, 'Sale', '#fe9931', 'published', '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels_translations`
--

CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_labels_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(1, 6),
(1, 12),
(1, 18),
(1, 33),
(1, 39),
(1, 48),
(1, 51),
(2, 9),
(2, 27),
(2, 30),
(2, 42),
(2, 45),
(3, 3),
(3, 15),
(3, 21),
(3, 24),
(3, 36),
(3, 54);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_license_codes`
--

CREATE TABLE `ec_product_license_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `license_code` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'available',
  `assigned_order_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint(20) UNSIGNED NOT NULL,
  `to_product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_specification_attribute`
--

CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `value` text DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_specification_attribute`
--

INSERT INTO `ec_product_specification_attribute` (`product_id`, `attribute_id`, `value`, `hidden`, `order`) VALUES
(1, 1, '10.76 cm', 0, 0),
(1, 2, '20.85 cm', 0, 0),
(1, 3, '50.94 cm', 0, 0),
(1, 4, '62.55 cm', 0, 0),
(1, 5, '63.95 cm', 0, 0),
(2, 6, '53.15 cm', 0, 0),
(2, 7, '95.16 cm', 0, 0),
(2, 8, '1920x1080', 0, 0),
(3, 6, '53.14 cm', 0, 0),
(3, 7, '11.98 cm', 0, 0),
(3, 8, '1920x1080', 0, 0),
(4, 6, '3.9 cm', 0, 0),
(4, 7, '96.44 cm', 0, 0),
(4, 8, '1920x1080', 0, 0),
(5, 1, '89.06 cm', 0, 0),
(5, 2, '84.52 cm', 0, 0),
(5, 3, '69.59 cm', 0, 0),
(5, 4, '11.05 cm', 0, 0),
(5, 5, '83.65 cm', 0, 0),
(6, 6, '87.43 cm', 0, 0),
(6, 7, '48.99 cm', 0, 0),
(6, 8, '3840x2160', 0, 0),
(7, 6, '77.51 cm', 0, 0),
(7, 7, '84.42 cm', 0, 0),
(7, 8, '1920x1080', 0, 0),
(8, 6, '67.8 cm', 0, 0),
(8, 7, '26.22 cm', 0, 0),
(8, 8, '2560x1440', 0, 0),
(9, 6, '75.1 cm', 0, 0),
(9, 7, '76.56 cm', 0, 0),
(9, 8, '2560x1440', 0, 0),
(10, 1, '57.05 cm', 0, 0),
(10, 2, '93 cm', 0, 0),
(10, 3, '50.15 cm', 0, 0),
(10, 4, '7.23 cm', 0, 0),
(10, 5, '50.35 cm', 0, 0),
(11, 1, '93.94 cm', 0, 0),
(11, 2, '97.86 cm', 0, 0),
(11, 3, '45.59 cm', 0, 0),
(11, 4, '48.87 cm', 0, 0),
(11, 5, '38.91 cm', 0, 0),
(12, 1, '20.04 cm', 0, 0),
(12, 2, '27.86 cm', 0, 0),
(12, 3, '60.67 cm', 0, 0),
(12, 4, '77.4 cm', 0, 0),
(12, 5, '1.82 cm', 0, 0),
(13, 1, '86.06 cm', 0, 0),
(13, 2, '45.2 cm', 0, 0),
(13, 3, '63.29 cm', 0, 0),
(13, 4, '16.91 cm', 0, 0),
(13, 5, '69.6 cm', 0, 0),
(14, 6, '50.58 cm', 0, 0),
(14, 7, '56.74 cm', 0, 0),
(14, 8, '3840x2160', 0, 0),
(15, 6, '7.11 cm', 0, 0),
(15, 7, '57.17 cm', 0, 0),
(15, 8, '3840x2160', 0, 0),
(16, 1, '10.12 cm', 0, 0),
(16, 2, '36.55 cm', 0, 0),
(16, 3, '46.11 cm', 0, 0),
(16, 4, '18.88 cm', 0, 0),
(16, 5, '56.93 cm', 0, 0),
(17, 6, '10.46 cm', 0, 0),
(17, 7, '56.62 cm', 0, 0),
(17, 8, '3840x2160', 0, 0),
(18, 6, '59.96 cm', 0, 0),
(18, 7, '3.19 cm', 0, 0),
(18, 8, '2560x1440', 0, 0),
(19, 6, '41.82 cm', 0, 0),
(19, 7, '38.33 cm', 0, 0),
(19, 8, '3840x2160', 0, 0),
(20, 6, '41.71 cm', 0, 0),
(20, 7, '92.49 cm', 0, 0),
(20, 8, '3840x2160', 0, 0),
(21, 6, '8.1 cm', 0, 0),
(21, 7, '1 cm', 0, 0),
(21, 8, '2560x1440', 0, 0),
(22, 6, '96.55 cm', 0, 0),
(22, 7, '35.94 cm', 0, 0),
(22, 8, '2560x1440', 0, 0),
(23, 1, '95.15 cm', 0, 0),
(23, 2, '27.9 cm', 0, 0),
(23, 3, '76.45 cm', 0, 0),
(23, 4, '88.16 cm', 0, 0),
(23, 5, '48.6 cm', 0, 0),
(24, 6, '85.2 cm', 0, 0),
(24, 7, '63.78 cm', 0, 0),
(24, 8, '3840x2160', 0, 0),
(25, 6, '16.46 cm', 0, 0),
(25, 7, '20.16 cm', 0, 0),
(25, 8, '3840x2160', 0, 0),
(26, 6, '68.93 cm', 0, 0),
(26, 7, '56.58 cm', 0, 0),
(26, 8, '1920x1080', 0, 0),
(27, 1, '6.14 cm', 0, 0),
(27, 2, '5.49 cm', 0, 0),
(27, 3, '80.21 cm', 0, 0),
(27, 4, '39.91 cm', 0, 0),
(27, 5, '90.59 cm', 0, 0),
(28, 6, '28.32 cm', 0, 0),
(28, 7, '62.55 cm', 0, 0),
(28, 8, '2560x1440', 0, 0),
(29, 6, '52.57 cm', 0, 0),
(29, 7, '89.72 cm', 0, 0),
(29, 8, '3840x2160', 0, 0),
(30, 1, '75.68 cm', 0, 0),
(30, 2, '21.78 cm', 0, 0),
(30, 3, '38.73 cm', 0, 0),
(30, 4, '67.83 cm', 0, 0),
(30, 5, '65.42 cm', 0, 0),
(31, 6, '51.39 cm', 0, 0),
(31, 7, '85.63 cm', 0, 0),
(31, 8, '1920x1080', 0, 0),
(32, 6, '38.23 cm', 0, 0),
(32, 7, '29.56 cm', 0, 0),
(32, 8, '2560x1440', 0, 0),
(33, 6, '69.32 cm', 0, 0),
(33, 7, '29.02 cm', 0, 0),
(33, 8, '3840x2160', 0, 0),
(34, 6, '74.47 cm', 0, 0),
(34, 7, '7.1 cm', 0, 0),
(34, 8, '1920x1080', 0, 0),
(35, 1, '94.52 cm', 0, 0),
(35, 2, '3.3 cm', 0, 0),
(35, 3, '74.28 cm', 0, 0),
(35, 4, '80.58 cm', 0, 0),
(35, 5, '34.36 cm', 0, 0),
(36, 1, '38.91 cm', 0, 0),
(36, 2, '64.63 cm', 0, 0),
(36, 3, '39.41 cm', 0, 0),
(36, 4, '11.45 cm', 0, 0),
(36, 5, '5.13 cm', 0, 0),
(37, 6, '35.09 cm', 0, 0),
(37, 7, '21.56 cm', 0, 0),
(37, 8, '1920x1080', 0, 0),
(38, 6, '63.97 cm', 0, 0),
(38, 7, '37.85 cm', 0, 0),
(38, 8, '2560x1440', 0, 0),
(39, 1, '79.9 cm', 0, 0),
(39, 2, '17.21 cm', 0, 0),
(39, 3, '86.88 cm', 0, 0),
(39, 4, '60.85 cm', 0, 0),
(39, 5, '16.68 cm', 0, 0),
(40, 6, '54.74 cm', 0, 0),
(40, 7, '61.86 cm', 0, 0),
(40, 8, '3840x2160', 0, 0),
(41, 6, '53.35 cm', 0, 0),
(41, 7, '55.33 cm', 0, 0),
(41, 8, '1920x1080', 0, 0),
(42, 6, '63.79 cm', 0, 0),
(42, 7, '20.53 cm', 0, 0),
(42, 8, '1920x1080', 0, 0),
(43, 1, '71.91 cm', 0, 0),
(43, 2, '3.44 cm', 0, 0),
(43, 3, '69.74 cm', 0, 0),
(43, 4, '51 cm', 0, 0),
(43, 5, '89.47 cm', 0, 0),
(44, 1, '98.16 cm', 0, 0),
(44, 2, '28.33 cm', 0, 0),
(44, 3, '81.23 cm', 0, 0),
(44, 4, '88.24 cm', 0, 0),
(44, 5, '45.1 cm', 0, 0),
(45, 1, '24.66 cm', 0, 0),
(45, 2, '30.41 cm', 0, 0),
(45, 3, '63.4 cm', 0, 0),
(45, 4, '32.97 cm', 0, 0),
(45, 5, '91.64 cm', 0, 0),
(46, 1, '31.12 cm', 0, 0),
(46, 2, '89.92 cm', 0, 0),
(46, 3, '19.46 cm', 0, 0),
(46, 4, '56.06 cm', 0, 0),
(46, 5, '93.05 cm', 0, 0),
(47, 1, '9.98 cm', 0, 0),
(47, 2, '31.52 cm', 0, 0),
(47, 3, '25.6 cm', 0, 0),
(47, 4, '8.24 cm', 0, 0),
(47, 5, '13.32 cm', 0, 0),
(48, 1, '60.95 cm', 0, 0),
(48, 2, '11.88 cm', 0, 0),
(48, 3, '2.64 cm', 0, 0),
(48, 4, '94.8 cm', 0, 0),
(48, 5, '58.17 cm', 0, 0),
(49, 6, '2.01 cm', 0, 0),
(49, 7, '23.35 cm', 0, 0),
(49, 8, '1920x1080', 0, 0),
(50, 1, '35.82 cm', 0, 0),
(50, 2, '84.17 cm', 0, 0),
(50, 3, '93.85 cm', 0, 0),
(50, 4, '26.58 cm', 0, 0),
(50, 5, '34.56 cm', 0, 0),
(51, 6, '2.42 cm', 0, 0),
(51, 7, '92.89 cm', 0, 0),
(51, 8, '1920x1080', 0, 0),
(52, 1, '9.34 cm', 0, 0),
(52, 2, '3.34 cm', 0, 0),
(52, 3, '80.82 cm', 0, 0),
(52, 4, '73.97 cm', 0, 0),
(52, 5, '31.51 cm', 0, 0),
(53, 1, '29.64 cm', 0, 0),
(53, 2, '18.26 cm', 0, 0),
(53, 3, '18.1 cm', 0, 0),
(53, 4, '70.89 cm', 0, 0),
(53, 5, '11.64 cm', 0, 0),
(54, 1, '85.78 cm', 0, 0),
(54, 2, '51.68 cm', 0, 0),
(54, 3, '40.01 cm', 0, 0),
(54, 4, '45.26 cm', 0, 0),
(54, 5, '81.15 cm', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tags`
--

INSERT INTO `ec_product_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronic', NULL, 'published', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(2, 'Mobile', NULL, 'published', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(3, 'Iphone', NULL, 'published', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(4, 'Printer', NULL, 'published', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(5, 'Office', NULL, 'published', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(6, 'IT', NULL, 'published', '2025-08-02 02:15:34', '2025-08-02 02:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags_translations`
--

CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_tags_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint(20) UNSIGNED NOT NULL,
  `to_product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `configurable_product_id` bigint(20) UNSIGNED NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variations`
--

INSERT INTO `ec_product_variations` (`id`, `product_id`, `configurable_product_id`, `is_default`) VALUES
(1, 55, 1, 1),
(2, 56, 1, 0),
(3, 57, 1, 0),
(4, 58, 2, 1),
(5, 59, 3, 1),
(6, 60, 3, 0),
(7, 61, 5, 1),
(8, 62, 5, 0),
(9, 63, 7, 1),
(10, 64, 7, 0),
(11, 65, 7, 0),
(12, 66, 9, 1),
(13, 67, 9, 0),
(14, 68, 13, 1),
(15, 69, 14, 1),
(16, 70, 14, 0),
(17, 71, 14, 0),
(18, 72, 14, 0),
(19, 73, 16, 1),
(20, 74, 17, 1),
(21, 75, 17, 0),
(22, 76, 18, 1),
(23, 77, 20, 1),
(24, 78, 20, 0),
(25, 79, 20, 0),
(26, 80, 20, 0),
(27, 81, 20, 0),
(28, 82, 22, 1),
(29, 83, 26, 1),
(30, 84, 26, 0),
(31, 85, 28, 1),
(32, 86, 28, 0),
(33, 87, 29, 1),
(34, 88, 29, 0),
(35, 89, 30, 1),
(36, 90, 30, 0),
(37, 91, 30, 0),
(38, 92, 32, 1),
(39, 93, 32, 0),
(40, 94, 34, 1),
(41, 95, 34, 0),
(42, 96, 35, 1),
(43, 97, 35, 0),
(44, 98, 39, 1),
(45, 99, 39, 0),
(46, 100, 39, 0),
(47, 101, 39, 0),
(48, 102, 40, 1),
(49, 103, 40, 0),
(50, 104, 41, 1),
(51, 105, 41, 0),
(52, 106, 43, 1),
(53, 107, 43, 0),
(54, 108, 44, 1),
(55, 109, 44, 0),
(56, 110, 44, 0),
(57, 111, 44, 0),
(58, 112, 46, 1),
(59, 113, 46, 0),
(60, 114, 47, 1),
(61, 115, 47, 0),
(62, 116, 49, 1),
(63, 117, 49, 0),
(64, 118, 49, 0),
(65, 119, 49, 0),
(66, 120, 50, 1),
(67, 121, 50, 0),
(68, 122, 50, 0),
(69, 123, 53, 1),
(70, 124, 53, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variation_items`
--

INSERT INTO `ec_product_variation_items` (`id`, `attribute_id`, `variation_id`) VALUES
(19, 1, 10),
(33, 1, 17),
(41, 1, 21),
(75, 1, 38),
(83, 1, 42),
(89, 1, 45),
(99, 1, 50),
(107, 1, 54),
(121, 1, 61),
(125, 1, 63),
(133, 1, 67),
(139, 1, 70),
(15, 2, 8),
(21, 2, 11),
(29, 2, 15),
(43, 2, 22),
(45, 2, 23),
(47, 2, 24),
(53, 2, 27),
(95, 2, 48),
(97, 2, 49),
(101, 2, 51),
(111, 2, 56),
(117, 2, 59),
(1, 3, 1),
(9, 3, 5),
(23, 3, 12),
(39, 3, 20),
(55, 3, 28),
(59, 3, 30),
(63, 3, 32),
(67, 3, 34),
(73, 3, 37),
(77, 3, 39),
(79, 3, 40),
(93, 3, 47),
(123, 3, 62),
(127, 3, 64),
(3, 4, 2),
(13, 4, 7),
(17, 4, 9),
(25, 4, 13),
(27, 4, 14),
(35, 4, 18),
(49, 4, 25),
(61, 4, 31),
(65, 4, 33),
(71, 4, 36),
(91, 4, 46),
(103, 4, 52),
(109, 4, 55),
(113, 4, 57),
(119, 4, 60),
(129, 4, 65),
(131, 4, 66),
(137, 4, 69),
(5, 5, 3),
(7, 5, 4),
(11, 5, 6),
(31, 5, 16),
(37, 5, 19),
(51, 5, 26),
(57, 5, 29),
(69, 5, 35),
(81, 5, 41),
(85, 5, 43),
(87, 5, 44),
(105, 5, 53),
(115, 5, 58),
(135, 5, 68),
(8, 6, 4),
(14, 6, 7),
(16, 6, 8),
(56, 6, 28),
(64, 6, 32),
(70, 6, 35),
(80, 6, 40),
(84, 6, 42),
(90, 6, 45),
(92, 6, 46),
(110, 6, 55),
(122, 6, 61),
(128, 6, 64),
(40, 7, 20),
(62, 7, 31),
(88, 7, 44),
(112, 7, 56),
(116, 7, 58),
(120, 7, 60),
(126, 7, 63),
(130, 7, 65),
(4, 8, 2),
(6, 8, 3),
(10, 8, 5),
(22, 8, 11),
(30, 8, 15),
(32, 8, 16),
(34, 8, 17),
(42, 8, 21),
(44, 8, 22),
(48, 8, 24),
(58, 8, 29),
(66, 8, 33),
(74, 8, 37),
(82, 8, 41),
(86, 8, 43),
(108, 8, 54),
(124, 8, 62),
(132, 8, 66),
(140, 8, 70),
(2, 9, 1),
(12, 9, 6),
(18, 9, 9),
(20, 9, 10),
(26, 9, 13),
(38, 9, 19),
(50, 9, 25),
(52, 9, 26),
(54, 9, 27),
(60, 9, 30),
(72, 9, 36),
(76, 9, 38),
(94, 9, 47),
(102, 9, 51),
(106, 9, 53),
(114, 9, 57),
(118, 9, 59),
(134, 9, 67),
(136, 9, 68),
(24, 10, 12),
(28, 10, 14),
(36, 10, 18),
(46, 10, 23),
(68, 10, 34),
(78, 10, 39),
(96, 10, 48),
(98, 10, 49),
(100, 10, 50),
(104, 10, 52),
(138, 10, 69);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_views`
--

CREATE TABLE `ec_product_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `views` int(11) NOT NULL DEFAULT 1,
  `date` date NOT NULL DEFAULT '2025-08-02'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

INSERT INTO `ec_product_with_attribute_set` (`attribute_set_id`, `product_id`, `order`) VALUES
(1, 1, 0),
(2, 1, 0),
(1, 2, 0),
(2, 2, 0),
(1, 3, 0),
(2, 3, 0),
(1, 5, 0),
(2, 5, 0),
(1, 7, 0),
(2, 7, 0),
(1, 9, 0),
(2, 9, 0),
(1, 13, 0),
(2, 13, 0),
(1, 14, 0),
(2, 14, 0),
(1, 16, 0),
(2, 16, 0),
(1, 17, 0),
(2, 17, 0),
(1, 18, 0),
(2, 18, 0),
(1, 20, 0),
(2, 20, 0),
(1, 22, 0),
(2, 22, 0),
(1, 26, 0),
(2, 26, 0),
(1, 28, 0),
(2, 28, 0),
(1, 29, 0),
(2, 29, 0),
(1, 30, 0),
(2, 30, 0),
(1, 32, 0),
(2, 32, 0),
(1, 34, 0),
(2, 34, 0),
(1, 35, 0),
(2, 35, 0),
(1, 39, 0),
(2, 39, 0),
(1, 40, 0),
(2, 40, 0),
(1, 41, 0),
(2, 41, 0),
(1, 43, 0),
(2, 43, 0),
(1, 44, 0),
(2, 44, 0),
(1, 46, 0),
(2, 46, 0),
(1, 47, 0),
(2, 47, 0),
(1, 49, 0),
(2, 49, 0),
(1, 50, 0),
(2, 50, 0),
(1, 53, 0),
(2, 53, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `star` double NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_reviews`
--

INSERT INTO `ec_reviews` (`id`, `customer_id`, `customer_name`, `customer_email`, `product_id`, `star`, `comment`, `status`, `created_at`, `updated_at`, `images`) VALUES
(1, 1, NULL, NULL, 35, 3, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-4.jpg\",\"products\\/46-4.jpg\",\"products\\/48-2.jpg\",\"products\\/51-3.jpg\"]'),
(2, 10, NULL, NULL, 47, 5, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-1.jpg\"]'),
(3, 9, NULL, NULL, 29, 3, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/50-4.jpg\"]'),
(4, 4, NULL, NULL, 24, 4, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-3.jpg\",\"products\\/33-3.jpg\",\"products\\/34-1.jpg\"]'),
(5, 5, NULL, NULL, 32, 2, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/35-1.jpg\",\"products\\/40-3.jpg\",\"products\\/45-1.jpg\"]'),
(6, 1, NULL, NULL, 23, 1, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/37-3.jpg\",\"products\\/43-2.jpg\"]'),
(7, 2, NULL, NULL, 54, 2, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/36-2.jpg\"]'),
(8, 4, NULL, NULL, 11, 2, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-1.jpg\",\"products\\/19-4.jpg\",\"products\\/34-3.jpg\",\"products\\/52-2.jpg\"]'),
(9, 7, NULL, NULL, 21, 1, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/28-4.jpg\",\"products\\/42-2.jpg\"]'),
(10, 9, NULL, NULL, 35, 4, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-3.jpg\",\"products\\/13-4.jpg\",\"products\\/38-2.jpg\"]'),
(11, 6, NULL, NULL, 52, 5, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-1.jpg\",\"products\\/30-2.jpg\",\"products\\/33-4.jpg\",\"products\\/38-4.jpg\"]'),
(12, 7, NULL, NULL, 37, 4, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-3.jpg\",\"products\\/30-4.jpg\"]'),
(13, 5, NULL, NULL, 8, 3, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-2.jpg\",\"products\\/23-3.jpg\",\"products\\/25-1.jpg\",\"products\\/46-4.jpg\"]'),
(14, 6, NULL, NULL, 17, 1, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/53-4.jpg\"]'),
(15, 10, NULL, NULL, 26, 1, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/22-1.jpg\",\"products\\/24-3.jpg\",\"products\\/27-1.jpg\",\"products\\/41-3.jpg\"]'),
(16, 8, NULL, NULL, 37, 1, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-2.jpg\",\"products\\/28-1.jpg\",\"products\\/43-2.jpg\",\"products\\/53-1.jpg\"]'),
(17, 8, NULL, NULL, 26, 1, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/33-3.jpg\"]'),
(18, 3, NULL, NULL, 36, 4, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-2.jpg\"]'),
(19, 3, NULL, NULL, 20, 2, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/18-2.jpg\",\"products\\/36-3.jpg\",\"products\\/40-4.jpg\",\"products\\/51-1.jpg\"]'),
(20, 4, NULL, NULL, 33, 3, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/31-2.jpg\",\"products\\/34-3.jpg\"]'),
(21, 6, NULL, NULL, 19, 4, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/44-3.jpg\"]'),
(22, 10, NULL, NULL, 24, 3, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/33-2.jpg\",\"products\\/44-2.jpg\",\"products\\/51-4.jpg\"]'),
(23, 5, NULL, NULL, 2, 2, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-2.jpg\",\"products\\/22-4.jpg\",\"products\\/32-3.jpg\"]'),
(24, 10, NULL, NULL, 49, 2, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/23-3.jpg\",\"products\\/30-2.jpg\",\"products\\/45-1.jpg\"]'),
(25, 8, NULL, NULL, 50, 5, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/47-1.jpg\",\"products\\/49-1.jpg\",\"products\\/50-3.jpg\"]'),
(26, 9, NULL, NULL, 32, 1, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-3.jpg\"]'),
(27, 4, NULL, NULL, 25, 2, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-3.jpg\",\"products\\/5-4.jpg\"]'),
(28, 5, NULL, NULL, 4, 5, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-2.jpg\",\"products\\/29-3.jpg\",\"products\\/30-4.jpg\"]'),
(30, 9, NULL, NULL, 34, 5, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/48-1.jpg\"]'),
(31, 9, NULL, NULL, 31, 5, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-4.jpg\",\"products\\/12-3.jpg\",\"products\\/33-2.jpg\"]'),
(32, 6, NULL, NULL, 14, 1, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/50-3.jpg\"]'),
(33, 2, NULL, NULL, 12, 3, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-1.jpg\"]'),
(34, 4, NULL, NULL, 35, 4, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/29-1.jpg\"]'),
(35, 3, NULL, NULL, 39, 1, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/40-1.jpg\",\"products\\/54-2.jpg\"]'),
(36, 9, NULL, NULL, 19, 1, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-4.jpg\"]'),
(37, 1, NULL, NULL, 40, 1, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-2.jpg\"]'),
(38, 3, NULL, NULL, 22, 4, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-2.jpg\",\"products\\/21-3.jpg\"]'),
(39, 1, NULL, NULL, 18, 1, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-3.jpg\",\"products\\/23-1.jpg\",\"products\\/24-2.jpg\",\"products\\/29-1.jpg\"]'),
(40, 7, NULL, NULL, 18, 5, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-4.jpg\",\"products\\/14-4.jpg\",\"products\\/31-3.jpg\",\"products\\/35-4.jpg\"]'),
(41, 5, NULL, NULL, 37, 4, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-3.jpg\"]'),
(42, 9, NULL, NULL, 11, 2, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-1.jpg\",\"products\\/31-3.jpg\"]'),
(44, 2, NULL, NULL, 31, 3, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-2.jpg\",\"products\\/32-1.jpg\",\"products\\/34-2.jpg\"]'),
(45, 3, NULL, NULL, 51, 3, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-3.jpg\",\"products\\/24-4.jpg\",\"products\\/29-2.jpg\",\"products\\/53-1.jpg\"]'),
(46, 2, NULL, NULL, 15, 1, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-3.jpg\",\"products\\/10-2.jpg\",\"products\\/44-2.jpg\",\"products\\/47-2.jpg\"]'),
(47, 5, NULL, NULL, 40, 5, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/23-3.jpg\",\"products\\/30-2.jpg\",\"products\\/32-3.jpg\",\"products\\/40-4.jpg\"]'),
(48, 8, NULL, NULL, 23, 4, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-2.jpg\",\"products\\/14-3.jpg\",\"products\\/38-3.jpg\",\"products\\/43-2.jpg\"]'),
(49, 3, NULL, NULL, 18, 2, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-4.jpg\"]'),
(50, 9, NULL, NULL, 54, 1, 'Clean & perfect source code', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/40-3.jpg\",\"products\\/54-2.jpg\"]'),
(51, 10, NULL, NULL, 50, 5, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-3.jpg\",\"products\\/25-3.jpg\",\"products\\/49-1.jpg\"]'),
(53, 1, NULL, NULL, 17, 4, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-1.jpg\",\"products\\/16-4.jpg\",\"products\\/46-3.jpg\",\"products\\/46-4.jpg\"]'),
(54, 6, NULL, NULL, 54, 1, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-3.jpg\",\"products\\/10-3.jpg\",\"products\\/30-3.jpg\",\"products\\/37-3.jpg\"]'),
(55, 10, NULL, NULL, 36, 3, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-2.jpg\",\"products\\/8-4.jpg\",\"products\\/21-4.jpg\",\"products\\/23-4.jpg\"]'),
(56, 2, NULL, NULL, 18, 3, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-4.jpg\",\"products\\/9-3.jpg\",\"products\\/12-3.jpg\"]'),
(57, 9, NULL, NULL, 10, 2, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-4.jpg\",\"products\\/17-3.jpg\",\"products\\/25-2.jpg\"]'),
(58, 4, NULL, NULL, 23, 5, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/9-3.jpg\",\"products\\/31-4.jpg\",\"products\\/33-3.jpg\",\"products\\/54-1.jpg\"]'),
(59, 1, NULL, NULL, 12, 1, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/37-3.jpg\"]'),
(60, 6, NULL, NULL, 46, 3, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-1.jpg\",\"products\\/17-1.jpg\",\"products\\/44-2.jpg\"]'),
(61, 3, NULL, NULL, 45, 4, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/25-1.jpg\",\"products\\/28-2.jpg\",\"products\\/37-3.jpg\",\"products\\/50-1.jpg\"]'),
(62, 5, NULL, NULL, 42, 5, 'Clean & perfect source code', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/37-1.jpg\",\"products\\/43-3.jpg\",\"products\\/47-1.jpg\"]'),
(63, 7, NULL, NULL, 45, 4, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/52-2.jpg\"]'),
(64, 9, NULL, NULL, 41, 5, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-3.jpg\"]'),
(65, 10, NULL, NULL, 20, 4, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/26-4.jpg\",\"products\\/34-1.jpg\"]'),
(66, 2, NULL, NULL, 17, 1, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-3.jpg\",\"products\\/14-1.jpg\",\"products\\/53-3.jpg\"]'),
(67, 3, NULL, NULL, 29, 3, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-1.jpg\",\"products\\/1-4.jpg\"]'),
(68, 4, NULL, NULL, 7, 3, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-1.jpg\"]'),
(69, 7, NULL, NULL, 12, 2, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/20-4.jpg\",\"products\\/26-2.jpg\"]'),
(70, 7, NULL, NULL, 19, 3, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/22-3.jpg\",\"products\\/27-4.jpg\",\"products\\/28-4.jpg\",\"products\\/50-4.jpg\"]'),
(71, 9, NULL, NULL, 46, 3, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-4.jpg\",\"products\\/25-3.jpg\",\"products\\/37-2.jpg\",\"products\\/44-3.jpg\"]'),
(72, 2, NULL, NULL, 41, 2, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/39-3.jpg\"]'),
(73, 10, NULL, NULL, 33, 3, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-4.jpg\",\"products\\/32-2.jpg\",\"products\\/32-3.jpg\"]'),
(75, 6, NULL, NULL, 11, 3, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-4.jpg\"]'),
(76, 9, NULL, NULL, 28, 3, 'Clean & perfect source code', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-2.jpg\",\"products\\/38-3.jpg\",\"products\\/44-3.jpg\"]'),
(78, 2, NULL, NULL, 45, 4, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-4.jpg\",\"products\\/14-1.jpg\",\"products\\/44-1.jpg\"]'),
(79, 8, NULL, NULL, 22, 1, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-4.jpg\",\"products\\/42-2.jpg\"]'),
(81, 3, NULL, NULL, 14, 5, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/45-4.jpg\"]'),
(82, 8, NULL, NULL, 13, 4, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-3.jpg\"]'),
(83, 4, NULL, NULL, 34, 2, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-4.jpg\",\"products\\/23-3.jpg\",\"products\\/33-3.jpg\",\"products\\/46-2.jpg\"]'),
(84, 8, NULL, NULL, 8, 3, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/24-4.jpg\",\"products\\/33-4.jpg\"]'),
(85, 5, NULL, NULL, 12, 5, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-4.jpg\",\"products\\/37-2.jpg\"]'),
(86, 4, NULL, NULL, 2, 5, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-2.jpg\",\"products\\/26-4.jpg\"]'),
(87, 1, NULL, NULL, 53, 4, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-2.jpg\",\"products\\/36-3.jpg\",\"products\\/42-3.jpg\",\"products\\/45-2.jpg\"]'),
(88, 1, NULL, NULL, 20, 1, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-4.jpg\",\"products\\/18-1.jpg\"]'),
(89, 1, NULL, NULL, 26, 1, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-4.jpg\",\"products\\/31-4.jpg\"]'),
(91, 10, NULL, NULL, 29, 1, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/52-3.jpg\"]'),
(92, 2, NULL, NULL, 47, 2, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-2.jpg\"]'),
(93, 6, NULL, NULL, 21, 2, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/7-2.jpg\",\"products\\/12-1.jpg\"]'),
(94, 4, NULL, NULL, 10, 1, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-3.jpg\",\"products\\/8-4.jpg\",\"products\\/13-3.jpg\",\"products\\/15-4.jpg\"]'),
(96, 10, NULL, NULL, 51, 1, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-3.jpg\",\"products\\/16-1.jpg\",\"products\\/27-3.jpg\",\"products\\/32-1.jpg\"]'),
(97, 2, NULL, NULL, 39, 5, 'Clean & perfect source code', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-2.jpg\",\"products\\/30-1.jpg\",\"products\\/49-3.jpg\"]'),
(98, 8, NULL, NULL, 12, 3, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-2.jpg\",\"products\\/35-1.jpg\"]'),
(99, 6, NULL, NULL, 32, 4, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/45-3.jpg\"]'),
(101, 1, NULL, NULL, 46, 3, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-2.jpg\",\"products\\/32-1.jpg\"]'),
(102, 10, NULL, NULL, 32, 4, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-4.jpg\",\"products\\/22-3.jpg\"]'),
(103, 1, NULL, NULL, 7, 3, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-1.jpg\",\"products\\/30-2.jpg\",\"products\\/34-4.jpg\"]'),
(104, 8, NULL, NULL, 34, 3, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/27-1.jpg\",\"products\\/31-4.jpg\",\"products\\/33-2.jpg\",\"products\\/48-4.jpg\"]'),
(105, 8, NULL, NULL, 14, 1, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/38-2.jpg\"]'),
(106, 8, NULL, NULL, 53, 5, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/20-1.jpg\",\"products\\/29-2.jpg\",\"products\\/48-4.jpg\"]'),
(107, 10, NULL, NULL, 23, 2, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-3.jpg\",\"products\\/14-3.jpg\",\"products\\/30-4.jpg\",\"products\\/43-3.jpg\"]'),
(108, 6, NULL, NULL, 18, 2, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/27-2.jpg\"]'),
(109, 6, NULL, NULL, 10, 2, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-3.jpg\",\"products\\/37-3.jpg\",\"products\\/49-3.jpg\"]'),
(110, 1, NULL, NULL, 13, 3, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/41-1.jpg\"]'),
(111, 10, NULL, NULL, 41, 5, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-1.jpg\",\"products\\/25-4.jpg\"]'),
(112, 10, NULL, NULL, 34, 3, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-2.jpg\",\"products\\/34-3.jpg\"]'),
(113, 7, NULL, NULL, 8, 3, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-4.jpg\",\"products\\/33-1.jpg\"]'),
(114, 7, NULL, NULL, 15, 3, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-3.jpg\",\"products\\/23-3.jpg\"]'),
(116, 8, NULL, NULL, 10, 3, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/33-3.jpg\"]'),
(117, 2, NULL, NULL, 44, 2, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-3.jpg\",\"products\\/24-3.jpg\"]'),
(118, 10, NULL, NULL, 54, 5, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/27-4.jpg\",\"products\\/30-4.jpg\",\"products\\/46-4.jpg\"]'),
(119, 1, NULL, NULL, 27, 3, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-2.jpg\"]'),
(120, 6, NULL, NULL, 41, 5, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-2.jpg\",\"products\\/50-3.jpg\",\"products\\/52-3.jpg\"]'),
(121, 8, NULL, NULL, 31, 3, 'Clean & perfect source code', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-3.jpg\",\"products\\/34-4.jpg\",\"products\\/36-2.jpg\",\"products\\/42-2.jpg\"]'),
(123, 10, NULL, NULL, 45, 1, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/36-3.jpg\"]'),
(124, 4, NULL, NULL, 16, 2, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-2.jpg\",\"products\\/34-4.jpg\"]'),
(125, 7, NULL, NULL, 22, 5, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/28-2.jpg\"]'),
(126, 7, NULL, NULL, 43, 4, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/18-3.jpg\",\"products\\/19-4.jpg\",\"products\\/38-4.jpg\",\"products\\/49-1.jpg\"]'),
(127, 9, NULL, NULL, 51, 1, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-3.jpg\",\"products\\/35-1.jpg\",\"products\\/41-3.jpg\",\"products\\/48-1.jpg\"]'),
(128, 7, NULL, NULL, 16, 3, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-2.jpg\"]'),
(129, 3, NULL, NULL, 32, 5, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/52-1.jpg\"]'),
(130, 9, NULL, NULL, 22, 1, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-2.jpg\",\"products\\/8-1.jpg\",\"products\\/22-2.jpg\",\"products\\/39-2.jpg\"]'),
(131, 6, NULL, NULL, 53, 3, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/16-1.jpg\"]'),
(132, 2, NULL, NULL, 13, 4, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-3.jpg\",\"products\\/3-2.jpg\",\"products\\/9-2.jpg\",\"products\\/20-4.jpg\"]'),
(133, 6, NULL, NULL, 30, 4, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]'),
(134, 2, NULL, NULL, 26, 4, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-3.jpg\",\"products\\/17-1.jpg\",\"products\\/17-4.jpg\"]'),
(137, 5, NULL, NULL, 28, 2, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/9-1.jpg\",\"products\\/22-3.jpg\",\"products\\/52-1.jpg\"]'),
(138, 6, NULL, NULL, 28, 4, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/25-1.jpg\",\"products\\/35-2.jpg\"]'),
(139, 8, NULL, NULL, 33, 2, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/31-2.jpg\"]'),
(140, 3, NULL, NULL, 5, 2, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-1.jpg\",\"products\\/4-1.jpg\",\"products\\/38-3.jpg\"]'),
(141, 7, NULL, NULL, 4, 1, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/49-1.jpg\"]'),
(142, 10, NULL, NULL, 46, 2, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/34-3.jpg\"]'),
(143, 5, NULL, NULL, 35, 1, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-1.jpg\",\"products\\/21-2.jpg\",\"products\\/28-4.jpg\",\"products\\/52-2.jpg\"]'),
(144, 10, NULL, NULL, 19, 2, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/18-2.jpg\",\"products\\/44-2.jpg\",\"products\\/47-3.jpg\"]'),
(146, 4, NULL, NULL, 15, 4, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-4.jpg\"]'),
(147, 9, NULL, NULL, 37, 3, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-1.jpg\"]'),
(148, 5, NULL, NULL, 6, 5, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-3.jpg\",\"products\\/30-4.jpg\",\"products\\/39-2.jpg\",\"products\\/48-3.jpg\"]'),
(149, 5, NULL, NULL, 10, 4, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/42-2.jpg\",\"products\\/51-1.jpg\"]'),
(150, 1, NULL, NULL, 3, 1, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-1.jpg\"]'),
(152, 6, NULL, NULL, 4, 3, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-2.jpg\",\"products\\/11-1.jpg\",\"products\\/15-2.jpg\"]'),
(153, 10, NULL, NULL, 21, 2, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-1.jpg\",\"products\\/11-4.jpg\",\"products\\/24-2.jpg\",\"products\\/43-2.jpg\"]'),
(154, 10, NULL, NULL, 2, 3, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/20-4.jpg\",\"products\\/25-1.jpg\",\"products\\/36-2.jpg\"]'),
(156, 3, NULL, NULL, 49, 4, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-2.jpg\",\"products\\/36-2.jpg\",\"products\\/40-3.jpg\",\"products\\/41-2.jpg\"]'),
(157, 6, NULL, NULL, 1, 2, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-3.jpg\",\"products\\/24-1.jpg\",\"products\\/33-2.jpg\",\"products\\/44-2.jpg\"]'),
(158, 5, NULL, NULL, 44, 1, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-1.jpg\",\"products\\/43-2.jpg\"]'),
(159, 4, NULL, NULL, 20, 5, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/26-1.jpg\",\"products\\/53-3.jpg\"]'),
(160, 7, NULL, NULL, 27, 1, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-2.jpg\",\"products\\/31-2.jpg\"]'),
(161, 10, NULL, NULL, 14, 1, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-1.jpg\",\"products\\/49-4.jpg\"]'),
(162, 8, NULL, NULL, 42, 1, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-1.jpg\",\"products\\/28-4.jpg\",\"products\\/50-1.jpg\",\"products\\/50-4.jpg\"]'),
(163, 7, NULL, NULL, 52, 2, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-1.jpg\",\"products\\/19-2.jpg\",\"products\\/22-2.jpg\",\"products\\/45-2.jpg\"]'),
(164, 1, NULL, NULL, 28, 3, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/26-1.jpg\"]'),
(166, 9, NULL, NULL, 50, 2, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-2.jpg\",\"products\\/31-4.jpg\",\"products\\/41-4.jpg\"]'),
(168, 9, NULL, NULL, 20, 1, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/9-3.jpg\",\"products\\/25-1.jpg\"]'),
(169, 4, NULL, NULL, 29, 5, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-1.jpg\",\"products\\/7-1.jpg\",\"products\\/15-4.jpg\",\"products\\/36-2.jpg\"]'),
(170, 4, NULL, NULL, 53, 3, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-4.jpg\",\"products\\/11-4.jpg\",\"products\\/12-4.jpg\"]'),
(171, 1, NULL, NULL, 16, 5, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/20-1.jpg\"]'),
(172, 8, NULL, NULL, 54, 2, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-1.jpg\"]'),
(173, 10, NULL, NULL, 25, 1, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/9-3.jpg\"]'),
(174, 5, NULL, NULL, 54, 4, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-4.jpg\",\"products\\/20-2.jpg\"]'),
(175, 8, NULL, NULL, 30, 1, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-1.jpg\",\"products\\/39-1.jpg\",\"products\\/53-1.jpg\"]'),
(176, 9, NULL, NULL, 24, 2, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/49-3.jpg\"]'),
(179, 5, NULL, NULL, 50, 1, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/47-2.jpg\"]'),
(180, 7, NULL, NULL, 9, 3, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-4.jpg\"]'),
(182, 2, NULL, NULL, 51, 2, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-2.jpg\",\"products\\/52-2.jpg\"]'),
(183, 2, NULL, NULL, 24, 5, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-3.jpg\",\"products\\/38-2.jpg\"]'),
(184, 8, NULL, NULL, 49, 1, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/22-4.jpg\"]'),
(185, 9, NULL, NULL, 48, 1, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-3.jpg\",\"products\\/35-3.jpg\",\"products\\/36-3.jpg\",\"products\\/46-1.jpg\"]'),
(186, 7, NULL, NULL, 39, 3, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/33-2.jpg\",\"products\\/34-3.jpg\",\"products\\/46-2.jpg\",\"products\\/49-3.jpg\"]'),
(187, 4, NULL, NULL, 44, 2, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-3.jpg\"]'),
(188, 3, NULL, NULL, 31, 1, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/23-2.jpg\",\"products\\/24-1.jpg\",\"products\\/36-1.jpg\",\"products\\/37-2.jpg\"]'),
(189, 8, NULL, NULL, 6, 3, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-1.jpg\",\"products\\/13-2.jpg\",\"products\\/38-3.jpg\"]');
INSERT INTO `ec_reviews` (`id`, `customer_id`, `customer_name`, `customer_email`, `product_id`, `star`, `comment`, `status`, `created_at`, `updated_at`, `images`) VALUES
(190, 1, NULL, NULL, 47, 1, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-2.jpg\",\"products\\/31-4.jpg\",\"products\\/39-4.jpg\",\"products\\/44-2.jpg\"]'),
(192, 9, NULL, NULL, 52, 1, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-1.jpg\",\"products\\/34-1.jpg\",\"products\\/42-2.jpg\",\"products\\/48-2.jpg\"]'),
(193, 4, NULL, NULL, 18, 5, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-3.jpg\",\"products\\/15-4.jpg\",\"products\\/38-2.jpg\",\"products\\/45-1.jpg\"]'),
(194, 9, NULL, NULL, 36, 3, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-1.jpg\",\"products\\/53-3.jpg\",\"products\\/54-1.jpg\"]'),
(195, 6, NULL, NULL, 29, 5, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-4.jpg\",\"products\\/28-4.jpg\",\"products\\/39-4.jpg\"]'),
(197, 8, NULL, NULL, 20, 4, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/25-2.jpg\",\"products\\/31-4.jpg\"]'),
(199, 1, NULL, NULL, 25, 3, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-3.jpg\",\"products\\/24-3.jpg\"]'),
(200, 4, NULL, NULL, 50, 3, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-3.jpg\",\"products\\/52-1.jpg\"]'),
(201, 6, NULL, NULL, 49, 5, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-3.jpg\",\"products\\/47-1.jpg\"]'),
(202, 5, NULL, NULL, 20, 2, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/37-2.jpg\",\"products\\/38-2.jpg\"]'),
(203, 6, NULL, NULL, 48, 3, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/7-1.jpg\",\"products\\/9-2.jpg\",\"products\\/9-3.jpg\"]'),
(204, 5, NULL, NULL, 31, 1, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/45-4.jpg\"]'),
(206, 4, NULL, NULL, 9, 2, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-3.jpg\",\"products\\/3-1.jpg\",\"products\\/29-3.jpg\"]'),
(209, 1, NULL, NULL, 8, 5, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-1.jpg\",\"products\\/34-3.jpg\",\"products\\/51-3.jpg\"]'),
(210, 3, NULL, NULL, 47, 2, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/26-1.jpg\",\"products\\/26-2.jpg\"]'),
(211, 2, NULL, NULL, 28, 2, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/48-3.jpg\"]'),
(212, 8, NULL, NULL, 43, 5, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/18-4.jpg\"]'),
(213, 8, NULL, NULL, 11, 2, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-2.jpg\",\"products\\/48-4.jpg\"]'),
(214, 4, NULL, NULL, 28, 3, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-3.jpg\",\"products\\/12-1.jpg\",\"products\\/25-3.jpg\"]'),
(215, 3, NULL, NULL, 28, 4, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-5.jpg\",\"products\\/50-3.jpg\"]'),
(216, 6, NULL, NULL, 23, 4, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-4.jpg\",\"products\\/10-1.jpg\",\"products\\/23-1.jpg\",\"products\\/39-2.jpg\"]'),
(218, 5, NULL, NULL, 41, 1, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-4.jpg\",\"products\\/18-2.jpg\",\"products\\/48-3.jpg\"]'),
(219, 1, NULL, NULL, 24, 2, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/23-1.jpg\",\"products\\/24-4.jpg\"]'),
(221, 6, NULL, NULL, 34, 5, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-1.jpg\",\"products\\/31-3.jpg\"]'),
(222, 9, NULL, NULL, 38, 2, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/31-1.jpg\"]'),
(223, 4, NULL, NULL, 3, 5, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-2.jpg\"]'),
(224, 1, NULL, NULL, 4, 4, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-2.jpg\",\"products\\/27-1.jpg\",\"products\\/31-4.jpg\",\"products\\/49-1.jpg\"]'),
(225, 8, NULL, NULL, 3, 4, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/52-2.jpg\"]'),
(226, 3, NULL, NULL, 30, 1, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-1.jpg\",\"products\\/23-3.jpg\",\"products\\/29-3.jpg\",\"products\\/35-3.jpg\"]'),
(227, 9, NULL, NULL, 6, 5, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/30-4.jpg\",\"products\\/36-3.jpg\",\"products\\/54-3.jpg\"]'),
(229, 7, NULL, NULL, 33, 1, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-3.jpg\",\"products\\/20-1.jpg\"]'),
(230, 6, NULL, NULL, 25, 4, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-2.jpg\",\"products\\/13-4.jpg\",\"products\\/41-3.jpg\",\"products\\/52-1.jpg\"]'),
(231, 5, NULL, NULL, 18, 3, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-2.jpg\"]'),
(232, 7, NULL, NULL, 25, 4, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-4.jpg\",\"products\\/25-2.jpg\",\"products\\/46-1.jpg\"]'),
(233, 8, NULL, NULL, 51, 5, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-3.jpg\"]'),
(235, 6, NULL, NULL, 27, 2, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/32-1.jpg\",\"products\\/53-1.jpg\"]'),
(237, 5, NULL, NULL, 16, 1, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/20-2.jpg\",\"products\\/24-4.jpg\"]'),
(238, 5, NULL, NULL, 29, 2, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-4.jpg\",\"products\\/20-4.jpg\",\"products\\/23-4.jpg\",\"products\\/25-1.jpg\"]'),
(239, 2, NULL, NULL, 2, 4, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-1.jpg\",\"products\\/13-4.jpg\",\"products\\/28-2.jpg\"]'),
(240, 6, NULL, NULL, 31, 2, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/9-1.jpg\",\"products\\/16-3.jpg\",\"products\\/24-2.jpg\",\"products\\/27-3.jpg\"]'),
(242, 7, NULL, NULL, 48, 5, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-3.jpg\",\"products\\/29-2.jpg\",\"products\\/36-2.jpg\",\"products\\/41-3.jpg\"]'),
(244, 5, NULL, NULL, 24, 1, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-4.jpg\",\"products\\/23-2.jpg\",\"products\\/47-2.jpg\",\"products\\/47-3.jpg\"]'),
(246, 5, NULL, NULL, 3, 2, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-4.jpg\",\"products\\/36-3.jpg\",\"products\\/42-1.jpg\"]'),
(248, 2, NULL, NULL, 10, 5, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-2.jpg\",\"products\\/25-1.jpg\",\"products\\/29-2.jpg\",\"products\\/48-3.jpg\"]'),
(250, 8, NULL, NULL, 41, 5, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/22-4.jpg\",\"products\\/31-1.jpg\",\"products\\/38-4.jpg\",\"products\\/42-2.jpg\"]'),
(251, 3, NULL, NULL, 35, 1, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/22-1.jpg\"]'),
(252, 6, NULL, NULL, 9, 4, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/20-1.jpg\",\"products\\/51-4.jpg\"]'),
(253, 3, NULL, NULL, 4, 5, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/26-4.jpg\",\"products\\/41-2.jpg\",\"products\\/46-3.jpg\",\"products\\/49-3.jpg\"]'),
(254, 9, NULL, NULL, 53, 1, 'Clean & perfect source code', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-1.jpg\",\"products\\/15-3.jpg\",\"products\\/35-3.jpg\"]'),
(255, 6, NULL, NULL, 51, 1, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-1.jpg\",\"products\\/4-2.jpg\",\"products\\/24-3.jpg\"]'),
(257, 7, NULL, NULL, 29, 1, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/24-2.jpg\",\"products\\/40-4.jpg\"]'),
(259, 1, NULL, NULL, 43, 3, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/20-3.jpg\",\"products\\/33-3.jpg\"]'),
(260, 4, NULL, NULL, 19, 2, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-2.jpg\"]'),
(265, 4, NULL, NULL, 38, 5, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/32-3.jpg\"]'),
(266, 6, NULL, NULL, 3, 4, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/16-2.jpg\",\"products\\/30-1.jpg\",\"products\\/40-2.jpg\"]'),
(268, 10, NULL, NULL, 6, 4, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-2.jpg\"]'),
(271, 7, NULL, NULL, 6, 1, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-1.jpg\",\"products\\/29-3.jpg\",\"products\\/45-2.jpg\"]'),
(272, 7, NULL, NULL, 3, 2, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/26-3.jpg\",\"products\\/34-4.jpg\"]'),
(274, 10, NULL, NULL, 42, 2, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/24-2.jpg\",\"products\\/33-1.jpg\",\"products\\/47-3.jpg\",\"products\\/53-1.jpg\"]'),
(276, 6, NULL, NULL, 38, 3, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-1.jpg\",\"products\\/26-1.jpg\",\"products\\/54-2.jpg\"]'),
(278, 2, NULL, NULL, 8, 5, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-3.jpg\",\"products\\/10-4.jpg\",\"products\\/29-1.jpg\",\"products\\/40-3.jpg\"]'),
(279, 5, NULL, NULL, 34, 5, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/16-2.jpg\",\"products\\/31-4.jpg\",\"products\\/43-1.jpg\",\"products\\/50-1.jpg\"]'),
(282, 5, NULL, NULL, 46, 4, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-2.jpg\"]'),
(286, 4, NULL, NULL, 51, 1, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/27-2.jpg\"]'),
(288, 5, NULL, NULL, 7, 1, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-2.jpg\",\"products\\/46-2.jpg\"]'),
(291, 7, NULL, NULL, 49, 2, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-1.jpg\"]'),
(292, 6, NULL, NULL, 39, 4, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/28-4.jpg\"]'),
(294, 6, NULL, NULL, 7, 5, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-4.jpg\",\"products\\/28-3.jpg\",\"products\\/33-4.jpg\",\"products\\/50-2.jpg\"]'),
(295, 2, NULL, NULL, 21, 1, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-2.jpg\",\"products\\/26-3.jpg\"]'),
(296, 1, NULL, NULL, 38, 3, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-2.jpg\",\"products\\/6-1.jpg\",\"products\\/13-4.jpg\",\"products\\/22-2.jpg\"]'),
(297, 10, NULL, NULL, 13, 2, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-3.jpg\",\"products\\/23-2.jpg\"]'),
(298, 1, NULL, NULL, 2, 3, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-2.jpg\",\"products\\/25-3.jpg\",\"products\\/33-1.jpg\",\"products\\/50-1.jpg\"]'),
(301, 3, NULL, NULL, 12, 4, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-2.jpg\",\"products\\/22-1.jpg\",\"products\\/27-4.jpg\"]'),
(302, 8, NULL, NULL, 4, 3, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/31-2.jpg\"]'),
(304, 2, NULL, NULL, 20, 2, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-3.jpg\",\"products\\/19-4.jpg\",\"products\\/21-1.jpg\"]'),
(306, 8, NULL, NULL, 40, 5, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/7-2.jpg\",\"products\\/40-4.jpg\"]'),
(308, 2, NULL, NULL, 35, 1, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-4.jpg\",\"products\\/23-4.jpg\"]'),
(311, 3, NULL, NULL, 1, 5, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-5.jpg\"]'),
(312, 7, NULL, NULL, 28, 2, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/28-1.jpg\"]'),
(316, 10, NULL, NULL, 38, 3, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/46-4.jpg\"]'),
(318, 2, NULL, NULL, 42, 1, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/23-2.jpg\"]'),
(319, 4, NULL, NULL, 31, 5, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/25-1.jpg\"]'),
(321, 10, NULL, NULL, 40, 5, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-2.jpg\",\"products\\/46-2.jpg\",\"products\\/54-2.jpg\"]'),
(322, 2, NULL, NULL, 5, 3, 'Clean & perfect source code', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/53-3.jpg\"]'),
(324, 3, NULL, NULL, 42, 3, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/27-4.jpg\",\"products\\/29-1.jpg\"]'),
(328, 9, NULL, NULL, 9, 4, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-3.jpg\",\"products\\/26-4.jpg\",\"products\\/31-3.jpg\",\"products\\/40-4.jpg\"]'),
(329, 1, NULL, NULL, 54, 2, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/20-2.jpg\",\"products\\/51-4.jpg\"]'),
(330, 9, NULL, NULL, 47, 4, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-3.jpg\",\"products\\/31-4.jpg\",\"products\\/51-2.jpg\"]'),
(331, 3, NULL, NULL, 34, 3, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/32-3.jpg\"]'),
(341, 2, NULL, NULL, 25, 5, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/41-3.jpg\"]'),
(342, 4, NULL, NULL, 26, 1, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-2.jpg\",\"products\\/25-3.jpg\"]'),
(344, 7, NULL, NULL, 50, 1, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-2.jpg\"]'),
(346, 3, NULL, NULL, 19, 2, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-2.jpg\",\"products\\/24-2.jpg\",\"products\\/34-4.jpg\"]'),
(347, 7, NULL, NULL, 34, 5, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-1.jpg\",\"products\\/48-2.jpg\"]'),
(348, 2, NULL, NULL, 32, 5, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/40-3.jpg\"]'),
(350, 8, NULL, NULL, 27, 1, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/31-2.jpg\",\"products\\/33-4.jpg\",\"products\\/39-2.jpg\"]'),
(353, 3, NULL, NULL, 2, 2, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/38-1.jpg\"]'),
(355, 6, NULL, NULL, 43, 3, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-2.jpg\",\"products\\/11-4.jpg\",\"products\\/34-2.jpg\",\"products\\/38-2.jpg\"]'),
(360, 9, NULL, NULL, 25, 4, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/18-2.jpg\",\"products\\/41-3.jpg\",\"products\\/43-3.jpg\",\"products\\/52-3.jpg\"]'),
(362, 2, NULL, NULL, 52, 1, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/41-4.jpg\"]'),
(364, 5, NULL, NULL, 1, 3, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-1.jpg\",\"products\\/22-2.jpg\",\"products\\/31-2.jpg\",\"products\\/35-2.jpg\"]'),
(366, 6, NULL, NULL, 35, 2, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-4.jpg\",\"products\\/37-2.jpg\",\"products\\/40-4.jpg\",\"products\\/47-3.jpg\"]'),
(367, 3, NULL, NULL, 7, 4, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/7-2.jpg\",\"products\\/44-3.jpg\"]'),
(372, 2, NULL, NULL, 38, 2, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-3.jpg\",\"products\\/26-2.jpg\",\"products\\/35-4.jpg\",\"products\\/39-2.jpg\"]'),
(373, 8, NULL, NULL, 18, 2, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/24-1.jpg\"]'),
(375, 3, NULL, NULL, 24, 3, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/25-1.jpg\"]'),
(376, 6, NULL, NULL, 37, 5, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/39-3.jpg\",\"products\\/40-4.jpg\",\"products\\/49-2.jpg\"]'),
(377, 3, NULL, NULL, 11, 5, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-3.jpg\",\"products\\/23-3.jpg\",\"products\\/50-1.jpg\"]'),
(379, 10, NULL, NULL, 37, 2, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-4.jpg\",\"products\\/3-4.jpg\",\"products\\/4-3.jpg\",\"products\\/22-1.jpg\"]'),
(385, 8, NULL, NULL, 24, 4, 'Clean & perfect source code', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-1.jpg\",\"products\\/28-4.jpg\",\"products\\/34-4.jpg\"]'),
(390, 1, NULL, NULL, 15, 5, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-4.jpg\",\"products\\/4-2.jpg\",\"products\\/19-2.jpg\",\"products\\/37-1.jpg\"]'),
(391, 7, NULL, NULL, 14, 3, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/47-1.jpg\",\"products\\/50-3.jpg\"]'),
(392, 3, NULL, NULL, 40, 5, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-1.jpg\",\"products\\/28-2.jpg\",\"products\\/34-3.jpg\"]'),
(394, 7, NULL, NULL, 51, 4, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-3.jpg\",\"products\\/28-2.jpg\",\"products\\/36-3.jpg\",\"products\\/54-1.jpg\"]'),
(397, 6, NULL, NULL, 40, 5, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-4.jpg\",\"products\\/38-1.jpg\",\"products\\/50-3.jpg\"]'),
(399, 9, NULL, NULL, 49, 3, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-3.jpg\",\"products\\/13-2.jpg\",\"products\\/34-1.jpg\"]'),
(400, 3, NULL, NULL, 25, 1, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-1.jpg\",\"products\\/23-2.jpg\"]'),
(402, 8, NULL, NULL, 46, 1, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-4.jpg\",\"products\\/14-4.jpg\",\"products\\/35-4.jpg\",\"products\\/47-2.jpg\"]'),
(408, 1, NULL, NULL, 19, 1, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/30-2.jpg\"]'),
(413, 7, NULL, NULL, 30, 2, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-4.jpg\",\"products\\/12-4.jpg\",\"products\\/23-2.jpg\"]'),
(417, 9, NULL, NULL, 15, 2, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-4.jpg\",\"products\\/33-1.jpg\"]'),
(424, 1, NULL, NULL, 37, 2, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/25-2.jpg\"]'),
(426, 10, NULL, NULL, 7, 4, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/20-4.jpg\",\"products\\/43-2.jpg\",\"products\\/51-2.jpg\"]'),
(427, 8, NULL, NULL, 15, 3, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-1.jpg\",\"products\\/26-3.jpg\",\"products\\/41-2.jpg\",\"products\\/48-1.jpg\"]'),
(428, 9, NULL, NULL, 18, 3, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-4.jpg\"]'),
(429, 1, NULL, NULL, 41, 1, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-1.jpg\"]'),
(430, 3, NULL, NULL, 10, 1, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-4.jpg\",\"products\\/18-3.jpg\",\"products\\/45-4.jpg\",\"products\\/53-2.jpg\"]'),
(432, 9, NULL, NULL, 44, 1, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/33-1.jpg\",\"products\\/52-3.jpg\"]'),
(433, 9, NULL, NULL, 43, 3, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-4.jpg\",\"products\\/13-2.jpg\",\"products\\/17-3.jpg\"]'),
(434, 4, NULL, NULL, 32, 2, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-3.jpg\",\"products\\/23-3.jpg\",\"products\\/45-1.jpg\"]'),
(435, 3, NULL, NULL, 46, 2, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/24-1.jpg\"]'),
(436, 2, NULL, NULL, 29, 5, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-4.jpg\",\"products\\/32-2.jpg\",\"products\\/34-1.jpg\",\"products\\/47-2.jpg\"]'),
(439, 7, NULL, NULL, 7, 1, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-4.jpg\",\"products\\/18-4.jpg\"]'),
(440, 2, NULL, NULL, 11, 3, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-4.jpg\"]'),
(445, 10, NULL, NULL, 9, 3, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/9-2.jpg\",\"products\\/22-3.jpg\",\"products\\/54-3.jpg\"]'),
(449, 8, NULL, NULL, 2, 5, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/22-1.jpg\",\"products\\/36-2.jpg\",\"products\\/37-2.jpg\",\"products\\/38-4.jpg\"]'),
(454, 2, NULL, NULL, 16, 4, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-4.jpg\",\"products\\/24-2.jpg\",\"products\\/43-3.jpg\",\"products\\/45-3.jpg\"]'),
(455, 4, NULL, NULL, 47, 2, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-3.jpg\",\"products\\/15-1.jpg\",\"products\\/25-4.jpg\",\"products\\/32-4.jpg\"]'),
(458, 7, NULL, NULL, 5, 3, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/9-2.jpg\",\"products\\/24-1.jpg\",\"products\\/27-3.jpg\"]'),
(460, 8, NULL, NULL, 19, 5, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-1.jpg\",\"products\\/14-2.jpg\"]'),
(461, 3, NULL, NULL, 15, 3, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-2.jpg\",\"products\\/39-3.jpg\"]'),
(462, 10, NULL, NULL, 31, 3, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-2.jpg\"]'),
(464, 1, NULL, NULL, 33, 2, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/31-2.jpg\",\"products\\/36-3.jpg\"]'),
(466, 4, NULL, NULL, 12, 5, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-1.jpg\"]'),
(476, 6, NULL, NULL, 42, 4, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-1.jpg\",\"products\\/9-3.jpg\",\"products\\/16-2.jpg\"]'),
(479, 9, NULL, NULL, 12, 4, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/22-3.jpg\",\"products\\/51-2.jpg\"]'),
(480, 5, NULL, NULL, 38, 4, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/22-4.jpg\",\"products\\/25-2.jpg\",\"products\\/27-2.jpg\"]'),
(483, 7, NULL, NULL, 40, 5, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/31-2.jpg\"]'),
(485, 1, NULL, NULL, 14, 4, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/25-1.jpg\"]'),
(488, 1, NULL, NULL, 39, 5, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-1.jpg\",\"products\\/18-1.jpg\",\"products\\/42-1.jpg\"]'),
(489, 2, NULL, NULL, 1, 2, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/23-3.jpg\"]'),
(491, 10, NULL, NULL, 53, 4, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-4.jpg\",\"products\\/39-3.jpg\"]'),
(492, 10, NULL, NULL, 3, 2, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/34-4.jpg\",\"products\\/51-1.jpg\"]'),
(497, 6, NULL, NULL, 22, 4, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-4.jpg\",\"products\\/11-3.jpg\",\"products\\/16-3.jpg\",\"products\\/50-2.jpg\"]'),
(498, 2, NULL, NULL, 23, 2, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-1.jpg\",\"products\\/37-3.jpg\"]'),
(499, 8, NULL, NULL, 52, 1, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/22-4.jpg\",\"products\\/27-1.jpg\",\"products\\/36-1.jpg\",\"products\\/37-2.jpg\"]'),
(500, 1, NULL, NULL, 51, 5, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-1.jpg\",\"products\\/22-2.jpg\",\"products\\/39-3.jpg\",\"products\\/40-3.jpg\"]'),
(501, 1, NULL, NULL, 6, 1, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-5.jpg\",\"products\\/42-2.jpg\",\"products\\/51-4.jpg\"]'),
(505, 6, NULL, NULL, 13, 3, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-2.jpg\",\"products\\/17-3.jpg\",\"products\\/39-3.jpg\"]'),
(506, 5, NULL, NULL, 5, 4, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/38-1.jpg\"]'),
(509, 5, NULL, NULL, 36, 1, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-4.jpg\",\"products\\/7-2.jpg\",\"products\\/30-1.jpg\"]'),
(512, 4, NULL, NULL, 54, 2, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/43-2.jpg\",\"products\\/51-4.jpg\"]'),
(514, 5, NULL, NULL, 52, 5, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-1.jpg\",\"products\\/30-3.jpg\",\"products\\/34-4.jpg\",\"products\\/53-4.jpg\"]'),
(517, 7, NULL, NULL, 24, 3, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-1.jpg\"]'),
(522, 8, NULL, NULL, 38, 2, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/18-4.jpg\",\"products\\/28-1.jpg\"]'),
(524, 8, NULL, NULL, 21, 5, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-2.jpg\"]');
INSERT INTO `ec_reviews` (`id`, `customer_id`, `customer_name`, `customer_email`, `product_id`, `star`, `comment`, `status`, `created_at`, `updated_at`, `images`) VALUES
(527, 7, NULL, NULL, 44, 4, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-3.jpg\",\"products\\/11-2.jpg\",\"products\\/39-1.jpg\"]'),
(530, 2, NULL, NULL, 6, 3, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-1.jpg\",\"products\\/49-3.jpg\",\"products\\/53-4.jpg\",\"products\\/54-1.jpg\"]'),
(533, 7, NULL, NULL, 11, 5, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-3.jpg\"]'),
(536, 8, NULL, NULL, 29, 4, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/7-3.jpg\",\"products\\/31-4.jpg\"]'),
(537, 1, NULL, NULL, 36, 4, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/9-1.jpg\",\"products\\/18-2.jpg\"]'),
(539, 7, NULL, NULL, 2, 5, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/46-2.jpg\",\"products\\/49-4.jpg\"]'),
(545, 1, NULL, NULL, 42, 3, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/20-3.jpg\",\"products\\/38-2.jpg\",\"products\\/41-3.jpg\"]'),
(548, 5, NULL, NULL, 23, 2, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/31-3.jpg\",\"products\\/34-3.jpg\",\"products\\/47-1.jpg\"]'),
(551, 3, NULL, NULL, 21, 1, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/18-1.jpg\",\"products\\/28-2.jpg\"]'),
(553, 4, NULL, NULL, 6, 3, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-1.jpg\",\"products\\/42-2.jpg\"]'),
(554, 2, NULL, NULL, 50, 2, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-1.jpg\",\"products\\/7-1.jpg\",\"products\\/25-2.jpg\",\"products\\/31-3.jpg\"]'),
(559, 5, NULL, NULL, 14, 1, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-1.jpg\",\"products\\/8-1.jpg\",\"products\\/19-3.jpg\",\"products\\/34-3.jpg\"]'),
(560, 2, NULL, NULL, 22, 1, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/31-1.jpg\",\"products\\/39-2.jpg\",\"products\\/48-4.jpg\"]'),
(561, 7, NULL, NULL, 47, 3, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/28-2.jpg\",\"products\\/31-4.jpg\"]'),
(565, 5, NULL, NULL, 27, 5, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/46-4.jpg\"]'),
(566, 3, NULL, NULL, 27, 4, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/50-3.jpg\"]'),
(568, 9, NULL, NULL, 5, 2, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-3.jpg\",\"products\\/43-1.jpg\",\"products\\/44-2.jpg\"]'),
(570, 9, NULL, NULL, 21, 2, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-3.jpg\",\"products\\/10-1.jpg\",\"products\\/22-4.jpg\"]'),
(573, 9, NULL, NULL, 27, 2, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/45-4.jpg\"]'),
(574, 2, NULL, NULL, 46, 3, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/34-1.jpg\"]'),
(579, 4, NULL, NULL, 1, 5, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/16-2.jpg\",\"products\\/30-2.jpg\",\"products\\/48-1.jpg\",\"products\\/53-1.jpg\"]'),
(581, 2, NULL, NULL, 34, 2, 'Clean & perfect source code', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/39-3.jpg\"]'),
(585, 3, NULL, NULL, 37, 4, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-3.jpg\",\"products\\/17-2.jpg\",\"products\\/22-1.jpg\",\"products\\/36-2.jpg\"]'),
(588, 10, NULL, NULL, 18, 2, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-3.jpg\",\"products\\/28-1.jpg\",\"products\\/43-3.jpg\"]'),
(591, 1, NULL, NULL, 30, 1, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-2.jpg\",\"products\\/22-3.jpg\",\"products\\/44-1.jpg\"]'),
(592, 1, NULL, NULL, 45, 5, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-2.jpg\",\"products\\/16-3.jpg\"]'),
(599, 3, NULL, NULL, 43, 5, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-2.jpg\",\"products\\/43-1.jpg\"]'),
(600, 2, NULL, NULL, 49, 2, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/29-1.jpg\",\"products\\/53-1.jpg\"]'),
(601, 4, NULL, NULL, 42, 2, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/50-2.jpg\"]'),
(602, 1, NULL, NULL, 52, 4, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-2.jpg\"]'),
(604, 4, NULL, NULL, 5, 4, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/22-2.jpg\",\"products\\/27-2.jpg\"]'),
(611, 8, NULL, NULL, 36, 3, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-3.jpg\",\"products\\/32-3.jpg\",\"products\\/53-3.jpg\"]'),
(612, 4, NULL, NULL, 46, 5, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/29-2.jpg\",\"products\\/41-1.jpg\"]'),
(615, 10, NULL, NULL, 52, 1, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-3.jpg\",\"products\\/13-2.jpg\",\"products\\/22-3.jpg\",\"products\\/47-2.jpg\"]'),
(616, 7, NULL, NULL, 36, 1, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-2.jpg\",\"products\\/31-4.jpg\",\"products\\/44-2.jpg\",\"products\\/45-1.jpg\"]'),
(618, 4, NULL, NULL, 4, 5, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/7-2.jpg\",\"products\\/15-3.jpg\",\"products\\/36-3.jpg\"]'),
(621, 8, NULL, NULL, 45, 2, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/24-4.jpg\",\"products\\/41-1.jpg\"]'),
(635, 3, NULL, NULL, 52, 1, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-5.jpg\",\"products\\/31-3.jpg\",\"products\\/45-2.jpg\"]'),
(637, 2, NULL, NULL, 19, 1, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-3.jpg\",\"products\\/31-2.jpg\",\"products\\/53-2.jpg\"]'),
(638, 8, NULL, NULL, 25, 1, 'Clean & perfect source code', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/35-4.jpg\",\"products\\/36-2.jpg\"]'),
(641, 2, NULL, NULL, 43, 4, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-1.jpg\",\"products\\/30-1.jpg\",\"products\\/32-4.jpg\",\"products\\/54-2.jpg\"]'),
(642, 3, NULL, NULL, 17, 1, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/24-2.jpg\",\"products\\/43-3.jpg\"]'),
(644, 6, NULL, NULL, 47, 4, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/49-4.jpg\",\"products\\/50-3.jpg\",\"products\\/50-4.jpg\"]'),
(645, 4, NULL, NULL, 40, 5, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/37-3.jpg\",\"products\\/38-3.jpg\"]'),
(646, 8, NULL, NULL, 47, 5, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/30-4.jpg\"]'),
(648, 5, NULL, NULL, 17, 4, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/22-2.jpg\",\"products\\/33-1.jpg\"]'),
(655, 6, NULL, NULL, 20, 2, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-4.jpg\"]'),
(656, 1, NULL, NULL, 50, 5, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/35-1.jpg\",\"products\\/39-4.jpg\",\"products\\/41-3.jpg\"]'),
(659, 8, NULL, NULL, 32, 3, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-2.jpg\",\"products\\/6-3.jpg\"]'),
(665, 10, NULL, NULL, 43, 4, 'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/12-3.jpg\",\"products\\/32-4.jpg\",\"products\\/40-4.jpg\"]'),
(666, 7, NULL, NULL, 23, 1, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/6-1.jpg\",\"products\\/24-2.jpg\"]'),
(667, 3, NULL, NULL, 54, 3, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/53-3.jpg\"]'),
(670, 7, NULL, NULL, 31, 2, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/7-3.jpg\",\"products\\/11-3.jpg\",\"products\\/45-1.jpg\",\"products\\/53-3.jpg\"]'),
(675, 6, NULL, NULL, 26, 2, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/28-2.jpg\",\"products\\/38-1.jpg\",\"products\\/38-3.jpg\"]'),
(679, 1, NULL, NULL, 10, 4, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/31-3.jpg\",\"products\\/45-4.jpg\",\"products\\/46-2.jpg\"]'),
(684, 7, NULL, NULL, 35, 3, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-1.jpg\",\"products\\/19-2.jpg\",\"products\\/20-1.jpg\",\"products\\/41-3.jpg\"]'),
(688, 2, NULL, NULL, 27, 1, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-1.jpg\",\"products\\/21-2.jpg\",\"products\\/43-2.jpg\",\"products\\/48-2.jpg\"]'),
(696, 4, NULL, NULL, 49, 3, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-2.jpg\",\"products\\/35-1.jpg\"]'),
(699, 6, NULL, NULL, 12, 3, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-4.jpg\",\"products\\/6-3.jpg\"]'),
(706, 9, NULL, NULL, 16, 2, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/27-3.jpg\"]'),
(708, 5, NULL, NULL, 45, 2, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-1.jpg\"]'),
(709, 5, NULL, NULL, 19, 2, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/39-2.jpg\"]'),
(710, 7, NULL, NULL, 26, 3, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-1.jpg\",\"products\\/24-4.jpg\",\"products\\/43-1.jpg\"]'),
(716, 2, NULL, NULL, 9, 5, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/25-3.jpg\",\"products\\/27-4.jpg\",\"products\\/40-3.jpg\",\"products\\/52-1.jpg\"]'),
(730, 9, NULL, NULL, 33, 3, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-1.jpg\",\"products\\/22-4.jpg\",\"products\\/52-2.jpg\"]'),
(734, 9, NULL, NULL, 39, 5, 'Clean & perfect source code', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/52-1.jpg\"]'),
(749, 3, NULL, NULL, 44, 2, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-2.jpg\",\"products\\/17-3.jpg\",\"products\\/46-3.jpg\"]'),
(752, 5, NULL, NULL, 39, 3, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/25-2.jpg\",\"products\\/37-1.jpg\",\"products\\/40-4.jpg\"]'),
(754, 10, NULL, NULL, 12, 2, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/17-4.jpg\",\"products\\/35-4.jpg\"]'),
(760, 5, NULL, NULL, 33, 3, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-4.jpg\",\"products\\/27-4.jpg\",\"products\\/51-2.jpg\"]'),
(762, 8, NULL, NULL, 7, 1, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-1.jpg\",\"products\\/28-1.jpg\"]'),
(766, 2, NULL, NULL, 40, 3, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-3.jpg\"]'),
(773, 3, NULL, NULL, 48, 1, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-3.jpg\"]'),
(784, 4, NULL, NULL, 14, 5, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-3.jpg\",\"products\\/23-1.jpg\",\"products\\/27-1.jpg\",\"products\\/35-2.jpg\"]'),
(787, 5, NULL, NULL, 11, 5, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/27-2.jpg\",\"products\\/30-2.jpg\"]'),
(790, 10, NULL, NULL, 15, 3, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-2.jpg\"]'),
(791, 10, NULL, NULL, 8, 5, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-1.jpg\"]'),
(793, 3, NULL, NULL, 23, 4, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-4.jpg\",\"products\\/26-4.jpg\",\"products\\/41-1.jpg\"]'),
(795, 5, NULL, NULL, 26, 5, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/39-2.jpg\",\"products\\/53-4.jpg\"]'),
(796, 9, NULL, NULL, 42, 5, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-1.jpg\",\"products\\/29-2.jpg\",\"products\\/34-2.jpg\"]'),
(797, 2, NULL, NULL, 3, 1, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/18-4.jpg\"]'),
(803, 4, NULL, NULL, 36, 2, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/33-4.jpg\",\"products\\/41-3.jpg\",\"products\\/53-2.jpg\"]'),
(808, 8, NULL, NULL, 9, 4, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/10-3.jpg\",\"products\\/47-2.jpg\"]'),
(816, 7, NULL, NULL, 1, 4, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/20-2.jpg\"]'),
(818, 9, NULL, NULL, 45, 1, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-1.jpg\",\"products\\/53-1.jpg\"]'),
(819, 7, NULL, NULL, 53, 2, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/7-3.jpg\",\"products\\/30-2.jpg\",\"products\\/37-1.jpg\",\"products\\/51-3.jpg\"]'),
(824, 8, NULL, NULL, 35, 5, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/21-2.jpg\",\"products\\/35-3.jpg\"]'),
(826, 1, NULL, NULL, 32, 4, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/28-2.jpg\",\"products\\/34-1.jpg\",\"products\\/48-1.jpg\"]'),
(828, 5, NULL, NULL, 48, 4, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/31-4.jpg\"]'),
(843, 7, NULL, NULL, 13, 5, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/1-4.jpg\",\"products\\/4-4.jpg\",\"products\\/53-3.jpg\"]'),
(844, 6, NULL, NULL, 15, 3, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/38-3.jpg\"]'),
(845, 1, NULL, NULL, 9, 5, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-3.jpg\",\"products\\/2-4.jpg\",\"products\\/31-3.jpg\",\"products\\/32-1.jpg\"]'),
(848, 2, NULL, NULL, 4, 4, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-2.jpg\"]'),
(849, 6, NULL, NULL, 44, 4, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-1.jpg\",\"products\\/49-2.jpg\"]'),
(854, 5, NULL, NULL, 51, 2, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-2.jpg\",\"products\\/18-1.jpg\",\"products\\/38-4.jpg\"]'),
(858, 5, NULL, NULL, 47, 4, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/13-2.jpg\",\"products\\/23-4.jpg\",\"products\\/29-3.jpg\"]'),
(862, 10, NULL, NULL, 11, 5, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-3.jpg\",\"products\\/8-4.jpg\",\"products\\/32-1.jpg\",\"products\\/48-2.jpg\"]'),
(870, 5, NULL, NULL, 30, 1, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/18-3.jpg\",\"products\\/20-1.jpg\",\"products\\/23-3.jpg\"]'),
(872, 2, NULL, NULL, 36, 5, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-3.jpg\",\"products\\/30-3.jpg\",\"products\\/40-2.jpg\"]'),
(879, 8, NULL, NULL, 44, 1, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/11-2.jpg\",\"products\\/35-4.jpg\"]'),
(881, 4, NULL, NULL, 13, 4, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/30-2.jpg\"]'),
(885, 8, NULL, NULL, 17, 1, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-4.jpg\",\"products\\/20-3.jpg\",\"products\\/23-4.jpg\",\"products\\/50-1.jpg\"]'),
(889, 7, NULL, NULL, 42, 4, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-2.jpg\",\"products\\/16-3.jpg\",\"products\\/30-1.jpg\"]'),
(897, 2, NULL, NULL, 48, 2, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/39-3.jpg\",\"products\\/41-4.jpg\"]'),
(901, 3, NULL, NULL, 50, 5, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-4.jpg\",\"products\\/14-4.jpg\",\"products\\/28-3.jpg\"]'),
(905, 8, NULL, NULL, 48, 4, 'Good app, good backup service and support. Good documentation.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-3.jpg\",\"products\\/50-1.jpg\"]'),
(909, 8, NULL, NULL, 5, 2, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/4-2.jpg\",\"products\\/13-4.jpg\"]'),
(914, 1, NULL, NULL, 29, 2, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-4.jpg\"]'),
(916, 7, NULL, NULL, 46, 5, 'Best ecommerce CMS online store!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/3-2.jpg\",\"products\\/45-1.jpg\"]'),
(918, 6, NULL, NULL, 2, 3, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/14-2.jpg\",\"products\\/32-4.jpg\"]'),
(927, 3, NULL, NULL, 13, 2, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/8-4.jpg\",\"products\\/45-1.jpg\"]'),
(933, 3, NULL, NULL, 53, 5, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/27-4.jpg\",\"products\\/39-4.jpg\",\"products\\/51-1.jpg\",\"products\\/54-1.jpg\"]'),
(939, 1, NULL, NULL, 31, 1, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/26-1.jpg\",\"products\\/40-1.jpg\"]'),
(941, 6, NULL, NULL, 50, 5, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/18-1.jpg\"]'),
(944, 2, NULL, NULL, 7, 5, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/18-2.jpg\",\"products\\/22-3.jpg\"]'),
(948, 10, NULL, NULL, 10, 5, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-1.jpg\",\"products\\/20-1.jpg\",\"products\\/22-1.jpg\",\"products\\/47-2.jpg\"]'),
(954, 5, NULL, NULL, 22, 3, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/5-1.jpg\",\"products\\/13-3.jpg\",\"products\\/17-2.jpg\",\"products\\/26-3.jpg\"]'),
(966, 9, NULL, NULL, 23, 3, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/23-1.jpg\",\"products\\/28-3.jpg\",\"products\\/42-3.jpg\",\"products\\/51-4.jpg\"]'),
(971, 3, NULL, NULL, 26, 1, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/19-3.jpg\",\"products\\/20-4.jpg\",\"products\\/50-4.jpg\"]'),
(989, 6, NULL, NULL, 6, 5, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/20-2.jpg\",\"products\\/35-4.jpg\",\"products\\/37-1.jpg\",\"products\\/40-3.jpg\"]'),
(993, 4, NULL, NULL, 17, 4, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/38-3.jpg\"]'),
(995, 8, NULL, NULL, 28, 4, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-3.jpg\",\"products\\/37-1.jpg\",\"products\\/37-2.jpg\"]'),
(998, 8, NULL, NULL, 1, 4, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/15-3.jpg\"]'),
(1000, 7, NULL, NULL, 20, 2, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2025-08-02 02:15:33', '2025-08-02 02:15:33', '[\"products\\/2-3.jpg\",\"products\\/8-4.jpg\"]');

-- --------------------------------------------------------

--
-- Table structure for table `ec_review_replies`
--

CREATE TABLE `ec_review_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `review_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shared_wishlists`
--

CREATE TABLE `ec_shared_wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `product_ids` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weight` double DEFAULT 0,
  `shipment_id` varchar(120) DEFAULT NULL,
  `rate_id` varchar(120) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(120) NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT 0.00,
  `cod_status` varchar(60) NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT 0.00,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) DEFAULT NULL,
  `shipping_company_name` varchar(191) DEFAULT NULL,
  `tracking_link` varchar(191) DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2025-08-02 02:15:34', '2025-08-02 02:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(24) DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT 0.00,
  `to` decimal(15,2) DEFAULT 0.00,
  `price` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Free delivery', 1, 'based_on_price', 1000.00, NULL, 0.00, '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(2, 'Flat Rate', 1, 'based_on_price', 0.00, NULL, 20.00, '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(3, 'Local Pickup', 1, 'based_on_price', 0.00, NULL, 0.00, '2025-08-02 02:15:34', '2025-08-02 02:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_rule_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT 0.00,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_attributes`
--

CREATE TABLE `ec_specification_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL,
  `options` text DEFAULT NULL,
  `default_value` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_specification_attributes`
--

INSERT INTO `ec_specification_attributes` (`id`, `group_id`, `name`, `type`, `options`, `default_value`, `created_at`, `updated_at`, `author_type`, `author_id`) VALUES
(1, 1, 'Height', 'text', NULL, NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL),
(2, 1, 'Width', 'text', NULL, NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL),
(3, 1, 'Weight', 'text', NULL, NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL),
(4, 2, 'Power', 'text', NULL, NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL),
(5, 2, 'Speed', 'text', NULL, NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL),
(6, 3, 'Battery Life', 'text', NULL, NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL),
(7, 4, 'Screen Size', 'text', NULL, NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL),
(8, 4, 'Resolution', 'select', '[\"1920x1080\",\"2560x1440\",\"3840x2160\"]', NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_attributes_translations`
--

CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) NOT NULL,
  `ec_specification_attributes_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `options` text DEFAULT NULL,
  `default_value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_groups`
--

CREATE TABLE `ec_specification_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_specification_groups`
--

INSERT INTO `ec_specification_groups` (`id`, `name`, `description`, `created_at`, `updated_at`, `author_type`, `author_id`) VALUES
(1, 'Dimensions', NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL),
(2, 'Performance', NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL),
(3, 'Battery', NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL),
(4, 'Display', NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_groups_translations`
--

CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) NOT NULL,
  `ec_specification_groups_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_tables`
--

CREATE TABLE `ec_specification_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_specification_tables`
--

INSERT INTO `ec_specification_tables` (`id`, `name`, `description`, `created_at`, `updated_at`, `author_type`, `author_id`) VALUES
(1, 'General Specification', NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL),
(2, 'Technical Specification', NULL, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_tables_translations`
--

CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) NOT NULL,
  `ec_specification_tables_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_specification_table_group`
--

CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_specification_table_group`
--

INSERT INTO `ec_specification_table_group` (`table_id`, `group_id`, `order`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 3, 0),
(2, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(191) NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_shipping_location` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_store_locators`
--

INSERT INTO `ec_store_locators` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `is_primary`, `is_shipping_location`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'Martfury', 'sales@botble.com', '1800979769', '502 New Street', 'AU', 'Brighton VIC', 'Brighton VIC', 1, 1, '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 10, 1, 'published', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(2, 'None', 0, 2, 'published', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(3, 'Import Tax', 15, 3, 'published', '2025-08-02 02:15:34', '2025-08-02 02:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes_translations`
--

CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_taxes_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_tax_products`
--

CREATE TABLE `ec_tax_products` (
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_tax_rules`
--

CREATE TABLE `ec_tax_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What Shipping Methods Are Available?', 'Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.', 1, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38'),
(2, 'Do You Ship Internationally?', 'Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.', 1, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38'),
(3, 'How Long Will It Take To Get My Package?', 'Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.', 1, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38'),
(4, 'What Payment Methods Are Accepted?', 'Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.', 2, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38'),
(5, 'Is Buying On-Line Safe?', 'Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.', 2, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38'),
(6, 'How do I place an Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.', 3, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38'),
(7, 'How Can I Cancel Or Change My Order?', 'Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.', 3, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38'),
(8, 'Do I need an account to place an order?', 'Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.', 3, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38'),
(9, 'How Do I Track My Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.', 3, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38'),
(10, 'How Can I Return a Product?', 'Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.', 3, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `faqs_translations`
--

CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faqs_id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`, `description`) VALUES
(1, 'SHIPPING', 0, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38', NULL),
(2, 'PAYMENT', 1, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38', NULL),
(3, 'ORDER &amp; RETURNS', 2, 'published', '2025-08-02 02:15:38', '2025-08-02 02:15:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories_translations`
--

CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `faq_categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` bigint(20) UNSIGNED NOT NULL,
  `lang_meta_code` varchar(20) DEFAULT NULL,
  `lang_meta_origin` varchar(32) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '12f85601ec01bd32a0584a96ed0f75f2', 1, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(2, 'en_US', '7cd465e77601721f6c0e0a8a392f4657', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(3, 'en_US', '9c7361292134ba444ee69f8a9113f3ab', 1, 'Botble\\Menu\\Models\\Menu'),
(4, 'en_US', '891d62af059616d43ce19697cb459a55', 2, 'Botble\\Menu\\Models\\Menu'),
(5, 'en_US', '9f6b218375e542060f1f490440e96f86', 3, 'Botble\\Menu\\Models\\Menu'),
(6, 'en_US', '5bdb260d5f932f2edea0049693c2bb27', 4, 'Botble\\Menu\\Models\\Menu');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `alt` varchar(191) DEFAULT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(191) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `visibility`) VALUES
(1, 0, '1', '1', 1, 'image/jpeg', 1613, 'brands/1.jpg', '[]', '2025-08-02 02:14:57', '2025-08-02 02:14:57', NULL, 'public'),
(2, 0, '2', '2', 1, 'image/jpeg', 1613, 'brands/2.jpg', '[]', '2025-08-02 02:14:57', '2025-08-02 02:14:57', NULL, 'public'),
(3, 0, '3', '3', 1, 'image/jpeg', 1613, 'brands/3.jpg', '[]', '2025-08-02 02:14:57', '2025-08-02 02:14:57', NULL, 'public'),
(4, 0, '4', '4', 1, 'image/jpeg', 1613, 'brands/4.jpg', '[]', '2025-08-02 02:14:57', '2025-08-02 02:14:57', NULL, 'public'),
(5, 0, '5', '5', 1, 'image/jpeg', 1613, 'brands/5.jpg', '[]', '2025-08-02 02:14:57', '2025-08-02 02:14:57', NULL, 'public'),
(6, 0, '6', '6', 1, 'image/jpeg', 1613, 'brands/6.jpg', '[]', '2025-08-02 02:14:57', '2025-08-02 02:14:57', NULL, 'public'),
(7, 0, '7', '7', 1, 'image/jpeg', 1613, 'brands/7.jpg', '[]', '2025-08-02 02:14:57', '2025-08-02 02:14:57', NULL, 'public'),
(8, 0, '1', '1', 2, 'image/jpeg', 9803, 'product-categories/1.jpg', '[]', '2025-08-02 02:14:57', '2025-08-02 02:14:57', NULL, 'public'),
(9, 0, '2', '2', 2, 'image/jpeg', 9803, 'product-categories/2.jpg', '[]', '2025-08-02 02:14:57', '2025-08-02 02:14:57', NULL, 'public'),
(10, 0, '3', '3', 2, 'image/jpeg', 9803, 'product-categories/3.jpg', '[]', '2025-08-02 02:14:57', '2025-08-02 02:14:57', NULL, 'public'),
(11, 0, '4', '4', 2, 'image/jpeg', 9803, 'product-categories/4.jpg', '[]', '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, 'public'),
(12, 0, '5', '5', 2, 'image/jpeg', 9803, 'product-categories/5.jpg', '[]', '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, 'public'),
(13, 0, '6', '6', 2, 'image/jpeg', 9803, 'product-categories/6.jpg', '[]', '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, 'public'),
(14, 0, '7', '7', 2, 'image/jpeg', 9803, 'product-categories/7.jpg', '[]', '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, 'public'),
(15, 0, '8', '8', 2, 'image/jpeg', 9803, 'product-categories/8.jpg', '[]', '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, 'public'),
(16, 0, '1-1', '1-1', 3, 'image/jpeg', 9803, 'products/1-1.jpg', '[]', '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, 'public'),
(17, 0, '1-2', '1-2', 3, 'image/jpeg', 9803, 'products/1-2.jpg', '[]', '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL, 'public'),
(18, 0, '1-3', '1-3', 3, 'image/jpeg', 9803, 'products/1-3.jpg', '[]', '2025-08-02 02:14:59', '2025-08-02 02:14:59', NULL, 'public'),
(19, 0, '1-4', '1-4', 3, 'image/jpeg', 9803, 'products/1-4.jpg', '[]', '2025-08-02 02:14:59', '2025-08-02 02:14:59', NULL, 'public'),
(20, 0, '10-1', '10-1', 3, 'image/jpeg', 9803, 'products/10-1.jpg', '[]', '2025-08-02 02:14:59', '2025-08-02 02:14:59', NULL, 'public'),
(21, 0, '10-2', '10-2', 3, 'image/jpeg', 9803, 'products/10-2.jpg', '[]', '2025-08-02 02:14:59', '2025-08-02 02:14:59', NULL, 'public'),
(22, 0, '10-3', '10-3', 3, 'image/jpeg', 9803, 'products/10-3.jpg', '[]', '2025-08-02 02:14:59', '2025-08-02 02:14:59', NULL, 'public'),
(23, 0, '10-4', '10-4', 3, 'image/jpeg', 9803, 'products/10-4.jpg', '[]', '2025-08-02 02:14:59', '2025-08-02 02:14:59', NULL, 'public'),
(24, 0, '11-1', '11-1', 3, 'image/jpeg', 9803, 'products/11-1.jpg', '[]', '2025-08-02 02:14:59', '2025-08-02 02:14:59', NULL, 'public'),
(25, 0, '11-2', '11-2', 3, 'image/jpeg', 9803, 'products/11-2.jpg', '[]', '2025-08-02 02:14:59', '2025-08-02 02:14:59', NULL, 'public'),
(26, 0, '11-3', '11-3', 3, 'image/jpeg', 9803, 'products/11-3.jpg', '[]', '2025-08-02 02:14:59', '2025-08-02 02:14:59', NULL, 'public'),
(27, 0, '11-4', '11-4', 3, 'image/jpeg', 9803, 'products/11-4.jpg', '[]', '2025-08-02 02:14:59', '2025-08-02 02:14:59', NULL, 'public'),
(28, 0, '12-1', '12-1', 3, 'image/jpeg', 9803, 'products/12-1.jpg', '[]', '2025-08-02 02:15:00', '2025-08-02 02:15:00', NULL, 'public'),
(29, 0, '12-2', '12-2', 3, 'image/jpeg', 9803, 'products/12-2.jpg', '[]', '2025-08-02 02:15:00', '2025-08-02 02:15:00', NULL, 'public'),
(30, 0, '12-3', '12-3', 3, 'image/jpeg', 9803, 'products/12-3.jpg', '[]', '2025-08-02 02:15:00', '2025-08-02 02:15:00', NULL, 'public'),
(31, 0, '12-4', '12-4', 3, 'image/jpeg', 9803, 'products/12-4.jpg', '[]', '2025-08-02 02:15:00', '2025-08-02 02:15:00', NULL, 'public'),
(32, 0, '13-1', '13-1', 3, 'image/jpeg', 9803, 'products/13-1.jpg', '[]', '2025-08-02 02:15:00', '2025-08-02 02:15:00', NULL, 'public'),
(33, 0, '13-2', '13-2', 3, 'image/jpeg', 9803, 'products/13-2.jpg', '[]', '2025-08-02 02:15:00', '2025-08-02 02:15:00', NULL, 'public'),
(34, 0, '13-3', '13-3', 3, 'image/jpeg', 9803, 'products/13-3.jpg', '[]', '2025-08-02 02:15:00', '2025-08-02 02:15:00', NULL, 'public'),
(35, 0, '13-4', '13-4', 3, 'image/jpeg', 9803, 'products/13-4.jpg', '[]', '2025-08-02 02:15:00', '2025-08-02 02:15:00', NULL, 'public'),
(36, 0, '14-1', '14-1', 3, 'image/jpeg', 9803, 'products/14-1.jpg', '[]', '2025-08-02 02:15:00', '2025-08-02 02:15:00', NULL, 'public'),
(37, 0, '14-2', '14-2', 3, 'image/jpeg', 9803, 'products/14-2.jpg', '[]', '2025-08-02 02:15:00', '2025-08-02 02:15:00', NULL, 'public'),
(38, 0, '14-3', '14-3', 3, 'image/jpeg', 9803, 'products/14-3.jpg', '[]', '2025-08-02 02:15:01', '2025-08-02 02:15:01', NULL, 'public'),
(39, 0, '14-4', '14-4', 3, 'image/jpeg', 9803, 'products/14-4.jpg', '[]', '2025-08-02 02:15:01', '2025-08-02 02:15:01', NULL, 'public'),
(40, 0, '15-1', '15-1', 3, 'image/jpeg', 9803, 'products/15-1.jpg', '[]', '2025-08-02 02:15:01', '2025-08-02 02:15:01', NULL, 'public'),
(41, 0, '15-2', '15-2', 3, 'image/jpeg', 9803, 'products/15-2.jpg', '[]', '2025-08-02 02:15:01', '2025-08-02 02:15:01', NULL, 'public'),
(42, 0, '15-3', '15-3', 3, 'image/jpeg', 9803, 'products/15-3.jpg', '[]', '2025-08-02 02:15:01', '2025-08-02 02:15:01', NULL, 'public'),
(43, 0, '15-4', '15-4', 3, 'image/jpeg', 9803, 'products/15-4.jpg', '[]', '2025-08-02 02:15:01', '2025-08-02 02:15:01', NULL, 'public'),
(44, 0, '16-1', '16-1', 3, 'image/jpeg', 9803, 'products/16-1.jpg', '[]', '2025-08-02 02:15:01', '2025-08-02 02:15:01', NULL, 'public'),
(45, 0, '16-2', '16-2', 3, 'image/jpeg', 9803, 'products/16-2.jpg', '[]', '2025-08-02 02:15:01', '2025-08-02 02:15:01', NULL, 'public'),
(46, 0, '16-3', '16-3', 3, 'image/jpeg', 9803, 'products/16-3.jpg', '[]', '2025-08-02 02:15:01', '2025-08-02 02:15:01', NULL, 'public'),
(47, 0, '16-4', '16-4', 3, 'image/jpeg', 9803, 'products/16-4.jpg', '[]', '2025-08-02 02:15:01', '2025-08-02 02:15:01', NULL, 'public'),
(48, 0, '17-1', '17-1', 3, 'image/jpeg', 9803, 'products/17-1.jpg', '[]', '2025-08-02 02:15:01', '2025-08-02 02:15:01', NULL, 'public'),
(49, 0, '17-2', '17-2', 3, 'image/jpeg', 9803, 'products/17-2.jpg', '[]', '2025-08-02 02:15:02', '2025-08-02 02:15:02', NULL, 'public'),
(50, 0, '17-3', '17-3', 3, 'image/jpeg', 9803, 'products/17-3.jpg', '[]', '2025-08-02 02:15:02', '2025-08-02 02:15:02', NULL, 'public'),
(51, 0, '17-4', '17-4', 3, 'image/jpeg', 9803, 'products/17-4.jpg', '[]', '2025-08-02 02:15:02', '2025-08-02 02:15:02', NULL, 'public'),
(52, 0, '17-5', '17-5', 3, 'image/jpeg', 9803, 'products/17-5.jpg', '[]', '2025-08-02 02:15:02', '2025-08-02 02:15:02', NULL, 'public'),
(53, 0, '18-1', '18-1', 3, 'image/jpeg', 9803, 'products/18-1.jpg', '[]', '2025-08-02 02:15:02', '2025-08-02 02:15:02', NULL, 'public'),
(54, 0, '18-2', '18-2', 3, 'image/jpeg', 9803, 'products/18-2.jpg', '[]', '2025-08-02 02:15:02', '2025-08-02 02:15:02', NULL, 'public'),
(55, 0, '18-3', '18-3', 3, 'image/jpeg', 9803, 'products/18-3.jpg', '[]', '2025-08-02 02:15:02', '2025-08-02 02:15:02', NULL, 'public'),
(56, 0, '18-4', '18-4', 3, 'image/jpeg', 9803, 'products/18-4.jpg', '[]', '2025-08-02 02:15:02', '2025-08-02 02:15:02', NULL, 'public'),
(57, 0, '19-1', '19-1', 3, 'image/jpeg', 9803, 'products/19-1.jpg', '[]', '2025-08-02 02:15:02', '2025-08-02 02:15:02', NULL, 'public'),
(58, 0, '19-2', '19-2', 3, 'image/jpeg', 9803, 'products/19-2.jpg', '[]', '2025-08-02 02:15:03', '2025-08-02 02:15:03', NULL, 'public'),
(59, 0, '19-3', '19-3', 3, 'image/jpeg', 9803, 'products/19-3.jpg', '[]', '2025-08-02 02:15:03', '2025-08-02 02:15:03', NULL, 'public'),
(60, 0, '19-4', '19-4', 3, 'image/jpeg', 9803, 'products/19-4.jpg', '[]', '2025-08-02 02:15:03', '2025-08-02 02:15:03', NULL, 'public'),
(61, 0, '2-1', '2-1', 3, 'image/jpeg', 9803, 'products/2-1.jpg', '[]', '2025-08-02 02:15:03', '2025-08-02 02:15:03', NULL, 'public'),
(62, 0, '2-2', '2-2', 3, 'image/jpeg', 9803, 'products/2-2.jpg', '[]', '2025-08-02 02:15:03', '2025-08-02 02:15:03', NULL, 'public'),
(63, 0, '2-3', '2-3', 3, 'image/jpeg', 9803, 'products/2-3.jpg', '[]', '2025-08-02 02:15:03', '2025-08-02 02:15:03', NULL, 'public'),
(64, 0, '2-4', '2-4', 3, 'image/jpeg', 9803, 'products/2-4.jpg', '[]', '2025-08-02 02:15:03', '2025-08-02 02:15:03', NULL, 'public'),
(65, 0, '20-1', '20-1', 3, 'image/jpeg', 9803, 'products/20-1.jpg', '[]', '2025-08-02 02:15:03', '2025-08-02 02:15:03', NULL, 'public'),
(66, 0, '20-2', '20-2', 3, 'image/jpeg', 9803, 'products/20-2.jpg', '[]', '2025-08-02 02:15:03', '2025-08-02 02:15:03', NULL, 'public'),
(67, 0, '20-3', '20-3', 3, 'image/jpeg', 9803, 'products/20-3.jpg', '[]', '2025-08-02 02:15:04', '2025-08-02 02:15:04', NULL, 'public'),
(68, 0, '20-4', '20-4', 3, 'image/jpeg', 9803, 'products/20-4.jpg', '[]', '2025-08-02 02:15:04', '2025-08-02 02:15:04', NULL, 'public'),
(69, 0, '21-1', '21-1', 3, 'image/jpeg', 9803, 'products/21-1.jpg', '[]', '2025-08-02 02:15:04', '2025-08-02 02:15:04', NULL, 'public'),
(70, 0, '21-2', '21-2', 3, 'image/jpeg', 9803, 'products/21-2.jpg', '[]', '2025-08-02 02:15:04', '2025-08-02 02:15:04', NULL, 'public'),
(71, 0, '21-3', '21-3', 3, 'image/jpeg', 9803, 'products/21-3.jpg', '[]', '2025-08-02 02:15:04', '2025-08-02 02:15:04', NULL, 'public'),
(72, 0, '21-4', '21-4', 3, 'image/jpeg', 9803, 'products/21-4.jpg', '[]', '2025-08-02 02:15:04', '2025-08-02 02:15:04', NULL, 'public'),
(73, 0, '22-1', '22-1', 3, 'image/jpeg', 9803, 'products/22-1.jpg', '[]', '2025-08-02 02:15:04', '2025-08-02 02:15:04', NULL, 'public'),
(74, 0, '22-2', '22-2', 3, 'image/jpeg', 9803, 'products/22-2.jpg', '[]', '2025-08-02 02:15:04', '2025-08-02 02:15:04', NULL, 'public'),
(75, 0, '22-3', '22-3', 3, 'image/jpeg', 9803, 'products/22-3.jpg', '[]', '2025-08-02 02:15:05', '2025-08-02 02:15:05', NULL, 'public'),
(76, 0, '22-4', '22-4', 3, 'image/jpeg', 9803, 'products/22-4.jpg', '[]', '2025-08-02 02:15:05', '2025-08-02 02:15:05', NULL, 'public'),
(77, 0, '23-1', '23-1', 3, 'image/jpeg', 9803, 'products/23-1.jpg', '[]', '2025-08-02 02:15:05', '2025-08-02 02:15:05', NULL, 'public'),
(78, 0, '23-2', '23-2', 3, 'image/jpeg', 9803, 'products/23-2.jpg', '[]', '2025-08-02 02:15:05', '2025-08-02 02:15:05', NULL, 'public'),
(79, 0, '23-3', '23-3', 3, 'image/jpeg', 9803, 'products/23-3.jpg', '[]', '2025-08-02 02:15:05', '2025-08-02 02:15:05', NULL, 'public'),
(80, 0, '23-4', '23-4', 3, 'image/jpeg', 9803, 'products/23-4.jpg', '[]', '2025-08-02 02:15:05', '2025-08-02 02:15:05', NULL, 'public'),
(81, 0, '24-1', '24-1', 3, 'image/jpeg', 9803, 'products/24-1.jpg', '[]', '2025-08-02 02:15:05', '2025-08-02 02:15:05', NULL, 'public'),
(82, 0, '24-2', '24-2', 3, 'image/jpeg', 9803, 'products/24-2.jpg', '[]', '2025-08-02 02:15:05', '2025-08-02 02:15:05', NULL, 'public'),
(83, 0, '24-3', '24-3', 3, 'image/jpeg', 9803, 'products/24-3.jpg', '[]', '2025-08-02 02:15:06', '2025-08-02 02:15:06', NULL, 'public'),
(84, 0, '24-4', '24-4', 3, 'image/jpeg', 9803, 'products/24-4.jpg', '[]', '2025-08-02 02:15:06', '2025-08-02 02:15:06', NULL, 'public'),
(85, 0, '25-1', '25-1', 3, 'image/jpeg', 9803, 'products/25-1.jpg', '[]', '2025-08-02 02:15:06', '2025-08-02 02:15:06', NULL, 'public'),
(86, 0, '25-2', '25-2', 3, 'image/jpeg', 9803, 'products/25-2.jpg', '[]', '2025-08-02 02:15:06', '2025-08-02 02:15:06', NULL, 'public'),
(87, 0, '25-3', '25-3', 3, 'image/jpeg', 9803, 'products/25-3.jpg', '[]', '2025-08-02 02:15:06', '2025-08-02 02:15:06', NULL, 'public'),
(88, 0, '25-4', '25-4', 3, 'image/jpeg', 9803, 'products/25-4.jpg', '[]', '2025-08-02 02:15:06', '2025-08-02 02:15:06', NULL, 'public'),
(89, 0, '26-1', '26-1', 3, 'image/jpeg', 9803, 'products/26-1.jpg', '[]', '2025-08-02 02:15:06', '2025-08-02 02:15:06', NULL, 'public'),
(90, 0, '26-2', '26-2', 3, 'image/jpeg', 9803, 'products/26-2.jpg', '[]', '2025-08-02 02:15:06', '2025-08-02 02:15:06', NULL, 'public'),
(91, 0, '26-3', '26-3', 3, 'image/jpeg', 9803, 'products/26-3.jpg', '[]', '2025-08-02 02:15:06', '2025-08-02 02:15:06', NULL, 'public'),
(92, 0, '26-4', '26-4', 3, 'image/jpeg', 9803, 'products/26-4.jpg', '[]', '2025-08-02 02:15:07', '2025-08-02 02:15:07', NULL, 'public'),
(93, 0, '27-1', '27-1', 3, 'image/jpeg', 9803, 'products/27-1.jpg', '[]', '2025-08-02 02:15:07', '2025-08-02 02:15:07', NULL, 'public'),
(94, 0, '27-2', '27-2', 3, 'image/jpeg', 9803, 'products/27-2.jpg', '[]', '2025-08-02 02:15:07', '2025-08-02 02:15:07', NULL, 'public'),
(95, 0, '27-3', '27-3', 3, 'image/jpeg', 9803, 'products/27-3.jpg', '[]', '2025-08-02 02:15:07', '2025-08-02 02:15:07', NULL, 'public'),
(96, 0, '27-4', '27-4', 3, 'image/jpeg', 9803, 'products/27-4.jpg', '[]', '2025-08-02 02:15:07', '2025-08-02 02:15:07', NULL, 'public'),
(97, 0, '28-1', '28-1', 3, 'image/jpeg', 9803, 'products/28-1.jpg', '[]', '2025-08-02 02:15:07', '2025-08-02 02:15:07', NULL, 'public'),
(98, 0, '28-2', '28-2', 3, 'image/jpeg', 9803, 'products/28-2.jpg', '[]', '2025-08-02 02:15:07', '2025-08-02 02:15:07', NULL, 'public'),
(99, 0, '28-3', '28-3', 3, 'image/jpeg', 9803, 'products/28-3.jpg', '[]', '2025-08-02 02:15:07', '2025-08-02 02:15:07', NULL, 'public'),
(100, 0, '28-4', '28-4', 3, 'image/jpeg', 9803, 'products/28-4.jpg', '[]', '2025-08-02 02:15:07', '2025-08-02 02:15:07', NULL, 'public'),
(101, 0, '29-1', '29-1', 3, 'image/jpeg', 9803, 'products/29-1.jpg', '[]', '2025-08-02 02:15:08', '2025-08-02 02:15:08', NULL, 'public'),
(102, 0, '29-2', '29-2', 3, 'image/jpeg', 9803, 'products/29-2.jpg', '[]', '2025-08-02 02:15:08', '2025-08-02 02:15:08', NULL, 'public'),
(103, 0, '29-3', '29-3', 3, 'image/jpeg', 9803, 'products/29-3.jpg', '[]', '2025-08-02 02:15:08', '2025-08-02 02:15:08', NULL, 'public'),
(104, 0, '3-1', '3-1', 3, 'image/jpeg', 9803, 'products/3-1.jpg', '[]', '2025-08-02 02:15:08', '2025-08-02 02:15:08', NULL, 'public'),
(105, 0, '3-2', '3-2', 3, 'image/jpeg', 9803, 'products/3-2.jpg', '[]', '2025-08-02 02:15:08', '2025-08-02 02:15:08', NULL, 'public'),
(106, 0, '3-3', '3-3', 3, 'image/jpeg', 9803, 'products/3-3.jpg', '[]', '2025-08-02 02:15:08', '2025-08-02 02:15:08', NULL, 'public'),
(107, 0, '3-4', '3-4', 3, 'image/jpeg', 9803, 'products/3-4.jpg', '[]', '2025-08-02 02:15:08', '2025-08-02 02:15:08', NULL, 'public'),
(108, 0, '30-1', '30-1', 3, 'image/jpeg', 9803, 'products/30-1.jpg', '[]', '2025-08-02 02:15:08', '2025-08-02 02:15:08', NULL, 'public'),
(109, 0, '30-2', '30-2', 3, 'image/jpeg', 9803, 'products/30-2.jpg', '[]', '2025-08-02 02:15:09', '2025-08-02 02:15:09', NULL, 'public'),
(110, 0, '30-3', '30-3', 3, 'image/jpeg', 9803, 'products/30-3.jpg', '[]', '2025-08-02 02:15:09', '2025-08-02 02:15:09', NULL, 'public'),
(111, 0, '30-4', '30-4', 3, 'image/jpeg', 9803, 'products/30-4.jpg', '[]', '2025-08-02 02:15:09', '2025-08-02 02:15:09', NULL, 'public'),
(112, 0, '31-1', '31-1', 3, 'image/jpeg', 9803, 'products/31-1.jpg', '[]', '2025-08-02 02:15:09', '2025-08-02 02:15:09', NULL, 'public'),
(113, 0, '31-2', '31-2', 3, 'image/jpeg', 9803, 'products/31-2.jpg', '[]', '2025-08-02 02:15:09', '2025-08-02 02:15:09', NULL, 'public'),
(114, 0, '31-3', '31-3', 3, 'image/jpeg', 9803, 'products/31-3.jpg', '[]', '2025-08-02 02:15:09', '2025-08-02 02:15:09', NULL, 'public'),
(115, 0, '31-4', '31-4', 3, 'image/jpeg', 9803, 'products/31-4.jpg', '[]', '2025-08-02 02:15:09', '2025-08-02 02:15:09', NULL, 'public'),
(116, 0, '32-1', '32-1', 3, 'image/jpeg', 9803, 'products/32-1.jpg', '[]', '2025-08-02 02:15:09', '2025-08-02 02:15:09', NULL, 'public'),
(117, 0, '32-2', '32-2', 3, 'image/jpeg', 9803, 'products/32-2.jpg', '[]', '2025-08-02 02:15:10', '2025-08-02 02:15:10', NULL, 'public'),
(118, 0, '32-3', '32-3', 3, 'image/jpeg', 9803, 'products/32-3.jpg', '[]', '2025-08-02 02:15:10', '2025-08-02 02:15:10', NULL, 'public'),
(119, 0, '32-4', '32-4', 3, 'image/jpeg', 9803, 'products/32-4.jpg', '[]', '2025-08-02 02:15:10', '2025-08-02 02:15:10', NULL, 'public'),
(120, 0, '33-1', '33-1', 3, 'image/jpeg', 9803, 'products/33-1.jpg', '[]', '2025-08-02 02:15:10', '2025-08-02 02:15:10', NULL, 'public'),
(121, 0, '33-2', '33-2', 3, 'image/jpeg', 9803, 'products/33-2.jpg', '[]', '2025-08-02 02:15:10', '2025-08-02 02:15:10', NULL, 'public'),
(122, 0, '33-3', '33-3', 3, 'image/jpeg', 9803, 'products/33-3.jpg', '[]', '2025-08-02 02:15:10', '2025-08-02 02:15:10', NULL, 'public'),
(123, 0, '33-4', '33-4', 3, 'image/jpeg', 9803, 'products/33-4.jpg', '[]', '2025-08-02 02:15:10', '2025-08-02 02:15:10', NULL, 'public'),
(124, 0, '34-1', '34-1', 3, 'image/jpeg', 9803, 'products/34-1.jpg', '[]', '2025-08-02 02:15:10', '2025-08-02 02:15:10', NULL, 'public'),
(125, 0, '34-2', '34-2', 3, 'image/jpeg', 9803, 'products/34-2.jpg', '[]', '2025-08-02 02:15:11', '2025-08-02 02:15:11', NULL, 'public'),
(126, 0, '34-3', '34-3', 3, 'image/jpeg', 9803, 'products/34-3.jpg', '[]', '2025-08-02 02:15:11', '2025-08-02 02:15:11', NULL, 'public'),
(127, 0, '34-4', '34-4', 3, 'image/jpeg', 9803, 'products/34-4.jpg', '[]', '2025-08-02 02:15:11', '2025-08-02 02:15:11', NULL, 'public'),
(128, 0, '35-1', '35-1', 3, 'image/jpeg', 9803, 'products/35-1.jpg', '[]', '2025-08-02 02:15:11', '2025-08-02 02:15:11', NULL, 'public'),
(129, 0, '35-2', '35-2', 3, 'image/jpeg', 9803, 'products/35-2.jpg', '[]', '2025-08-02 02:15:11', '2025-08-02 02:15:11', NULL, 'public'),
(130, 0, '35-3', '35-3', 3, 'image/jpeg', 9803, 'products/35-3.jpg', '[]', '2025-08-02 02:15:11', '2025-08-02 02:15:11', NULL, 'public'),
(131, 0, '35-4', '35-4', 3, 'image/jpeg', 9803, 'products/35-4.jpg', '[]', '2025-08-02 02:15:11', '2025-08-02 02:15:11', NULL, 'public'),
(132, 0, '36-1', '36-1', 3, 'image/jpeg', 9803, 'products/36-1.jpg', '[]', '2025-08-02 02:15:11', '2025-08-02 02:15:11', NULL, 'public'),
(133, 0, '36-2', '36-2', 3, 'image/jpeg', 9803, 'products/36-2.jpg', '[]', '2025-08-02 02:15:11', '2025-08-02 02:15:11', NULL, 'public'),
(134, 0, '36-3', '36-3', 3, 'image/jpeg', 9803, 'products/36-3.jpg', '[]', '2025-08-02 02:15:12', '2025-08-02 02:15:12', NULL, 'public'),
(135, 0, '37-1', '37-1', 3, 'image/jpeg', 9803, 'products/37-1.jpg', '[]', '2025-08-02 02:15:12', '2025-08-02 02:15:12', NULL, 'public'),
(136, 0, '37-2', '37-2', 3, 'image/jpeg', 9803, 'products/37-2.jpg', '[]', '2025-08-02 02:15:12', '2025-08-02 02:15:12', NULL, 'public'),
(137, 0, '37-3', '37-3', 3, 'image/jpeg', 9803, 'products/37-3.jpg', '[]', '2025-08-02 02:15:12', '2025-08-02 02:15:12', NULL, 'public'),
(138, 0, '38-1', '38-1', 3, 'image/jpeg', 9803, 'products/38-1.jpg', '[]', '2025-08-02 02:15:12', '2025-08-02 02:15:12', NULL, 'public'),
(139, 0, '38-2', '38-2', 3, 'image/jpeg', 9803, 'products/38-2.jpg', '[]', '2025-08-02 02:15:12', '2025-08-02 02:15:12', NULL, 'public'),
(140, 0, '38-3', '38-3', 3, 'image/jpeg', 9803, 'products/38-3.jpg', '[]', '2025-08-02 02:15:12', '2025-08-02 02:15:12', NULL, 'public'),
(141, 0, '38-4', '38-4', 3, 'image/jpeg', 9803, 'products/38-4.jpg', '[]', '2025-08-02 02:15:12', '2025-08-02 02:15:12', NULL, 'public'),
(142, 0, '39-1', '39-1', 3, 'image/jpeg', 9803, 'products/39-1.jpg', '[]', '2025-08-02 02:15:12', '2025-08-02 02:15:12', NULL, 'public'),
(143, 0, '39-2', '39-2', 3, 'image/jpeg', 9803, 'products/39-2.jpg', '[]', '2025-08-02 02:15:13', '2025-08-02 02:15:13', NULL, 'public'),
(144, 0, '39-3', '39-3', 3, 'image/jpeg', 9803, 'products/39-3.jpg', '[]', '2025-08-02 02:15:13', '2025-08-02 02:15:13', NULL, 'public'),
(145, 0, '39-4', '39-4', 3, 'image/jpeg', 9803, 'products/39-4.jpg', '[]', '2025-08-02 02:15:13', '2025-08-02 02:15:13', NULL, 'public'),
(146, 0, '4-1', '4-1', 3, 'image/jpeg', 9803, 'products/4-1.jpg', '[]', '2025-08-02 02:15:13', '2025-08-02 02:15:13', NULL, 'public'),
(147, 0, '4-2', '4-2', 3, 'image/jpeg', 9803, 'products/4-2.jpg', '[]', '2025-08-02 02:15:13', '2025-08-02 02:15:13', NULL, 'public'),
(148, 0, '4-3', '4-3', 3, 'image/jpeg', 9803, 'products/4-3.jpg', '[]', '2025-08-02 02:15:13', '2025-08-02 02:15:13', NULL, 'public'),
(149, 0, '4-4', '4-4', 3, 'image/jpeg', 9803, 'products/4-4.jpg', '[]', '2025-08-02 02:15:13', '2025-08-02 02:15:13', NULL, 'public'),
(150, 0, '40-1', '40-1', 3, 'image/jpeg', 9803, 'products/40-1.jpg', '[]', '2025-08-02 02:15:13', '2025-08-02 02:15:13', NULL, 'public'),
(151, 0, '40-2', '40-2', 3, 'image/jpeg', 9803, 'products/40-2.jpg', '[]', '2025-08-02 02:15:13', '2025-08-02 02:15:13', NULL, 'public'),
(152, 0, '40-3', '40-3', 3, 'image/jpeg', 9803, 'products/40-3.jpg', '[]', '2025-08-02 02:15:14', '2025-08-02 02:15:14', NULL, 'public'),
(153, 0, '40-4', '40-4', 3, 'image/jpeg', 9803, 'products/40-4.jpg', '[]', '2025-08-02 02:15:14', '2025-08-02 02:15:14', NULL, 'public'),
(154, 0, '41-1', '41-1', 3, 'image/jpeg', 9803, 'products/41-1.jpg', '[]', '2025-08-02 02:15:14', '2025-08-02 02:15:14', NULL, 'public'),
(155, 0, '41-2', '41-2', 3, 'image/jpeg', 9803, 'products/41-2.jpg', '[]', '2025-08-02 02:15:14', '2025-08-02 02:15:14', NULL, 'public'),
(156, 0, '41-3', '41-3', 3, 'image/jpeg', 9803, 'products/41-3.jpg', '[]', '2025-08-02 02:15:14', '2025-08-02 02:15:14', NULL, 'public'),
(157, 0, '41-4', '41-4', 3, 'image/jpeg', 9803, 'products/41-4.jpg', '[]', '2025-08-02 02:15:14', '2025-08-02 02:15:14', NULL, 'public'),
(158, 0, '42-1', '42-1', 3, 'image/jpeg', 9803, 'products/42-1.jpg', '[]', '2025-08-02 02:15:14', '2025-08-02 02:15:14', NULL, 'public'),
(159, 0, '42-2', '42-2', 3, 'image/jpeg', 9803, 'products/42-2.jpg', '[]', '2025-08-02 02:15:14', '2025-08-02 02:15:14', NULL, 'public'),
(160, 0, '42-3', '42-3', 3, 'image/jpeg', 9803, 'products/42-3.jpg', '[]', '2025-08-02 02:15:14', '2025-08-02 02:15:14', NULL, 'public'),
(161, 0, '43-1', '43-1', 3, 'image/jpeg', 9803, 'products/43-1.jpg', '[]', '2025-08-02 02:15:15', '2025-08-02 02:15:15', NULL, 'public'),
(162, 0, '43-2', '43-2', 3, 'image/jpeg', 9803, 'products/43-2.jpg', '[]', '2025-08-02 02:15:15', '2025-08-02 02:15:15', NULL, 'public'),
(163, 0, '43-3', '43-3', 3, 'image/jpeg', 9803, 'products/43-3.jpg', '[]', '2025-08-02 02:15:15', '2025-08-02 02:15:15', NULL, 'public'),
(164, 0, '44-1', '44-1', 3, 'image/jpeg', 9803, 'products/44-1.jpg', '[]', '2025-08-02 02:15:15', '2025-08-02 02:15:15', NULL, 'public'),
(165, 0, '44-2', '44-2', 3, 'image/jpeg', 9803, 'products/44-2.jpg', '[]', '2025-08-02 02:15:15', '2025-08-02 02:15:15', NULL, 'public'),
(166, 0, '44-3', '44-3', 3, 'image/jpeg', 9803, 'products/44-3.jpg', '[]', '2025-08-02 02:15:15', '2025-08-02 02:15:15', NULL, 'public'),
(167, 0, '45-1', '45-1', 3, 'image/jpeg', 9803, 'products/45-1.jpg', '[]', '2025-08-02 02:15:15', '2025-08-02 02:15:15', NULL, 'public'),
(168, 0, '45-2', '45-2', 3, 'image/jpeg', 9803, 'products/45-2.jpg', '[]', '2025-08-02 02:15:15', '2025-08-02 02:15:15', NULL, 'public'),
(169, 0, '45-3', '45-3', 3, 'image/jpeg', 9803, 'products/45-3.jpg', '[]', '2025-08-02 02:15:15', '2025-08-02 02:15:15', NULL, 'public'),
(170, 0, '45-4', '45-4', 3, 'image/jpeg', 9803, 'products/45-4.jpg', '[]', '2025-08-02 02:15:16', '2025-08-02 02:15:16', NULL, 'public'),
(171, 0, '46-1', '46-1', 3, 'image/jpeg', 9803, 'products/46-1.jpg', '[]', '2025-08-02 02:15:16', '2025-08-02 02:15:16', NULL, 'public'),
(172, 0, '46-2', '46-2', 3, 'image/jpeg', 9803, 'products/46-2.jpg', '[]', '2025-08-02 02:15:16', '2025-08-02 02:15:16', NULL, 'public'),
(173, 0, '46-3', '46-3', 3, 'image/jpeg', 9803, 'products/46-3.jpg', '[]', '2025-08-02 02:15:16', '2025-08-02 02:15:16', NULL, 'public'),
(174, 0, '46-4', '46-4', 3, 'image/jpeg', 9803, 'products/46-4.jpg', '[]', '2025-08-02 02:15:16', '2025-08-02 02:15:16', NULL, 'public'),
(175, 0, '47-1', '47-1', 3, 'image/jpeg', 9803, 'products/47-1.jpg', '[]', '2025-08-02 02:15:16', '2025-08-02 02:15:16', NULL, 'public'),
(176, 0, '47-2', '47-2', 3, 'image/jpeg', 9803, 'products/47-2.jpg', '[]', '2025-08-02 02:15:16', '2025-08-02 02:15:16', NULL, 'public'),
(177, 0, '47-3', '47-3', 3, 'image/jpeg', 9803, 'products/47-3.jpg', '[]', '2025-08-02 02:15:16', '2025-08-02 02:15:16', NULL, 'public'),
(178, 0, '48-1', '48-1', 3, 'image/jpeg', 9803, 'products/48-1.jpg', '[]', '2025-08-02 02:15:17', '2025-08-02 02:15:17', NULL, 'public'),
(179, 0, '48-2', '48-2', 3, 'image/jpeg', 9803, 'products/48-2.jpg', '[]', '2025-08-02 02:15:17', '2025-08-02 02:15:17', NULL, 'public'),
(180, 0, '48-3', '48-3', 3, 'image/jpeg', 9803, 'products/48-3.jpg', '[]', '2025-08-02 02:15:17', '2025-08-02 02:15:17', NULL, 'public'),
(181, 0, '48-4', '48-4', 3, 'image/jpeg', 9803, 'products/48-4.jpg', '[]', '2025-08-02 02:15:17', '2025-08-02 02:15:17', NULL, 'public'),
(182, 0, '49-1', '49-1', 3, 'image/jpeg', 9803, 'products/49-1.jpg', '[]', '2025-08-02 02:15:17', '2025-08-02 02:15:17', NULL, 'public'),
(183, 0, '49-2', '49-2', 3, 'image/jpeg', 9803, 'products/49-2.jpg', '[]', '2025-08-02 02:15:17', '2025-08-02 02:15:17', NULL, 'public'),
(184, 0, '49-3', '49-3', 3, 'image/jpeg', 9803, 'products/49-3.jpg', '[]', '2025-08-02 02:15:17', '2025-08-02 02:15:17', NULL, 'public'),
(185, 0, '49-4', '49-4', 3, 'image/jpeg', 9803, 'products/49-4.jpg', '[]', '2025-08-02 02:15:18', '2025-08-02 02:15:18', NULL, 'public'),
(186, 0, '5-1', '5-1', 3, 'image/jpeg', 9803, 'products/5-1.jpg', '[]', '2025-08-02 02:15:18', '2025-08-02 02:15:18', NULL, 'public'),
(187, 0, '5-2', '5-2', 3, 'image/jpeg', 9803, 'products/5-2.jpg', '[]', '2025-08-02 02:15:18', '2025-08-02 02:15:18', NULL, 'public'),
(188, 0, '5-3', '5-3', 3, 'image/jpeg', 9803, 'products/5-3.jpg', '[]', '2025-08-02 02:15:18', '2025-08-02 02:15:18', NULL, 'public'),
(189, 0, '5-4', '5-4', 3, 'image/jpeg', 9803, 'products/5-4.jpg', '[]', '2025-08-02 02:15:18', '2025-08-02 02:15:18', NULL, 'public'),
(190, 0, '50-1', '50-1', 3, 'image/jpeg', 9803, 'products/50-1.jpg', '[]', '2025-08-02 02:15:18', '2025-08-02 02:15:18', NULL, 'public'),
(191, 0, '50-2', '50-2', 3, 'image/jpeg', 9803, 'products/50-2.jpg', '[]', '2025-08-02 02:15:18', '2025-08-02 02:15:18', NULL, 'public'),
(192, 0, '50-3', '50-3', 3, 'image/jpeg', 9803, 'products/50-3.jpg', '[]', '2025-08-02 02:15:19', '2025-08-02 02:15:19', NULL, 'public'),
(193, 0, '50-4', '50-4', 3, 'image/jpeg', 9803, 'products/50-4.jpg', '[]', '2025-08-02 02:15:19', '2025-08-02 02:15:19', NULL, 'public'),
(194, 0, '51-1', '51-1', 3, 'image/jpeg', 9803, 'products/51-1.jpg', '[]', '2025-08-02 02:15:19', '2025-08-02 02:15:19', NULL, 'public'),
(195, 0, '51-2', '51-2', 3, 'image/jpeg', 9803, 'products/51-2.jpg', '[]', '2025-08-02 02:15:19', '2025-08-02 02:15:19', NULL, 'public'),
(196, 0, '51-3', '51-3', 3, 'image/jpeg', 9803, 'products/51-3.jpg', '[]', '2025-08-02 02:15:20', '2025-08-02 02:15:20', NULL, 'public'),
(197, 0, '51-4', '51-4', 3, 'image/jpeg', 9803, 'products/51-4.jpg', '[]', '2025-08-02 02:15:20', '2025-08-02 02:15:20', NULL, 'public'),
(198, 0, '52-1', '52-1', 3, 'image/jpeg', 9803, 'products/52-1.jpg', '[]', '2025-08-02 02:15:20', '2025-08-02 02:15:20', NULL, 'public'),
(199, 0, '52-2', '52-2', 3, 'image/jpeg', 9803, 'products/52-2.jpg', '[]', '2025-08-02 02:15:20', '2025-08-02 02:15:20', NULL, 'public'),
(200, 0, '52-3', '52-3', 3, 'image/jpeg', 9803, 'products/52-3.jpg', '[]', '2025-08-02 02:15:21', '2025-08-02 02:15:21', NULL, 'public'),
(201, 0, '53-1', '53-1', 3, 'image/jpeg', 9803, 'products/53-1.jpg', '[]', '2025-08-02 02:15:21', '2025-08-02 02:15:21', NULL, 'public'),
(202, 0, '53-2', '53-2', 3, 'image/jpeg', 9803, 'products/53-2.jpg', '[]', '2025-08-02 02:15:21', '2025-08-02 02:15:21', NULL, 'public'),
(203, 0, '53-3', '53-3', 3, 'image/jpeg', 9803, 'products/53-3.jpg', '[]', '2025-08-02 02:15:21', '2025-08-02 02:15:21', NULL, 'public'),
(204, 0, '53-4', '53-4', 3, 'image/jpeg', 9803, 'products/53-4.jpg', '[]', '2025-08-02 02:15:22', '2025-08-02 02:15:22', NULL, 'public'),
(205, 0, '54-1', '54-1', 3, 'image/jpeg', 9803, 'products/54-1.jpg', '[]', '2025-08-02 02:15:22', '2025-08-02 02:15:22', NULL, 'public'),
(206, 0, '54-2', '54-2', 3, 'image/jpeg', 9803, 'products/54-2.jpg', '[]', '2025-08-02 02:15:22', '2025-08-02 02:15:22', NULL, 'public'),
(207, 0, '54-3', '54-3', 3, 'image/jpeg', 9803, 'products/54-3.jpg', '[]', '2025-08-02 02:15:22', '2025-08-02 02:15:22', NULL, 'public'),
(208, 0, '6-1', '6-1', 3, 'image/jpeg', 9803, 'products/6-1.jpg', '[]', '2025-08-02 02:15:23', '2025-08-02 02:15:23', NULL, 'public'),
(209, 0, '6-2', '6-2', 3, 'image/jpeg', 9803, 'products/6-2.jpg', '[]', '2025-08-02 02:15:23', '2025-08-02 02:15:23', NULL, 'public'),
(210, 0, '6-3', '6-3', 3, 'image/jpeg', 9803, 'products/6-3.jpg', '[]', '2025-08-02 02:15:23', '2025-08-02 02:15:23', NULL, 'public'),
(211, 0, '6-4', '6-4', 3, 'image/jpeg', 9803, 'products/6-4.jpg', '[]', '2025-08-02 02:15:23', '2025-08-02 02:15:23', NULL, 'public'),
(212, 0, '7-1', '7-1', 3, 'image/jpeg', 9803, 'products/7-1.jpg', '[]', '2025-08-02 02:15:24', '2025-08-02 02:15:24', NULL, 'public'),
(213, 0, '7-2', '7-2', 3, 'image/jpeg', 9803, 'products/7-2.jpg', '[]', '2025-08-02 02:15:24', '2025-08-02 02:15:24', NULL, 'public'),
(214, 0, '7-3', '7-3', 3, 'image/jpeg', 9803, 'products/7-3.jpg', '[]', '2025-08-02 02:15:24', '2025-08-02 02:15:24', NULL, 'public'),
(215, 0, '8-1', '8-1', 3, 'image/jpeg', 9803, 'products/8-1.jpg', '[]', '2025-08-02 02:15:24', '2025-08-02 02:15:24', NULL, 'public'),
(216, 0, '8-2', '8-2', 3, 'image/jpeg', 9803, 'products/8-2.jpg', '[]', '2025-08-02 02:15:24', '2025-08-02 02:15:24', NULL, 'public'),
(217, 0, '8-3', '8-3', 3, 'image/jpeg', 9803, 'products/8-3.jpg', '[]', '2025-08-02 02:15:24', '2025-08-02 02:15:24', NULL, 'public'),
(218, 0, '8-4', '8-4', 3, 'image/jpeg', 9803, 'products/8-4.jpg', '[]', '2025-08-02 02:15:25', '2025-08-02 02:15:25', NULL, 'public'),
(219, 0, '9-1', '9-1', 3, 'image/jpeg', 9803, 'products/9-1.jpg', '[]', '2025-08-02 02:15:25', '2025-08-02 02:15:25', NULL, 'public'),
(220, 0, '9-2', '9-2', 3, 'image/jpeg', 9803, 'products/9-2.jpg', '[]', '2025-08-02 02:15:25', '2025-08-02 02:15:25', NULL, 'public'),
(221, 0, '9-3', '9-3', 3, 'image/jpeg', 9803, 'products/9-3.jpg', '[]', '2025-08-02 02:15:25', '2025-08-02 02:15:25', NULL, 'public'),
(222, 0, '1', '1', 4, 'image/jpeg', 9803, 'customers/1.jpg', '[]', '2025-08-02 02:15:28', '2025-08-02 02:15:28', NULL, 'public'),
(223, 0, '10', '10', 4, 'image/jpeg', 9803, 'customers/10.jpg', '[]', '2025-08-02 02:15:28', '2025-08-02 02:15:28', NULL, 'public'),
(224, 0, '2', '2', 4, 'image/jpeg', 9803, 'customers/2.jpg', '[]', '2025-08-02 02:15:28', '2025-08-02 02:15:28', NULL, 'public'),
(225, 0, '3', '3', 4, 'image/jpeg', 9803, 'customers/3.jpg', '[]', '2025-08-02 02:15:29', '2025-08-02 02:15:29', NULL, 'public'),
(226, 0, '4', '4', 4, 'image/jpeg', 9803, 'customers/4.jpg', '[]', '2025-08-02 02:15:29', '2025-08-02 02:15:29', NULL, 'public'),
(227, 0, '5', '5', 4, 'image/jpeg', 9803, 'customers/5.jpg', '[]', '2025-08-02 02:15:29', '2025-08-02 02:15:29', NULL, 'public'),
(228, 0, '6', '6', 4, 'image/jpeg', 9803, 'customers/6.jpg', '[]', '2025-08-02 02:15:29', '2025-08-02 02:15:29', NULL, 'public'),
(229, 0, '7', '7', 4, 'image/jpeg', 9803, 'customers/7.jpg', '[]', '2025-08-02 02:15:29', '2025-08-02 02:15:29', NULL, 'public'),
(230, 0, '8', '8', 4, 'image/jpeg', 9803, 'customers/8.jpg', '[]', '2025-08-02 02:15:29', '2025-08-02 02:15:29', NULL, 'public'),
(231, 0, '9', '9', 4, 'image/jpeg', 9803, 'customers/9.jpg', '[]', '2025-08-02 02:15:29', '2025-08-02 02:15:29', NULL, 'public'),
(232, 0, '1', '1', 5, 'image/jpeg', 9803, 'news/1.jpg', '[]', '2025-08-02 02:15:35', '2025-08-02 02:15:35', NULL, 'public'),
(233, 0, '10', '10', 5, 'image/jpeg', 9803, 'news/10.jpg', '[]', '2025-08-02 02:15:35', '2025-08-02 02:15:35', NULL, 'public'),
(234, 0, '11', '11', 5, 'image/jpeg', 9803, 'news/11.jpg', '[]', '2025-08-02 02:15:35', '2025-08-02 02:15:35', NULL, 'public'),
(235, 0, '2', '2', 5, 'image/jpeg', 9803, 'news/2.jpg', '[]', '2025-08-02 02:15:35', '2025-08-02 02:15:35', NULL, 'public'),
(236, 0, '3', '3', 5, 'image/jpeg', 9803, 'news/3.jpg', '[]', '2025-08-02 02:15:35', '2025-08-02 02:15:35', NULL, 'public'),
(237, 0, '4', '4', 5, 'image/jpeg', 9803, 'news/4.jpg', '[]', '2025-08-02 02:15:35', '2025-08-02 02:15:35', NULL, 'public'),
(238, 0, '5', '5', 5, 'image/jpeg', 9803, 'news/5.jpg', '[]', '2025-08-02 02:15:35', '2025-08-02 02:15:35', NULL, 'public'),
(239, 0, '6', '6', 5, 'image/jpeg', 9803, 'news/6.jpg', '[]', '2025-08-02 02:15:35', '2025-08-02 02:15:35', NULL, 'public'),
(240, 0, '7', '7', 5, 'image/jpeg', 9803, 'news/7.jpg', '[]', '2025-08-02 02:15:35', '2025-08-02 02:15:35', NULL, 'public'),
(241, 0, '8', '8', 5, 'image/jpeg', 9803, 'news/8.jpg', '[]', '2025-08-02 02:15:36', '2025-08-02 02:15:36', NULL, 'public'),
(242, 0, '9', '9', 5, 'image/jpeg', 9803, 'news/9.jpg', '[]', '2025-08-02 02:15:36', '2025-08-02 02:15:36', NULL, 'public'),
(243, 0, '1-lg', '1-lg', 6, 'image/jpeg', 8828, 'sliders/1-lg.jpg', '[]', '2025-08-02 02:15:36', '2025-08-02 02:15:36', NULL, 'public'),
(244, 0, '1-md', '1-md', 6, 'image/jpeg', 8828, 'sliders/1-md.jpg', '[]', '2025-08-02 02:15:36', '2025-08-02 02:15:36', NULL, 'public'),
(245, 0, '1-sm', '1-sm', 6, 'image/jpeg', 8828, 'sliders/1-sm.jpg', '[]', '2025-08-02 02:15:36', '2025-08-02 02:15:36', NULL, 'public'),
(246, 0, '2-lg', '2-lg', 6, 'image/jpeg', 8828, 'sliders/2-lg.jpg', '[]', '2025-08-02 02:15:36', '2025-08-02 02:15:36', NULL, 'public'),
(247, 0, '2-md', '2-md', 6, 'image/jpeg', 8828, 'sliders/2-md.jpg', '[]', '2025-08-02 02:15:36', '2025-08-02 02:15:36', NULL, 'public'),
(248, 0, '2-sm', '2-sm', 6, 'image/jpeg', 8828, 'sliders/2-sm.jpg', '[]', '2025-08-02 02:15:37', '2025-08-02 02:15:37', NULL, 'public'),
(249, 0, '3-lg', '3-lg', 6, 'image/jpeg', 8828, 'sliders/3-lg.jpg', '[]', '2025-08-02 02:15:37', '2025-08-02 02:15:37', NULL, 'public'),
(250, 0, '3-md', '3-md', 6, 'image/jpeg', 8828, 'sliders/3-md.jpg', '[]', '2025-08-02 02:15:37', '2025-08-02 02:15:37', NULL, 'public'),
(251, 0, '3-sm', '3-sm', 6, 'image/jpeg', 8828, 'sliders/3-sm.jpg', '[]', '2025-08-02 02:15:37', '2025-08-02 02:15:37', NULL, 'public'),
(252, 0, '1', '1', 7, 'image/jpeg', 3613, 'promotion/1.jpg', '[]', '2025-08-02 02:15:37', '2025-08-02 02:15:37', NULL, 'public'),
(253, 0, '2', '2', 7, 'image/jpeg', 3613, 'promotion/2.jpg', '[]', '2025-08-02 02:15:37', '2025-08-02 02:15:37', NULL, 'public'),
(254, 0, '3', '3', 7, 'image/jpeg', 5391, 'promotion/3.jpg', '[]', '2025-08-02 02:15:37', '2025-08-02 02:15:37', NULL, 'public'),
(255, 0, '4', '4', 7, 'image/jpeg', 5391, 'promotion/4.jpg', '[]', '2025-08-02 02:15:37', '2025-08-02 02:15:37', NULL, 'public'),
(256, 0, '5', '5', 7, 'image/jpeg', 5391, 'promotion/5.jpg', '[]', '2025-08-02 02:15:37', '2025-08-02 02:15:37', NULL, 'public'),
(257, 0, '6', '6', 7, 'image/jpeg', 5391, 'promotion/6.jpg', '[]', '2025-08-02 02:15:37', '2025-08-02 02:15:37', NULL, 'public'),
(258, 0, '7', '7', 7, 'image/jpeg', 5391, 'promotion/7.jpg', '[]', '2025-08-02 02:15:38', '2025-08-02 02:15:38', NULL, 'public'),
(259, 0, '8', '8', 7, 'image/jpeg', 5391, 'promotion/8.jpg', '[]', '2025-08-02 02:15:38', '2025-08-02 02:15:38', NULL, 'public'),
(260, 0, '9', '9', 7, 'image/jpeg', 5391, 'promotion/9.jpg', '[]', '2025-08-02 02:15:38', '2025-08-02 02:15:38', NULL, 'public'),
(261, 0, 'cod', 'cod', 8, 'image/png', 12121, 'payments/cod.png', '[]', '2025-08-02 02:15:38', '2025-08-02 02:15:38', NULL, 'public'),
(262, 0, 'bank-transfer', 'bank-transfer', 8, 'image/png', 29089, 'payments/bank-transfer.png', '[]', '2025-08-02 02:15:38', '2025-08-02 02:15:38', NULL, 'public'),
(263, 0, 'stripe', 'stripe', 8, 'image/webp', 7516, 'payments/stripe.webp', '[]', '2025-08-02 02:15:38', '2025-08-02 02:15:38', NULL, 'public'),
(264, 0, 'paypal', 'paypal', 8, 'image/png', 3001, 'payments/paypal.png', '[]', '2025-08-02 02:15:38', '2025-08-02 02:15:38', NULL, 'public'),
(265, 0, 'mollie', 'mollie', 8, 'image/png', 8968, 'payments/mollie.png', '[]', '2025-08-02 02:15:38', '2025-08-02 02:15:38', NULL, 'public'),
(266, 0, 'paystack', 'paystack', 8, 'image/png', 31015, 'payments/paystack.png', '[]', '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, 'public'),
(267, 0, 'razorpay', 'razorpay', 8, 'image/png', 8489, 'payments/razorpay.png', '[]', '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, 'public'),
(268, 0, 'sslcommerz', 'sslcommerz', 8, 'image/png', 3482, 'payments/sslcommerz.png', '[]', '2025-08-02 02:15:39', '2025-08-02 02:15:39', NULL, 'public'),
(269, 0, 'app', 'app', 9, 'image/png', 8667, 'general/app.png', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(270, 0, 'coming-soon', 'coming-soon', 9, 'image/jpeg', 22253, 'general/coming-soon.jpg', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(271, 0, 'favicon', 'favicon', 9, 'image/png', 5047, 'general/favicon.png', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(272, 0, 'logo-dark', 'logo-dark', 9, 'image/png', 1562, 'general/logo-dark.png', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(273, 0, 'logo-light', 'logo-light', 9, 'image/png', 1529, 'general/logo-light.png', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(274, 0, 'logo', 'logo', 9, 'image/png', 1441, 'general/logo.png', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(275, 0, 'newsletter', 'newsletter', 9, 'image/jpeg', 9778, 'general/newsletter.jpg', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(276, 0, 'payment-method-1', 'payment-method-1', 9, 'image/jpeg', 1128, 'general/payment-method-1.jpg', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(277, 0, 'payment-method-2', 'payment-method-2', 9, 'image/jpeg', 1184, 'general/payment-method-2.jpg', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(278, 0, 'payment-method-3', 'payment-method-3', 9, 'image/jpeg', 1109, 'general/payment-method-3.jpg', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(279, 0, 'payment-method-4', 'payment-method-4', 9, 'image/jpeg', 944, 'general/payment-method-4.jpg', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(280, 0, 'payment-method-5', 'payment-method-5', 9, 'image/jpeg', 964, 'general/payment-method-5.jpg', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(281, 0, 'placeholder', 'placeholder', 9, 'image/png', 12344, 'general/placeholder.png', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(282, 0, '1', '1', 10, 'image/png', 9022, 'stores/1.png', '[]', '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL, 'public'),
(283, 0, '10', '10', 10, 'image/png', 4384, 'stores/10.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(284, 0, '11', '11', 10, 'image/png', 4706, 'stores/11.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(285, 0, '12', '12', 10, 'image/png', 5075, 'stores/12.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(286, 0, '13', '13', 10, 'image/png', 3700, 'stores/13.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(287, 0, '14', '14', 10, 'image/png', 4239, 'stores/14.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(288, 0, '15', '15', 10, 'image/png', 5304, 'stores/15.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(289, 0, '16', '16', 10, 'image/png', 4796, 'stores/16.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(290, 0, '17', '17', 10, 'image/png', 4919, 'stores/17.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(291, 0, '2', '2', 10, 'image/png', 8598, 'stores/2.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(292, 0, '3', '3', 10, 'image/png', 7888, 'stores/3.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(293, 0, '4', '4', 10, 'image/png', 8393, 'stores/4.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(294, 0, '5', '5', 10, 'image/png', 10159, 'stores/5.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(295, 0, '6', '6', 10, 'image/png', 10312, 'stores/6.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(296, 0, '7', '7', 10, 'image/png', 3764, 'stores/7.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(297, 0, '8', '8', 10, 'image/png', 4237, 'stores/8.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public'),
(298, 0, '9', '9', 10, 'image/png', 4096, 'stores/9.png', '[]', '2025-08-02 02:15:41', '2025-08-02 02:15:41', NULL, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `color`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'brands', NULL, 'brands', 0, '2025-08-02 02:14:57', '2025-08-02 02:14:57', NULL),
(2, 0, 'product-categories', NULL, 'product-categories', 0, '2025-08-02 02:14:57', '2025-08-02 02:14:57', NULL),
(3, 0, 'products', NULL, 'products', 0, '2025-08-02 02:14:58', '2025-08-02 02:14:58', NULL),
(4, 0, 'customers', NULL, 'customers', 0, '2025-08-02 02:15:28', '2025-08-02 02:15:28', NULL),
(5, 0, 'news', NULL, 'news', 0, '2025-08-02 02:15:35', '2025-08-02 02:15:35', NULL),
(6, 0, 'sliders', NULL, 'sliders', 0, '2025-08-02 02:15:36', '2025-08-02 02:15:36', NULL),
(7, 0, 'promotion', NULL, 'promotion', 0, '2025-08-02 02:15:37', '2025-08-02 02:15:37', NULL),
(8, 0, 'payments', NULL, 'payments', 0, '2025-08-02 02:15:38', '2025-08-02 02:15:38', NULL),
(9, 0, 'general', NULL, 'general', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL),
(10, 0, 'stores', NULL, 'stores', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(2, 'Quick links', 'quick-links', 'published', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(3, 'Company', 'company', 'published', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(4, 'Business', 'business', 'published', '2025-08-02 02:15:40', '2025-08-02 02:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2025-08-02 02:15:40', '2025-08-02 02:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `icon_font` varchar(191) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(191) DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(2, 1, 0, NULL, NULL, '#', NULL, 1, 'Pages', NULL, '_self', 1, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(3, 1, 2, 2, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(4, 1, 2, 3, 'Botble\\Page\\Models\\Page', '/terms-of-use', NULL, 1, 'Terms Of Use', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(5, 1, 2, 4, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 2, 'Terms & Conditions', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(6, 1, 2, 5, 'Botble\\Page\\Models\\Page', '/refund-policy', NULL, 3, 'Refund Policy', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(7, 1, 2, 12, 'Botble\\Page\\Models\\Page', '/coming-soon', NULL, 4, 'Coming soon', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(8, 1, 0, NULL, NULL, '/products', NULL, 2, 'Products', NULL, '_self', 1, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(9, 1, 8, NULL, NULL, '/products', NULL, 0, 'All products', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(10, 1, 8, 15, 'Botble\\Ecommerce\\Models\\ProductCategory', NULL, NULL, 1, 'Products Of Category', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(11, 1, 8, NULL, NULL, '/products/headphone-ultra-bass', NULL, 2, 'Product Single', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(12, 1, 0, NULL, NULL, '/stores', NULL, 3, 'Stores', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(13, 1, 0, 6, 'Botble\\Page\\Models\\Page', NULL, NULL, 4, 'Blog', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(14, 1, 0, 7, 'Botble\\Page\\Models\\Page', NULL, NULL, 5, 'FAQs', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(15, 1, 0, 8, 'Botble\\Page\\Models\\Page', NULL, NULL, 6, 'Contact', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(16, 2, 0, 3, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Terms Of Use', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(17, 2, 0, 4, 'Botble\\Page\\Models\\Page', NULL, NULL, 1, 'Terms & Conditions', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(18, 2, 0, 5, 'Botble\\Page\\Models\\Page', NULL, NULL, 2, 'Refund Policy', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(19, 2, 0, 7, 'Botble\\Page\\Models\\Page', NULL, NULL, 3, 'FAQs', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(20, 2, 0, NULL, NULL, '/nothing', NULL, 4, '404 Page', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(21, 3, 0, 2, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'About us', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(22, 3, 0, 10, 'Botble\\Page\\Models\\Page', NULL, NULL, 1, 'Affiliate', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(23, 3, 0, 11, 'Botble\\Page\\Models\\Page', NULL, NULL, 2, 'Career', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(24, 3, 0, 8, 'Botble\\Page\\Models\\Page', NULL, NULL, 3, 'Contact us', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(25, 4, 0, 6, 'Botble\\Page\\Models\\Page', NULL, NULL, 0, 'Our blog', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(26, 4, 0, NULL, NULL, '/cart', NULL, 1, 'Cart', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(27, 4, 0, NULL, NULL, '/customer/overview', NULL, 2, 'My account', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(28, 4, 0, NULL, NULL, '/products', NULL, 3, 'Shop', NULL, '_self', 0, '2025-08-02 02:15:40', '2025-08-02 02:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 1, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(2, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 2, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(3, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 3, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(4, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 4, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(5, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 5, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(6, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 6, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(7, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 7, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(8, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 8, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(9, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 9, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(10, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 10, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(11, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 11, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(12, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 12, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(13, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 13, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(14, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 14, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(15, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 15, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(16, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 16, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(17, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 17, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(18, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 18, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(19, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 19, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(20, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 20, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(21, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 21, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(22, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 22, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(23, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 23, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(24, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 24, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(25, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 25, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(26, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 26, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(27, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 27, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26');
INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(28, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 28, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(29, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 29, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(30, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 30, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(31, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 31, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(32, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 32, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(33, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 33, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(34, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 34, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(35, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 35, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(36, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 36, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(37, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 37, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(38, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 38, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(39, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 39, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(40, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 40, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(41, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 41, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(42, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 42, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(43, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 43, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(44, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 44, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(45, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 45, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(46, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 46, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(47, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 47, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(48, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 48, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(49, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 49, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(50, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 50, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(51, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 51, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(52, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 52, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(53, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 53, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(54, 'faq_schema_config', '[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]', 54, 'Botble\\Ecommerce\\Models\\Product', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(55, 'tablet_image', '[\"sliders\\/1-md.jpg\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(56, 'mobile_image', '[\"sliders\\/1-sm.jpg\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(57, 'tablet_image', '[\"sliders\\/2-md.jpg\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(58, 'mobile_image', '[\"sliders\\/2-sm.jpg\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(59, 'tablet_image', '[\"sliders\\/3-md.jpg\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(60, 'mobile_image', '[\"sliders\\/3-sm.jpg\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2025-08-02 02:15:37', '2025-08-02 02:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '2013_04_09_032329_create_base_tables', 1),
(3, '2013_04_09_062329_create_revisions_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(6, '2016_06_10_230148_create_acl_tables', 1),
(7, '2016_06_14_230857_create_menus_table', 1),
(8, '2016_06_28_221418_create_pages_table', 1),
(9, '2016_10_05_074239_create_setting_table', 1),
(10, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(11, '2016_12_16_084601_create_widgets_table', 1),
(12, '2017_05_09_070343_create_media_tables', 1),
(13, '2017_11_03_070450_create_slug_table', 1),
(14, '2019_01_05_053554_create_jobs_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2021_08_02_084121_fix_old_shortcode', 1),
(18, '2022_04_20_100851_add_index_to_media_table', 1),
(19, '2022_04_20_101046_add_index_to_menu_table', 1),
(20, '2022_07_10_034813_move_lang_folder_to_root', 1),
(21, '2022_08_04_051940_add_missing_column_expires_at', 1),
(22, '2022_09_01_000001_create_admin_notifications_tables', 1),
(23, '2022_10_14_024629_drop_column_is_featured', 1),
(24, '2022_11_18_063357_add_missing_timestamp_in_table_settings', 1),
(25, '2022_12_02_093615_update_slug_index_columns', 1),
(26, '2023_01_30_024431_add_alt_to_media_table', 1),
(27, '2023_02_16_042611_drop_table_password_resets', 1),
(28, '2023_04_23_005903_add_column_permissions_to_admin_notifications', 1),
(29, '2023_05_10_075124_drop_column_id_in_role_users_table', 1),
(30, '2023_08_21_090810_make_page_content_nullable', 1),
(31, '2023_09_14_021936_update_index_for_slugs_table', 1),
(32, '2023_12_07_095130_add_color_column_to_media_folders_table', 1),
(33, '2023_12_17_162208_make_sure_column_color_in_media_folders_nullable', 1),
(34, '2024_04_04_110758_update_value_column_in_user_meta_table', 1),
(35, '2024_05_04_030654_improve_social_links', 1),
(36, '2024_05_12_091229_add_column_visibility_to_table_media_files', 1),
(37, '2024_07_07_091316_fix_column_url_in_menu_nodes_table', 1),
(38, '2024_07_12_100000_change_random_hash_for_media', 1),
(39, '2024_09_30_024515_create_sessions_table', 1),
(40, '2024_12_19_000001_create_device_tokens_table', 1),
(41, '2024_12_19_000002_create_push_notifications_table', 1),
(42, '2024_12_19_000003_create_push_notification_recipients_table', 1),
(43, '2024_12_30_000001_create_user_settings_table', 1),
(44, '2025_07_06_030754_add_phone_to_users_table', 1),
(45, '2025_07_31_add_performance_indexes_to_slugs_table', 1),
(46, '2020_11_18_150916_ads_create_ads_table', 2),
(47, '2021_12_02_035301_add_ads_translations_table', 2),
(48, '2023_04_17_062645_add_open_in_new_tab', 2),
(49, '2023_11_07_023805_add_tablet_mobile_image', 2),
(50, '2024_04_01_043317_add_google_adsense_slot_id_to_ads_table', 2),
(51, '2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table', 2),
(52, '2024_04_27_100730_improve_analytics_setting', 3),
(53, '2015_06_29_025744_create_audit_history', 4),
(54, '2023_11_14_033417_change_request_column_in_table_audit_histories', 4),
(55, '2025_05_05_000001_add_user_type_to_audit_histories_table', 4),
(56, '2015_06_18_033822_create_blog_table', 5),
(57, '2021_02_16_092633_remove_default_value_for_author_type', 5),
(58, '2021_12_03_030600_create_blog_translations', 5),
(59, '2022_04_19_113923_add_index_to_table_posts', 5),
(60, '2023_08_29_074620_make_column_author_id_nullable', 5),
(61, '2024_07_30_091615_fix_order_column_in_categories_table', 5),
(62, '2025_01_06_033807_add_default_value_for_categories_author_type', 5),
(63, '2016_06_17_091537_create_contacts_table', 6),
(64, '2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core', 6),
(65, '2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table', 6),
(66, '2024_03_25_000001_update_captcha_settings_for_contact', 6),
(67, '2024_04_19_063914_create_custom_fields_table', 6),
(68, '2020_03_05_041139_create_ecommerce_tables', 7),
(69, '2021_01_01_044147_ecommerce_create_flash_sale_table', 7),
(70, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 7),
(71, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 7),
(72, '2021_02_18_073505_update_table_ec_reviews', 7),
(73, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 7),
(74, '2021_03_10_025153_change_column_tax_amount', 7),
(75, '2021_03_20_033103_add_column_availability_to_table_ec_products', 7),
(76, '2021_04_28_074008_ecommerce_create_product_label_table', 7),
(77, '2021_05_31_173037_ecommerce_create_ec_products_translations', 7),
(78, '2021_08_17_105016_remove_column_currency_id_in_some_tables', 7),
(79, '2021_08_30_142128_add_images_column_to_ec_reviews_table', 7),
(80, '2021_10_04_030050_add_column_created_by_to_table_ec_products', 7),
(81, '2021_10_05_122616_add_status_column_to_ec_customers_table', 7),
(82, '2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses', 7),
(83, '2021_11_23_071403_correct_languages_for_product_variations', 7),
(84, '2021_11_28_031808_add_product_tags_translations', 7),
(85, '2021_12_01_031123_add_featured_image_to_ec_products', 7),
(86, '2022_01_01_033107_update_table_ec_shipments', 7),
(87, '2022_02_16_042457_improve_product_attribute_sets', 7),
(88, '2022_03_22_075758_correct_product_name', 7),
(89, '2022_04_19_113334_add_index_to_ec_products', 7),
(90, '2022_04_28_144405_remove_unused_table', 7),
(91, '2022_05_05_115015_create_ec_customer_recently_viewed_products_table', 7),
(92, '2022_05_18_143720_add_index_to_table_ec_product_categories', 7),
(93, '2022_06_16_095633_add_index_to_some_tables', 7),
(94, '2022_06_30_035148_create_order_referrals_table', 7),
(95, '2022_07_24_153815_add_completed_at_to_ec_orders_table', 7),
(96, '2022_08_14_032836_create_ec_order_returns_table', 7),
(97, '2022_08_14_033554_create_ec_order_return_items_table', 7),
(98, '2022_08_15_040324_add_billing_address', 7),
(99, '2022_08_30_091114_support_digital_products_table', 7),
(100, '2022_09_13_095744_create_options_table', 7),
(101, '2022_09_13_104347_create_option_value_table', 7),
(102, '2022_10_05_163518_alter_table_ec_order_product', 7),
(103, '2022_10_12_041517_create_invoices_table', 7),
(104, '2022_10_12_142226_update_orders_table', 7),
(105, '2022_10_13_024916_update_table_order_returns', 7),
(106, '2022_10_21_030830_update_columns_in_ec_shipments_table', 7),
(107, '2022_10_28_021046_update_columns_in_ec_shipments_table', 7),
(108, '2022_11_16_034522_update_type_column_in_ec_shipping_rules_table', 7),
(109, '2022_11_19_041643_add_ec_tax_product_table', 7),
(110, '2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table', 7),
(111, '2022_12_17_041532_fix_address_in_order_invoice', 7),
(112, '2022_12_26_070329_create_ec_product_views_table', 7),
(113, '2023_01_04_033051_fix_product_categories', 7),
(114, '2023_01_09_050400_add_ec_global_options_translations_table', 7),
(115, '2023_01_10_093754_add_missing_option_value_id', 7),
(116, '2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table', 7),
(117, '2023_01_26_021854_add_ec_customer_used_coupons_table', 7),
(118, '2023_02_08_015900_update_options_column_in_ec_order_product_table', 7),
(119, '2023_02_27_095752_remove_duplicate_reviews', 7),
(120, '2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table', 7),
(121, '2023_04_21_082427_create_ec_product_categorizables_table', 7),
(122, '2023_05_03_011331_add_missing_column_price_into_invoice_items_table', 7),
(123, '2023_05_17_025812_fix_invoice_issue', 7),
(124, '2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields', 7),
(125, '2023_05_27_144611_fix_exchange_rate_setting', 7),
(126, '2023_06_22_084331_add_generate_license_code_to_ec_products_table', 7),
(127, '2023_06_30_042512_create_ec_order_tax_information_table', 7),
(128, '2023_07_14_022724_remove_column_id_from_ec_product_collection_products', 7),
(129, '2023_08_09_012940_remove_column_status_in_ec_product_attributes', 7),
(130, '2023_08_15_064505_create_ec_tax_rules_table', 7),
(131, '2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable', 7),
(132, '2023_08_22_094114_drop_unique_for_barcode', 7),
(133, '2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table', 7),
(134, '2023_09_07_094312_add_index_to_product_sku_and_translations', 7),
(135, '2023_09_19_024955_create_discount_product_categories_table', 7),
(136, '2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table', 7),
(137, '2023_11_22_154643_add_unique_in_table_ec_products_variations', 7),
(138, '2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table', 7),
(139, '2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table', 7),
(140, '2023_12_25_040604_ec_create_review_replies_table', 7),
(141, '2023_12_26_090340_add_private_notes_column_to_ec_customers_table', 7),
(142, '2024_01_16_070706_fix_translation_tables', 7),
(143, '2024_01_23_075227_add_proof_file_to_ec_orders_table', 7),
(144, '2024_03_26_041531_add_cancel_reason_to_ec_orders_table', 7),
(145, '2024_03_27_062402_create_ec_customer_deletion_requests_table', 7),
(146, '2024_03_29_042242_migrate_old_captcha_settings', 7),
(147, '2024_03_29_093946_create_ec_order_return_histories_table', 7),
(148, '2024_04_01_063523_add_customer_columns_to_ec_reviews_table', 7),
(149, '2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting', 7),
(150, '2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table', 7),
(151, '2024_05_07_073153_improve_table_wishlist', 7),
(152, '2024_05_07_093703_add_missing_zip_code_into_table_store_locators', 7),
(153, '2024_05_15_021503_fix_invoice_path', 7),
(154, '2024_06_20_160724_create_ec_shared_wishlists_table', 7),
(155, '2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table', 7),
(156, '2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table', 7),
(157, '2024_07_14_071826_make_customer_email_nullable', 7),
(158, '2024_07_15_104916_add_video_media_column_to_ec_products_table', 7),
(159, '2024_07_26_052530_add_percentage_to_tax_rules_table', 7),
(160, '2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table', 7),
(161, '2024_08_19_132849_create_specification_tables', 7),
(162, '2024_09_07_060744_add_author_column_to_specification_tables', 7),
(163, '2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table', 7),
(164, '2024_09_25_073928_remove_wrong_product_slugs', 7),
(165, '2025_01_15_050230_migrate_old_theme_options', 7),
(166, '2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table', 7),
(167, '2025_01_24_044641_migrate_old_country_data', 7),
(168, '2025_01_28_233602_add_private_notes_into_ec_orders_table', 7),
(169, '2025_02_13_021247_add_tax_translations', 7),
(170, '2025_02_24_152621_add_text_color_to_product_labels_table', 7),
(171, '2025_04_12_000001_add_payment_fee_to_ec_orders_table', 7),
(172, '2025_04_12_000002_add_payment_fee_to_ec_invoices_table', 7),
(173, '2025_05_05_092036_make_user_id_and_tax_amount_nullable', 7),
(174, '2025_05_15_082342_drop_email_unique_index_in_ec_customers_table', 7),
(175, '2025_06_07_081731_add_translations_for_specification_groups_and_tables', 7),
(176, '2025_06_17_091813_increase_note_in_shipments_table', 7),
(177, '2025_06_24_000001_create_ec_product_license_codes_table', 7),
(178, '2025_06_24_080427_add_license_code_type_to_products_table', 7),
(179, '2025_07_06_062402_create_ec_customer_deletion_requests_table', 7),
(180, '2025_07_07_161729_change_license_code_to_text_in_ec_product_license_codes_table', 7),
(181, '2025_07_08_162756_increase_license_code_column_size_in_ec_order_product_table', 7),
(182, '2025_07_09_000001_add_customer_address_fields_to_ec_invoices_table', 7),
(183, '2025_07_15_090809_create_ec_abandoned_carts_table', 7),
(184, '2025_07_24_120510_increase_barcode_column_length_in_ec_products_table', 7),
(185, '2025_07_28_151808_fix_tax_amount_multiply_qty_in_order_and_invoice_items', 7),
(186, '2025_07_31_133600_add_performance_indexes_to_ec_product_categories_table', 7),
(187, '2025_08_01_161205_optimize_product_variation_query_indexes', 7),
(188, '2018_07_09_221238_create_faq_table', 8),
(189, '2021_12_03_082134_create_faq_translations', 8),
(190, '2023_11_17_063408_add_description_column_to_faq_categories_table', 8),
(191, '2016_10_03_032336_create_languages_table', 9),
(192, '2023_09_14_022423_add_index_for_language_table', 9),
(193, '2021_10_25_021023_fix-priority-load-for-language-advanced', 10),
(194, '2021_12_03_075608_create_page_translations', 10),
(195, '2023_07_06_011444_create_slug_translations_table', 10),
(196, '2019_11_18_061011_create_country_table', 11),
(197, '2021_12_03_084118_create_location_translations', 11),
(198, '2021_12_03_094518_migrate_old_location_data', 11),
(199, '2021_12_10_034440_switch_plugin_location_to_use_language_advanced', 11),
(200, '2022_01_16_085908_improve_plugin_location', 11),
(201, '2022_08_04_052122_delete_location_backup_tables', 11),
(202, '2023_04_23_061847_increase_state_translations_abbreviation_column', 11),
(203, '2023_07_26_041451_add_more_columns_to_location_table', 11),
(204, '2023_07_27_041451_add_more_columns_to_location_translation_table', 11),
(205, '2023_08_15_073307_drop_unique_in_states_cities_translations', 11),
(206, '2023_10_21_065016_make_state_id_in_table_cities_nullable', 11),
(207, '2024_08_17_094600_add_image_into_countries', 11),
(208, '2025_01_08_093652_add_zip_code_to_cities', 11),
(209, '2025_07_31_083459_add_indexes_for_location_search_performance', 11),
(210, '2021_07_06_030002_create_marketplace_table', 12),
(211, '2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table', 12),
(212, '2021_10_04_033903_add_column_approved_by_into_table_ec_products', 12),
(213, '2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table', 12),
(214, '2021_10_10_054216_add_columns_to_mp_customer_revenues_table', 12),
(215, '2021_12_06_031304_update_table_mp_customer_revenues', 12),
(216, '2022_10_19_152916_add_columns_to_mp_stores_table', 12),
(217, '2022_10_20_062849_create_mp_category_sale_commissions_table', 12),
(218, '2022_11_02_071413_add_more_info_for_store', 12),
(219, '2022_11_02_080444_add_tax_info', 12),
(220, '2023_02_01_062030_add_store_translations', 12),
(221, '2023_02_13_032133_update_fee_column_mp_customer_revenues_table', 12),
(222, '2023_02_17_023648_fix_store_prefix', 12),
(223, '2024_04_03_062451_add_cover_image_to_table_mp_stores', 12),
(224, '2024_05_07_082630_create_mp_messages_table', 12),
(225, '2024_07_19_131849_add_documents_to_mp_stores_table', 12),
(226, '2024_08_18_083119_add_tax_id_column_to_mp_stores_table', 12),
(227, '2024_08_27_141244_add_block_reason_to_ec_customers_table', 12),
(228, '2024_09_17_125408_add_square_logo_to_stores_table', 12),
(229, '2025_07_31_021805_add_indexes_for_vendor_categories_optimization', 12),
(230, '2017_10_24_154832_create_newsletter_table', 13),
(231, '2024_03_25_000001_update_captcha_settings_for_newsletter', 13),
(232, '2017_05_18_080441_create_payment_tables', 14),
(233, '2021_03_27_144913_add_customer_type_into_table_payments', 14),
(234, '2021_05_24_034720_make_column_currency_nullable', 14),
(235, '2021_08_09_161302_add_metadata_column_to_payments_table', 14),
(236, '2021_10_19_020859_update_metadata_field', 14),
(237, '2022_06_28_151901_activate_paypal_stripe_plugin', 14),
(238, '2022_07_07_153354_update_charge_id_in_table_payments', 14),
(239, '2024_07_04_083133_create_payment_logs_table', 14),
(240, '2025_04_12_000003_add_payment_fee_to_payments_table', 14),
(241, '2025_05_22_000001_add_payment_fee_type_to_settings_table', 14),
(242, '2017_07_11_140018_create_simple_slider_table', 15),
(243, '2025_04_08_040931_create_social_logins_table', 16),
(244, '2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table', 17),
(245, '2016_10_07_193005_create_translations_table', 18),
(246, '2023_12_12_105220_drop_translations_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `mp_category_sale_commissions`
--

CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_revenues`
--

CREATE TABLE `mp_customer_revenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT 0.00,
  `fee` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `amount` decimal(15,2) DEFAULT 0.00,
  `current_balance` decimal(15,2) DEFAULT 0.00,
  `currency` varchar(120) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_withdrawals`
--

CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fee` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `amount` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `current_balance` decimal(15,2) UNSIGNED DEFAULT 0.00,
  `currency` varchar(120) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `bank_info` text DEFAULT NULL,
  `payment_channel` varchar(60) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'pending',
  `images` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_messages`
--

CREATE TABLE `mp_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_stores`
--

CREATE TABLE `mp_stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `logo_square` varchar(255) DEFAULT NULL,
  `cover_image` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `tax_id` varchar(191) DEFAULT NULL,
  `certificate_file` varchar(191) DEFAULT NULL,
  `government_id_file` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_stores`
--

INSERT INTO `mp_stores` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `customer_id`, `logo`, `logo_square`, `cover_image`, `description`, `content`, `status`, `vendor_verified_at`, `created_at`, `updated_at`, `zip_code`, `company`, `tax_id`, `certificate_file`, `government_id_file`) VALUES
(1, 'GoPro', 'moen.logan@example.com', '+17313123130', '7143 Lucinda Plaza Suite 413', 'CL', 'Missouri', 'West Melisa', 2, 'stores/1.png', NULL, NULL, 'Est aut veniam nesciunt saepe est. Dolorem veniam tenetur suscipit. Esse itaque eius cumque nulla sunt quo doloremque. Recusandae facilis adipisci in nesciunt placeat. Sed ipsam laudantium facilis eligendi possimus eos id iusto. Atque ut qui fugiat et molestiae consequuntur. Id aspernatur qui tempora ut.', 'Founded in 2002, GoPro has grown into a global brand known for its action cameras and versatile accessories.', 'published', NULL, '2025-08-02 02:15:44', '2025-08-02 02:15:44', NULL, NULL, NULL, NULL, NULL),
(2, 'Global Office', 'rborer@example.org', '+16787751698', '690 Zachery Ville', 'MG', 'Arizona', 'South Kayla', 4, 'stores/2.png', NULL, NULL, 'Iure enim vitae eos similique ad. Est perspiciatis ut aut similique qui alias labore quas. Eligendi eligendi expedita vel eum quia unde voluptatem. Suscipit ea voluptas beatae et ut illum expedita similique.', 'Global Office provides high-quality office supplies and equipment for businesses of all sizes.', 'published', NULL, '2025-08-02 02:15:44', '2025-08-02 02:15:44', NULL, NULL, NULL, NULL, NULL),
(3, 'Young Shop', 'qwest@example.com', '+13806083477', '16178 Stephan Roads Suite 494', 'MQ', 'Illinois', 'Streichborough', 4, 'stores/3.png', NULL, NULL, 'Repellendus vel consequatur ut eveniet et velit. Ea blanditiis voluptatem non neque est vel. Commodi odit illo omnis accusamus quia sunt. Dolorum occaecati voluptas modi quod. Aut quo quae distinctio laboriosam qui quam debitis sunt. Dolor facilis non tenetur dignissimos earum. Illo ad quibusdam ut facere praesentium culpa voluptatem quisquam. Enim velit blanditiis enim porro accusantium.', 'Young Shop specializes in trendy fashion and accessories for the youth market.', 'published', NULL, '2025-08-02 02:15:44', '2025-08-02 02:15:44', NULL, NULL, NULL, NULL, NULL),
(4, 'Global Store', 'sienna60@example.com', '+14014662845', '56279 Cecilia Walk Suite 902', 'AF', 'Georgia', 'Marisaside', 2, 'stores/4.png', NULL, NULL, 'Consequatur perspiciatis non debitis. Aliquam quis atque quis fugiat doloribus. Voluptatem atque esse omnis voluptate eius ducimus. Autem nostrum hic velit ut facere ad itaque iure. Voluptas dolores consequatur vel optio. Facilis pariatur similique possimus neque esse reiciendis et. Ipsam sit optio minima labore enim consequatur numquam.', 'Global Store offers a wide range of products from electronics to home goods at competitive prices.', 'published', NULL, '2025-08-02 02:15:44', '2025-08-02 02:15:44', NULL, NULL, NULL, NULL, NULL),
(5, 'Robert\'s Store', 'reichel.chloe@example.org', '+14152432219', '290 Jermain Springs Suite 372', 'DO', 'Virginia', 'East Alford', 8, 'stores/5.png', NULL, NULL, 'Assumenda quidem qui aut et non. Sint est ullam et et. Iure quia assumenda eveniet vel. Veritatis a unde minus esse dolores sit et minus. Asperiores distinctio minima et ducimus. Omnis voluptatem odit repellat ea rem error tenetur eum. Voluptatem aperiam ea quod et velit nulla.', 'Robert\'s Store is your destination for premium quality clothing and accessories.', 'published', NULL, '2025-08-02 02:15:44', '2025-08-02 02:15:44', NULL, NULL, NULL, NULL, NULL),
(6, 'Stouffer', 'nader.claudia@example.net', '+16692330413', '325 Itzel Keys Apt. 067', 'VE', 'Mississippi', 'West Emmetberg', 8, 'stores/6.png', NULL, NULL, 'Quasi sequi maiores in aliquam distinctio libero. Totam dolore laudantium assumenda. Est sed qui amet enim. Ex est qui ratione commodi omnis ipsum rerum. Quia nulla ea nobis vel beatae. Suscipit illo ducimus vero recusandae a temporibus. Quisquam eum minus consequuntur doloribus.', 'Stouffer brings you delicious, ready-to-eat meals that are perfect for busy lifestyles.', 'published', NULL, '2025-08-02 02:15:44', '2025-08-02 02:15:44', NULL, NULL, NULL, NULL, NULL),
(7, 'StarKist', 'wuckert.mariah@example.com', '+16467833874', '160 Kayla Coves Apt. 156', 'BF', 'Arkansas', 'Port Kyleigh', 4, 'stores/7.png', NULL, NULL, 'Rerum amet unde labore voluptas quo ut sit magni. Accusantium necessitatibus laboriosam provident facere nihil aut ea. Nesciunt eius quia est voluptatem aut voluptatem pariatur dignissimos. Quibusdam maxime fugit perferendis totam voluptate id. Nesciunt expedita labore et rem aut optio eaque blanditiis. Sit ipsa perferendis perferendis rem.', 'StarKist is committed to providing sustainable seafood products of the highest quality.', 'published', NULL, '2025-08-02 02:15:44', '2025-08-02 02:15:44', NULL, NULL, NULL, NULL, NULL),
(8, 'Old El Paso', 'asmitham@example.org', '+16812133676', '90812 Einar Neck', 'JE', 'Texas', 'Terrychester', 3, 'stores/8.png', NULL, NULL, 'Exercitationem quo optio pariatur qui accusantium eos. Eius distinctio quaerat nihil perferendis. Rem sint aut repellendus voluptates inventore non enim. Omnis nihil nam enim nisi commodi et. Velit optio dolores dolorem veniam aperiam. Reiciendis asperiores officiis dolor animi.', 'Old El Paso brings the flavors of Mexico to your table with authentic ingredients and recipes.', 'published', NULL, '2025-08-02 02:15:44', '2025-08-02 02:15:44', NULL, NULL, NULL, NULL, NULL),
(9, 'Tyson', 'kallie39@example.net', '+19014068007', '23870 Yundt Vista Suite 186', 'KM', 'Idaho', 'West Anjalifurt', 4, 'stores/9.png', NULL, NULL, 'Quis tenetur qui temporibus omnis reiciendis temporibus. Molestias quis ex quia id et. Consequuntur est recusandae ut ipsum cupiditate vel repellat. Aliquam at ea reprehenderit debitis qui. Iure itaque laborum omnis sed quia qui. Laudantium odio dolorem rerum eos. Sapiente vel ducimus sunt hic. Velit quia ut quis. Quos hic ratione veritatis. Omnis qui consectetur ipsam iste rerum.', 'Tyson offers a variety of protein products to help you create delicious meals for your family.', 'published', NULL, '2025-08-02 02:15:44', '2025-08-02 02:15:44', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mp_stores_translations`
--

CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) NOT NULL,
  `mp_stores_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `cover_image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_vendor_info`
--

CREATE TABLE `mp_vendor_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_fee` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_revenue` decimal(15,2) NOT NULL DEFAULT 0.00,
  `signature` varchar(191) DEFAULT NULL,
  `bank_info` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) DEFAULT 'bank_transfer',
  `tax_info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_vendor_info`
--

INSERT INTO `mp_vendor_info` (`id`, `customer_id`, `balance`, `total_fee`, `total_revenue`, `signature`, `bank_info`, `created_at`, `updated_at`, `payout_payment_method`, `tax_info`) VALUES
(1, 2, 0.00, 0.00, 0.00, '$2y$12$v.xxQUGn9TH4krX4C5/.lu8UUQ6dWE/hnEdxf6mogwzosShgMJsNq', '{\"name\":\"Arch Blick\",\"number\":\"+15319771480\",\"full_name\":\"Ernest Orn\",\"description\":\"Dr. Waylon Hauck\"}', '2025-08-02 02:15:42', '2025-08-02 02:15:42', 'bank_transfer', NULL),
(2, 3, 0.00, 0.00, 0.00, '$2y$12$m5Ixn9UQovKd4RCtmKNOQeoWb7/tyfUikbFx6xMBXvOp3NVs1xTnC', '{\"name\":\"Prof. Garfield Johnson MD\",\"number\":\"+15409994791\",\"full_name\":\"Estelle Schmidt\",\"description\":\"Sylvan Zboncak\"}', '2025-08-02 02:15:42', '2025-08-02 02:15:42', 'bank_transfer', NULL),
(3, 4, 0.00, 0.00, 0.00, '$2y$12$4Ez2A4Yu9iV0TKjcFYXsMu0FO8B9kToOeAzYHLo7cecBfXMDTChi2', '{\"name\":\"Kieran Hamill\",\"number\":\"+14247318854\",\"full_name\":\"Clyde Kutch\",\"description\":\"Maxie Ledner\"}', '2025-08-02 02:15:42', '2025-08-02 02:15:42', 'bank_transfer', NULL),
(4, 5, 0.00, 0.00, 0.00, '$2y$12$dvhFvfyieuQZFYWG.ibu6uIMySjfurZUT0aE5tDcigmcm7.XPxu6S', '{\"name\":\"Elbert Swaniawski\",\"number\":\"+12255106297\",\"full_name\":\"Dr. Hazle Dach V\",\"description\":\"Dr. Antonette Hill\"}', '2025-08-02 02:15:43', '2025-08-02 02:15:43', 'bank_transfer', NULL),
(5, 6, 0.00, 0.00, 0.00, '$2y$12$OTgBeciutluNPTnCqGscWuT0zDACBcrjlePJZRoPPAGMiXW6PI8h6', '{\"name\":\"Doyle Reilly\",\"number\":\"+16818833163\",\"full_name\":\"Rosie Gerlach\",\"description\":\"Elias Leffler\"}', '2025-08-02 02:15:43', '2025-08-02 02:15:43', 'bank_transfer', NULL),
(6, 7, 0.00, 0.00, 0.00, '$2y$12$cfR.7AscIApp8SOkmcoU7ePTMrfr5ueUSY7oQVntMwtN1BQ0QCG46', '{\"name\":\"Oscar Koss\",\"number\":\"+16575330240\",\"full_name\":\"Dr. Sammy Legros\",\"description\":\"Kiera Cormier\"}', '2025-08-02 02:15:43', '2025-08-02 02:15:43', 'bank_transfer', NULL),
(7, 8, 0.00, 0.00, 0.00, '$2y$12$BCWNAoMZKukO0jJLmIv/defjOSNSFjOe2OXYtIWjYI6dxvdLAMZ4y', '{\"name\":\"Arlene Gorczany\",\"number\":\"+16107361096\",\"full_name\":\"Therese Hilpert V\",\"description\":\"Brando Hamill\"}', '2025-08-02 02:15:44', '2025-08-02 02:15:44', 'bank_transfer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\" enable_lazy_loading=\"yes\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\" enable_lazy_loading=\"yes\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\" enable_lazy_loading=\"yes\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[featured-products title=\"Featured products\" enable_lazy_loading=\"yes\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\" enable_lazy_loading=\"yes\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\" enable_lazy_loading=\"yes\"][/product-collections]</div><div>[product-category-products category_id=\"18\" enable_lazy_loading=\"yes\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\" enable_lazy_loading=\"yes\"][/download-app]</div><div>[product-category-products category_id=\"23\" enable_lazy_loading=\"yes\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\" enable_lazy_loading=\"yes\"][/newsletter-form]</div>', 1, NULL, 'homepage', NULL, 'published', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(2, 'About us', '<p>Alice, in a sort of chance of this, so she bore it as she spoke, but no result seemed to follow, except a tiny little thing!\' said Alice, \'and those twelve creatures,\' (she was rather doubtful whether she could not swim. He sent them word I had our Dinah here, I know THAT well enough; and what does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' said Two, in a very little! Besides, SHE\'S she, and I\'m sure she\'s the best way to change the subject,\' the March.</p><p>English. \'I don\'t see,\' said the Caterpillar. \'Well, perhaps your feelings may be ONE.\' \'One, indeed!\' said the Queen, and in another minute the whole place around her became alive with the Queen, pointing to the waving of the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, whose thoughts were still running on the glass table and the sounds will take care of themselves.\"\' \'How fond she is.</p><p>King. Here one of the guinea-pigs cheered, and was going to do this, so she set to work very carefully, remarking, \'I really must be a comfort, one way--never to be sure, she had sat down again into its face was quite pleased to find quite a chorus of voices asked. \'Why, SHE, of course,\' he said in a VERY turn-up nose, much more like a telescope! I think I could, if I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no doubt that it was sneezing on the same thing a.</p><p>Alice\'s head. \'Is that the way wherever she wanted much to know, but the great concert given by the English, who wanted leaders, and had just upset the week before. \'Oh, I beg your pardon!\' said the King sharply. \'Do you take me for asking! No, it\'ll never do to come down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go near the King put on his knee, and looking anxiously round to see you any more!\' And here poor Alice began to say than his first remark, \'It was a.</p>', 1, NULL, 'default', NULL, 'published', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(3, 'Terms Of Use', '<p>There was a general chorus of voices asked. \'Why, SHE, of course,\' the Mock Turtle, suddenly dropping his voice; and the blades of grass, but she could have been changed for Mabel! I\'ll try and repeat something now. Tell her to wink with one finger, as he found it so quickly that the Gryphon answered, very nearly getting up and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m.</p><p>The players all played at once took up the fan and gloves, and, as they lay sprawling about, reminding her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Hatter. This piece of it now in sight, and no more to do it?\' \'In my youth,\' said the King, \'that saves a world of trouble, you know, as we needn\'t try to find my way into a sort of use in the direction in which the cook took the watch and looked anxiously round, to make herself useful, and looking at the flowers.</p><p>King, looking round the neck of the pack, she could not help bursting out laughing: and when she had not gone (We know it to half-past one as long as you can--\' \'Swim after them!\' screamed the Gryphon. Alice did not feel encouraged to ask help of any one; so, when the race was over. Alice was only the pepper that makes you forget to talk. I can\'t tell you my adventures--beginning from this morning,\' said Alice in a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the King, \'and.</p><p>I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the experiment?\' \'HE might bite,\' Alice cautiously replied, not feeling at all comfortable, and it sat down again into its face in her French lesson-book. The Mouse only growled in reply. \'Please come back in their mouths--and they\'re all over with fright. \'Oh, I know!\' exclaimed Alice, who always took a great deal too flustered to tell me who YOU are, first.\' \'Why?\' said the Gryphon went on, \'if you don\'t explain it as a drawing of a candle is.</p>', 1, NULL, 'default', NULL, 'published', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(4, 'Terms &amp; Conditions', '<p>Alice; \'all I know is, something comes at me like a thunderstorm. \'A fine day, your Majesty!\' the Duchess said after a pause: \'the reason is, that there\'s any one of them bowed low. \'Would you tell me,\' said Alice, who was reading the list of singers. \'You may not have lived much under the circumstances. There was no use denying it. I suppose it were nine o\'clock in the air. This time there were ten of them, with her head!\' Those whom she sentenced were taken into custody by the soldiers, who.</p><p>Caterpillar. \'Is that the Gryphon replied very solemnly. Alice was not going to say,\' said the Dodo. Then they both sat silent for a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in all my limbs very supple By the use of a tree. By the time it vanished quite slowly, beginning with the words came very queer indeed:-- \'\'Tis the voice of the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'Now I can listen all day to day.\' This was not a moment.</p><p>After a time there were any tears. No, there were no arches left, and all her wonderful Adventures, till she had a VERY good opportunity for making her escape; so she turned away. \'Come back!\' the Caterpillar sternly. \'Explain yourself!\' \'I can\'t explain it,\' said the Dormouse, and repeated her question. \'Why did they draw?\' said Alice, who felt very glad to get dry again: they had any sense, they\'d take the roof of the window, and one foot up the little door about fifteen inches high: she.</p><p>I vote the young Crab, a little anxiously. \'Yes,\' said Alice, \'and why it is right?\' \'In my youth,\' Father William replied to his son, \'I feared it might not escape again, and made another snatch in the prisoner\'s handwriting?\' asked another of the table, but it had fallen into a line along the course, here and there they lay sprawling about, reminding her very earnestly, \'Now, Dinah, tell me the list of singers. \'You may not have lived much under the sea--\' (\'I haven\'t,\' said Alice)--\'and.</p>', 1, NULL, 'default', NULL, 'published', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(5, 'Refund Policy', '<p>ME.\' \'You!\' said the Pigeon. \'I can hardly breathe.\' \'I can\'t explain MYSELF, I\'m afraid, but you might do very well without--Maybe it\'s always pepper that had fluttered down from the change: and Alice guessed who it was, and, as she could. The next thing was to find that her neck kept getting entangled among the party. Some of the garden: the roses growing on it were nine o\'clock in the sea. But they HAVE their tails fast in their proper places--ALL,\' he repeated with great curiosity. \'Soles.</p><p>Queen said to Alice; and Alice guessed who it was, even before she found her way out. \'I shall sit here,\' the Footman continued in the after-time, be herself a grown woman; and how she would have made a memorandum of the way out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in some book, but I grow at a reasonable pace,\' said the King; and the bright eager eyes were nearly out of sight: then it chuckled. \'What fun!\' said the King, \'that only makes the world you fly.</p><p>I could shut up like telescopes: this time with the Queen in front of them, with her arms round it as far as they all stopped and looked into its eyes again, to see some meaning in it.\' The jury all brightened up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; don\'t be nervous, or I\'ll have you executed on the floor, and a large cat which was full of the thing at all. \'But perhaps it was empty: she did not get hold of this sort of.</p><p>Cheshire Cat: now I shall be late!\' (when she thought to herself, and once she remembered having seen in her own child-life, and the jury asked. \'That I can\'t put it into his plate. Alice did not get hold of anything, but she got into the sky all the right way of expressing yourself.\' The baby grunted again, and put back into the air, mixed up with the other: the only difficulty was, that anything that looked like the tone of great relief. \'Call the first to speak. \'What size do you want to.</p>', 1, NULL, 'default', NULL, 'published', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(6, 'Blog', '<p>---</p>', 1, NULL, 'blog-sidebar', NULL, 'published', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(7, 'FAQs', '<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>', 1, NULL, 'default', NULL, 'published', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(8, 'Contact', '<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>', 1, NULL, 'full-width', NULL, 'published', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(9, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', NULL, 'published', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(10, 'Affiliate', '<p>Cheshire Cat,\' said Alice: \'besides, that\'s not a VERY unpleasant state of mind, she turned the corner, but the Hatter replied. \'Of course you know what a Gryphon is, look at it!\' This speech caused a remarkable sensation among the trees, a little shriek and a scroll of parchment in the air. She did not quite know what to uglify is, you know. Come on!\' So they went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was very uncomfortable, and, as the doubled-up.</p><p>I dare say there may be ONE.\' \'One, indeed!\' said Alice, who was a long and a Dodo, a Lory and an old crab, HE was.\' \'I never thought about it,\' said Five, \'and I\'ll tell him--it was for bringing the cook took the hookah into its eyes were nearly out of the Mock Turtle. \'Certainly not!\' said Alice indignantly, and she thought to herself in the newspapers, at the time he had to double themselves up and say \"Who am I then? Tell me that first, and then, if I only wish it was,\' he said. (Which he.</p><p>WOULD go with the Dormouse. \'Fourteenth of March, I think you\'d take a fancy to herself \'Now I can say.\' This was not a VERY unpleasant state of mind, she turned to the other side of WHAT?\' thought Alice to herself, \'I wish you were INSIDE, you might catch a bad cold if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Well, then,\' the Cat again, sitting on a crimson velvet cushion; and, last of all this time, as it spoke. \'As wet as ever,\' said Alice in a.</p><p>March Hare. \'Sixteenth,\' added the Gryphon, half to herself, and nibbled a little pattering of feet on the back. At last the Mouse, frowning, but very politely: \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' She had not as yet had any sense, they\'d take the hint; but the Dormouse go on till you come to an end! \'I wonder what they said. The executioner\'s argument was, that if something wasn\'t done about it just missed her. Alice caught the.</p>', 1, NULL, 'default', NULL, 'published', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(11, 'Career', '<p>March Hare will be much the same thing as \"I sleep when I got up and said, \'It WAS a narrow escape!\' said Alice, \'how am I to get out again. Suddenly she came up to her ear, and whispered \'She\'s under sentence of execution. Then the Queen in front of the others all joined in chorus, \'Yes, please do!\' pleaded Alice. \'And be quick about it,\' added the March Hare. \'Then it ought to be in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they walked off together. Alice laughed so.</p><p>Caterpillar sternly. \'Explain yourself!\' \'I can\'t help it,\' said the Duchess, \'as pigs have to go on crying in this way! Stop this moment, and fetch me a pair of gloves and a pair of white kid gloves while she remembered trying to touch her. \'Poor little thing!\' said Alice, looking down at her own children. \'How should I know?\' said Alice, whose thoughts were still running on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, who was trembling down to her very.</p><p>March Hare had just succeeded in getting its body tucked away, comfortably enough, under her arm, and timidly said \'Consider, my dear: she is such a puzzled expression that she was now more than Alice could only hear whispers now and then; such as, \'Sure, I don\'t take this child away with me,\' thought Alice, and, after folding his arms and legs in all directions, \'just like a writing-desk?\' \'Come, we shall have to beat them off, and that is rather a hard word, I will just explain to you never.</p><p>I wish you wouldn\'t squeeze so.\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke, and then she remembered the number of changes she had nibbled some more bread-and-butter--\' \'But what am I to get into her eyes--and still as she ran; but the tops of the others looked round also, and all the players, except the King, and the March Hare, who had been to the end of the players to be true): If she should meet the real Mary Ann, what ARE you doing out here? Run home this.</p>', 1, NULL, 'default', NULL, 'published', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(12, 'Coming soon', '<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2026-08-02 09:15:37\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>', 1, NULL, 'coming-soon', NULL, 'published', '2025-08-02 02:15:37', '2025-08-02 02:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) NOT NULL,
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `charge_id` varchar(191) DEFAULT NULL,
  `payment_channel` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT 0.00,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(60) DEFAULT 'pending',
  `payment_type` varchar(191) DEFAULT 'confirm',
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_logs`
--

CREATE TABLE `payment_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(191) NOT NULL,
  `request` longtext DEFAULT NULL,
  `response` longtext DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1863, NULL, '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(2, 'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 1964, NULL, '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(3, 'The Top 2020 Handbag Trends to Know', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 1686, NULL, '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(4, 'How to Match the Color of Your Handbag With an Outfit', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 1321, NULL, '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(5, 'How to Care for Leather Bags', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 2170, NULL, '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 528, NULL, '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(7, 'Essential Qualities of Highly Successful Music', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 2269, NULL, '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(8, '9 Things I Love About Shaving My Head', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 916, NULL, '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(9, 'Why Teamwork Really Makes The Dream Work', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 384, NULL, '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(10, 'The World Caters to Average People', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/10.jpg', 2386, NULL, '2025-08-02 02:15:36', '2025-08-02 02:15:36');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(11, 'The litigants on the screen are not actors', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 1918, NULL, '2025-08-02 02:15:36', '2025-08-02 02:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES
(1, 1),
(3, 1),
(1, 2),
(4, 2),
(2, 3),
(3, 3),
(2, 4),
(3, 4),
(1, 5),
(4, 5),
(1, 6),
(4, 6),
(2, 7),
(3, 7),
(1, 8),
(4, 8),
(1, 9),
(4, 9),
(2, 10),
(3, 10),
(2, 11),
(3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `push_notifications`
--

CREATE TABLE `push_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'general',
  `target_type` varchar(191) DEFAULT NULL,
  `target_value` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `image_url` varchar(191) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `status` varchar(191) NOT NULL DEFAULT 'sent',
  `sent_count` int(11) NOT NULL DEFAULT 0,
  `failed_count` int(11) NOT NULL DEFAULT 0,
  `delivered_count` int(11) NOT NULL DEFAULT 0,
  `read_count` int(11) NOT NULL DEFAULT 0,
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_notification_recipients`
--

CREATE TABLE `push_notification_recipients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `push_notification_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `device_token` varchar(191) DEFAULT NULL,
  `platform` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`fcm_response`)),
  `error_message` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) NOT NULL,
  `revisionable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}', 'Admin users role', 1, 1, 1, '2025-08-02 02:15:35', '2025-08-02 02:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'media_random_hash', '9d606d847e8792ee6a6a9dbc8eeb5f71', NULL, '2025-09-16 17:35:37'),
(2, 'api_enabled', '0', NULL, '2025-09-16 17:35:37'),
(3, 'activated_plugins', '[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"magic\"]', NULL, '2025-09-16 17:35:37'),
(4, 'analytics_dashboard_widgets', '0', '2025-08-02 02:14:51', '2025-09-16 17:35:37'),
(5, 'enable_recaptcha_botble_contact_forms_fronts_contact_form', '1', '2025-08-02 02:14:52', '2025-09-16 17:35:37'),
(6, 'api_layer_api_key', '', NULL, '2025-09-16 17:35:37'),
(9, 'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form', '1', '2025-08-02 02:14:56', '2025-09-16 17:35:37'),
(10, 'payment_cod_fee_type', 'fixed', NULL, '2025-09-16 17:35:37'),
(11, 'payment_bank_transfer_fee_type', 'fixed', NULL, '2025-09-16 17:35:37'),
(12, 'theme', 'martfury', NULL, '2025-09-16 17:35:37'),
(13, 'show_admin_bar', '1', NULL, '2025-09-16 17:35:37'),
(14, 'language_hide_default', '1', NULL, '2025-09-16 17:35:37'),
(15, 'language_switcher_display', 'dropdown', NULL, '2025-09-16 17:35:37'),
(16, 'language_display', 'all', NULL, '2025-09-16 17:35:37'),
(17, 'language_hide_languages', '[]', NULL, '2025-09-16 17:35:37'),
(18, 'simple_slider_using_assets', '0', NULL, '2025-09-16 17:35:37'),
(19, 'admin_favicon', 'general/favicon.png', NULL, '2025-09-16 17:35:37'),
(20, 'admin_logo', 'general/logo-light.png', NULL, '2025-09-16 17:35:37'),
(21, 'payment_cod_status', '1', NULL, '2025-09-16 17:35:37'),
(22, 'payment_bank_transfer_status', '1', NULL, '2025-09-16 17:35:37'),
(23, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, '2025-09-16 17:35:37'),
(24, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 69270 213 19.', NULL, '2025-09-16 17:35:37'),
(25, 'payment_stripe_payment_type', 'stripe_checkout', NULL, '2025-09-16 17:35:37'),
(26, 'plugins_ecommerce_customer_new_order_status', '0', NULL, '2025-09-16 17:35:37'),
(27, 'plugins_ecommerce_admin_new_order_status', '0', NULL, '2025-09-16 17:35:37'),
(28, 'ecommerce_is_enabled_support_digital_products', '1', NULL, '2025-09-16 17:35:37'),
(29, 'ecommerce_enable_license_codes_for_digital_products', '1', NULL, '2025-09-16 17:35:37'),
(30, 'ecommerce_auto_complete_digital_orders_after_payment', '1', NULL, '2025-09-16 17:35:37'),
(31, 'ecommerce_load_countries_states_cities_from_location_plugin', '0', NULL, '2025-09-16 17:35:37'),
(32, 'ecommerce_product_sku_format', 'SF-2443-%s%s%s%s', NULL, '2025-09-16 17:35:37'),
(33, 'ecommerce_store_order_prefix', 'SF', NULL, '2025-09-16 17:35:37'),
(34, 'ecommerce_enable_product_specification', '1', NULL, '2025-09-16 17:35:37'),
(35, 'payment_bank_transfer_display_bank_info_at_the_checkout_success_page', '1', NULL, '2025-09-16 17:35:37'),
(36, 'payment_cod_logo', 'payments/cod.png', NULL, '2025-09-16 17:35:37'),
(37, 'payment_bank_transfer_logo', 'payments/bank-transfer.png', NULL, '2025-09-16 17:35:37'),
(38, 'payment_stripe_logo', 'payments/stripe.webp', NULL, '2025-09-16 17:35:37'),
(39, 'payment_paypal_logo', 'payments/paypal.png', NULL, '2025-09-16 17:35:37'),
(40, 'payment_mollie_logo', 'payments/mollie.png', NULL, '2025-09-16 17:35:37'),
(41, 'payment_paystack_logo', 'payments/paystack.png', NULL, '2025-09-16 17:35:37'),
(42, 'payment_razorpay_logo', 'payments/razorpay.png', NULL, '2025-09-16 17:35:37'),
(43, 'payment_sslcommerz_logo', 'payments/sslcommerz.png', NULL, '2025-09-16 17:35:37'),
(44, 'permalink-botble-blog-models-post', 'blog', NULL, '2025-09-16 17:35:37'),
(45, 'permalink-botble-blog-models-category', 'blog', NULL, '2025-09-16 17:35:37'),
(46, 'ecommerce_store_name', 'Martfury', NULL, '2025-09-16 17:35:37'),
(47, 'ecommerce_store_phone', '1800979769', NULL, '2025-09-16 17:35:37'),
(48, 'ecommerce_store_address', '502 New Street', NULL, '2025-09-16 17:35:37'),
(49, 'ecommerce_store_state', 'Brighton VIC', NULL, '2025-09-16 17:35:37'),
(50, 'ecommerce_store_city', 'Brighton VIC', NULL, '2025-09-16 17:35:37'),
(51, 'ecommerce_store_country', 'AU', NULL, '2025-09-16 17:35:37'),
(52, 'theme-martfury-site_title', 'MartFury - Laravel Ecommerce system', NULL, '2025-09-16 17:35:37'),
(53, 'theme-martfury-seo_description', 'MartFury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, MartFury will make your online store look more impressive and attractive to viewers.', NULL, '2025-09-16 17:35:37'),
(54, 'theme-martfury-copyright', '© %Y MartFury. All Rights Reserved.', NULL, '2025-09-16 17:35:37'),
(55, 'theme-martfury-favicon', 'general/favicon.png', NULL, '2025-09-16 17:35:37'),
(56, 'theme-martfury-logo', 'general/logo.png', NULL, '2025-09-16 17:35:37'),
(57, 'theme-martfury-welcome_message', 'Welcome to MartFury Online Shopping Store!', NULL, '2025-09-16 17:35:37'),
(58, 'theme-martfury-address', '502 New Street, Brighton VIC, Australia', NULL, '2025-09-16 17:35:37'),
(59, 'theme-martfury-hotline', '1800 97 97 69', NULL, '2025-09-16 17:35:37'),
(60, 'theme-martfury-email', 'contact@martfury.co', NULL, '2025-09-16 17:35:37'),
(61, 'theme-martfury-newsletter_image', 'general/newsletter.jpg', NULL, '2025-09-16 17:35:37'),
(62, 'theme-martfury-homepage_id', '1', NULL, '2025-09-16 17:35:37'),
(63, 'theme-martfury-blog_page_id', '6', NULL, '2025-09-16 17:35:37'),
(64, 'theme-martfury-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, '2025-09-16 17:35:37'),
(65, 'theme-martfury-cookie_consent_learn_more_url', '/cookie-policy', NULL, '2025-09-16 17:35:37'),
(66, 'theme-martfury-cookie_consent_learn_more_text', 'Cookie Policy', NULL, '2025-09-16 17:35:37'),
(67, 'theme-martfury-number_of_products_per_page', '42', NULL, '2025-09-16 17:35:37'),
(68, 'theme-martfury-product_feature_1_title', 'Shipping worldwide', NULL, '2025-09-16 17:35:37'),
(69, 'theme-martfury-product_feature_1_icon', 'icon-network', NULL, '2025-09-16 17:35:37'),
(70, 'theme-martfury-product_feature_2_title', 'Free 7-day return if eligible, so easy', NULL, '2025-09-16 17:35:37'),
(71, 'theme-martfury-product_feature_2_icon', 'icon-3d-rotate', NULL, '2025-09-16 17:35:37'),
(72, 'theme-martfury-product_feature_3_title', 'Supplier give bills for this product.', NULL, '2025-09-16 17:35:37'),
(73, 'theme-martfury-product_feature_3_icon', 'icon-receipt', NULL, '2025-09-16 17:35:37'),
(74, 'theme-martfury-product_feature_4_title', 'Pay online or when receiving goods', NULL, '2025-09-16 17:35:37'),
(75, 'theme-martfury-product_feature_4_icon', 'icon-credit-card', NULL, '2025-09-16 17:35:37'),
(76, 'theme-martfury-contact_info_box_1_title', 'Contact Directly', NULL, '2025-09-16 17:35:37'),
(77, 'theme-martfury-contact_info_box_1_subtitle', 'contact@martfury.com', NULL, '2025-09-16 17:35:37'),
(78, 'theme-martfury-contact_info_box_1_details', '(+004) 912-3548-07', NULL, '2025-09-16 17:35:37'),
(79, 'theme-martfury-contact_info_box_2_title', 'Headquarters', NULL, '2025-09-16 17:35:37'),
(80, 'theme-martfury-contact_info_box_2_subtitle', '17 Queen St, South bank, Melbourne 10560, Australia', NULL, '2025-09-16 17:35:37'),
(81, 'theme-martfury-contact_info_box_2_details', '', NULL, '2025-09-16 17:35:37'),
(82, 'theme-martfury-contact_info_box_3_title', 'Work With Us', NULL, '2025-09-16 17:35:37'),
(83, 'theme-martfury-contact_info_box_3_subtitle', 'Send your CV to our email:', NULL, '2025-09-16 17:35:37'),
(84, 'theme-martfury-contact_info_box_3_details', 'career@martfury.com', NULL, '2025-09-16 17:35:37'),
(85, 'theme-martfury-contact_info_box_4_title', 'Customer Service', NULL, '2025-09-16 17:35:37'),
(86, 'theme-martfury-contact_info_box_4_subtitle', 'customercare@martfury.com', NULL, '2025-09-16 17:35:37'),
(87, 'theme-martfury-contact_info_box_4_details', '(800) 843-2446', NULL, '2025-09-16 17:35:37'),
(88, 'theme-martfury-contact_info_box_5_title', 'Media Relations', NULL, '2025-09-16 17:35:37'),
(89, 'theme-martfury-contact_info_box_5_subtitle', 'media@martfury.com', NULL, '2025-09-16 17:35:37'),
(90, 'theme-martfury-contact_info_box_5_details', '(801) 947-3564', NULL, '2025-09-16 17:35:37'),
(91, 'theme-martfury-contact_info_box_6_title', 'Vendor Support', NULL, '2025-09-16 17:35:37'),
(92, 'theme-martfury-contact_info_box_6_subtitle', 'vendorsupport@martfury.com', NULL, '2025-09-16 17:35:37'),
(93, 'theme-martfury-contact_info_box_6_details', '(801) 947-3100', NULL, '2025-09-16 17:35:37'),
(94, 'theme-martfury-number_of_cross_sale_product', '7', NULL, '2025-09-16 17:35:37'),
(95, 'theme-martfury-logo_in_the_checkout_page', 'general/logo-dark.png', NULL, '2025-09-16 17:35:37'),
(96, 'theme-martfury-logo_in_invoices', 'general/logo-dark.png', NULL, '2025-09-16 17:35:37'),
(97, 'theme-martfury-logo_vendor_dashboard', 'general/logo-dark.png', NULL, '2025-09-16 17:35:37'),
(98, 'theme-martfury-primary_font', 'Work Sans', NULL, '2025-09-16 17:35:37'),
(99, 'theme-martfury-payment_methods', '[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]', NULL, '2025-09-16 17:35:37'),
(100, 'theme-martfury-social_links', '[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]', NULL, '2025-09-16 17:35:37'),
(101, 'theme-martfury-social_sharing', '[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]', NULL, '2025-09-16 17:35:37'),
(102, 'theme-martfury-lazy_load_images', '1', NULL, '2025-09-16 17:35:37'),
(103, 'theme-martfury-lazy_load_placeholder_image', 'general/placeholder.png', NULL, '2025-09-16 17:35:37'),
(104, 'membership_authorization_at', '2025-09-16 17:32:37', NULL, '2025-09-16 17:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `key` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider', 'home-slider', 'The main slider on homepage', 'published', '2025-08-02 02:15:37', '2025-08-02 02:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `image` varchar(191) NOT NULL,
  `link` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Slider 1', 'sliders/1-lg.jpg', '/products', NULL, 1, '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(2, 1, 'Slider 2', 'sliders/2-lg.jpg', '/products', NULL, 2, '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(3, 1, 'Slider 3', 'sliders/3-lg.jpg', '/products', NULL, 3, '2025-08-02 02:15:37', '2025-08-02 02:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'fashion-live', 1, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(2, 'hand-crafted', 2, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(3, 'mestonix', 3, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(4, 'sunshine', 4, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(5, 'pure', 5, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(6, 'anfold', 6, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(7, 'automotive', 7, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2025-08-02 02:14:57', '2025-08-02 02:14:57'),
(8, 'hot-promotions', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(9, 'electronics', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(10, 'consumer-electronic', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(11, 'home-audio-theaters', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(12, 'tv-videos', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(13, 'camera-photos-videos', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(14, 'cellphones-accessories', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(15, 'headphones', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(16, 'videos-games', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(17, 'wireless-speakers', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(18, 'office-electronic', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(19, 'accessories-parts', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(20, 'digital-cables', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(21, 'audio-video-cables', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(22, 'batteries', 15, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(23, 'clothing', 16, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(24, 'computers', 17, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(25, 'computer-technologies', 18, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(26, 'computer-tablets', 19, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(27, 'laptop', 20, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(28, 'monitors', 21, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(29, 'computer-components', 22, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(30, 'networking', 23, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(31, 'drive-storages', 24, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(32, 'gaming-laptop', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(33, 'security-protection', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(34, 'accessories', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(35, 'home-kitchen', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(36, 'health-beauty', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(37, 'jewelry-watch', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(38, 'technology-toys', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(39, 'phones', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(40, 'babies-moms', 33, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(41, 'sport-outdoor', 34, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(42, 'books-office', 35, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(43, 'cars-motorcycles', 36, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(44, 'home-improvements', 37, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-08-02 02:14:58', '2025-08-02 02:14:58'),
(45, 'smart-home-speaker', 1, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(46, 'headphone-ultra-bass', 2, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(47, 'boxed-bluetooth-headphone', 3, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(48, 'camera-samsung-ss-24-digital', 4, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:25', '2025-08-02 02:15:44'),
(49, 'macbook-pro-2015', 5, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(50, 'apple-watch-serial-7', 6, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(51, 'macbook-pro-13-inch', 7, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(52, 'apple-keyboard-digital', 8, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:25', '2025-08-02 02:15:44'),
(53, 'macsafe-80w', 9, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(54, 'hand-playstation', 10, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(55, 'apple-airpods-serial-3', 11, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:25', '2025-08-02 02:15:25'),
(56, 'cool-smart-watches-digital', 12, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:44'),
(57, 'black-smart-watches', 13, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(58, 'leather-watch-in-black', 14, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(59, 'macbook-pro-2015-13-inch', 15, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(60, 'historic-alarm-clock-digital', 16, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:44'),
(61, 'black-glasses', 17, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(62, 'phillips-mouse', 18, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(63, 'gaming-keyboard', 19, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(64, 'wireless-keyboard-digital', 20, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:44'),
(65, 'black-smart-watches', 21, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(66, 'smart-home-speaker', 22, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(67, 'headphone-ultra-bass', 23, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(68, 'boxed-bluetooth-headphone-digital', 24, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:44'),
(69, 'camera-samsung-ss-24', 25, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(70, 'leather-watch-in-black', 26, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(71, 'apple-iphone-13-plus', 27, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(72, 'macbook-pro-2015-digital', 28, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:44'),
(73, 'apple-watch-serial-7', 29, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(74, 'macbook-pro-13-inch', 30, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(75, 'apple-keyboard', 31, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(76, 'macsafe-80w-digital', 32, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:44'),
(77, 'hand-playstation', 33, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(78, 'apple-airpods-serial-3', 34, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(79, 'cool-smart-watches', 35, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(80, 'black-smart-watches-digital', 36, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:44'),
(81, 'leather-watch-in-black', 37, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(82, 'macbook-pro-2015-13-inch', 38, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(83, 'sony-wh-1000xm4-wireless-headphones', 39, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(84, 'samsung-galaxy-s22-ultra-digital', 40, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:44'),
(85, 'dell-xps-15-laptop', 41, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(86, 'ipad-pro-129-inch', 42, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(87, 'bose-quietcomfort-earbuds', 43, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(88, 'lg-oled-c1-series-tv-digital', 44, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:44'),
(89, 'dyson-v11-vacuum-cleaner', 45, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(90, 'nintendo-switch-oled-model', 46, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(91, 'canon-eos-r5-camera', 47, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(92, 'fitbit-sense-smartwatch-digital', 48, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:44'),
(93, 'sonos-beam-soundbar', 49, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(94, 'logitech-mx-master-3-mouse', 50, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(95, 'kindle-paperwhite-e-reader', 51, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(96, 'gopro-hero10-black-digital', 52, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:44'),
(97, 'anker-powercore-power-bank', 53, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(98, 'product-54', 54, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:26', '2025-08-02 02:15:26'),
(99, 'electronic', 1, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(100, 'mobile', 2, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(101, 'iphone', 3, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(102, 'printer', 4, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(103, 'office', 5, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(104, 'it', 6, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2025-08-02 02:15:34', '2025-08-02 02:15:34'),
(105, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(106, 'fashion', 2, 'Botble\\Blog\\Models\\Category', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(107, 'electronic', 3, 'Botble\\Blog\\Models\\Category', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(108, 'commercial', 4, 'Botble\\Blog\\Models\\Category', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(109, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(110, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(111, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(112, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(113, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(114, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Botble\\Blog\\Models\\Post', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(115, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Botble\\Blog\\Models\\Post', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(116, 'the-top-2020-handbag-trends-to-know', 3, 'Botble\\Blog\\Models\\Post', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(117, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Botble\\Blog\\Models\\Post', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(118, 'how-to-care-for-leather-bags', 5, 'Botble\\Blog\\Models\\Post', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(119, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Botble\\Blog\\Models\\Post', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(120, 'essential-qualities-of-highly-successful-music', 7, 'Botble\\Blog\\Models\\Post', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(121, '9-things-i-love-about-shaving-my-head', 8, 'Botble\\Blog\\Models\\Post', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(122, 'why-teamwork-really-makes-the-dream-work', 9, 'Botble\\Blog\\Models\\Post', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(123, 'the-world-caters-to-average-people', 10, 'Botble\\Blog\\Models\\Post', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(124, 'the-litigants-on-the-screen-are-not-actors', 11, 'Botble\\Blog\\Models\\Post', 'blog', '2025-08-02 02:15:36', '2025-08-02 02:15:39'),
(125, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(126, 'about-us', 2, 'Botble\\Page\\Models\\Page', '', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(127, 'terms-of-use', 3, 'Botble\\Page\\Models\\Page', '', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(128, 'terms-conditions', 4, 'Botble\\Page\\Models\\Page', '', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(129, 'refund-policy', 5, 'Botble\\Page\\Models\\Page', '', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(130, 'blog', 6, 'Botble\\Page\\Models\\Page', '', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(131, 'faqs', 7, 'Botble\\Page\\Models\\Page', '', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(132, 'contact', 8, 'Botble\\Page\\Models\\Page', '', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(133, 'cookie-policy', 9, 'Botble\\Page\\Models\\Page', '', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(134, 'affiliate', 10, 'Botble\\Page\\Models\\Page', '', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(135, 'career', 11, 'Botble\\Page\\Models\\Page', '', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(136, 'coming-soon', 12, 'Botble\\Page\\Models\\Page', '', '2025-08-02 02:15:37', '2025-08-02 02:15:37'),
(137, 'gopro', 1, 'Botble\\Marketplace\\Models\\Store', 'stores', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(138, 'global-office', 2, 'Botble\\Marketplace\\Models\\Store', 'stores', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(139, 'young-shop', 3, 'Botble\\Marketplace\\Models\\Store', 'stores', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(140, 'global-store', 4, 'Botble\\Marketplace\\Models\\Store', 'stores', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(141, 'roberts-store', 5, 'Botble\\Marketplace\\Models\\Store', 'stores', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(142, 'stouffer', 6, 'Botble\\Marketplace\\Models\\Store', 'stores', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(143, 'starkist', 7, 'Botble\\Marketplace\\Models\\Store', 'stores', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(144, 'old-el-paso', 8, 'Botble\\Marketplace\\Models\\Store', 'stores', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(145, 'tyson', 9, 'Botble\\Marketplace\\Models\\Store', 'stores', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(146, 'smart-home-speaker', 55, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(147, 'smart-home-speaker', 56, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(148, 'smart-home-speaker', 57, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(149, 'headphone-ultra-bass', 58, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(150, 'boxed-bluetooth-headphone', 59, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(151, 'boxed-bluetooth-headphone', 60, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(152, 'macbook-pro-2015', 61, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(153, 'macbook-pro-2015', 62, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(154, 'macbook-pro-13-inch', 63, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(155, 'macbook-pro-13-inch', 64, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(156, 'macbook-pro-13-inch', 65, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(157, 'macsafe-80w', 66, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(158, 'macsafe-80w', 67, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(159, 'black-smart-watches', 68, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(160, 'leather-watch-in-black', 69, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(161, 'leather-watch-in-black', 70, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(162, 'leather-watch-in-black', 71, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(163, 'leather-watch-in-black', 72, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(164, 'historic-alarm-clock-digital', 73, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(165, 'black-glasses', 74, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(166, 'black-glasses', 75, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(167, 'phillips-mouse', 76, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(168, 'wireless-keyboard-digital', 77, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(169, 'wireless-keyboard-digital', 78, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(170, 'wireless-keyboard-digital', 79, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(171, 'wireless-keyboard-digital', 80, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(172, 'wireless-keyboard-digital', 81, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(173, 'smart-home-speaker', 82, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(174, 'leather-watch-in-black', 83, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(175, 'leather-watch-in-black', 84, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(176, 'macbook-pro-2015-digital', 85, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(177, 'macbook-pro-2015-digital', 86, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(178, 'apple-watch-serial-7', 87, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(179, 'apple-watch-serial-7', 88, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(180, 'macbook-pro-13-inch', 89, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(181, 'macbook-pro-13-inch', 90, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(182, 'macbook-pro-13-inch', 91, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(183, 'macsafe-80w-digital', 92, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(184, 'macsafe-80w-digital', 93, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(185, 'apple-airpods-serial-3', 94, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(186, 'apple-airpods-serial-3', 95, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(187, 'cool-smart-watches', 96, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(188, 'cool-smart-watches', 97, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(189, 'sony-wh-1000xm4-wireless-headphones', 98, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(190, 'sony-wh-1000xm4-wireless-headphones', 99, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(191, 'sony-wh-1000xm4-wireless-headphones', 100, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(192, 'sony-wh-1000xm4-wireless-headphones', 101, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(193, 'samsung-galaxy-s22-ultra-digital', 102, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(194, 'samsung-galaxy-s22-ultra-digital', 103, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(195, 'dell-xps-15-laptop', 104, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(196, 'dell-xps-15-laptop', 105, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(197, 'bose-quietcomfort-earbuds', 106, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(198, 'bose-quietcomfort-earbuds', 107, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(199, 'lg-oled-c1-series-tv-digital', 108, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(200, 'lg-oled-c1-series-tv-digital', 109, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(201, 'lg-oled-c1-series-tv-digital', 110, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(202, 'lg-oled-c1-series-tv-digital', 111, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(203, 'nintendo-switch-oled-model', 112, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(204, 'nintendo-switch-oled-model', 113, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(205, 'canon-eos-r5-camera', 114, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(206, 'canon-eos-r5-camera', 115, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(207, 'sonos-beam-soundbar', 116, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(208, 'sonos-beam-soundbar', 117, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(209, 'sonos-beam-soundbar', 118, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(210, 'sonos-beam-soundbar', 119, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(211, 'logitech-mx-master-3-mouse', 120, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(212, 'logitech-mx-master-3-mouse', 121, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(213, 'logitech-mx-master-3-mouse', 122, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(214, 'anker-powercore-power-bank', 123, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44'),
(215, 'anker-powercore-power-bank', 124, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-08-02 02:15:44', '2025-08-02 02:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `slugs_translations`
--

CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `slugs_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `prefix` varchar(120) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(191) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `token` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `abbreviation` varchar(10) DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states_translations`
--

CREATE TABLE `states_translations` (
  `lang_code` varchar(20) NOT NULL,
  `states_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `abbreviation` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-08-02 02:15:36', '2025-08-02 02:15:36'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2025-08-02 02:15:36', '2025-08-02 02:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) NOT NULL,
  `tags_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'dimagitalmedia@gmail.com', NULL, NULL, '$2y$12$zDZKvMcs4pHbkqYmGDFnn.vqFfRxmFmBFB3573FfupLwdoqEBlZWm', NULL, '2025-09-16 17:32:25', '2025-09-16 17:32:25', 'Dimagital Media', 'And Technologies Pvt. Ltd.', 'dimagitalmedia', NULL, 1, 1, NULL, '2025-09-16 17:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`value`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'CustomMenuWidget', 'footer_sidebar', 'martfury', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(2, 'CustomMenuWidget', 'footer_sidebar', 'martfury', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(3, 'CustomMenuWidget', 'footer_sidebar', 'martfury', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(4, 'BlogSearchWidget', 'primary_sidebar', 'martfury', 1, '{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(5, 'BlogCategoriesWidget', 'primary_sidebar', 'martfury', 2, '{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(6, 'RecentPostsWidget', 'primary_sidebar', 'martfury', 3, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(7, 'TagsWidget', 'primary_sidebar', 'martfury', 4, '{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(8, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 1, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(9, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 2, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(10, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 3, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(11, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 4, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}', '2025-08-02 02:15:40', '2025-08-02 02:15:40'),
(12, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 5, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}', '2025-08-02 02:15:40', '2025-08-02 02:15:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `ads_translations`
--
ALTER TABLE `ads_translations`
  ADD PRIMARY KEY (`lang_code`,`ads_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_status_index` (`status`),
  ADD KEY `categories_created_at_index` (`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_slug_unique` (`slug`),
  ADD KEY `idx_cities_name` (`name`),
  ADD KEY `idx_cities_state_status` (`state_id`,`status`),
  ADD KEY `idx_cities_status` (`status`),
  ADD KEY `idx_cities_state_id` (`state_id`);

--
-- Indexes for table `cities_translations`
--
ALTER TABLE `cities_translations`
  ADD PRIMARY KEY (`lang_code`,`cities_id`),
  ADD KEY `idx_cities_trans_city_lang` (`cities_id`,`lang_code`),
  ADD KEY `idx_cities_trans_name` (`name`),
  ADD KEY `idx_cities_trans_cities_id` (`cities_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields_translations`
--
ALTER TABLE `contact_custom_fields_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_fields_id`);

--
-- Indexes for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_field_options_translations`
--
ALTER TABLE `contact_custom_field_options_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_countries_name` (`name`),
  ADD KEY `idx_countries_status` (`status`);

--
-- Indexes for table `countries_translations`
--
ALTER TABLE `countries_translations`
  ADD PRIMARY KEY (`lang_code`,`countries_id`),
  ADD KEY `idx_countries_trans_country_lang` (`countries_id`,`lang_code`),
  ADD KEY `idx_countries_trans_name` (`name`),
  ADD KEY `idx_countries_trans_countries_id` (`countries_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `device_tokens`
--
ALTER TABLE `device_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `device_tokens_token_unique` (`token`),
  ADD KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  ADD KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  ADD KEY `device_tokens_is_active_index` (`is_active`);

--
-- Indexes for table `ec_abandoned_carts`
--
ALTER TABLE `ec_abandoned_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_abandoned_carts_abandoned_at_is_recovered_index` (`abandoned_at`,`is_recovered`),
  ADD KEY `ec_abandoned_carts_created_at_is_recovered_index` (`created_at`,`is_recovered`),
  ADD KEY `ec_abandoned_carts_customer_id_index` (`customer_id`),
  ADD KEY `ec_abandoned_carts_session_id_index` (`session_id`),
  ADD KEY `ec_abandoned_carts_email_index` (`email`),
  ADD KEY `ec_abandoned_carts_recovered_order_id_index` (`recovered_order_id`);

--
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_brands_translations`
--
ALTER TABLE `ec_brands_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_brands_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_deletion_requests`
--
ALTER TABLE `ec_customer_deletion_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_customer_recently_viewed_products`
--
ALTER TABLE `ec_customer_recently_viewed_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_used_coupons`
--
ALTER TABLE `ec_customer_used_coupons`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_categories`
--
ALTER TABLE `ec_discount_product_categories`
  ADD PRIMARY KEY (`discount_id`,`product_category_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_flash_sales_translations`
--
ALTER TABLE `ec_flash_sales_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_flash_sales_id`);

--
-- Indexes for table `ec_global_options`
--
ALTER TABLE `ec_global_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_global_options_translations`
--
ALTER TABLE `ec_global_options_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_global_options_id`);

--
-- Indexes for table `ec_global_option_value`
--
ALTER TABLE `ec_global_option_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_global_option_value_translations`
--
ALTER TABLE `ec_global_option_value_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_global_option_value_id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_invoices`
--
ALTER TABLE `ec_invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_invoices_code_unique` (`code`),
  ADD KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  ADD KEY `ec_invoices_payment_id_index` (`payment_id`),
  ADD KEY `ec_invoices_status_index` (`status`);

--
-- Indexes for table `ec_invoice_items`
--
ALTER TABLE `ec_invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`);

--
-- Indexes for table `ec_options`
--
ALTER TABLE `ec_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_options_translations`
--
ALTER TABLE `ec_options_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_options_id`);

--
-- Indexes for table `ec_option_value`
--
ALTER TABLE `ec_option_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_option_value_translations`
--
ALTER TABLE `ec_option_value_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_option_value_id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_orders_code_unique` (`code`),
  ADD KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_referrals`
--
ALTER TABLE `ec_order_referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_order_referrals_order_id_index` (`order_id`);

--
-- Indexes for table `ec_order_returns`
--
ALTER TABLE `ec_order_returns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_order_returns_code_unique` (`code`);

--
-- Indexes for table `ec_order_return_histories`
--
ALTER TABLE `ec_order_return_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_return_items`
--
ALTER TABLE `ec_order_return_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_tax_information`
--
ALTER TABLE `ec_order_tax_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_order_tax_information_order_id_index` (`order_id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  ADD KEY `sale_type_index` (`sale_type`),
  ADD KEY `start_date_index` (`start_date`),
  ADD KEY `end_date_index` (`end_date`),
  ADD KEY `sale_price_index` (`sale_price`),
  ADD KEY `is_variation_index` (`is_variation`),
  ADD KEY `ec_products_sku_index` (`sku`),
  ADD KEY `idx_variation_name_id` (`is_variation`,`name`,`id`),
  ADD KEY `idx_store_variation_status` (`store_id`,`is_variation`,`status`);

--
-- Indexes for table `ec_products_translations`
--
ALTER TABLE `ec_products_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_products_id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_set_status_index` (`attribute_set_id`),
  ADD KEY `idx_attribute_set_id` (`attribute_set_id`),
  ADD KEY `idx_attribute_set_order_id` (`attribute_set_id`,`order`,`id`);

--
-- Indexes for table `ec_product_attributes_translations`
--
ALTER TABLE `ec_product_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attributes_id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_id` (`order`,`id`);

--
-- Indexes for table `ec_product_attribute_sets_translations`
--
ALTER TABLE `ec_product_attribute_sets_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  ADD KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`),
  ADD KEY `idx_categories_status_order` (`status`,`order`),
  ADD KEY `idx_categories_order` (`order`);

--
-- Indexes for table `ec_product_categories_translations`
--
ALTER TABLE `ec_product_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_categories_id`);

--
-- Indexes for table `ec_product_categorizables`
--
ALTER TABLE `ec_product_categorizables`
  ADD PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  ADD KEY `ec_product_categorizables_category_id_index` (`category_id`),
  ADD KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  ADD KEY `ec_product_categorizables_reference_type_index` (`reference_type`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`),
  ADD KEY `idx_product_category_composite` (`product_id`,`category_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collections_translations`
--
ALTER TABLE `ec_product_collections_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_collections_id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`product_id`,`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_files`
--
ALTER TABLE `ec_product_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_files_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_labels_translations`
--
ALTER TABLE `ec_product_labels_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_labels_id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_license_codes`
--
ALTER TABLE `ec_product_license_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_license_codes_product_id_status_index` (`product_id`,`status`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_specification_attribute`
--
ALTER TABLE `ec_product_specification_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tags_translations`
--
ALTER TABLE `ec_product_tags_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_tags_id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  ADD KEY `configurable_product_index` (`product_id`,`configurable_product_id`),
  ADD KEY `idx_configurable_product_id` (`configurable_product_id`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  ADD KEY `attribute_variation_index` (`attribute_id`,`variation_id`),
  ADD KEY `idx_variation_id` (`variation_id`),
  ADD KEY `idx_variation_attribute_covering` (`variation_id`,`attribute_id`);

--
-- Indexes for table `ec_product_views`
--
ALTER TABLE `ec_product_views`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  ADD KEY `ec_product_views_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`product_id`,`attribute_set_id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  ADD KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  ADD KEY `review_relation_index` (`product_id`,`customer_id`,`status`);

--
-- Indexes for table `ec_review_replies`
--
ALTER TABLE `ec_review_replies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`);

--
-- Indexes for table `ec_shared_wishlists`
--
ALTER TABLE `ec_shared_wishlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_specification_attributes`
--
ALTER TABLE `ec_specification_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Indexes for table `ec_specification_attributes_translations`
--
ALTER TABLE `ec_specification_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`);

--
-- Indexes for table `ec_specification_groups`
--
ALTER TABLE `ec_specification_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Indexes for table `ec_specification_groups_translations`
--
ALTER TABLE `ec_specification_groups_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_specification_groups_id`);

--
-- Indexes for table `ec_specification_tables`
--
ALTER TABLE `ec_specification_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Indexes for table `ec_specification_tables_translations`
--
ALTER TABLE `ec_specification_tables_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_specification_tables_id`);

--
-- Indexes for table `ec_specification_table_group`
--
ALTER TABLE `ec_specification_table_group`
  ADD PRIMARY KEY (`table_id`,`group_id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes_translations`
--
ALTER TABLE `ec_taxes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_taxes_id`);

--
-- Indexes for table `ec_tax_products`
--
ALTER TABLE `ec_tax_products`
  ADD PRIMARY KEY (`product_id`,`tax_id`),
  ADD KEY `ec_tax_products_tax_id_index` (`tax_id`),
  ADD KEY `ec_tax_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_tax_rules`
--
ALTER TABLE `ec_tax_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  ADD PRIMARY KEY (`customer_id`,`product_id`),
  ADD KEY `wishlist_relation_index` (`product_id`,`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs_translations`
--
ALTER TABLE `faqs_translations`
  ADD PRIMARY KEY (`lang_code`,`faqs_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories_translations`
--
ALTER TABLE `faq_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`faq_categories_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_locale_index` (`lang_locale`),
  ADD KEY `lang_code_index` (`lang_code`),
  ADD KEY `lang_is_default_index` (`lang_is_default`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`),
  ADD KEY `meta_code_index` (`lang_meta_code`),
  ADD KEY `meta_origin_index` (`lang_meta_origin`),
  ADD KEY `meta_reference_type_index` (`reference_type`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `reference_type` (`reference_type`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_category_sale_commissions`
--
ALTER TABLE `mp_category_sale_commissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`);

--
-- Indexes for table `mp_customer_revenues`
--
ALTER TABLE `mp_customer_revenues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_customer_withdrawals`
--
ALTER TABLE `mp_customer_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_messages`
--
ALTER TABLE `mp_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_stores`
--
ALTER TABLE `mp_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_stores_translations`
--
ALTER TABLE `mp_stores_translations`
  ADD PRIMARY KEY (`lang_code`,`mp_stores_id`);

--
-- Indexes for table `mp_vendor_info`
--
ALTER TABLE `mp_vendor_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_user_id_index` (`user_id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_logs`
--
ALTER TABLE `payment_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_status_index` (`status`),
  ADD KEY `posts_author_id_index` (`author_id`),
  ADD KEY `posts_author_type_index` (`author_type`),
  ADD KEY `posts_created_at_index` (`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD KEY `post_categories_category_id_index` (`category_id`),
  ADD KEY `post_categories_post_id_index` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_tag_id_index` (`tag_id`),
  ADD KEY `post_tags_post_id_index` (`post_id`);

--
-- Indexes for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  ADD KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  ADD KEY `push_notifications_created_by_index` (`created_by`);

--
-- Indexes for table `push_notification_recipients`
--
ALTER TABLE `push_notification_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  ADD KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  ADD KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  ADD KEY `pnr_status_index` (`status`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugs_reference_id_index` (`reference_id`),
  ADD KEY `slugs_key_index` (`key`),
  ADD KEY `slugs_prefix_index` (`prefix`),
  ADD KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  ADD KEY `idx_slugs_reference` (`reference_type`,`reference_id`);

--
-- Indexes for table `slugs_translations`
--
ALTER TABLE `slugs_translations`
  ADD PRIMARY KEY (`lang_code`,`slugs_id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  ADD KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  ADD KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `states_slug_unique` (`slug`),
  ADD KEY `idx_states_name` (`name`),
  ADD KEY `idx_states_status` (`status`),
  ADD KEY `idx_states_country_id` (`country_id`);

--
-- Indexes for table `states_translations`
--
ALTER TABLE `states_translations`
  ADD PRIMARY KEY (`lang_code`,`states_id`),
  ADD KEY `idx_states_trans_state_lang` (`states_id`,`lang_code`),
  ADD KEY `idx_states_trans_name` (`name`),
  ADD KEY `idx_states_trans_states_id` (`states_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  ADD KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  ADD KEY `user_settings_key_index` (`key`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `device_tokens`
--
ALTER TABLE `device_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_abandoned_carts`
--
ALTER TABLE `ec_abandoned_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ec_customer_deletion_requests`
--
ALTER TABLE `ec_customer_deletion_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_customer_recently_viewed_products`
--
ALTER TABLE `ec_customer_recently_viewed_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_global_options`
--
ALTER TABLE `ec_global_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_global_option_value`
--
ALTER TABLE `ec_global_option_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_invoices`
--
ALTER TABLE `ec_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_invoice_items`
--
ALTER TABLE `ec_invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_options`
--
ALTER TABLE `ec_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_option_value`
--
ALTER TABLE `ec_option_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_referrals`
--
ALTER TABLE `ec_order_referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_returns`
--
ALTER TABLE `ec_order_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_return_histories`
--
ALTER TABLE `ec_order_return_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_return_items`
--
ALTER TABLE `ec_order_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_tax_information`
--
ALTER TABLE `ec_order_tax_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_files`
--
ALTER TABLE `ec_product_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_license_codes`
--
ALTER TABLE `ec_product_license_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `ec_product_views`
--
ALTER TABLE `ec_product_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `ec_review_replies`
--
ALTER TABLE `ec_review_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shared_wishlists`
--
ALTER TABLE `ec_shared_wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_specification_attributes`
--
ALTER TABLE `ec_specification_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ec_specification_groups`
--
ALTER TABLE `ec_specification_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_specification_tables`
--
ALTER TABLE `ec_specification_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_tax_rules`
--
ALTER TABLE `ec_tax_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `mp_category_sale_commissions`
--
ALTER TABLE `mp_category_sale_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_customer_revenues`
--
ALTER TABLE `mp_customer_revenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_customer_withdrawals`
--
ALTER TABLE `mp_customer_withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_messages`
--
ALTER TABLE `mp_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_stores`
--
ALTER TABLE `mp_stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mp_vendor_info`
--
ALTER TABLE `mp_vendor_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_logs`
--
ALTER TABLE `payment_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `push_notifications`
--
ALTER TABLE `push_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_notification_recipients`
--
ALTER TABLE `push_notification_recipients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
