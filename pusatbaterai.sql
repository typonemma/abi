-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Bulan Mei 2022 pada 16.09
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pusatbaterai`
--
CREATE DATABASE IF NOT EXISTS `pusatbaterai` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pusatbaterai`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ads`
--

DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ads`
--

INSERT INTO `ads` (`id`, `title`, `image`, `section`, `url`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(4, 'left_right', '/public/uploads/1644285710-h-250-Screenshot_1.png', '', 'https://www.facebook.com/', '2022-02-08', '2022-02-15', '1', '2022-02-07 19:01:52', '2022-02-07 19:01:52'),
(5, 'left_top', '/public/uploads/ads1.jpg', '', '#', '2022-02-18', '2030-02-18', '1', '2022-02-18 13:14:20', '2022-02-18 13:14:20'),
(6, 'left_bottom', '/public/uploads/ads2.jpg', '', '#', '2022-02-18', '2030-02-18', '1', '2022-02-18 13:14:20', '2022-02-18 13:14:20'),
(7, 'right_top', '/public/uploads/ads2.jpg', '', '#', '2022-02-18', '2030-02-18', '1', '2022-02-18 13:14:20', '2022-02-18 13:14:20'),
(8, 'right_bottom', '/public/uploads/ads1.jpg', '', '#', '2022-02-18', '2030-02-18', '1', '2022-02-18 13:14:20', '2022-02-18 13:14:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `api_tokens`
--

DROP TABLE IF EXISTS `api_tokens`;
CREATE TABLE `api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `permissions` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `date`, `total`) VALUES
(57, 11, '2022-05-04', 1050000),
(58, 15, '2022-05-04', 0),
(59, 16, '2022-05-08', 0),
(57, 11, '2022-05-04', 1050000),
(58, 15, '2022-05-04', 0),
(59, 16, '2022-05-08', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart_detail`
--

DROP TABLE IF EXISTS `cart_detail`;
CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `price`, `quantity`, `subtotal`) VALUES
(114, 57, 2, 350000, 3, 1050000),
(114, 57, 2, 350000, 3, 1050000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `target` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `compatibility`
--

DROP TABLE IF EXISTS `compatibility`;
CREATE TABLE `compatibility` (
  `id` bigint(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `brand_id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('0','1') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `compatibility`
--

INSERT INTO `compatibility` (`id`, `product_id`, `brand_id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(15, 2, 3, '312.jkl', '1', '2022-04-20 08:00:47', '2022-04-20 08:00:47'),
(16, 2, 4, 'test2', '0', '2022-04-20 08:01:53', '2022-04-20 08:02:27'),
(17, 7, 3, 'khagirhag', '1', '2022-04-25 03:46:53', '2022-04-25 03:47:28'),
(18, 7, 4, 'test2', '0', '2022-04-25 07:10:52', '2022-04-25 07:35:38'),
(19, 7, 3, 'test1', '0', '2022-04-25 07:36:01', '2022-04-25 07:36:32'),
(20, 7, 3, 'aiwhthy', '0', '2022-04-26 04:55:06', '2022-04-26 04:55:06'),
(21, 7, 3, 'test', '0', '2022-04-26 04:55:29', '2022-04-26 20:49:15'),
(23, 2, 3, 'test3', '0', '2022-04-28 06:22:49', '2022-04-28 06:22:49'),
(24, 2, 3, 'test4', '0', '2022-04-28 06:22:57', '2022-04-28 06:22:57'),
(25, 2, 3, 'test5', '0', '2022-04-28 06:23:03', '2022-04-28 06:23:03'),
(26, 2, 3, 'test6', '0', '2022-04-28 06:23:11', '2022-04-28 06:23:11'),
(27, 2, 3, 'test7', '0', '2022-04-28 06:23:18', '2022-04-28 06:23:18'),
(28, 2, 3, 'test8', '0', '2022-04-28 06:23:25', '2022-04-28 06:23:25'),
(29, 2, 3, 'test9', '0', '2022-04-28 06:23:33', '2022-04-28 06:23:33'),
(30, 2, 3, 'test10', '0', '2022-04-28 06:23:40', '2022-04-28 06:23:40'),
(31, 2, 3, 'test11', '0', '2022-04-28 06:24:41', '2022-04-28 06:24:41'),
(32, 2, 3, 'test12', '0', '2022-04-28 06:24:47', '2022-04-28 06:24:47'),
(33, 2, 3, 'test13', '0', '2022-04-28 06:24:54', '2022-04-28 06:24:54'),
(34, 2, 3, '1', '1', '2022-04-28 06:25:48', '2022-04-28 06:25:48'),
(35, 2, 3, '2', '1', '2022-04-28 06:26:03', '2022-04-28 06:26:08'),
(36, 2, 3, '3', '1', '2022-04-28 06:26:15', '2022-04-28 06:26:15'),
(37, 2, 3, '4', '1', '2022-04-28 06:26:21', '2022-04-28 06:26:21'),
(38, 2, 3, '5', '1', '2022-04-28 06:26:28', '2022-04-28 06:26:28'),
(39, 2, 3, '6', '1', '2022-04-28 06:26:35', '2022-04-28 06:26:35'),
(40, 2, 3, '7', '1', '2022-04-28 06:26:42', '2022-04-28 06:26:42'),
(41, 2, 3, '8', '1', '2022-04-28 06:26:50', '2022-04-28 06:26:50'),
(42, 2, 3, '9', '1', '2022-04-28 06:27:02', '2022-04-28 06:27:02'),
(43, 2, 3, '10', '1', '2022-04-28 06:27:09', '2022-04-28 06:27:09'),
(44, 2, 3, 'comps', '0', '2022-05-09 23:46:01', '2022-05-09 23:47:30'),
(45, 23, 3, 'khagirhaj', '0', '2022-05-10 05:04:20', '2022-05-10 05:04:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `custom_currency_values`
--

DROP TABLE IF EXISTS `custom_currency_values`;
CREATE TABLE `custom_currency_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `download_extras`
--

DROP TABLE IF EXISTS `download_extras`;
CREATE TABLE `download_extras` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_bank`
--

DROP TABLE IF EXISTS `list_bank`;
CREATE TABLE `list_bank` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `nomor_rekening` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `list_bank`
--

INSERT INTO `list_bank` (`id`, `title`, `nomor_rekening`, `content`, `created_at`, `updated_at`) VALUES
(1, 'BCA - Cabang : HR Muhammad Surabaya demo selasa', '8290332959', 'Raffles Indonesia, CV', NULL, NULL),
(2, 'BCA - Cabang : Surabaya', '8290871281', 'Benny Widjaja', NULL, NULL),
(3, 'MANDIRI (Rp) - Cabang : Kusuma Bangsa - Surabaya', '140-00-1051414-0', 'Oei Hwang Ie al Benny Widjaja', NULL, NULL),
(12, 'Bank coba baru - Cabang : coba', 'coba baru123456789', 'coba baru', NULL, NULL),
(15, 'bank coba baru selasa kamis ini', '12345987607', 'coba baru selasa kamis', NULL, NULL),
(20, 'coba bank buat neext page', '12312131132', 'coba aja', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'bank coba selasa 2', '12345987607', 'bank coba selasa 2', '2022-04-25 23:15:03', '2022-04-25 23:15:03'),
(24, 'coba selasa 3 ini update', '12345987607', 'coba selasa ini', '2022-04-25 23:26:54', '2022-04-25 23:26:54'),
(26, 'coba mepet field 2', '12345987607', 'coba mepet field 2', '2022-04-27 01:13:42', '2022-04-27 01:13:42'),
(30, 'coba jumat 2', '12345987607', 'coba jumat 2 3', '2022-05-13 06:47:59', '2022-05-13 06:47:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_bestsellerproducts`
--

DROP TABLE IF EXISTS `list_bestsellerproducts`;
CREATE TABLE `list_bestsellerproducts` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(100) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `list_bestsellerproducts`
--

INSERT INTO `list_bestsellerproducts` (`id`, `foto`, `kategori`, `nama`, `harga`, `keterangan`) VALUES
(1, 'adaptor.jpg', 'POWER ADAPTOR', 'CHARGER ASUS A4555L', 250000, 'Mollis nec consequat at In feugiat mole stie tortor a malesuada'),
(2, 'adaptor.jpg', 'POWER ADAPTOR', 'CHARGER ASUS A4555L', 250000, 'Mollis nec consequat at In feugiat mole stie tortor a malesuada'),
(3, 'adaptor.jpg', 'POWER ADAPTOR', 'CHARGER ASUS A4555L', 250000, 'Mollis nec consequat at In feugiat mole stie tortor a malesuada'),
(4, 'adaptor.jpg', 'POWER ADAPTOR', 'CHARGER ASUS A4555L', 250000, 'Mollis nec consequat at In feugiat mole stie tortor a malesuada'),
(5, 'adaptor.jpg', 'POWER ADAPTOR', 'CHARGER ASUS A4555L', 250000, 'Mollis nec consequat at In feugiat mole stie tortor a malesuada'),
(6, 'adaptor.jpg', 'POWER ADAPTOR', 'CHARGER ASUS A4555L', 250000, 'Mollis nec consequat at In feugiat mole stie tortor a malesuada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_relatedblog`
--

DROP TABLE IF EXISTS `list_relatedblog`;
CREATE TABLE `list_relatedblog` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `list_relatedblog`
--

INSERT INTO `list_relatedblog` (`id`, `foto`, `tanggal`, `judul`, `keterangan`) VALUES
(1, 'blog1.jpg', 'APR 07 / 15', 'CARA MERAWAT KEYBOARD', 'Etiam mollis tristique mi ac ultrices. Morbi vel neque eget lacus'),
(2, 'blog2.jpg', 'APR 07 / 15', 'Mengapa Laptop Bisa', 'Etiam mollis tristique mi ac ultrices. Morbi vel neque eget lacus'),
(3, 'blog3.jpg', 'APR 07 / 15', 'Ternyata Engsel Laptop', 'Etiam mollis tristique mi ac ultrices. Morbi vel neque eget lacus'),
(4, 'blog3.jpg', 'APR 07 / 15', 'terbaru 4', 'Etiam mollis tristique mi ac ultrices. Morbi vel neque eget lacus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manage_languages`
--

DROP TABLE IF EXISTS `manage_languages`;
CREATE TABLE `manage_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_sample_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `default_lang` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `manage_languages`
--

INSERT INTO `manage_languages` (`id`, `lang_name`, `lang_code`, `lang_sample_img`, `status`, `default_lang`, `created_at`, `updated_at`) VALUES
(1, 'english', 'en', 'en_lang_sample_img.png', 1, 1, '2019-11-03 23:03:55', '2019-11-03 23:03:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_000036_create_api_tokens_table', 1),
(3, '2014_10_12_263536_create_order_products_table', 1),
(4, '2015_12_05_184931_create_roles_table', 1),
(5, '2015_12_05_185011_create_role_user_table', 1),
(6, '2015_12_05_190659_create_options_table', 1),
(7, '2016_01_01_022900_create_posts_table', 1),
(8, '2016_01_01_022900_create_products_table', 1),
(9, '2016_01_01_022956_create_post_extras_table', 1),
(10, '2016_01_01_022956_create_product_extras_table', 1),
(11, '2016_01_17_181505_create_object_relationships_table', 1),
(12, '2016_05_12_015250_create_orders_items_table', 1),
(13, '2016_06_04_053757_create_save_custom_designs_table', 1),
(14, '2016_06_15_182116_create_users_custom_designs_table', 1),
(15, '2016_10_02_061320_create_users_details_table', 1),
(16, '2016_10_07_023527_create_manage_languages_table', 1),
(17, '2016_11_28_173526_create_user_role_permissions_table', 1),
(18, '2017_01_06_185011_create_vendor_announcements_table', 1),
(19, '2017_02_07_173536_create_comments_table', 1),
(20, '2017_02_09_173636_create_subscriptions_table', 1),
(21, '2017_02_09_173736_create_request_products_table', 1),
(22, '2017_05_23_153636_create_term_extras_table', 1),
(23, '2017_05_23_173636_create_terms_table', 1),
(24, '2017_09_22_172636_create_download_extras_table', 1),
(25, '2017_11_18_1726459_create_vendor_withdraws_table', 1),
(26, '2017_12_03_172638_create_vendor_packages_table', 1),
(27, '2017_12_26_172638_create_vendor_orders_table', 1),
(28, '2018_01_01_172638_create_custom_currency_values_table', 1),
(29, '2018_01_01_172638_create_vendor_totals_table', 1),
(34, '2022_01_24_131127_create_ads_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `object_relationships`
--

DROP TABLE IF EXISTS `object_relationships`;
CREATE TABLE `object_relationships` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `object_relationships`
--

INSERT INTO `object_relationships` (`term_id`, `object_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2022-02-07 21:34:38', '2022-02-07 21:34:38'),
(4, 6, '2022-04-25 23:38:01', '2022-04-25 23:38:01'),
(4, 7, '2022-04-25 23:37:42', '2022-04-25 23:37:42'),
(5, 3, '2022-04-19 00:22:42', '2022-04-19 00:22:42'),
(5, 4, '2022-04-25 23:38:26', '2022-04-25 23:38:26'),
(6, 5, '2022-04-25 23:38:13', '2022-04-25 23:38:13'),
(9, 2, '2022-02-07 21:34:38', '2022-02-07 21:34:38'),
(10, 2, '2022-02-07 21:34:38', '2022-02-07 21:34:38'),
(12, 2, '2022-02-07 21:34:38', '2022-02-07 21:34:38'),
(12, 3, '2022-04-19 00:22:42', '2022-04-19 00:22:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `options`
--

INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1, '_shipping_method_data', 'a:4:{s:15:\"shipping_option\";a:2:{s:15:\"enable_shipping\";s:0:\"\";s:12:\"display_mode\";s:13:\"radio_buttons\";}s:9:\"flat_rate\";a:3:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:9:\"Flat Rate\";s:11:\"method_cost\";s:0:\"\";}s:13:\"free_shipping\";a:3:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:13:\"Free Shipping\";s:12:\"order_amount\";s:0:\"\";}s:14:\"local_delivery\";a:4:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:14:\"Local Delivery\";s:8:\"fee_type\";s:0:\"\";s:12:\"delivery_fee\";s:0:\"\";}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55'),
(2, '_settings_data', 'a:1:{s:16:\"general_settings\";a:10:{s:15:\"general_options\";a:5:{s:10:\"site_title\";s:7:\"Shopist\";s:13:\"email_address\";s:20:\"yourEmail@domain.com\";s:9:\"site_logo\";s:0:\"\";s:31:\"allow_registration_for_frontend\";b:1;s:26:\"default_role_slug_for_site\";s:9:\"site-user\";}s:13:\"taxes_options\";a:3:{s:13:\"enable_status\";i:0;s:13:\"apply_tax_for\";s:0:\"\";s:10:\"tax_amount\";s:0:\"\";}s:16:\"checkout_options\";a:2:{s:17:\"enable_guest_user\";b:1;s:17:\"enable_login_user\";b:1;}s:29:\"downloadable_products_options\";a:3:{s:17:\"login_restriction\";b:0;s:31:\"grant_access_from_thankyou_page\";b:1;s:23:\"grant_access_from_email\";b:0;}s:17:\"recaptcha_options\";a:7:{s:32:\"enable_recaptcha_for_admin_login\";b:0;s:31:\"enable_recaptcha_for_user_login\";b:0;s:38:\"enable_recaptcha_for_user_registration\";b:0;s:33:\"enable_recaptcha_for_vendor_login\";b:0;s:40:\"enable_recaptcha_for_vendor_registration\";b:0;s:20:\"recaptcha_secret_key\";s:0:\"\";s:18:\"recaptcha_site_key\";s:0:\"\";}s:19:\"nexmo_config_option\";a:6:{s:19:\"enable_nexmo_option\";b:0;s:9:\"nexmo_key\";s:0:\"\";s:12:\"nexmo_secret\";s:0:\"\";s:9:\"number_to\";s:0:\"\";s:11:\"number_from\";s:0:\"\";s:7:\"message\";s:0:\"\";}s:19:\"fixer_config_option\";a:1:{s:20:\"fixer_api_access_key\";s:0:\"\";}s:16:\"currency_options\";a:7:{s:13:\"currency_name\";s:3:\"USD\";s:17:\"currency_position\";s:4:\"left\";s:18:\"thousand_separator\";s:1:\",\";s:17:\"decimal_separator\";s:1:\".\";s:18:\"number_of_decimals\";s:1:\"2\";s:26:\"currency_conversion_method\";s:0:\"\";s:17:\"frontend_currency\";a:4:{i:0;s:3:\"USD\";i:1;s:3:\"GBP\";i:2;s:3:\"BDT\";i:3;s:3:\"EUR\";}}s:19:\"date_format_options\";a:1:{s:11:\"date_format\";s:5:\"Y-m-d\";}s:25:\"default_frontend_currency\";a:5:{i:0;s:3:\"AUD\";i:1;s:3:\"EUR\";i:2;s:3:\"GBP\";i:3;s:3:\"USD\";i:4;s:3:\"BDT\";}}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55'),
(3, '_custom_designer_settings_data', 'a:1:{s:16:\"general_settings\";a:1:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55'),
(4, '_payment_method_data', 'a:6:{s:14:\"payment_option\";a:1:{s:21:\"enable_payment_method\";s:0:\"\";}s:4:\"bacs\";a:5:{s:13:\"enable_option\";s:3:\"yes\";s:12:\"method_title\";s:20:\"Direct Bank Transfer\";s:18:\"method_description\";s:173:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won\'t be shipped until the funds have cleared in our account.\";s:19:\"method_instructions\";s:173:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won\'t be shipped until the funds have cleared in our account.\";s:15:\"account_details\";a:6:{s:12:\"account_name\";s:20:\"HR Muhammad Surabaya\";s:14:\"account_number\";s:10:\"8290332959\";s:9:\"bank_name\";s:12:\"BCA - Cabang\";s:10:\"short_code\";s:3:\"BCA\";s:4:\"iban\";N;s:5:\"swift\";N;}}s:3:\"cod\";a:4:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:16:\"Cash on Delivery\";s:18:\"method_description\";s:28:\"Pay with cash upon delivery.\";s:19:\"method_instructions\";s:28:\"Pay with cash upon delivery.\";}s:6:\"paypal\";a:6:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:6:\"Paypal\";s:16:\"paypal_client_id\";s:0:\"\";s:13:\"paypal_secret\";s:0:\"\";s:28:\"paypal_sandbox_enable_option\";s:3:\"yes\";s:18:\"method_description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";}s:6:\"stripe\";a:8:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:6:\"Stripe\";s:15:\"test_secret_key\";s:0:\"\";s:20:\"test_publishable_key\";s:0:\"\";s:15:\"live_secret_key\";s:0:\"\";s:20:\"live_publishable_key\";s:0:\"\";s:25:\"stripe_test_enable_option\";s:3:\"yes\";s:18:\"method_description\";s:49:\"Stripe is a simple way to accept payments online.\";}s:9:\"2checkout\";a:7:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:9:\"2Checkout\";s:8:\"sellerId\";s:0:\"\";s:14:\"publishableKey\";s:0:\"\";s:10:\"privateKey\";s:0:\"\";s:21:\"sandbox_enable_option\";s:3:\"yes\";s:18:\"method_description\";s:52:\"2Checkout is a simple way to accept payments online.\";}}', '2019-11-03 23:03:55', '2022-03-17 22:52:57'),
(5, '_appearance_tab_data', 'a:7:{s:8:\"settings\";s:71:\"{\"header_slider_images_and_text\":{\"slider_images\":[],\"slider_text\":[]}}\";s:16:\"settings_details\";a:4:{s:7:\"general\";a:20:{s:10:\"custom_css\";b:0;s:13:\"body_bg_color\";s:6:\"d2d6de\";s:16:\"filter_price_min\";i:0;s:16:\"filter_price_max\";i:1000;s:22:\"sidebar_panel_bg_color\";s:6:\"f2f0f1\";s:30:\"sidebar_panel_title_text_color\";s:6:\"333333\";s:44:\"sidebar_panel_title_text_bottom_border_color\";s:6:\"1fc0a0\";s:34:\"sidebar_panel_title_text_font_size\";i:14;s:32:\"sidebar_panel_content_text_color\";s:6:\"333333\";s:36:\"sidebar_panel_content_text_font_size\";i:12;s:20:\"product_box_bg_color\";s:6:\"f2f0f1\";s:24:\"product_box_border_color\";s:6:\"e1e1e1\";s:22:\"product_box_text_color\";s:6:\"333333\";s:26:\"product_box_text_font_size\";i:13;s:24:\"product_box_btn_bg_color\";s:6:\"1fc0a0\";s:27:\"product_box_btn_hover_color\";s:6:\"e1e1e1\";s:14:\"btn_text_color\";s:6:\"FFFFFF\";s:20:\"btn_hover_text_color\";s:6:\"444444\";s:26:\"selected_menu_border_color\";s:6:\"1fc0a0\";s:32:\"pages_content_title_border_color\";s:6:\"1fc0a0\";}s:14:\"header_details\";a:12:{s:17:\"slider_visibility\";b:1;s:10:\"custom_css\";b:0;s:31:\"header_top_gradient_start_color\";s:6:\"272727\";s:29:\"header_top_gradient_end_color\";s:6:\"272727\";s:34:\"header_bottom_gradient_start_color\";s:6:\"1e1e1e\";s:32:\"header_bottom_gradient_end_color\";s:6:\"1e1e1e\";s:17:\"header_text_color\";s:6:\"B4B1AB\";s:16:\"header_text_size\";s:2:\"14\";s:23:\"header_text_hover_color\";s:6:\"d2404d\";s:29:\"header_selected_menu_bg_color\";s:6:\"C0C0C0\";s:31:\"header_selected_menu_text_color\";s:6:\"d2404d\";s:13:\"header_slogan\";s:23:\"Default welcome message\";}s:12:\"home_details\";a:2:{s:19:\"cat_list_to_display\";a:0:{}s:30:\"cat_collection_list_to_display\";a:0:{}}s:14:\"footer_details\";a:2:{s:27:\"footer_about_us_description\";s:21:\"Your description here\";s:13:\"follow_us_url\";a:7:{s:2:\"fb\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:8:\"dribbble\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"youtube\";s:0:\"\";}}}s:6:\"header\";s:9:\"ice-cream\";s:4:\"home\";s:8:\"customfy\";s:8:\"products\";s:5:\"crazy\";s:14:\"single_product\";s:5:\"crazy\";s:5:\"blogs\";s:5:\"crazy\";}', '2019-11-03 23:03:55', '2022-01-23 23:42:21'),
(6, '_permissions_files_list', 'a:40:{s:17:\"pages_list_access\";s:17:\"Pages list access\";s:21:\"add_edit_delete_pages\";s:21:\"Add/edit/delete pages\";s:17:\"list_blogs_access\";s:16:\"Blog list access\";s:20:\"add_edit_delete_blog\";s:20:\"Add/edit/delete blog\";s:18:\"blog_comments_list\";s:20:\"Blog comments access\";s:22:\"blog_categories_access\";s:31:\"Add/edit/delete blog categories\";s:23:\"testimonial_list_access\";s:23:\"Testimonial list access\";s:27:\"add_edit_delete_testimonial\";s:27:\"Add/edit/delete testimonial\";s:18:\"brands_list_access\";s:25:\"Manufacturers list access\";s:22:\"add_edit_delete_brands\";s:29:\"Add/edit/delete manufacturers\";s:15:\"manage_seo_full\";s:22:\"Manage SEO full access\";s:20:\"products_list_access\";s:20:\"Products list access\";s:23:\"add_edit_delete_product\";s:23:\"Add/edit/delete product\";s:25:\"product_categories_access\";s:35:\"Add/edit/delete products categories\";s:19:\"product_tags_access\";s:29:\"Add/edit/delete products tags\";s:25:\"product_attributes_access\";s:35:\"Add/edit/delete products attributes\";s:21:\"product_colors_access\";s:31:\"Add/edit/delete products colors\";s:20:\"product_sizes_access\";s:30:\"Add/edit/delete products sizes\";s:29:\"products_comments_list_access\";s:29:\"Products comments list access\";s:18:\"manage_orders_list\";s:25:\"Manage orders list access\";s:19:\"manage_reports_list\";s:26:\"Manage reports list access\";s:19:\"vendors_list_access\";s:19:\"Vendors list access\";s:23:\"vendors_withdraw_access\";s:23:\"Vendors withdraw access\";s:29:\"vendors_refund_request_access\";s:29:\"Vendors refund request access\";s:30:\"vendors_earning_reports_access\";s:30:\"Vendors earning reports access\";s:27:\"vendors_announcement_access\";s:27:\"Vendors announcement access\";s:15:\"vendor_settings\";s:8:\"settings\";s:28:\"vendors_packages_full_access\";s:33:\"Vendors packages menu full access\";s:28:\"vendors_packages_list_access\";s:28:\"Vendors packages list access\";s:30:\"vendors_packages_create_access\";s:30:\"Vendors packages create access\";s:34:\"manage_shipping_method_menu_access\";s:34:\"Manage shipping method full access\";s:33:\"manage_payment_method_menu_access\";s:33:\"Manage payment method full access\";s:36:\"manage_designer_elements_menu_access\";s:43:\"Manage custom designer elements full access\";s:25:\"manage_coupon_menu_access\";s:33:\"Manage coupon manager full access\";s:27:\"manage_settings_menu_access\";s:27:\"Manage settings full access\";s:36:\"manage_requested_product_menu_access\";s:35:\"Manage request products full access\";s:31:\"manage_subscription_menu_access\";s:31:\"Manage subscription full access\";s:28:\"manage_extra_features_access\";s:33:\"Manage extra features full access\";s:20:\"product_brand_access\";s:20:\"Product Brand Access\";s:14:\"pages_bank_lis\";s:15:\"Pages Bank List\";}', '2019-11-03 23:03:55', '2019-11-03 23:03:55'),
(7, '_seo_data', 'a:1:{s:8:\"meta_tag\";a:2:{s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55'),
(8, '_subscription_data', 'a:1:{s:9:\"mailchimp\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"list_id\";s:0:\"\";}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55'),
(9, '_subscription_settings_data', 'a:9:{s:23:\"subscription_visibility\";b:1;s:14:\"subscribe_type\";s:9:\"mailchimp\";s:17:\"subscribe_options\";s:10:\"name_email\";s:14:\"popup_bg_color\";s:6:\"f5f5f5\";s:13:\"popup_content\";s:0:\"\";s:18:\"popup_display_page\";a:2:{i:0;s:4:\"home\";i:1;s:4:\"shop\";}s:18:\"subscribe_btn_text\";s:13:\"Subscribe Now\";s:37:\"subscribe_popup_cookie_set_visibility\";b:1;s:31:\"subscribe_popup_cookie_set_text\";s:31:\"No thanks, i am not interested!\";}', '2019-11-03 23:03:55', '2019-11-03 23:03:55'),
(10, '_vendor_settings_data', 'a:1:{s:17:\"term_n_conditions\";s:222:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.\";}', '2019-11-03 23:03:55', '2019-11-03 23:03:55'),
(11, '_emails_notification_data', 'a:10:{s:9:\"new_order\";a:5:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:36:\"Your order receipt from #date_place#\";s:13:\"email_heading\";s:24:\"Thank you for your order\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";s:17:\"selected_template\";s:10:\"template-3\";}s:15:\"cancelled_order\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:15:\"Cancelled order\";s:13:\"email_heading\";s:15:\"Cancelled order\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:15:\"processed_order\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:35:\"Order #order_id# has been Processed\";s:13:\"email_heading\";s:15:\"Processed order\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:15:\"completed_order\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:33:\"Your Order #order_id# is complete\";s:13:\"email_heading\";s:22:\"Your order is complete\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:20:\"new_customer_account\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:28:\"Successfully created account\";s:13:\"email_heading\";s:24:\"Customer account created\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:18:\"vendor_new_account\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:28:\"Successfully created account\";s:13:\"email_heading\";s:22:\"Vendor account created\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:25:\"vendor_account_activation\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:14:\"account status\";s:13:\"email_heading\";s:25:\"Vendor account activation\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:23:\"vendor_withdraw_request\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:40:\"Your Request for Withdrawal was Received\";s:13:\"email_heading\";s:16:\"Withdraw request\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:33:\"vendor_withdraw_request_cancelled\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:35:\"Withdraw request has been cancelled\";s:13:\"email_heading\";s:0:\"\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:33:\"vendor_withdraw_request_completed\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:35:\"Withdraw request has been completed\";s:13:\"email_heading\";s:0:\"\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55'),
(12, '_menu_data', '[{\"status\":\"enable\",\"label\":\"home|simple##0\"},{\"status\":\"enable\",\"label\":\"collection|simple##0\"},{\"status\":\"enable\",\"label\":\"products|simple##0\"},{\"status\":\"enable\",\"label\":\"checkout|simple##0\"},{\"status\":\"enable\",\"label\":\"cart|simple##0\"},{\"status\":\"enable\",\"label\":\"blog|simple##0\"},{\"status\":\"enable\",\"label\":\"store_list|simple##0\"},{\"status\":\"enable\",\"label\":\"pages|simple##0\"}]', '2019-11-03 23:03:55', '2019-11-03 23:03:55'),
(13, '_product_compare_more_fields_name', '{\"FB884288-4AD0-4AF6-BD75-19BA103DD849\":\"List_Bank\"}', '2022-04-11 23:55:31', '2022-04-11 23:55:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_items`
--

<<<<<<< HEAD
DROP TABLE IF EXISTS `orders_items`;
=======
>>>>>>> origin/dev_bryan
CREATE TABLE `orders_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders_items`
--

INSERT INTO `orders_items` (`id`, `order_id`, `order_data`, `created_at`, `updated_at`) VALUES(16, 17, '{\"items\":[{\"product_id\":\"2\",\"name\":\"LED LCD Laptop Asus A455L\",\"quantity\":\"1\",\"price\":\"350000\",\"img_src\":\"\\/public\\/uploads\\/1647495614-h-250-lcd.jpg\",\"product_type\":\"simple_product\"}],\"details\":{\"total\":\"350000\",\"shipping_cost\":\"62000\",\"date\":\"2022-04-07\",\"status\":0,\"user_id\":\"11\"}}', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `orders_items` (`id`, `order_id`, `order_data`, `created_at`, `updated_at`) VALUES(17, 18, '{\"items\":[{\"product_id\":\"3\",\"name\":\"test\",\"quantity\":\"1\",\"price\":\"350000\",\"img_src\":\"\\/public\\/uploads\\/1647362870-h-250-gta5.jpg\",\"product_type\":\"simple_product\"}],\"details\":{\"total\":\"350000\",\"shipping_cost\":\"17000\",\"date\":\"2022-04-07\",\"status\":0,\"user_id\":\"11\"}}', '2022-04-07 07:30:05', '2022-04-07 07:30:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_products`
--

DROP TABLE IF EXISTS `order_products`;
CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES(16, 17, 2, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES(17, 18, 3, '2022-04-07 07:30:05', '2022-04-07 07:30:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_author_id` int(10) UNSIGNED NOT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `post_status` int(10) UNSIGNED NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `post_author_id`, `post_content`, `post_title`, `post_slug`, `parent_id`, `post_status`, `post_type`, `created_at`, `updated_at`) VALUES(1, 1, '&lt;p&gt;test&lt;/p&gt;', '123456', '123456', 0, 1, 'user_coupon', '2022-04-04 02:25:10', '2022-04-04 02:27:17');
INSERT INTO `posts` (`id`, `post_author_id`, `post_content`, `post_title`, `post_slug`, `parent_id`, `post_status`, `post_type`, `created_at`, `updated_at`) VALUES(16, 11, 'Customer Shop Order', 'shop order', 'shop-order', 0, 1, 'shop_order', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `posts` (`id`, `post_author_id`, `post_content`, `post_title`, `post_slug`, `parent_id`, `post_status`, `post_type`, `created_at`, `updated_at`) VALUES(17, 11, 'Customer Shop Order', 'shop order', 'shop-order', 0, 1, 'shop_order', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `posts` (`id`, `post_author_id`, `post_content`, `post_title`, `post_slug`, `parent_id`, `post_status`, `post_type`, `created_at`, `updated_at`) VALUES(18, 11, 'Customer Shop Order', 'shop order', 'shop-order', 0, 1, 'shop_order', '2022-04-07 07:30:05', '2022-04-07 07:30:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_extras`
--

CREATE TABLE `post_extras` (
  `post_extra_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `key_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `post_extras`
--

INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(1, 1, '_coupon_condition_type', 'discount_from_total_cart', '2022-04-04 02:25:10', '2022-04-04 02:27:17');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(2, 1, '_coupon_amount', '10000', '2022-04-04 02:25:10', '2022-04-04 02:27:17');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(3, 1, '_coupon_min_restriction_amount', '0', '2022-04-04 02:25:10', '2022-04-04 02:27:17');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(4, 1, '_coupon_max_restriction_amount', '10', '2022-04-04 02:25:10', '2022-04-04 02:27:17');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(5, 1, '_coupon_allow_role_name', 'site-user', '2022-04-04 02:25:10', '2022-04-04 02:27:17');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(6, 1, '_usage_limit_per_coupon', '', '2022-04-04 02:25:10', '2022-04-04 02:27:17');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(7, 1, '_usage_range_end_date', '2022-04-30', '2022-04-04 02:25:10', '2022-04-04 02:27:17');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(624, 16, '_order_currency', 'Rupiah', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(625, 16, '_customer_ip_address', '', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(626, 16, '_customer_user_agent', '', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(627, 16, '_customer_user', '', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(628, 16, '_order_shipping_cost', '62000', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(629, 16, '_final_order_shipping_cost', '62000', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(630, 16, '_order_shipping_method', 'jne', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(631, 16, '_payment_method', NULL, '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(632, 16, '_payment_method_title', 'Bank Transfer', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(633, 16, '_order_tax', '0', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(634, 16, '_final_order_tax', '0', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(635, 16, '_order_total', '350000', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(636, 16, '_final_order_total', '350000', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(637, 16, '_order_notes', '', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(638, 16, '_order_status', 'on-hold', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(639, 16, '_order_discount', '0', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(640, 16, '_final_order_discount', '0', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(641, 16, '_order_coupon_code', '', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(642, 16, '_is_order_coupon_applyed', '0', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(643, 16, '_order_process_key', '1649335604398446651779609119', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(644, 16, '_billing_title', '', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(645, 16, '_billing_first_name', NULL, '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(646, 16, '_billing_last_name', NULL, '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(647, 16, '_billing_company', '', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(648, 16, '_billing_email', 'bryanandrewwijaya2000@gmail.com', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(649, 16, '_billing_phone', NULL, '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(650, 16, '_billing_fax', '', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(651, 16, '_billing_country', 'Indonesia', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(652, 16, '_billing_address_1', NULL, '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(653, 16, '_billing_address_2', '', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(654, 16, '_billing_city', NULL, '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(655, 16, '_billing_postcode', NULL, '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(656, 16, '_shipping_title', '', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(657, 16, '_shipping_first_name', NULL, '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(658, 16, '_shipping_last_name', NULL, '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(659, 16, '_shipping_company', '', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(660, 16, '_shipping_email', 'bryanandrewwijaya2000@gmail.com', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(661, 16, '_shipping_phone', NULL, '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(662, 16, '_shipping_fax', '', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(663, 16, '_shipping_country', 'Indonesia', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(664, 16, '_shipping_address_1', NULL, '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(665, 16, '_shipping_address_2', '', '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(666, 16, '_shipping_city', NULL, '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(667, 16, '_shipping_postcode', NULL, '2022-04-07 05:46:44', '2022-04-07 05:46:44');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(668, 17, '_order_currency', 'Rupiah', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(669, 17, '_customer_ip_address', '', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(670, 17, '_customer_user_agent', '', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(671, 17, '_customer_user', '', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(672, 17, '_order_shipping_cost', '62000', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(673, 17, '_final_order_shipping_cost', '62000', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(674, 17, '_order_shipping_method', 'jne', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(675, 17, '_payment_method', NULL, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(676, 17, '_payment_method_title', 'Bank Transfer', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(677, 17, '_order_tax', '0', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(678, 17, '_final_order_tax', '0', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(679, 17, '_order_total', '350000', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(680, 17, '_final_order_total', '350000', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(681, 17, '_order_notes', '', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(682, 17, '_order_status', 'on-hold', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(683, 17, '_order_discount', '0', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(684, 17, '_final_order_discount', '0', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(685, 17, '_order_coupon_code', '', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(686, 17, '_is_order_coupon_applyed', '0', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(687, 17, '_order_process_key', '1649336832345179716253586209', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(688, 17, '_billing_title', '', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(689, 17, '_billing_first_name', NULL, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(690, 17, '_billing_last_name', NULL, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(691, 17, '_billing_company', '', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(692, 17, '_billing_email', 'bryanandrewwijaya2000@gmail.com', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(693, 17, '_billing_phone', NULL, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(694, 17, '_billing_fax', '', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(695, 17, '_billing_country', 'Indonesia', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(696, 17, '_billing_address_1', NULL, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(697, 17, '_billing_address_2', '', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(698, 17, '_billing_city', NULL, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(699, 17, '_billing_postcode', NULL, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(700, 17, '_shipping_title', '', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(701, 17, '_shipping_first_name', NULL, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(702, 17, '_shipping_last_name', NULL, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(703, 17, '_shipping_company', '', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(704, 17, '_shipping_email', 'bryanandrewwijaya2000@gmail.com', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(705, 17, '_shipping_phone', NULL, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(706, 17, '_shipping_fax', '', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(707, 17, '_shipping_country', 'Indonesia', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(708, 17, '_shipping_address_1', NULL, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(709, 17, '_shipping_address_2', '', '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(710, 17, '_shipping_city', NULL, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(711, 17, '_shipping_postcode', NULL, '2022-04-07 06:07:12', '2022-04-07 06:07:12');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(712, 18, '_order_currency', 'Rupiah', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(713, 18, '_customer_ip_address', '', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(714, 18, '_customer_user_agent', '', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(715, 18, '_customer_user', '', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(716, 18, '_order_shipping_cost', '17000', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(717, 18, '_final_order_shipping_cost', '17000', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(718, 18, '_order_shipping_method', 'jne', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(719, 18, '_payment_method', NULL, '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(720, 18, '_payment_method_title', 'Bank Transfer', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(721, 18, '_order_tax', '0', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(722, 18, '_final_order_tax', '0', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(723, 18, '_order_total', '350000', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(724, 18, '_final_order_total', '350000', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(725, 18, '_order_notes', '', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(726, 18, '_order_status', 'on-hold', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(727, 18, '_order_discount', '0', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(728, 18, '_final_order_discount', '0', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(729, 18, '_order_coupon_code', '', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(730, 18, '_is_order_coupon_applyed', '0', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(731, 18, '_order_process_key', '1649341805256226931669577135', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(732, 18, '_billing_title', '', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(733, 18, '_billing_first_name', NULL, '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(734, 18, '_billing_last_name', NULL, '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(735, 18, '_billing_company', '', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(736, 18, '_billing_email', 'bryanandrewwijaya2000@gmail.com', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(737, 18, '_billing_phone', NULL, '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(738, 18, '_billing_fax', '', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(739, 18, '_billing_country', 'Indonesia', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(740, 18, '_billing_address_1', NULL, '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(741, 18, '_billing_address_2', '', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(742, 18, '_billing_city', NULL, '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(743, 18, '_billing_postcode', NULL, '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(744, 18, '_shipping_title', '', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(745, 18, '_shipping_first_name', NULL, '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(746, 18, '_shipping_last_name', NULL, '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(747, 18, '_shipping_company', '', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(748, 18, '_shipping_email', 'bryanandrewwijaya2000@gmail.com', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(749, 18, '_shipping_phone', NULL, '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(750, 18, '_shipping_fax', '', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(751, 18, '_shipping_country', 'Indonesia', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(752, 18, '_shipping_address_1', NULL, '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(753, 18, '_shipping_address_2', '', '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(754, 18, '_shipping_city', NULL, '2022-04-07 07:30:05', '2022-04-07 07:30:05');
INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(755, 18, '_shipping_postcode', NULL, '2022-04-07 07:30:05', '2022-04-07 07:30:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `sku` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_price` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_qty` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_availability` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `author_id`, `content`, `title`, `slug`, `status`, `sku`, `regular_price`, `sale_price`, `price`, `stock_qty`, `stock_availability`, `type`, `image_url`, `created_at`, `updated_at`) VALUES(2, 1, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.&lt;br&gt;&lt;/p&gt;', 'LED LCD Laptop Asus A455L', 'led-lcd-laptop-asus-a455l', 1, '', '350000', '200000', '200000', '0', 'in_stock', 'simple_product', '', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `products` (`id`, `author_id`, `content`, `title`, `slug`, `status`, `sku`, `regular_price`, `sale_price`, `price`, `stock_qty`, `stock_availability`, `type`, `image_url`, `created_at`, `updated_at`) VALUES(3, 1, '&lt;p&gt;test&lt;/p&gt;', 'test', 'test', 1, '', '350000', '200000', '200000', '0', 'in_stock', 'simple_product', '/public/uploads/1647362870-h-250-gta5.jpg', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `products` (`id`, `author_id`, `content`, `title`, `slug`, `status`, `sku`, `regular_price`, `sale_price`, `price`, `stock_qty`, `stock_availability`, `type`, `image_url`, `created_at`, `updated_at`) VALUES(4, 1, '&lt;p&gt;test1&lt;/p&gt;', 'test1', 'test1', 1, '', '300000', '200000', '200000', '0', 'in_stock', 'simple_product', '/public/uploads/1647477039-h-250-acer.png', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `products` (`id`, `author_id`, `content`, `title`, `slug`, `status`, `sku`, `regular_price`, `sale_price`, `price`, `stock_qty`, `stock_availability`, `type`, `image_url`, `created_at`, `updated_at`) VALUES(5, 1, '&lt;p&gt;test2&lt;/p&gt;', 'test2', 'test2', 1, '', '200000', '200000', '200000', '0', 'in_stock', 'simple_product', '/public/uploads/1647477666-h-250-adaptor.jpg', '2022-03-16 17:41:44', '2022-03-16 17:42:00');
INSERT INTO `products` (`id`, `author_id`, `content`, `title`, `slug`, `status`, `sku`, `regular_price`, `sale_price`, `price`, `stock_qty`, `stock_availability`, `type`, `image_url`, `created_at`, `updated_at`) VALUES(6, 1, '&lt;p&gt;wewewewe&lt;/p&gt;', 'wewe', 'wewe', 1, 'SKU12345', '100000', '50000', '50000', '0', 'in_stock', 'simple_product', '', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `products` (`id`, `author_id`, `content`, `title`, `slug`, `status`, `sku`, `regular_price`, `sale_price`, `price`, `stock_qty`, `stock_availability`, `type`, `image_url`, `created_at`, `updated_at`) VALUES(7, 1, '&lt;p&gt;test1&lt;/p&gt;', 'wewe', 'wewe-5', 1, 'SKU123456', '100000', '50000', '50000', '0', 'in_stock', 'simple_product', '', '2022-04-06 06:07:01', '2022-04-06 06:07:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_extras`
--

CREATE TABLE `product_extras` (
  `product_extra_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `key_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_extras`
--

INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(40, 2, '_product_related_images_url', '{\"product_image\":\"\",\"product_gallery_images\":[{\"id\":\"F682DE0D-E46B-4E96-E2D7-BF508E9C4969\",\"url\":\"/public/uploads/01647495628-h-250-lcd.jpg\"},{\"id\":\"9D3EB40E-5BF5-4BDD-84F7-FF6EABDDE3B0\",\"url\":\"/public/uploads/01647495637-h-250-lcd.jpg\"},{\"id\":\"02C9FCCC-7ADB-4B07-DC1A-206651FB1C7E\",\"url\":\"/public/uploads/01647495647-h-250-lcd.jpg\"}],\"shop_banner_image\":\"\"}', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(41, 2, '_product_sale_price_start_date', '', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(42, 2, '_product_sale_price_end_date', '', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(43, 2, '_product_manage_stock', 'no', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(44, 2, '_product_manage_stock_back_to_order', 'not_allow', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(45, 2, '_product_extra_features', '', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(46, 2, '_product_enable_as_recommended', 'no', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(47, 2, '_product_enable_as_features', 'no', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(48, 2, '_product_enable_as_latest', 'no', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(49, 2, '_product_enable_as_related', 'yes', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(50, 2, '_product_enable_as_custom_design', 'yes', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(51, 2, '_product_enable_as_selected_cat', 'no', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(52, 2, '_product_enable_taxes', 'no', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(53, 2, '_product_custom_designer_settings', 'a:3:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}s:25:\"enable_layout_at_frontend\";s:2:\"no\";s:22:\"enable_global_settings\";s:2:\"no\";}', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(54, 2, '_product_custom_designer_data', NULL, '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(55, 2, '_product_enable_reviews', 'yes', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(56, 2, '_product_enable_reviews_add_link_to_product_page', 'yes', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(57, 2, '_product_enable_reviews_add_link_to_details_page', 'yes', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(58, 2, '_product_enable_video_feature', 'no', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(59, 2, '_product_video_feature_display_mode', 'content', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(60, 2, '_product_video_feature_title', NULL, '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(61, 2, '_product_video_feature_panel_size', 'a:2:{s:5:\"width\";N;s:6:\"height\";N;}', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(62, 2, '_product_video_feature_source', '', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(63, 2, '_product_video_feature_source_embedded_code', NULL, '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(64, 2, '_product_video_feature_source_online_url', NULL, '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(65, 2, '_product_enable_manufacturer', 'no', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(66, 2, '_product_enable_visibility_schedule', 'no', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(67, 2, '_product_seo_title', 'LED LCD Laptop Asus A455L', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(68, 2, '_product_seo_description', '', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(69, 2, '_product_seo_keywords', '', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(70, 2, '_product_compare_data', 'N;', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(71, 2, '_is_role_based_pricing_enable', 'no', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(72, 2, '_role_based_pricing', 'a:3:{s:13:\"administrator\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:9:\"site-user\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:6:\"vendor\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}}', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(73, 2, '_downloadable_product_files', 'a:0:{}', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(74, 2, '_downloadable_product_download_limit', '', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(75, 2, '_downloadable_product_download_expiry', '', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(76, 2, '_upsell_products', 'a:0:{}', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(77, 2, '_crosssell_products', 'a:0:{}', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(78, 2, '_selected_vendor', '1', '2022-02-07 19:15:32', '2022-04-07 07:04:36');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(79, 3, '_product_related_images_url', '{\"product_image\":\"/public/uploads/1647362870-h-250-gta5.jpg\",\"product_gallery_images\":[{\"id\":\"800FC39C-2274-4F03-C42F-DA72DE990EE8\",\"url\":\"/public/uploads/01647401758-h-250-large-1647362870-h-250-gta5.jpg\"},{\"id\":\"885414EB-647C-429C-9A3C-B576B4DF8188\",\"url\":\"/public/uploads/01647401805-h-250-1647362870-h-250-gta5.jpg\"}],\"shop_banner_image\":\"\"}', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(80, 3, '_product_sale_price_start_date', '', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(81, 3, '_product_sale_price_end_date', '', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(82, 3, '_product_manage_stock', 'no', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(83, 3, '_product_manage_stock_back_to_order', 'not_allow', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(84, 3, '_product_extra_features', '', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(85, 3, '_product_enable_as_recommended', 'no', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(86, 3, '_product_enable_as_features', 'no', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(87, 3, '_product_enable_as_latest', 'no', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(88, 3, '_product_enable_as_related', 'yes', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(89, 3, '_product_enable_as_custom_design', 'yes', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(90, 3, '_product_enable_as_selected_cat', 'no', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(91, 3, '_product_enable_taxes', 'no', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(92, 3, '_product_custom_designer_settings', 'a:3:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}s:25:\"enable_layout_at_frontend\";s:2:\"no\";s:22:\"enable_global_settings\";s:2:\"no\";}', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(93, 3, '_product_custom_designer_data', NULL, '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(94, 3, '_product_enable_reviews', 'yes', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(95, 3, '_product_enable_reviews_add_link_to_product_page', 'yes', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(96, 3, '_product_enable_reviews_add_link_to_details_page', 'yes', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(97, 3, '_product_enable_video_feature', 'no', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(98, 3, '_product_video_feature_display_mode', 'content', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(99, 3, '_product_video_feature_title', NULL, '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(100, 3, '_product_video_feature_panel_size', 'a:2:{s:5:\"width\";N;s:6:\"height\";N;}', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(101, 3, '_product_video_feature_source', '', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(102, 3, '_product_video_feature_source_embedded_code', NULL, '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(103, 3, '_product_video_feature_source_online_url', NULL, '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(104, 3, '_product_enable_manufacturer', 'no', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(105, 3, '_product_enable_visibility_schedule', 'no', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(106, 3, '_product_seo_title', 'test', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(107, 3, '_product_seo_description', '', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(108, 3, '_product_seo_keywords', '', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(109, 3, '_product_compare_data', 'N;', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(110, 3, '_is_role_based_pricing_enable', 'no', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(111, 3, '_role_based_pricing', 'a:3:{s:13:\"administrator\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:9:\"site-user\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:6:\"vendor\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}}', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(112, 3, '_downloadable_product_files', 'a:0:{}', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(113, 3, '_downloadable_product_download_limit', '', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(114, 3, '_downloadable_product_download_expiry', '', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(115, 3, '_upsell_products', 'a:0:{}', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(116, 3, '_crosssell_products', 'a:0:{}', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(117, 3, '_selected_vendor', '1', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(118, 4, '_product_related_images_url', '{\"product_image\":\"/public/uploads/1647477039-h-250-acer.png\",\"product_gallery_images\":[{\"id\":\"82CDD4EF-30DD-423E-BD97-2DA12AB45CF1\",\"url\":\"/public/uploads/01647477046-h-250-acer.png\"}],\"shop_banner_image\":\"\"}', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(119, 4, '_product_sale_price_start_date', '', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(120, 4, '_product_sale_price_end_date', '', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(121, 4, '_product_manage_stock', 'no', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(122, 4, '_product_manage_stock_back_to_order', 'not_allow', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(123, 4, '_product_extra_features', '', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(124, 4, '_product_enable_as_recommended', 'no', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(125, 4, '_product_enable_as_features', 'no', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(126, 4, '_product_enable_as_latest', 'no', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(127, 4, '_product_enable_as_related', 'yes', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(128, 4, '_product_enable_as_custom_design', 'yes', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(129, 4, '_product_enable_as_selected_cat', 'no', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(130, 4, '_product_enable_taxes', 'no', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(131, 4, '_product_custom_designer_settings', 'a:3:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}s:25:\"enable_layout_at_frontend\";s:2:\"no\";s:22:\"enable_global_settings\";s:2:\"no\";}', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(132, 4, '_product_custom_designer_data', NULL, '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(133, 4, '_product_enable_reviews', 'yes', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(134, 4, '_product_enable_reviews_add_link_to_product_page', 'yes', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(135, 4, '_product_enable_reviews_add_link_to_details_page', 'yes', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(136, 4, '_product_enable_video_feature', 'no', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(137, 4, '_product_video_feature_display_mode', 'content', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(138, 4, '_product_video_feature_title', NULL, '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(139, 4, '_product_video_feature_panel_size', 'a:2:{s:5:\"width\";N;s:6:\"height\";N;}', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(140, 4, '_product_video_feature_source', '', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(141, 4, '_product_video_feature_source_embedded_code', NULL, '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(142, 4, '_product_video_feature_source_online_url', NULL, '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(143, 4, '_product_enable_manufacturer', 'no', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(144, 4, '_product_enable_visibility_schedule', 'no', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(145, 4, '_product_seo_title', 'test1', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(146, 4, '_product_seo_description', '', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(147, 4, '_product_seo_keywords', '', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(148, 4, '_product_compare_data', 'N;', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(149, 4, '_is_role_based_pricing_enable', 'no', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(150, 4, '_role_based_pricing', 'a:3:{s:13:\"administrator\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:9:\"site-user\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:6:\"vendor\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}}', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(151, 4, '_downloadable_product_files', 'a:0:{}', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(152, 4, '_downloadable_product_download_limit', '', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(153, 4, '_downloadable_product_download_expiry', '', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(154, 4, '_upsell_products', 'a:0:{}', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(155, 4, '_crosssell_products', 'a:0:{}', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(156, 4, '_selected_vendor', '1', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(157, 5, '_product_related_images_url', '{\"product_image\":\"/public/uploads/1647477666-h-250-adaptor.jpg\",\"product_gallery_images\":[{\"id\":\"7A7C8516-881C-41C9-A5AF-A28030A77028\",\"url\":\"/public/uploads/01647477672-h-250-adaptor.jpg\"}],\"shop_banner_image\":\"\"}', '2022-03-16 17:41:44', '2022-03-16 17:42:00');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(158, 5, '_product_sale_price_start_date', '', '2022-03-16 17:41:44', '2022-03-16 17:42:00');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(159, 5, '_product_sale_price_end_date', '', '2022-03-16 17:41:44', '2022-03-16 17:42:00');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(160, 5, '_product_manage_stock', 'no', '2022-03-16 17:41:44', '2022-03-16 17:42:00');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(161, 5, '_product_manage_stock_back_to_order', 'not_allow', '2022-03-16 17:41:44', '2022-03-16 17:42:00');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(162, 5, '_product_extra_features', '', '2022-03-16 17:41:44', '2022-03-16 17:42:00');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(163, 5, '_product_enable_as_recommended', 'no', '2022-03-16 17:41:44', '2022-03-16 17:42:00');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(164, 5, '_product_enable_as_features', 'no', '2022-03-16 17:41:44', '2022-03-16 17:42:00');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(165, 5, '_product_enable_as_latest', 'no', '2022-03-16 17:41:44', '2022-03-16 17:42:00');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(166, 5, '_product_enable_as_related', 'yes', '2022-03-16 17:41:44', '2022-03-16 17:42:00');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(167, 5, '_product_enable_as_custom_design', 'yes', '2022-03-16 17:41:44', '2022-03-16 17:42:00');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(168, 5, '_product_enable_as_selected_cat', 'no', '2022-03-16 17:41:44', '2022-03-16 17:42:00');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(169, 5, '_product_enable_taxes', 'no', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(170, 5, '_product_custom_designer_settings', 'a:3:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}s:25:\"enable_layout_at_frontend\";s:2:\"no\";s:22:\"enable_global_settings\";s:2:\"no\";}', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(171, 5, '_product_custom_designer_data', NULL, '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(172, 5, '_product_enable_reviews', 'yes', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(173, 5, '_product_enable_reviews_add_link_to_product_page', 'yes', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(174, 5, '_product_enable_reviews_add_link_to_details_page', 'yes', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(175, 5, '_product_enable_video_feature', 'no', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(176, 5, '_product_video_feature_display_mode', 'content', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(177, 5, '_product_video_feature_title', NULL, '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(178, 5, '_product_video_feature_panel_size', 'a:2:{s:5:\"width\";N;s:6:\"height\";N;}', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(179, 5, '_product_video_feature_source', '', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(180, 5, '_product_video_feature_source_embedded_code', NULL, '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(181, 5, '_product_video_feature_source_online_url', NULL, '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(182, 5, '_product_enable_manufacturer', 'no', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(183, 5, '_product_enable_visibility_schedule', 'no', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(184, 5, '_product_seo_title', 'test2', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(185, 5, '_product_seo_description', '', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(186, 5, '_product_seo_keywords', '', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(187, 5, '_product_compare_data', 'N;', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(188, 5, '_is_role_based_pricing_enable', 'no', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(189, 5, '_role_based_pricing', 'a:3:{s:13:\"administrator\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:9:\"site-user\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:6:\"vendor\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}}', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(190, 5, '_downloadable_product_files', 'a:0:{}', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(191, 5, '_downloadable_product_download_limit', '', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(192, 5, '_downloadable_product_download_expiry', '', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(193, 5, '_upsell_products', 'a:0:{}', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(194, 5, '_crosssell_products', 'a:0:{}', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(195, 5, '_selected_vendor', '1', '2022-03-16 17:41:44', '2022-03-16 17:42:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(196, 6, '_product_related_images_url', '{\"product_image\":\"\",\"product_gallery_images\":[],\"shop_banner_image\":\"\"}', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(197, 6, '_product_sale_price_start_date', '', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(198, 6, '_product_sale_price_end_date', '', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(199, 6, '_product_manage_stock', 'no', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(200, 6, '_product_manage_stock_back_to_order', 'not_allow', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(201, 6, '_product_extra_features', '', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(202, 6, '_product_enable_as_recommended', 'no', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(203, 6, '_product_enable_as_features', 'no', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(204, 6, '_product_enable_as_latest', 'no', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(205, 6, '_product_enable_as_related', 'yes', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(206, 6, '_product_enable_as_custom_design', 'yes', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(207, 6, '_product_enable_as_selected_cat', 'no', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(208, 6, '_product_enable_taxes', 'no', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(209, 6, '_product_custom_designer_settings', 'a:3:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}s:25:\"enable_layout_at_frontend\";s:2:\"no\";s:22:\"enable_global_settings\";s:2:\"no\";}', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(210, 6, '_product_custom_designer_data', NULL, '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(211, 6, '_product_enable_reviews', 'yes', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(212, 6, '_product_enable_reviews_add_link_to_product_page', 'yes', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(213, 6, '_product_enable_reviews_add_link_to_details_page', 'yes', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(214, 6, '_product_enable_video_feature', 'no', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(215, 6, '_product_video_feature_display_mode', 'content', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(216, 6, '_product_video_feature_title', NULL, '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(217, 6, '_product_video_feature_panel_size', 'a:2:{s:5:\"width\";N;s:6:\"height\";N;}', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(218, 6, '_product_video_feature_source', '', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(219, 6, '_product_video_feature_source_embedded_code', NULL, '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(220, 6, '_product_video_feature_source_online_url', NULL, '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(221, 6, '_product_enable_manufacturer', 'no', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(222, 6, '_product_enable_visibility_schedule', 'no', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(223, 6, '_product_seo_title', 'wewe', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(224, 6, '_product_seo_description', '', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(225, 6, '_product_seo_keywords', '', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(226, 6, '_product_compare_data', 'N;', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(227, 6, '_is_role_based_pricing_enable', 'no', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(228, 6, '_role_based_pricing', 'a:3:{s:13:\"administrator\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:9:\"site-user\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:6:\"vendor\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}}', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(229, 6, '_downloadable_product_files', 'a:0:{}', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(230, 6, '_downloadable_product_download_limit', '', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(231, 6, '_downloadable_product_download_expiry', '', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(232, 6, '_upsell_products', 'a:0:{}', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(233, 6, '_crosssell_products', 'a:0:{}', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(234, 6, '_selected_vendor', '1', '2022-04-06 06:05:03', '2022-04-06 06:05:03');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(235, 7, '_product_related_images_url', '{\"product_image\":\"\",\"product_gallery_images\":[],\"shop_banner_image\":\"\"}', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(236, 7, '_product_sale_price_start_date', '', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(237, 7, '_product_sale_price_end_date', '', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(238, 7, '_product_manage_stock', 'no', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(239, 7, '_product_manage_stock_back_to_order', 'not_allow', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(240, 7, '_product_extra_features', '', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(241, 7, '_product_enable_as_recommended', 'no', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(242, 7, '_product_enable_as_features', 'no', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(243, 7, '_product_enable_as_latest', 'no', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(244, 7, '_product_enable_as_related', 'yes', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(245, 7, '_product_enable_as_custom_design', 'yes', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(246, 7, '_product_enable_as_selected_cat', 'no', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(247, 7, '_product_enable_taxes', 'no', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(248, 7, '_product_custom_designer_settings', 'a:3:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}s:25:\"enable_layout_at_frontend\";s:2:\"no\";s:22:\"enable_global_settings\";s:2:\"no\";}', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(249, 7, '_product_custom_designer_data', NULL, '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(250, 7, '_product_enable_reviews', 'yes', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(251, 7, '_product_enable_reviews_add_link_to_product_page', 'yes', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(252, 7, '_product_enable_reviews_add_link_to_details_page', 'yes', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(253, 7, '_product_enable_video_feature', 'no', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(254, 7, '_product_video_feature_display_mode', 'content', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(255, 7, '_product_video_feature_title', NULL, '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(256, 7, '_product_video_feature_panel_size', 'a:2:{s:5:\"width\";N;s:6:\"height\";N;}', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(257, 7, '_product_video_feature_source', '', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(258, 7, '_product_video_feature_source_embedded_code', NULL, '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(259, 7, '_product_video_feature_source_online_url', NULL, '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(260, 7, '_product_enable_manufacturer', 'no', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(261, 7, '_product_enable_visibility_schedule', 'no', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(262, 7, '_product_seo_title', 'wewe', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(263, 7, '_product_seo_description', '', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(264, 7, '_product_seo_keywords', '', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(265, 7, '_product_compare_data', 'N;', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(266, 7, '_is_role_based_pricing_enable', 'no', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(267, 7, '_role_based_pricing', 'a:3:{s:13:\"administrator\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:9:\"site-user\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:6:\"vendor\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}}', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(268, 7, '_downloadable_product_files', 'a:0:{}', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(269, 7, '_downloadable_product_download_limit', '', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(270, 7, '_downloadable_product_download_expiry', '', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(271, 7, '_upsell_products', 'a:0:{}', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(272, 7, '_crosssell_products', 'a:0:{}', '2022-04-06 06:07:01', '2022-04-06 06:07:01');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(273, 7, '_selected_vendor', '1', '2022-04-06 06:07:01', '2022-04-06 06:07:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `request_products`
--

CREATE TABLE `request_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `slug`, `created_at`, `updated_at`) VALUES(1, 'Administrator', 'administrator', '2019-11-03 23:03:55', '2022-01-23 23:45:17');
INSERT INTO `roles` (`id`, `role_name`, `slug`, `created_at`, `updated_at`) VALUES(2, 'Site User', 'site-user', '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `roles` (`id`, `role_name`, `slug`, `created_at`, `updated_at`) VALUES(3, 'Vendor', 'vendor', '2019-11-03 23:03:55', '2019-11-03 23:03:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES(1, 1, 1, '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES(2, 9, 2, '2022-03-03 02:12:18', '2022-03-03 02:12:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `save_custom_designs`
--

CREATE TABLE `save_custom_designs` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `design_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `terms`
--

INSERT INTO `terms` (`term_id`, `name`, `slug`, `type`, `parent`, `status`, `created_at`, `updated_at`) VALUES(1, 'LCD/LED', 'lcdled', 'product_cat', 0, 1, '2022-02-07 19:16:50', '2022-02-07 19:16:50');
INSERT INTO `terms` (`term_id`, `name`, `slug`, `type`, `parent`, `status`, `created_at`, `updated_at`) VALUES(2, 'Baterai Laptop', 'baterai-laptop', 'product_cat', 0, 1, '2022-02-07 20:09:23', '2022-02-07 20:09:23');
INSERT INTO `terms` (`term_id`, `name`, `slug`, `type`, `parent`, `status`, `created_at`, `updated_at`) VALUES(3, 'Communication', 'communication', 'product_cat', 0, 1, '2022-02-07 20:10:07', '2022-02-07 20:10:07');
INSERT INTO `terms` (`term_id`, `name`, `slug`, `type`, `parent`, `status`, `created_at`, `updated_at`) VALUES(4, 'Optical Disk Drive', 'optical-disk-drive', 'product_cat', 0, 1, '2022-02-07 20:10:22', '2022-02-07 20:10:22');
INSERT INTO `terms` (`term_id`, `name`, `slug`, `type`, `parent`, `status`, `created_at`, `updated_at`) VALUES(5, 'KABEL DAN KONEKTOR', 'kabel-dan-konektor', 'product_cat', 0, 1, '2022-02-07 20:10:40', '2022-02-07 20:10:40');
INSERT INTO `terms` (`term_id`, `name`, `slug`, `type`, `parent`, `status`, `created_at`, `updated_at`) VALUES(6, 'Hardisk Lenovo', 'hdd-lenovo', 'product_cat', 4, 1, '2022-02-07 20:11:15', '2022-02-07 20:11:15');
INSERT INTO `terms` (`term_id`, `name`, `slug`, `type`, `parent`, `status`, `created_at`, `updated_at`) VALUES(7, 'Hardisk Lenovo 2.5inch', 'hardisk-lenovo-25inch', 'product_cat', 6, 1, '2022-02-07 20:11:41', '2022-02-07 20:11:41');
INSERT INTO `terms` (`term_id`, `name`, `slug`, `type`, `parent`, `status`, `created_at`, `updated_at`) VALUES(9, 'SURABAYA', 'surabaya', 'product_tag', 0, 1, '2022-02-07 21:26:51', '2022-02-07 21:26:51');
INSERT INTO `terms` (`term_id`, `name`, `slug`, `type`, `parent`, `status`, `created_at`, `updated_at`) VALUES(10, 'SEMARANG', 'semarang', 'product_tag', 0, 1, '2022-02-07 21:26:57', '2022-02-07 21:26:57');
INSERT INTO `terms` (`term_id`, `name`, `slug`, `type`, `parent`, `status`, `created_at`, `updated_at`) VALUES(11, 'DENPASAR', 'denpasar', 'product_tag', 0, 1, '2022-02-07 21:27:03', '2022-02-07 21:27:03');
INSERT INTO `terms` (`term_id`, `name`, `slug`, `type`, `parent`, `status`, `created_at`, `updated_at`) VALUES(12, 'MATARAM', 'mataram', 'product_tag', 0, 1, '2022-02-07 21:27:09', '2022-02-07 21:27:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `term_extras`
--

CREATE TABLE `term_extras` (
  `term_extra_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `key_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `term_extras`
--

INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(1, 1, '_category_description', '', '2022-02-07 19:16:50', '2022-02-07 19:16:50');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(2, 1, '_category_img_url', NULL, '2022-02-07 19:16:50', '2022-02-07 19:16:50');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(3, 2, '_category_description', '', '2022-02-07 20:09:23', '2022-02-07 20:09:23');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(4, 2, '_category_img_url', NULL, '2022-02-07 20:09:23', '2022-02-07 20:09:23');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(5, 3, '_category_description', '', '2022-02-07 20:10:07', '2022-02-07 20:10:07');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(6, 3, '_category_img_url', NULL, '2022-02-07 20:10:07', '2022-02-07 20:10:07');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(7, 4, '_category_description', '', '2022-02-07 20:10:22', '2022-02-07 20:10:22');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(8, 4, '_category_img_url', NULL, '2022-02-07 20:10:22', '2022-02-07 20:10:22');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(9, 5, '_category_description', '', '2022-02-07 20:10:40', '2022-02-07 20:10:40');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(10, 5, '_category_img_url', NULL, '2022-02-07 20:10:40', '2022-02-07 20:10:40');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(11, 6, '_category_description', '', '2022-02-07 20:11:15', '2022-02-07 20:11:15');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(12, 6, '_category_img_url', NULL, '2022-02-07 20:11:15', '2022-02-07 20:11:15');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(13, 7, '_category_description', '', '2022-02-07 20:11:41', '2022-02-07 20:11:41');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(14, 7, '_category_img_url', NULL, '2022-02-07 20:11:41', '2022-02-07 20:11:41');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(15, 8, '_product_attr_values', 'Semarang,Jogja,Surabaya', '2022-02-07 21:22:16', '2022-02-07 21:22:16');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(16, 9, '_tag_description', '', '2022-02-07 21:26:51', '2022-02-07 21:26:51');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(17, 10, '_tag_description', '', '2022-02-07 21:26:57', '2022-02-07 21:26:57');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(18, 11, '_tag_description', '', '2022-02-07 21:27:03', '2022-02-07 21:27:03');
INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(19, 12, '_tag_description', '', '2022-02-07 21:27:09', '2022-02-07 21:27:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_photo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_status` int(10) UNSIGNED NOT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `display_name`, `name`, `email`, `phone_number`, `password`, `user_photo_url`, `user_status`, `secret_key`, `created_at`, `updated_at`) VALUES(1, 'Admin', 'admin', 'admin@gmail.com', '', '$2a$12$vy67upto5TFgj29zrjGIsuPgvKL0/fnsnm.C7pEDe8U0M1eJ3YCXK', '', 1, '$2y$10$xW53MN8gc4td4lkT1vNbGe1/5ldF6hJC7oUWTwVH6qTiBHdpXYMAq', '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `users` (`id`, `display_name`, `name`, `email`, `phone_number`, `password`, `user_photo_url`, `user_status`, `secret_key`, `created_at`, `updated_at`) VALUES(11, 'Bryan Wijaya', 'Bryan Wijaya', 'bryan@gmail.com', '+628113116991', '$2y$10$O7ZRMDb3b87YMNmW9t8Uu.E6j6/0LyBmevlHGlCZ1Flf9bqOf4be.', NULL, 1, NULL, '2022-03-07 19:18:18', '2022-04-05 21:07:46');
INSERT INTO `users` (`id`, `display_name`, `name`, `email`, `phone_number`, `password`, `user_photo_url`, `user_status`, `secret_key`, `created_at`, `updated_at`) VALUES(14, 'Test', 'test', NULL, '+628123456789', '$2y$10$xzzj6mtM8.xzFEHMZwu16uoL2I.tEiNOmkEbtVb9fDvSmINp9Tr3W', NULL, 1, NULL, '2022-04-05 20:26:01', '2022-04-05 20:26:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_custom_designs`
--

CREATE TABLE `users_custom_designs` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `design_images` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `design_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_details`
--

CREATE TABLE `users_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users_details`
--

INSERT INTO `users_details` (`id`, `user_id`, `details`, `created_at`, `updated_at`) VALUES(1, 1, '{\"profile_details\":{\"store_name\":\"admin\",\"address_line_1\":\"address 1\",\"address_line_2\":\"address 2\",\"city\":\"city\",\"state\":\"state\",\"country\":\"country\",\"zip_postal_code\":2210,\"phone\":123456},\"general_details\":{\"cover_img\":\"\",\"vendor_home_page_cats\":\"\",\"google_map_app_key\":\"\",\"latitude\":\"-25.363\",\"longitude\":\"131.044\"},\"social_media\":{\"fb_follow_us_url\":\"\",\"twitter_follow_us_url\":\"\",\"linkedin_follow_us_url\":\"\",\"dribbble_follow_us_url\":\"\",\"google_plus_follow_us_url\":\"\",\"instagram_follow_us_url\":\"\",\"youtube_follow_us_url\":\"\"}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `users_details` (`id`, `user_id`, `details`, `created_at`, `updated_at`) VALUES(2, 9, '{\"address_details\":{\"account_bill_title\":null,\"account_bill_company_name\":null,\"account_bill_first_name\":\"x\",\"account_bill_last_name\":\"x\",\"account_bill_email_address\":\"x@gmail.com\",\"account_bill_phone_number\":\"08113116991\",\"account_bill_select_country\":\"ID\",\"account_bill_adddress_line_1\":\"x\",\"account_bill_adddress_line_2\":null,\"account_bill_town_or_city\":\"x\",\"account_bill_zip_or_postal_code\":\"60225\",\"account_bill_fax_number\":null,\"account_shipping_title\":null,\"account_shipping_company_name\":null,\"account_shipping_first_name\":\"x\",\"account_shipping_last_name\":\"x\",\"account_shipping_email_address\":\"x@gmail.com\",\"account_shipping_phone_number\":\"08113116991\",\"account_shipping_select_country\":\"ID\",\"account_shipping_adddress_line_1\":\"x\",\"account_shipping_adddress_line_2\":null,\"account_shipping_town_or_city\":\"x\",\"account_shipping_zip_or_postal_code\":\"60225\",\"account_shipping_fax_number\":null},\"wishlists_details\":\"\"}', '2022-03-03 04:28:26', '2022-03-03 04:31:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_billing_address`
--

CREATE TABLE `user_billing_address` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_billing_address`
--

INSERT INTO `user_billing_address` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `address`, `city`, `district`, `zip_code`, `user_id`) VALUES(6, 'Bryan', 'Wijaya', 'test1@gmail.com', '08123456789', 'Dukuh Kupang XI', 'Aceh Barat', 'Wewe', '60225', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role_permissions`
--

CREATE TABLE `user_role_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `permissions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_role_permissions`
--

INSERT INTO `user_role_permissions` (`id`, `role_id`, `permissions`, `created_at`, `updated_at`) VALUES(1, 1, 'a:40:{i:0;s:17:\"pages_list_access\";i:1;s:21:\"add_edit_delete_pages\";i:2;s:17:\"list_blogs_access\";i:3;s:20:\"add_edit_delete_blog\";i:4;s:18:\"blog_comments_list\";i:5;s:22:\"blog_categories_access\";i:6;s:23:\"testimonial_list_access\";i:7;s:27:\"add_edit_delete_testimonial\";i:8;s:18:\"brands_list_access\";i:9;s:22:\"add_edit_delete_brands\";i:10;s:15:\"manage_seo_full\";i:11;s:20:\"products_list_access\";i:12;s:23:\"add_edit_delete_product\";i:13;s:25:\"product_categories_access\";i:14;s:19:\"product_tags_access\";i:15;s:25:\"product_attributes_access\";i:16;s:21:\"product_colors_access\";i:17;s:20:\"product_sizes_access\";i:18;s:29:\"products_comments_list_access\";i:19;s:18:\"manage_orders_list\";i:20;s:19:\"manage_reports_list\";i:21;s:19:\"vendors_list_access\";i:22;s:23:\"vendors_withdraw_access\";i:23;s:29:\"vendors_refund_request_access\";i:24;s:30:\"vendors_earning_reports_access\";i:25;s:27:\"vendors_announcement_access\";i:26;s:15:\"vendor_settings\";i:27;s:28:\"vendors_packages_full_access\";i:28;s:28:\"vendors_packages_list_access\";i:29;s:30:\"vendors_packages_create_access\";i:30;s:34:\"manage_shipping_method_menu_access\";i:31;s:33:\"manage_payment_method_menu_access\";i:32;s:36:\"manage_designer_elements_menu_access\";i:33;s:25:\"manage_coupon_menu_access\";i:34;s:27:\"manage_settings_menu_access\";i:35;s:36:\"manage_requested_product_menu_access\";i:36;s:31:\"manage_subscription_menu_access\";i:37;s:28:\"manage_extra_features_access\";i:38;s:19:\"manage_available_at\";i:39;s:19:\"all_checkbox_enable\";}', '2019-11-03 23:03:56', '2022-01-23 23:45:17');
INSERT INTO `user_role_permissions` (`id`, `role_id`, `permissions`, `created_at`, `updated_at`) VALUES(2, 3, 'a:13:{i:0;s:15:\"manage_seo_full\";i:1;s:20:\"manage_products_full\";i:2;s:20:\"products_list_access\";i:3;s:23:\"add_edit_delete_product\";i:4;s:29:\"products_comments_list_access\";i:5;s:18:\"manage_orders_list\";i:6;s:19:\"manage_reports_list\";i:7;s:34:\"manage_shipping_method_menu_access\";i:8;s:33:\"manage_payment_method_menu_access\";i:9;s:25:\"manage_coupon_menu_access\";i:10;s:23:\"vendors_withdraw_access\";i:11;s:36:\"manage_requested_product_menu_access\";i:12;s:28:\"manage_extra_features_access\";}', '2019-11-03 23:03:56', '2019-11-03 23:03:56');
INSERT INTO `user_role_permissions` (`id`, `role_id`, `permissions`, `created_at`, `updated_at`) VALUES(3, 4, 'a:2:{i:0;s:17:\"pages_list_access\";i:1;s:20:\"all_checkbox_disable\";}', '2022-02-18 06:04:51', '2022-02-18 06:04:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_shipping_address`
--

CREATE TABLE `user_shipping_address` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_shipping_address`
--

INSERT INTO `user_shipping_address` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `address`, `city`, `district`, `zip_code`, `user_id`) VALUES(6, 'Bryan', 'Wijaya', 'test2@gmail.com', '08198765432', 'Ngagel Jaya 101', 'Aceh Barat Daya', 'Hehe', '60226', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor_announcements`
--

CREATE TABLE `vendor_announcements` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `order_total` double(11,2) NOT NULL,
  `net_amount` double(11,2) NOT NULL,
  `order_status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor_packages`
--

CREATE TABLE `vendor_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `vendor_packages`
--

INSERT INTO `vendor_packages` (`id`, `package_type`, `options`, `created_at`, `updated_at`) VALUES(1, 'Default', '{\"max_number_product\":100,\"show_map_on_store_page\":true,\"show_social_media_follow_btn_on_store_page\":true,\"show_social_media_share_btn_on_store_page\":true,\"show_contact_form_on_store_page\":true,\"vendor_expired_date_type\":\"lifetime\",\"vendor_custom_expired_date\":\"\",\"vendor_commission\":20,\"min_withdraw_amount\":50}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor_totals`
--

CREATE TABLE `vendor_totals` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `totals` double(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor_withdraws`
--

CREATE TABLE `vendor_withdraws` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `custom_amount` double(8,2) NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`) VALUES(1, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlist_detail`
--

CREATE TABLE `wishlist_detail` (
  `id` int(11) NOT NULL,
  `wishlist_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wishlist_detail`
--

INSERT INTO `wishlist_detail` (`id`, `wishlist_id`, `product_id`, `price`, `quantity`) VALUES(1, 1, 2, 350000, 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `api_tokens`
--
ALTER TABLE `api_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PRODUCT` (`product_id`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `custom_currency_values`
--
ALTER TABLE `custom_currency_values`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `download_extras`
--
ALTER TABLE `download_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `manage_languages`
--
ALTER TABLE `manage_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `object_relationships`
--
ALTER TABLE `object_relationships`
  ADD PRIMARY KEY (`term_id`,`object_id`);

--
-- Indeks untuk tabel `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `post_extras`
--
ALTER TABLE `post_extras`
  ADD PRIMARY KEY (`post_extra_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_extras`
--
ALTER TABLE `product_extras`
  ADD PRIMARY KEY (`product_extra_id`);

--
-- Indeks untuk tabel `request_products`
--
ALTER TABLE `request_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `save_custom_designs`
--
ALTER TABLE `save_custom_designs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indeks untuk tabel `term_extras`
--
ALTER TABLE `term_extras`
  ADD PRIMARY KEY (`term_extra_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_custom_designs`
--
ALTER TABLE `users_custom_designs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_billing_address`
--
ALTER TABLE `user_billing_address`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role_permissions`
--
ALTER TABLE `user_role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_shipping_address`
--
ALTER TABLE `user_shipping_address`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vendor_announcements`
--
ALTER TABLE `vendor_announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vendor_packages`
--
ALTER TABLE `vendor_packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendor_packages_package_type_unique` (`package_type`);

--
-- Indeks untuk tabel `vendor_totals`
--
ALTER TABLE `vendor_totals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vendor_withdraws`
--
ALTER TABLE `vendor_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wishlist_detail`
--
ALTER TABLE `wishlist_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `api_tokens`
--
ALTER TABLE `api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `custom_currency_values`
--
ALTER TABLE `custom_currency_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `download_extras`
--
ALTER TABLE `download_extras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT untuk tabel `manage_languages`
--
ALTER TABLE `manage_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `post_extras`
--
ALTER TABLE `post_extras`
  MODIFY `post_extra_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=756;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `product_extras`
--
ALTER TABLE `product_extras`
  MODIFY `product_extra_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT untuk tabel `request_products`
--
ALTER TABLE `request_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `save_custom_designs`
--
ALTER TABLE `save_custom_designs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `term_extras`
--
ALTER TABLE `term_extras`
  MODIFY `term_extra_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users_custom_designs`
--
ALTER TABLE `users_custom_designs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_billing_address`
--
ALTER TABLE `user_billing_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_role_permissions`
--
ALTER TABLE `user_role_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_shipping_address`
--
ALTER TABLE `user_shipping_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `vendor_announcements`
--
ALTER TABLE `vendor_announcements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vendor_packages`
--
ALTER TABLE `vendor_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `vendor_totals`
--
ALTER TABLE `vendor_totals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vendor_withdraws`
--
ALTER TABLE `vendor_withdraws`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `wishlist_detail`
--
ALTER TABLE `wishlist_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD CONSTRAINT `FK_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
