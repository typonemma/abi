-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Bulan Mei 2022 pada 16.57
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

DROP TABLE IF EXISTS `orders_items`;
CREATE TABLE `orders_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_author_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `posts` (`id`, `post_author_id`, `image`, `post_content`, `post_title`, `post_slug`, `parent_id`, `post_status`, `post_type`, `created_at`, `updated_at`) VALUES
(1, 1, '/public/uploads/blog1.jpg', 'Duis fringilla felis et faucibus semper. Aliquam gravida elit et lectus viverra porta. Proin ultricies, massa eu aliquam tristique, sapien tellus gravida eros, eget sollicitudin nisl mi id tortor. Cras enim elit, convallis at imperdiet at, viverra eget di', 'CARA MEMBERSIHKAN KEYBORAD PADA LAPTOP DENGAN BENAR', 'cara-membersihkan-keyborad-pada-laptop-dengan-benar', 0, 1, 'post-blog', '2022-02-18 07:06:07', '2022-04-05 22:21:07'),
(6, 1, '/public/uploads/blog2.jpg', '&lt;p&gt;Duis fringilla felis et faucibus semper. Aliquam gravida elit et lectus viverra porta. Proin ultricies, massa eu aliquam tristique, sapien tellus gravida eros, eget sollicitudin nisl mi id tortor. Cras enim elit, convallis at imperdiet at, viverra eget di&lt;br&gt;&lt;/p&gt;', 'CARA MEMBERSIHKAN KEYBORAD PADA LAPTOP DENGAN BENAR 2', 'cara-membersihkan-keyborad-pada-laptop-dengan-benar-2', 0, 1, 'post-blog', '2022-02-22 20:57:59', '2022-04-05 22:21:23'),
(7, 1, '/public/uploads/blog3.jpg', '&lt;p&gt;Duis fringilla felis et faucibus semper. Aliquam gravida elit et lectus viverra porta. Proin ultricies, massa eu aliquam tristique, sapien tellus gravida eros, eget sollicitudin nisl mi id tortor. Cras enim elit, convallis at imperdiet at, viverra eget di&lt;br&gt;&lt;/p&gt;', 'CARA MEMBERSIHKAN KEYBORAD PADA LAPTOP DENGAN BENAR 3', 'cara-membersihkan-keyborad-pada-laptop-dengan-benar-3', 0, 1, 'post-blog', '2022-02-22 21:00:12', '2022-04-05 22:21:38'),
(8, 1, '/public/uploads/blog-big.jpg', '&lt;p&gt;Duis fringilla felis et faucibus semper. Aliquam gravida elit et lectus viverra porta. Proin ultricies, massa eu aliquam tristique, sapien tellus gravida eros, eget sollicitudin nisl mi id tortor. Cras enim elit, convallis at imperdiet at, viverra eget di&lt;br&gt;&lt;/p&gt;', 'CARA MEMBERSIHKAN KEYBORAD PADA LAPTOP DENGAN BENAR 4', 'cara-membersihkan-keyborad-pada-laptop-dengan-benar-4', 0, 1, 'post-blog', '2022-02-22 21:00:24', '2022-04-05 22:21:51'),
(11, 1, '', 'HI-TECH MALL - Lt. Dasar Blok A1/12-12A Kusuma Bangsa 116 - 118, Surabaya, Jawa Timur selasa coba', 'address SURABAYA', 'address-surabaya', 0, 1, 'page', '2022-02-25 20:19:30', '2022-03-14 23:46:04'),
(12, 1, '', 'PLAZA SIMPANG LIMA I - SCC Lt. 5\r\nNo. 64-65, Semarang, Jawa Tengah', 'address SEMARANG', 'address-semarang', 0, 1, 'page', '2022-02-25 20:19:55', '2022-03-05 18:56:59'),
(13, 1, '', 'RIMO TRADE CENTRE - Lt. 3 No. 40\r\nJl. Diponegoro no 136, Denpasar, Bali', 'address DENPASAR', 'address-denpasar', 0, 1, 'page', '2022-02-25 20:20:19', '2022-02-25 20:20:19'),
(14, 1, '', 'Jalan Catur Warga no.16 D \r\nMataram, Nusa Tenggara Barat', 'address MATARAM', 'address-mataram', 0, 1, 'page', '2022-02-25 20:21:06', '2022-02-25 20:21:06'),
(15, 1, '', '&lt;p&gt;&lt;span style=&quot;text-align: center;&quot;&gt;(031) 5325340, 5329905&lt;/span&gt;&lt;br style=&quot;text-size-adjust: none; outline: none; line-height: 1em; margin-bottom: 0px; text-align: center;&quot;&gt;&lt;span style=&quot;text-align: center;&quot;&gt;wa: 087853221379&lt;/span&gt;&lt;/p&gt;', 'phone SURABAYA', 'phone-surabaya', 0, 1, 'page', '2022-02-25 21:03:00', '2022-04-04 08:09:01'),
(16, 1, '', '&lt;p&gt;&lt;span style=&quot;text-align: center;&quot;&gt;(024) 8457038&lt;/span&gt;&lt;br style=&quot;text-size-adjust: none; outline: none; line-height: 1em; margin-bottom: 0px; text-align: center;&quot;&gt;&lt;span style=&quot;text-align: center;&quot;&gt;WA: 087832993898&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', 'phone SEMARANG', 'phone-semarang', 0, 1, 'page', '2022-02-25 21:03:28', '2022-04-04 08:05:17'),
(17, 1, '', '&lt;p&gt;&lt;span style=&quot;text-align: center;&quot;&gt;(0361) 242806&lt;/span&gt;&lt;br style=&quot;text-size-adjust: none; outline: none; line-height: 1em; margin-bottom: 0px; text-align: center;&quot;&gt;&lt;span style=&quot;text-align: center;&quot;&gt;WA: 087861722876&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', 'phone DENPASAR', 'phone-semarang-12', 0, 1, 'page', '2022-02-25 21:03:56', '2022-04-04 07:53:56'),
(18, 1, '', '&lt;p&gt;&lt;span style=&quot;text-align: center;&quot;&gt;(0370) 7503116&lt;/span&gt;&lt;br style=&quot;text-size-adjust: none; outline: none; line-height: 1em; margin-bottom: 0px; text-align: center;&quot;&gt;&lt;span style=&quot;text-align: center;&quot;&gt;WA: 087865311946&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', 'phone MATARAM', 'phone-mataram', 0, 1, 'page', '2022-02-25 21:04:20', '2022-04-04 08:04:51'),
(19, 1, '', '&lt;span style=&quot;text-align: center;&quot;&gt;Senin - Sabtu 10.00-17.00 WIB&lt;/span&gt;&lt;br style=&quot;text-size-adjust: none; outline: none; line-height: 1em; margin-bottom: 0px; text-align: center;&quot;&gt;&lt;span style=&quot;text-align: center;&quot;&gt;Minggu dan Tanggal Merah Libur&lt;/span&gt;&lt;br&gt;&lt;p&gt;&lt;/p&gt;', 'working hours SURABAYA', 'working-hours-surabaya', 0, 1, 'page', '2022-02-25 21:08:27', '2022-04-04 08:09:49'),
(20, 1, '', '&lt;span style=&quot;text-align: center;&quot;&gt;Senin - Minggu 10.00-18.00 WIB&lt;/span&gt;&lt;br style=&quot;text-size-adjust: none; outline: none; line-height: 1em; margin-bottom: 0px; text-align: center;&quot;&gt;&lt;span style=&quot;text-align: center;&quot;&gt;Hari Raya Nasional Libur&lt;/span&gt;&lt;br&gt;&lt;p&gt;&lt;/p&gt;', 'working hours SEMARANG', 'working-hours-semarang', 0, 1, 'page', '2022-02-25 21:08:49', '2022-04-04 08:10:02'),
(21, 1, '', '&lt;span style=&quot;text-align: center;&quot;&gt;Senin - Minggu 11.00-20.00 WITA&lt;/span&gt;&lt;br style=&quot;text-size-adjust: none; outline: none; line-height: 1em; margin-bottom: 0px; text-align: center;&quot;&gt;&lt;span style=&quot;text-align: center;&quot;&gt;Hari Raya Nasional Libur&lt;/span&gt;&lt;br&gt;&lt;p&gt;&lt;/p&gt;', 'working hours DENPASAR', 'working-hours-semarang-16', 0, 1, 'page', '2022-02-25 21:09:06', '2022-04-04 08:10:32'),
(22, 1, '', '&lt;span style=&quot;text-align: center;&quot;&gt;Senin - Sabtu 09.00-19.00 WITA&lt;/span&gt;&lt;br style=&quot;text-size-adjust: none; outline: none; line-height: 1em; margin-bottom: 0px; text-align: center;&quot;&gt;&lt;span style=&quot;text-align: center;&quot;&gt;Minggu dan Tanggal Merah Libur&lt;/span&gt;&lt;br&gt;&lt;p&gt;&lt;/p&gt;', 'working hours MATARAM', 'working-hours-mataram', 0, 1, 'page', '2022-02-25 21:09:25', '2022-04-04 08:10:46'),
(23, 1, '', 'sales@pusatbaterai.com', 'email contact', 'email-contact', 0, 1, 'page', '2022-02-25 21:14:31', '2022-02-25 21:14:31'),
(25, 1, '', '&lt;p&gt;Radiant Computer bergerak dalam penyediaan spare part laptop sejak tahun 2007 dan sejak tahun itu pula Radiant Computer terdaftar sebagai anggota APKOMINDO JATIM. Produk yang kami sediakan meliputi baterai laptop, keyboard laptop, panel LCD, power adaptor dan DVDRW. Radiant Computer mempunyai visi untuk menyediakan suku cadang laptop dengan kualitas baik dan harga terjangkau. Mungkin kami bukanlah yang termurah tetapi kami adalah yang terpercaya dan terjamin dalam kualitas dan purna jual. Sejak beroperasi sampai saat ini Radiant Computer boleh berbangga dan puas dengan adanya dukungan dari para pelanggan. Banyaknya dukungan dan sedikitnya komplain yang kami terima merupakan bukti akan komitmen kami atas kualitas dan pelayanan purna jual yang baik.\r\n\r\nRadiant Computer berawal dari sebuah toko fisik di Hi-Tech Mall Surabaya. Dengan harapan untuk memberikan kemudahan bagi pengguna maka beberapa saat kemudian dibuatlah www.pusatbaterai.com. Walaupun terdapat kekurangan di sana sini dan tidak selalu ter-update tetapi website ini merupakan salah satu yang paling komprehensif karena memberikan banyak kemudahan bagi pengguna dalam menemukan suku cadang yang sesuai. Pengguna dapat mencari berdasarkan parts number dari suku cadang yang dicari maupun berdasarkan model laptop. &lt;/p&gt;&lt;p&gt;Untuk lebih memberikan dukungan dan kemudahan bagi para pelanggan Radiant Computer telah membuka cabang di Semarang kemudian di Denpasar. Semua toko Radiant Computer mengambil tempat di pusat IT dari kota tersebut. Hal ini dikarenakan Radiant Computer selain menjual kepada pengguna tetapi juga bekerjasama dengan toko-toko lainnya.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: Questrial, sans-serif; font-size: 14px;&quot;&gt;Walaupun sudah mempunyai website tetapi Radiant Computer lebih fokus pada pengadaan toko fisik. Dengan adanya toko fisik kami bisa lebih memberikan jaminan kepuasan kepada pelanggan di samping juga memberikan kemudahan karena tidak semua pengguna bisa mengganti suku cadang sendiri. Dan penggantian suku cadang yang dibeli di Radiant Computer adalah&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;text-blue&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Questrial, sans-serif; vertical-align: baseline; text-size-adjust: none; outline: none; color: rgb(21, 86, 144);&quot;&gt;FREE OF CHARGE&lt;/span&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: Questrial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;alias gratis ongkos pasang. Radiant Computer juga menerapkan&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;text-blue&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Questrial, sans-serif; vertical-align: baseline; text-size-adjust: none; outline: none; color: rgb(21, 86, 144);&quot;&gt;NO TIPPING&lt;/span&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: Questrial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;atau menolak pemberian tips dari para pelanggan karena bagi kami&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;text-blue&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Questrial, sans-serif; vertical-align: baseline; text-size-adjust: none; outline: none; color: rgb(21, 86, 144);&quot;&gt;KESINAMBUNGAN BISNIS DENGAN PARA PELANGGAN ADALAH LEBIH BERNILAI DARIPADA TIPS.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'ABOUT RADIANT COMPUTER', 'about-radiant-computer', 0, 1, 'page', '2022-02-27 06:53:26', '2022-03-05 18:45:57'),
(26, 1, '', '&lt;p&gt;Sejak awal berdirinya, Radiant Computer menjual baterai laptop merk Optium (dahulu bermerk Maxwell) yang sudah teruji waktu baik kualitas maupun pelayanan purna jualnya. Dari informasi yang kami dapat dari para pengguna, bila digunakan setiap hari baterai OPTIUM bisa bertahan selama 2-3 tahun untuk penggunaan normal.&lt;/p&gt;&lt;p&gt;Baterai OPTIUM merupakan baterai yang kompatibel dengan baterai original dengan kualitas yang setara atau bahkan lebih tinggi dari baterai original. Baterai OPTIUM diproduksi oleh pabrik dengan sertifikasi ISO dan dibuat dengan sel baterai pilihan yang benar-benar baru dan grade A. Baterai OPTIUM menggunakan sel baterai merk Samsung, DLG atau BAK. BAK adalah pabrikan sel baterai di China yang telah memenuhi kriteria dari Samsung dan bahkan memasok sel baterai ke Samsung. Baterai OPTIUM menggunakan beberapa merk sel baterai karena supply sel yang tidak bisa selalu konstan.Yang lebih penting adalah sel yang kami gunakan adalah 100% baru dan grade A. Setiap merk sel baterai dibedakan dalam grade A, grade B dan rekondisi. Sel grade A adalah sel baterai yang mampu mencapai kapasitas optimumnya. Selain sel baterai, yang tidak kalah penting adalah sirkuit di dalamnya. Sirkuit yang kurang baik akan menyebabkan &quot;kehilangan kapasitas&quot; yang cukup besar sehingga kapasitas sel baterai jadi mubasir. Sirkuit yang buruk juga dapat menyebabkan baterai menjadi panas dan meleleh.\r\n&lt;/p&gt;&lt;p&gt;\r\nRadiant Computer selalu menguji ulang setiap baterai OPTIUM sebelum dijual. Kami menggunakan peralatan test baterai standard pabrik sehingga mampu menguji voltase dan kapasitas baterai secara akurat. Standard kami untuk total &quot;kehilangan kapasitas&quot; adalah sebesar 5%. Ini berarti bahwa bila baterai OPTIUM berkapasitas 4400mAh maka kapasitas aktualnya paling rendah adalah 4180mAh. Hal ini lebih tinggi dari standard baterai original yang mensyaratkan &quot;kehilangan kapasitas&quot; adalah sebesar 10-15%. Selain baterai, Radiant Computer juga menjual power adaptor OPTIUM. OPTIUM adalah merk terdaftar di Departemen HAKI, karena itu tentunya kualitas menjadi perhatian penting. Sama dengan baterai OPTIUM, adaptor OPTIUM juga 100% kompatibel dengan adaptor originalnya dan kualitas yang setara. Baterai OPTIUM bergaransi 6 bulan, sedangkan adaptor OPTIUM bergaransi 1 tahun replace (satu ganti satu). BE A SMART BUYER! Kualitas original, Harga lebih murah, Garansi terjamin. WHY NOT?&lt;/p&gt;', 'MENGENAL BATERAI OPTIUM', 'mengenal-baterai-optium', 0, 1, 'page', '2022-02-27 06:53:51', '2022-03-11 07:36:21'),
(27, 1, '', '&lt;p&gt;Selain baterai dan adaptor OPTIUM, Radiant Computer juga menjual adaptor original, keyboard laptop, panel LCD dan DVDRW dari pabrikan yang bersangkutan seperti Samsung, LG, AUO, Delta, Lite-On, Hi-Pro, Chicony, Darfon, Panasonic, Hitachi, dan lainnya. Tersedia untuk berbagai merk dan model laptop baik merk internasional maupun lokal. Untuk barang-barang tersebut lamanya garansi bervariasi sesuai dengan tipe barang.&lt;/p&gt;', 'MENYEDIAKAN BARANG LAINNYA', 'menyediakan-barang-lainnya', 0, 1, 'page', '2022-02-27 06:54:05', '2022-03-17 02:10:25'),
(28, 1, '', 'Tak ada gading yang tak retak. Kami mohon maaf bila terdapat kekurangan di sana sini. Untuk kritik dan saran mohon kirim e-mail ke:&amp;nbsp;&lt;a href=&quot;mailto:pusatbat@pusatbaterai.com&quot; class=&quot;text-blue&quot; style=&quot;background-color: rgb(255, 255, 255); color: rgb(21, 86, 144); margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: 600; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Questrial, sans-serif; vertical-align: baseline; text-size-adjust: none; outline: none; cursor: pointer;&quot;&gt;pusatbat@pusatbaterai.com&lt;/a&gt;', 'KRITIK & SARAN', 'kritik-saran', 0, 1, 'page', '2022-02-27 06:54:21', '2022-03-05 18:47:51'),
(29, 1, '/public/uploads/blog1.jpg', 'Duis fringilla felis et faucibus semper. Aliquam gravida elit et lectus viverra porta. Proin ultricies, massa eu aliquam tristique, sapien tellus gravida eros, eget sollicitudin nisl mi id tortor. Cras enim elit, convallis at imperdiet at, viverra eget di', 'CARA MEMBERSIHKAN KEYBORAD PADA LAPTOP DENGAN BENAR 5', 'cara-membersihkan-keyborad-pada-laptop-dengan-benar-22', 0, 1, 'post-blog', '2022-02-28 01:22:22', '2022-04-05 22:22:08'),
(30, 1, '/public/uploads/blog2.jpg', 'Duis fringilla felis et faucibus semper. Aliquam gravida elit et lectus viverra porta. Proin ultricies, massa eu aliquam tristique, sapien tellus gravida eros, eget sollicitudin nisl mi id tortor. Cras enim elit, convallis at imperdiet at, viverra eget di', 'CARA MEMBERSIHKAN KEYBORAD PADA LAPTOP DENGAN BENAR 6', 'cara-membersihkan-keyborad-pada-laptop-dengan-benar-2-23', 0, 1, 'post-blog', '2022-02-28 01:22:30', '2022-04-05 22:22:26'),
(31, 1, '/public/uploads/blog3.jpg', 'Duis fringilla felis et faucibus semper. Aliquam gravida elit et lectus viverra porta. Proin ultricies, massa eu aliquam tristique, sapien tellus gravida eros, eget sollicitudin nisl mi id tortor. Cras enim elit, convallis at imperdiet at, viverra eget di', 'CARA MEMBERSIHKAN KEYBORAD PADA LAPTOP DENGAN BENAR 7', 'cara-membersihkan-keyborad-pada-laptop-dengan-benar-3-24', 0, 1, 'post-blog', '2022-02-28 01:22:35', '2022-04-05 22:22:38'),
(32, 1, '/public/uploads/blog1.jpg', 'Duis fringilla felis et faucibus semper. Aliquam gravida elit et lectus viverra porta. Proin ultricies, massa eu aliquam tristique, sapien tellus gravida eros, eget sollicitudin nisl mi id tortor. Cras enim elit, convallis at imperdiet at, viverra eget di', 'CARA MEMBERSIHKAN KEYBORAD PADA LAPTOP DENGAN BENAR 8', 'cara-membersihkan-keyborad-pada-laptop-dengan-benar-4-25', 0, 1, 'post-blog', '2022-02-28 01:22:39', '2022-04-05 22:22:49'),
(33, 1, '', '&lt;p&gt;&lt;span style=&quot;text-align: center;&quot;&gt;coba&lt;/span&gt;&lt;br style=&quot;text-size-adjust: none; outline: none; line-height: 1em; margin-bottom: 0px; text-align: center;&quot;&gt;&lt;span style=&quot;text-align: center;&quot;&gt;ini coba&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'phone coba', 'phone-coba', 0, 1, 'page', '2022-03-17 02:08:44', '2022-04-04 07:54:16'),
(35, 1, '', '&lt;p&gt;No. Rek. : 8290332959&lt;/p&gt;&lt;p&gt;Nama : Raffles Indonesia, CV&lt;/p&gt;', 'Bank BCA - Cabang : HR Muhammad Surabaya demo selasa', 'bank-bca-cabang-hr-muhammad-surabaya', 0, 1, 'page', '2022-03-17 22:56:19', '2022-04-04 23:40:39'),
(36, 1, '', '&lt;p&gt;No. Rek. : 8290871281&lt;/p&gt;&lt;p&gt;Nama : Benny Widjaja&lt;/p&gt;', 'Bank BCA - Cabang : HR Muhammad Surabaya', 'bank-bca-cabang-hr-muhammad-surabaya-27', 0, 1, 'page', '2022-03-17 23:21:32', '2022-03-17 23:21:32'),
(37, 1, '', '&lt;p&gt;No. Rek. : 140-00-1051414-0&lt;/p&gt;&lt;p&gt;Nama : Oei Hwang Ie al Benny Widjaja&lt;/p&gt;', 'Bank MANDIRI (Rp) - Cabang : Kusuma Bangsa - Surabaya', 'bank-mandiri-rp-cabang-kusuma-bangsa-surabaya', 0, 1, 'page', '2022-03-17 23:34:59', '2022-03-17 23:34:59'),
(39, 1, '', '&lt;p&gt;Coba Testimonial Baru&lt;/p&gt;', 'Testimonial Abi', 'testimonial-abi', 0, 1, 'testimonial', '2022-04-05 00:35:28', '2022-04-05 00:35:28'),
(40, 1, '', '&lt;p&gt;Coba Testimonial Baru 2&lt;br&gt;&lt;/p&gt;', 'Testimonial Abi 2', 'testimonial-abi-2', 0, 1, 'testimonial', '2022-04-05 00:47:27', '2022-04-06 08:19:46'),
(41, 1, '', '&lt;p&gt;Coba Testimonial Baru 3&lt;br&gt;&lt;/p&gt;', 'Testimonial Abi 3', 'testimonial-abi-3', 0, 1, 'testimonial', '2022-04-05 00:47:42', '2022-04-06 08:19:59'),
(42, 1, '', '&lt;p&gt;Coba Testimonial Baru 4&lt;br&gt;&lt;/p&gt;', 'Testimonial Abi 4', 'testimonial-abi-4', 0, 1, 'testimonial', '2022-04-05 00:47:51', '2022-04-06 08:20:08'),
(43, 1, '', '&lt;p&gt;coba tanpa gambar&lt;/p&gt;', 'Coba tanpa gambar', 'coba-tanpa-gambar', 0, 1, 'post-blog', '2022-04-06 08:39:41', '2022-04-07 07:18:18'),
(44, 1, '', '', 'coba ada gambar tapi foto gambar hilang', 'coba-ada-gambar-tapi-foto-gambar-hilang', 0, 1, 'post-blog', '2022-04-07 07:27:02', '2022-04-07 07:27:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_extras`
--

DROP TABLE IF EXISTS `post_extras`;
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

INSERT INTO `post_extras` (`post_extra_id`, `post_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES
(1, 1, '_featured_image', '/public/uploads/1649222464-h-320-blog-big.jpg', '2022-02-18 07:06:07', '2022-04-05 22:21:07'),
(2, 1, '_allow_max_number_characters_at_frontend', '200', '2022-02-18 07:06:07', '2022-04-05 22:21:07'),
(3, 1, '_allow_comments_at_frontend', 'no', '2022-02-18 07:06:07', '2022-04-05 22:21:07'),
(4, 1, '_blog_seo_title', '', '2022-02-18 07:06:07', '2022-04-05 22:21:07'),
(5, 1, '_blog_seo_url', '', '2022-02-18 07:06:07', '2022-04-05 22:21:07'),
(6, 1, '_blog_seo_description', '', '2022-02-18 07:06:07', '2022-04-05 22:21:07'),
(7, 1, '_blog_seo_keywords', '', '2022-02-18 07:06:07', '2022-04-05 22:21:07'),
(8, 1, '_count_visit', '4', '2022-02-18 07:07:37', '2022-03-01 21:36:17'),
(9, 6, '_featured_image', '/public/uploads/1649222481-h-320-blog1.jpg', '2022-02-22 20:57:59', '2022-04-05 22:21:23'),
(10, 6, '_allow_max_number_characters_at_frontend', '200', '2022-02-22 20:57:59', '2022-04-05 22:21:23'),
(11, 6, '_allow_comments_at_frontend', 'no', '2022-02-22 20:57:59', '2022-04-05 22:21:23'),
(12, 6, '_blog_seo_title', '', '2022-02-22 20:57:59', '2022-04-05 22:21:23'),
(13, 6, '_blog_seo_url', '', '2022-02-22 20:57:59', '2022-04-05 22:21:23'),
(14, 6, '_blog_seo_description', '', '2022-02-22 20:57:59', '2022-04-05 22:21:23'),
(15, 6, '_blog_seo_keywords', '', '2022-02-22 20:57:59', '2022-04-05 22:21:23'),
(16, 7, '_featured_image', '/public/uploads/1649222496-h-320-blog2.jpg', '2022-02-22 21:00:12', '2022-04-05 22:21:38'),
(17, 7, '_allow_max_number_characters_at_frontend', '200', '2022-02-22 21:00:12', '2022-04-05 22:21:38'),
(18, 7, '_allow_comments_at_frontend', 'no', '2022-02-22 21:00:12', '2022-04-05 22:21:38'),
(19, 7, '_blog_seo_title', '', '2022-02-22 21:00:12', '2022-04-05 22:21:38'),
(20, 7, '_blog_seo_url', '', '2022-02-22 21:00:12', '2022-04-05 22:21:38'),
(21, 7, '_blog_seo_description', '', '2022-02-22 21:00:12', '2022-04-05 22:21:38'),
(22, 7, '_blog_seo_keywords', '', '2022-02-22 21:00:12', '2022-04-05 22:21:38'),
(23, 8, '_featured_image', '/public/uploads/1649222509-h-320-blog3.jpg', '2022-02-22 21:00:24', '2022-04-05 22:21:51'),
(24, 8, '_allow_max_number_characters_at_frontend', '200', '2022-02-22 21:00:24', '2022-04-05 22:21:51'),
(25, 8, '_allow_comments_at_frontend', 'no', '2022-02-22 21:00:24', '2022-04-05 22:21:51'),
(26, 8, '_blog_seo_title', '', '2022-02-22 21:00:24', '2022-04-05 22:21:51'),
(27, 8, '_blog_seo_url', '', '2022-02-22 21:00:24', '2022-04-05 22:21:51'),
(28, 8, '_blog_seo_description', '', '2022-02-22 21:00:24', '2022-04-05 22:21:51'),
(29, 8, '_blog_seo_keywords', '', '2022-02-22 21:00:24', '2022-04-05 22:21:51'),
(30, 29, '_featured_image', '/public/uploads/1649222525-h-320-blog-big.jpg', '2022-02-28 01:22:22', '2022-04-05 22:22:08'),
(31, 29, '_allow_max_number_characters_at_frontend', '200', '2022-02-28 01:22:22', '2022-04-05 22:22:08'),
(32, 29, '_allow_comments_at_frontend', 'no', '2022-02-28 01:22:22', '2022-04-05 22:22:08'),
(33, 29, '_blog_seo_title', '', '2022-02-28 01:22:22', '2022-04-05 22:22:08'),
(34, 29, '_blog_seo_url', '', '2022-02-28 01:22:22', '2022-04-05 22:22:08'),
(35, 29, '_blog_seo_description', '', '2022-02-28 01:22:22', '2022-04-05 22:22:08'),
(36, 29, '_blog_seo_keywords', '', '2022-02-28 01:22:22', '2022-04-05 22:22:08'),
(37, 30, '_featured_image', '/public/uploads/1649222542-h-320-blog1.jpg', '2022-02-28 01:22:30', '2022-04-05 22:22:26'),
(38, 30, '_allow_max_number_characters_at_frontend', '200', '2022-02-28 01:22:30', '2022-04-05 22:22:26'),
(39, 30, '_allow_comments_at_frontend', 'no', '2022-02-28 01:22:30', '2022-04-05 22:22:26'),
(40, 30, '_blog_seo_title', '', '2022-02-28 01:22:30', '2022-04-05 22:22:26'),
(41, 30, '_blog_seo_url', '', '2022-02-28 01:22:30', '2022-04-05 22:22:26'),
(42, 30, '_blog_seo_description', '', '2022-02-28 01:22:30', '2022-04-05 22:22:26'),
(43, 30, '_blog_seo_keywords', '', '2022-02-28 01:22:30', '2022-04-05 22:22:26'),
(44, 31, '_featured_image', '/public/uploads/1649222556-h-320-blog2.jpg', '2022-02-28 01:22:35', '2022-04-05 22:22:38'),
(45, 31, '_allow_max_number_characters_at_frontend', '200', '2022-02-28 01:22:35', '2022-04-05 22:22:38'),
(46, 31, '_allow_comments_at_frontend', 'no', '2022-02-28 01:22:35', '2022-04-05 22:22:38'),
(47, 31, '_blog_seo_title', '', '2022-02-28 01:22:35', '2022-04-05 22:22:38'),
(48, 31, '_blog_seo_url', '', '2022-02-28 01:22:35', '2022-04-05 22:22:38'),
(49, 31, '_blog_seo_description', '', '2022-02-28 01:22:35', '2022-04-05 22:22:38'),
(50, 31, '_blog_seo_keywords', '', '2022-02-28 01:22:35', '2022-04-05 22:22:38'),
(51, 32, '_featured_image', '/public/uploads/1649222567-h-320-blog3.jpg', '2022-02-28 01:22:39', '2022-04-05 22:22:49'),
(52, 32, '_allow_max_number_characters_at_frontend', '200', '2022-02-28 01:22:39', '2022-04-05 22:22:49'),
(53, 32, '_allow_comments_at_frontend', 'no', '2022-02-28 01:22:39', '2022-04-05 22:22:49'),
(54, 32, '_blog_seo_title', '', '2022-02-28 01:22:39', '2022-04-05 22:22:49'),
(55, 32, '_blog_seo_url', '', '2022-02-28 01:22:39', '2022-04-05 22:22:49'),
(56, 32, '_blog_seo_description', '', '2022-02-28 01:22:39', '2022-04-05 22:22:49'),
(57, 32, '_blog_seo_keywords', '', '2022-02-28 01:22:39', '2022-04-05 22:22:49'),
(58, 39, '_testimonial_image_url', NULL, '2022-04-05 00:35:28', '2022-04-05 00:35:28'),
(59, 39, '_testimonial_client_name', 'Abiansyah', '2022-04-05 00:35:28', '2022-04-05 00:35:28'),
(60, 39, '_testimonial_job_title', 'Mahasiswa', '2022-04-05 00:35:28', '2022-04-05 00:35:28'),
(61, 39, '_testimonial_company_name', '', '2022-04-05 00:35:28', '2022-04-05 00:35:28'),
(62, 39, '_testimonial_url', '', '2022-04-05 00:35:28', '2022-04-05 00:35:28'),
(63, 40, '_testimonial_image_url', NULL, '2022-04-05 00:47:27', '2022-04-06 08:19:47'),
(64, 40, '_testimonial_client_name', '', '2022-04-05 00:47:27', '2022-04-06 08:19:47'),
(65, 40, '_testimonial_job_title', 'Pelajar', '2022-04-05 00:47:27', '2022-04-06 08:19:47'),
(66, 40, '_testimonial_company_name', '', '2022-04-05 00:47:27', '2022-04-06 08:19:47'),
(67, 40, '_testimonial_url', '', '2022-04-05 00:47:27', '2022-04-06 08:19:47'),
(68, 41, '_testimonial_image_url', NULL, '2022-04-05 00:47:42', '2022-04-06 08:19:59'),
(69, 41, '_testimonial_client_name', '', '2022-04-05 00:47:42', '2022-04-06 08:19:59'),
(70, 41, '_testimonial_job_title', 'Pemain', '2022-04-05 00:47:42', '2022-04-06 08:19:59'),
(71, 41, '_testimonial_company_name', '', '2022-04-05 00:47:42', '2022-04-06 08:19:59'),
(72, 41, '_testimonial_url', '', '2022-04-05 00:47:42', '2022-04-06 08:19:59'),
(73, 42, '_testimonial_image_url', NULL, '2022-04-05 00:47:51', '2022-04-06 08:20:08'),
(74, 42, '_testimonial_client_name', '', '2022-04-05 00:47:51', '2022-04-06 08:20:08'),
(75, 42, '_testimonial_job_title', 'User', '2022-04-05 00:47:51', '2022-04-06 08:20:08'),
(76, 42, '_testimonial_company_name', '', '2022-04-05 00:47:51', '2022-04-06 08:20:08'),
(77, 42, '_testimonial_url', '', '2022-04-05 00:47:51', '2022-04-06 08:20:08'),
(78, 43, '_featured_image', NULL, '2022-04-06 08:39:41', '2022-04-07 07:18:18'),
(79, 43, '_allow_max_number_characters_at_frontend', '200', '2022-04-06 08:39:41', '2022-04-07 07:18:18'),
(80, 43, '_allow_comments_at_frontend', 'no', '2022-04-06 08:39:41', '2022-04-07 07:18:18'),
(81, 43, '_blog_seo_title', '', '2022-04-06 08:39:41', '2022-04-07 07:18:18'),
(82, 43, '_blog_seo_url', '', '2022-04-06 08:39:41', '2022-04-07 07:18:18'),
(83, 43, '_blog_seo_description', '', '2022-04-06 08:39:41', '2022-04-07 07:18:18'),
(84, 43, '_blog_seo_keywords', '', '2022-04-06 08:39:41', '2022-04-07 07:18:18'),
(85, 43, '_count_visit', '1', '2022-04-06 21:33:59', '2022-04-06 21:33:59'),
(86, 44, '_featured_image', '/public/uploads/1649341620-h-320-background-23.jpg', '2022-04-07 07:27:02', '2022-04-07 07:27:02'),
(87, 44, '_allow_max_number_characters_at_frontend', '200', '2022-04-07 07:27:02', '2022-04-07 07:27:02'),
(88, 44, '_allow_comments_at_frontend', 'no', '2022-04-07 07:27:02', '2022-04-07 07:27:02'),
(89, 44, '_blog_seo_title', '', '2022-04-07 07:27:02', '2022-04-07 07:27:02'),
(90, 44, '_blog_seo_url', '', '2022-04-07 07:27:02', '2022-04-07 07:27:02'),
(91, 44, '_blog_seo_description', '', '2022-04-07 07:27:02', '2022-04-07 07:27:02'),
(92, 44, '_blog_seo_keywords', NULL, '2022-04-07 07:27:02', '2022-04-07 07:27:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

DROP TABLE IF EXISTS `products`;
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
  `weight` int(100) NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `author_id`, `content`, `title`, `slug`, `status`, `sku`, `regular_price`, `sale_price`, `price`, `stock_qty`, `stock_availability`, `weight`, `type`, `image_url`, `created_at`, `updated_at`) VALUES
(2, 1, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and \ntypesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy\n text ever since the 1500s, when an unknown printer took a galley of \ntype and scrambled it to make a type specimen book. It has survived not \nonly five centuries, but also the leap into electronic typesetting, \nremaining essentially unchanged. It was popularised in the 1960s with \nthe release of Letraset sheets containing Lorem Ipsum passages, and more\n recently with desktop publishing software like Aldus PageMaker \nincluding versions of Lorem Ipsum.&lt;br&gt;&lt;/p&gt;', 'LED LCD Laptop Asus A455L', 'led-lcd-laptop-asus-a455l', 1, '', '350000', '200000', '200000', '0', 'in_stock', 0, 'simple_product', '/public/uploads/1644286487-h-250-Screenshot_2.png', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(3, 1, 'Mollis nec consequat at In feugiat mole stie tortor a malesuada', 'KEYBOARD ASUS coba', 'charger-asus-a4555l', 1, '', '250000', '', '250000', '0', 'in_stock', 0, 'simple_product', '/public/uploads/1649317393-h-250-blog-big2.jpg', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(4, 1, 'Mollis nec consequat at In feugiat mole stie tortor a malesuada', 'CHARGER ASUS A4555L gambar hapus', 'charger-asus-a4555l-2', 1, '', '250000', '', '250000', '0', 'in_stock', 0, 'simple_product', '', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(5, 1, 'Mollis nec consequat at In feugiat mole stie tortor a malesuada', 'CHARGER ASUS A4555L', 'charger-asus-a4555l-3', 1, '', '250000', '', '250000', '0', 'in_stock', 0, 'simple_product', '/public/uploads/1649318045-h-250-adaptor.jpg', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(6, 1, 'Mollis nec consequat at In feugiat mole stie tortor a malesuada', 'CHARGER ACER A4555L', 'charger-asus-a4555l-4', 1, '', '250000', '', '250000', '0', 'in_stock', 0, 'simple_product', '/public/uploads/1649318059-h-250-adaptor.jpg', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(7, 1, 'Mollis nec consequat at In feugiat mole stie tortor a malesuada', 'CHARGER TOSHIBA A4555L', 'charger-asus-a4555l-5', 1, '', '250000', '', '250000', '0', 'in_stock', 0, 'simple_product', '/public/uploads/1649316256-h-250-adaptor.jpg', '2022-02-18 07:30:03', '2022-04-25 23:37:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_brand`
--

DROP TABLE IF EXISTS `product_brand`;
CREATE TABLE `product_brand` (
  `id` int(10) NOT NULL,
  `name_brand` varchar(255) NOT NULL,
  `logo_brand` varchar(255) NOT NULL,
  `status` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product_brand`
--

INSERT INTO `product_brand` (`id`, `name_brand`, `logo_brand`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ASUS', '', 1, NULL, NULL),
(2, 'Coba Hapus', '', 1, NULL, NULL),
(3, 'coba 1', '0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'coba baru lagi', '0', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'coba baru lagi kamis ini yang baru', '0', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'coba baru last nih', '0', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'coba senin', '0', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'coba senin', '0', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'coba senin 2', '0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'coba senin 2', '0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'coba selasa', '0', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'coba selasa 2', '0', 1, '2022-04-25 23:13:51', '2022-04-25 23:13:51'),
(38, 'coba selasa 3', '0', 1, '2022-04-25 23:26:38', '2022-04-25 23:26:38'),
(40, 'coba hapus product 2', '0', 1, '2022-04-27 00:48:37', '2022-04-27 00:48:37'),
(41, 'coba ini', '0', 1, '2022-05-07 21:56:24', '2022-05-07 21:56:24'),
(42, 'coba ini 2', '2.3.png', 1, '2022-05-07 22:00:31', '2022-05-07 22:00:31'),
(43, 'coba ini 3', '1.jpg', 1, '2022-05-07 22:02:26', '2022-05-07 22:02:26'),
(44, 'coba ini 4', '2.3.png', 1, '2022-05-07 22:06:43', '2022-05-07 22:06:43'),
(45, 'coba ini 5', '2.3.png', 1, '2022-05-07 22:08:13', '2022-05-07 22:08:13'),
(46, 'coba ini 6', 'C:\\xampp\\tmp\\php1138.tmp', 1, '2022-05-07 22:08:41', '2022-05-07 22:08:41'),
(47, 'coba ini 7', 'C:\\xampp\\tmp\\phpB499.tmp', 1, '2022-05-07 22:10:29', '2022-05-07 22:10:29'),
(50, 'coba jumat', '0', 1, '2022-05-13 06:35:01', '2022-05-13 06:35:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_extras`
--

DROP TABLE IF EXISTS `product_extras`;
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

INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES
(40, 2, '_product_related_images_url', '{\"product_image\":\"/public/uploads/1644286487-h-250-Screenshot_2.png\",\"product_gallery_images\":[{\"id\":\"64E56312-B490-43EA-E825-3B2C60D35FDE\",\"url\":\"/public/uploads/01644286513-h-250-Screenshot_1.png\"},{\"id\":\"71EBDA21-4EF3-4D63-86D9-D563B8407E45\",\"url\":\"/public/uploads/11644286513-h-250-Screenshot_2.png\"},{\"id\":\"AB7615D8-A62C-49C3-85B3-A166E7019198\",\"url\":\"/public/uploads/21644286513-h-250-WhatsApp Image 2022-02-07 at 10.05.08.jpeg\"}],\"shop_banner_image\":\"\"}', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(41, 2, '_product_sale_price_start_date', '', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(42, 2, '_product_sale_price_end_date', '', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(43, 2, '_product_manage_stock', 'no', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(44, 2, '_product_manage_stock_back_to_order', 'not_allow', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(45, 2, '_product_extra_features', '', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(46, 2, '_product_enable_as_recommended', 'no', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(47, 2, '_product_enable_as_features', 'no', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(48, 2, '_product_enable_as_latest', 'no', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(49, 2, '_product_enable_as_related', 'yes', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(50, 2, '_product_enable_as_custom_design', 'yes', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(51, 2, '_product_enable_as_selected_cat', 'no', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(52, 2, '_product_enable_taxes', 'no', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(53, 2, '_product_custom_designer_settings', 'a:3:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}s:25:\"enable_layout_at_frontend\";s:2:\"no\";s:22:\"enable_global_settings\";s:2:\"no\";}', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(54, 2, '_product_custom_designer_data', NULL, '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(55, 2, '_product_enable_reviews', 'yes', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(56, 2, '_product_enable_reviews_add_link_to_product_page', 'yes', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(57, 2, '_product_enable_reviews_add_link_to_details_page', 'yes', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(58, 2, '_product_enable_video_feature', 'no', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(59, 2, '_product_video_feature_display_mode', 'content', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(60, 2, '_product_video_feature_title', NULL, '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(61, 2, '_product_video_feature_panel_size', 'a:2:{s:5:\"width\";N;s:6:\"height\";N;}', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(62, 2, '_product_video_feature_source', '', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(63, 2, '_product_video_feature_source_embedded_code', NULL, '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(64, 2, '_product_video_feature_source_online_url', NULL, '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(65, 2, '_product_enable_manufacturer', 'no', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(66, 2, '_product_enable_visibility_schedule', 'no', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(67, 2, '_product_seo_title', 'LED LCD Laptop Asus A455L', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(68, 2, '_product_seo_description', '', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(69, 2, '_product_seo_keywords', '', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(70, 2, '_product_compare_data', 'N;', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(71, 2, '_is_role_based_pricing_enable', 'no', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(72, 2, '_role_based_pricing', 'a:3:{s:13:\"administrator\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:9:\"site-user\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:6:\"vendor\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}}', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(73, 2, '_downloadable_product_files', 'a:0:{}', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(74, 2, '_downloadable_product_download_limit', '', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(75, 2, '_downloadable_product_download_expiry', '', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(76, 2, '_upsell_products', 'a:0:{}', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(77, 2, '_crosssell_products', 'a:0:{}', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(78, 2, '_selected_vendor', '1', '2022-02-07 19:15:32', '2022-02-07 21:34:38'),
(79, 3, '_product_related_images_url', '{\"product_image\":\"/public/uploads/1649317393-h-250-blog-big2.jpg\",\"product_gallery_images\":[],\"shop_banner_image\":\"\"}', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(80, 3, '_product_sale_price_start_date', '', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(81, 3, '_product_sale_price_end_date', '', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(82, 3, '_product_manage_stock', 'no', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(83, 3, '_product_manage_stock_back_to_order', 'not_allow', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(84, 3, '_product_extra_features', '', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(85, 3, '_product_enable_as_recommended', 'no', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(86, 3, '_product_enable_as_features', 'no', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(87, 3, '_product_enable_as_latest', 'no', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(88, 3, '_product_enable_as_related', 'yes', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(89, 3, '_product_enable_as_custom_design', 'yes', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(90, 3, '_product_enable_as_selected_cat', 'no', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(91, 3, '_product_enable_taxes', 'no', '2022-02-18 07:14:03', '2022-04-19 00:22:41'),
(92, 3, '_product_custom_designer_settings', 'a:3:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}s:25:\"enable_layout_at_frontend\";s:2:\"no\";s:22:\"enable_global_settings\";s:2:\"no\";}', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(93, 3, '_product_custom_designer_data', NULL, '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(94, 3, '_product_enable_reviews', 'yes', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(95, 3, '_product_enable_reviews_add_link_to_product_page', 'yes', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(96, 3, '_product_enable_reviews_add_link_to_details_page', 'yes', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(97, 3, '_product_enable_video_feature', 'no', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(98, 3, '_product_video_feature_display_mode', 'content', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(99, 3, '_product_video_feature_title', NULL, '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(100, 3, '_product_video_feature_panel_size', 'a:2:{s:5:\"width\";N;s:6:\"height\";N;}', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(101, 3, '_product_video_feature_source', '', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(102, 3, '_product_video_feature_source_embedded_code', NULL, '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(103, 3, '_product_video_feature_source_online_url', NULL, '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(104, 3, '_product_enable_manufacturer', 'no', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(105, 3, '_product_enable_visibility_schedule', 'no', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(106, 3, '_product_seo_title', 'CHARGER ASUS A4555L', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(107, 3, '_product_seo_description', '', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(108, 3, '_product_seo_keywords', '', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(109, 3, '_product_compare_data', 'a:1:{s:36:\"FB884288-4AD0-4AF6-BD75-19BA103DD849\";N;}', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(110, 3, '_is_role_based_pricing_enable', 'no', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(111, 3, '_role_based_pricing', 'a:3:{s:13:\"administrator\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:9:\"site-user\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:6:\"vendor\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}}', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(112, 3, '_downloadable_product_files', 'a:0:{}', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(113, 3, '_downloadable_product_download_limit', '', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(114, 3, '_downloadable_product_download_expiry', '', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(115, 3, '_upsell_products', 'a:0:{}', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(116, 3, '_crosssell_products', 'a:0:{}', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(117, 3, '_selected_vendor', '1', '2022-02-18 07:14:03', '2022-04-19 00:22:42'),
(118, 4, '_product_related_images_url', '{\"product_image\":\"\",\"product_gallery_images\":[],\"shop_banner_image\":\"\"}', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(119, 4, '_product_sale_price_start_date', '', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(120, 4, '_product_sale_price_end_date', '', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(121, 4, '_product_manage_stock', 'no', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(122, 4, '_product_manage_stock_back_to_order', 'not_allow', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(123, 4, '_product_extra_features', '', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(124, 4, '_product_enable_as_recommended', 'no', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(125, 4, '_product_enable_as_features', 'no', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(126, 4, '_product_enable_as_latest', 'no', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(127, 4, '_product_enable_as_related', 'yes', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(128, 4, '_product_enable_as_custom_design', 'yes', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(129, 4, '_product_enable_as_selected_cat', 'no', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(130, 4, '_product_enable_taxes', 'no', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(131, 4, '_product_custom_designer_settings', 'a:3:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}s:25:\"enable_layout_at_frontend\";s:2:\"no\";s:22:\"enable_global_settings\";s:2:\"no\";}', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(132, 4, '_product_custom_designer_data', NULL, '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(133, 4, '_product_enable_reviews', 'yes', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(134, 4, '_product_enable_reviews_add_link_to_product_page', 'yes', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(135, 4, '_product_enable_reviews_add_link_to_details_page', 'yes', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(136, 4, '_product_enable_video_feature', 'no', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(137, 4, '_product_video_feature_display_mode', 'content', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(138, 4, '_product_video_feature_title', NULL, '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(139, 4, '_product_video_feature_panel_size', 'a:2:{s:5:\"width\";N;s:6:\"height\";N;}', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(140, 4, '_product_video_feature_source', '', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(141, 4, '_product_video_feature_source_embedded_code', NULL, '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(142, 4, '_product_video_feature_source_online_url', NULL, '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(143, 4, '_product_enable_manufacturer', 'no', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(144, 4, '_product_enable_visibility_schedule', 'no', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(145, 4, '_product_seo_title', 'CHARGER ASUS A4555L', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(146, 4, '_product_seo_description', '', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(147, 4, '_product_seo_keywords', '', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(148, 4, '_product_compare_data', 'a:1:{s:36:\"FB884288-4AD0-4AF6-BD75-19BA103DD849\";N;}', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(149, 4, '_is_role_based_pricing_enable', 'no', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(150, 4, '_role_based_pricing', 'a:3:{s:13:\"administrator\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:9:\"site-user\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:6:\"vendor\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}}', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(151, 4, '_downloadable_product_files', 'a:0:{}', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(152, 4, '_downloadable_product_download_limit', '', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(153, 4, '_downloadable_product_download_expiry', '', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(154, 4, '_upsell_products', 'a:0:{}', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(155, 4, '_crosssell_products', 'a:0:{}', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(156, 4, '_selected_vendor', '1', '2022-02-18 07:29:46', '2022-04-25 23:38:26'),
(157, 5, '_product_related_images_url', '{\"product_image\":\"/public/uploads/1649318045-h-250-adaptor.jpg\",\"product_gallery_images\":[],\"shop_banner_image\":\"\"}', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(158, 5, '_product_sale_price_start_date', '', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(159, 5, '_product_sale_price_end_date', '', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(160, 5, '_product_manage_stock', 'no', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(161, 5, '_product_manage_stock_back_to_order', 'not_allow', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(162, 5, '_product_extra_features', '', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(163, 5, '_product_enable_as_recommended', 'no', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(164, 5, '_product_enable_as_features', 'no', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(165, 5, '_product_enable_as_latest', 'no', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(166, 5, '_product_enable_as_related', 'yes', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(167, 5, '_product_enable_as_custom_design', 'yes', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(168, 5, '_product_enable_as_selected_cat', 'no', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(169, 5, '_product_enable_taxes', 'no', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(170, 5, '_product_custom_designer_settings', 'a:3:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}s:25:\"enable_layout_at_frontend\";s:2:\"no\";s:22:\"enable_global_settings\";s:2:\"no\";}', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(171, 5, '_product_custom_designer_data', NULL, '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(172, 5, '_product_enable_reviews', 'yes', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(173, 5, '_product_enable_reviews_add_link_to_product_page', 'yes', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(174, 5, '_product_enable_reviews_add_link_to_details_page', 'yes', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(175, 5, '_product_enable_video_feature', 'no', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(176, 5, '_product_video_feature_display_mode', 'content', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(177, 5, '_product_video_feature_title', NULL, '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(178, 5, '_product_video_feature_panel_size', 'a:2:{s:5:\"width\";N;s:6:\"height\";N;}', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(179, 5, '_product_video_feature_source', '', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(180, 5, '_product_video_feature_source_embedded_code', NULL, '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(181, 5, '_product_video_feature_source_online_url', NULL, '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(182, 5, '_product_enable_manufacturer', 'no', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(183, 5, '_product_enable_visibility_schedule', 'no', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(184, 5, '_product_seo_title', 'CHARGER ASUS A4555L', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(185, 5, '_product_seo_description', '', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(186, 5, '_product_seo_keywords', '', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(187, 5, '_product_compare_data', 'a:1:{s:36:\"FB884288-4AD0-4AF6-BD75-19BA103DD849\";N;}', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(188, 5, '_is_role_based_pricing_enable', 'no', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(189, 5, '_role_based_pricing', 'a:3:{s:13:\"administrator\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:9:\"site-user\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:6:\"vendor\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}}', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(190, 5, '_downloadable_product_files', 'a:0:{}', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(191, 5, '_downloadable_product_download_limit', '', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(192, 5, '_downloadable_product_download_expiry', '', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(193, 5, '_upsell_products', 'a:0:{}', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(194, 5, '_crosssell_products', 'a:0:{}', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(195, 5, '_selected_vendor', '1', '2022-02-18 07:29:55', '2022-04-25 23:38:13'),
(196, 6, '_product_related_images_url', '{\"product_image\":\"/public/uploads/1649318059-h-250-adaptor.jpg\",\"product_gallery_images\":[],\"shop_banner_image\":\"\"}', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(197, 6, '_product_sale_price_start_date', '', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(198, 6, '_product_sale_price_end_date', '', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(199, 6, '_product_manage_stock', 'no', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(200, 6, '_product_manage_stock_back_to_order', 'not_allow', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(201, 6, '_product_extra_features', '', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(202, 6, '_product_enable_as_recommended', 'no', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(203, 6, '_product_enable_as_features', 'no', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(204, 6, '_product_enable_as_latest', 'no', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(205, 6, '_product_enable_as_related', 'yes', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(206, 6, '_product_enable_as_custom_design', 'yes', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(207, 6, '_product_enable_as_selected_cat', 'no', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(208, 6, '_product_enable_taxes', 'no', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(209, 6, '_product_custom_designer_settings', 'a:3:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}s:25:\"enable_layout_at_frontend\";s:2:\"no\";s:22:\"enable_global_settings\";s:2:\"no\";}', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(210, 6, '_product_custom_designer_data', NULL, '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(211, 6, '_product_enable_reviews', 'yes', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(212, 6, '_product_enable_reviews_add_link_to_product_page', 'yes', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(213, 6, '_product_enable_reviews_add_link_to_details_page', 'yes', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(214, 6, '_product_enable_video_feature', 'no', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(215, 6, '_product_video_feature_display_mode', 'content', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(216, 6, '_product_video_feature_title', NULL, '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(217, 6, '_product_video_feature_panel_size', 'a:2:{s:5:\"width\";N;s:6:\"height\";N;}', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(218, 6, '_product_video_feature_source', '', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(219, 6, '_product_video_feature_source_embedded_code', NULL, '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(220, 6, '_product_video_feature_source_online_url', NULL, '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(221, 6, '_product_enable_manufacturer', 'no', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(222, 6, '_product_enable_visibility_schedule', 'no', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(223, 6, '_product_seo_title', 'CHARGER ASUS A4555L', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(224, 6, '_product_seo_description', '', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(225, 6, '_product_seo_keywords', '', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(226, 6, '_product_compare_data', 'a:1:{s:36:\"FB884288-4AD0-4AF6-BD75-19BA103DD849\";N;}', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(227, 6, '_is_role_based_pricing_enable', 'no', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(228, 6, '_role_based_pricing', 'a:3:{s:13:\"administrator\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:9:\"site-user\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:6:\"vendor\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}}', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(229, 6, '_downloadable_product_files', 'a:0:{}', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(230, 6, '_downloadable_product_download_limit', '', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(231, 6, '_downloadable_product_download_expiry', '', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(232, 6, '_upsell_products', 'a:0:{}', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(233, 6, '_crosssell_products', 'a:0:{}', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(234, 6, '_selected_vendor', '1', '2022-02-18 07:29:59', '2022-04-25 23:38:01'),
(235, 7, '_product_related_images_url', '{\"product_image\":\"/public/uploads/1649316256-h-250-adaptor.jpg\",\"product_gallery_images\":[],\"shop_banner_image\":\"\"}', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(236, 7, '_product_sale_price_start_date', '', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(237, 7, '_product_sale_price_end_date', '', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(238, 7, '_product_manage_stock', 'no', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(239, 7, '_product_manage_stock_back_to_order', 'not_allow', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(240, 7, '_product_extra_features', '', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(241, 7, '_product_enable_as_recommended', 'no', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(242, 7, '_product_enable_as_features', 'no', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(243, 7, '_product_enable_as_latest', 'no', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(244, 7, '_product_enable_as_related', 'yes', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(245, 7, '_product_enable_as_custom_design', 'yes', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(246, 7, '_product_enable_as_selected_cat', 'no', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(247, 7, '_product_enable_taxes', 'no', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(248, 7, '_product_custom_designer_settings', 'a:3:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}s:25:\"enable_layout_at_frontend\";s:2:\"no\";s:22:\"enable_global_settings\";s:2:\"no\";}', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(249, 7, '_product_custom_designer_data', NULL, '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(250, 7, '_product_enable_reviews', 'yes', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(251, 7, '_product_enable_reviews_add_link_to_product_page', 'yes', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(252, 7, '_product_enable_reviews_add_link_to_details_page', 'yes', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(253, 7, '_product_enable_video_feature', 'no', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(254, 7, '_product_video_feature_display_mode', 'content', '2022-02-18 07:30:03', '2022-04-25 23:37:41'),
(255, 7, '_product_video_feature_title', NULL, '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(256, 7, '_product_video_feature_panel_size', 'a:2:{s:5:\"width\";N;s:6:\"height\";N;}', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(257, 7, '_product_video_feature_source', '', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(258, 7, '_product_video_feature_source_embedded_code', NULL, '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(259, 7, '_product_video_feature_source_online_url', NULL, '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(260, 7, '_product_enable_manufacturer', 'no', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(261, 7, '_product_enable_visibility_schedule', 'no', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(262, 7, '_product_seo_title', 'CHARGER ASUS A4555L', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(263, 7, '_product_seo_description', '', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(264, 7, '_product_seo_keywords', '', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(265, 7, '_product_compare_data', 'a:1:{s:36:\"FB884288-4AD0-4AF6-BD75-19BA103DD849\";N;}', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(266, 7, '_is_role_based_pricing_enable', 'no', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(267, 7, '_role_based_pricing', 'a:3:{s:13:\"administrator\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:9:\"site-user\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:6:\"vendor\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}}', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(268, 7, '_downloadable_product_files', 'a:0:{}', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(269, 7, '_downloadable_product_download_limit', '', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(270, 7, '_downloadable_product_download_expiry', '', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(271, 7, '_upsell_products', 'a:0:{}', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(272, 7, '_crosssell_products', 'a:0:{}', '2022-02-18 07:30:03', '2022-04-25 23:37:42'),
(273, 7, '_selected_vendor', '1', '2022-02-18 07:30:03', '2022-04-25 23:37:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `request_products`
--

DROP TABLE IF EXISTS `request_products`;
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

DROP TABLE IF EXISTS `roles`;
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

INSERT INTO `roles` (`id`, `role_name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2019-11-03 23:03:55', '2022-01-23 23:45:17'),
(2, 'Site User', 'site-user', '2019-11-03 23:03:55', '2019-11-03 23:03:55'),
(3, 'Vendor', 'vendor', '2019-11-03 23:03:55', '2019-11-03 23:03:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_user`
--

DROP TABLE IF EXISTS `role_user`;
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

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-11-03 23:03:55', '2019-11-03 23:03:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `save_custom_designs`
--

DROP TABLE IF EXISTS `save_custom_designs`;
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

DROP TABLE IF EXISTS `subscriptions`;
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

DROP TABLE IF EXISTS `terms`;
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

INSERT INTO `terms` (`term_id`, `name`, `slug`, `type`, `parent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LCD/LED', 'lcdled', 'product_cat', 0, 1, '2022-02-07 19:16:50', '2022-02-07 19:16:50'),
(2, 'Baterai Laptop\r\n', 'Baterai Laptop\r\n', 'product_cat\r\n', 0, 1, NULL, NULL),
(3, 'Communication', 'communication', 'product_cat', 0, 1, '2022-02-07 20:10:07', '2022-02-07 20:10:07'),
(4, 'Optical Disk Drive', 'optical-disk-drive', 'product_cat', 0, 1, '2022-02-07 20:10:22', '2022-02-07 20:10:22'),
(5, 'KABEL DAN KONEKTOR', 'kabel-dan-konektor', 'product_cat', 0, 1, '2022-02-07 20:10:40', '2022-02-07 20:10:40'),
(6, 'Hardisk Lenovo', 'hdd-lenovo', 'product_cat', 4, 1, '2022-02-07 20:11:15', '2022-02-07 20:11:15'),
(7, 'Hardisk Lenovo 2.5inch', 'hardisk-lenovo-25inch', 'product_cat', 6, 1, '2022-02-07 20:11:41', '2022-02-07 20:11:41'),
(9, 'SURABAYA', 'surabaya', 'product_tag', 0, 1, '2022-02-07 21:26:51', '2022-02-07 21:26:51'),
(10, 'SEMARANG', 'semarang', 'product_tag', 0, 1, '2022-02-07 21:26:57', '2022-02-07 21:26:57'),
(11, 'DENPASAR', 'denpasar', 'product_tag', 0, 1, '2022-02-07 21:27:03', '2022-02-07 21:27:03'),
(12, 'MATARAM', 'mataram', 'product_tag', 0, 1, '2022-02-07 21:27:09', '2022-02-07 21:27:09'),
(13, 'tokopedia', 'tokopedia', 'product_brands', 0, 1, '2022-02-19 07:41:37', '2022-04-05 01:18:46'),
(14, 'shopee', 'shopee', 'product_brands', 0, 1, '2022-02-19 07:47:10', '2022-04-05 01:18:24'),
(15, 'bukalapak', 'bukalapak', 'product_brands', 0, 1, '2022-02-19 07:47:24', '2022-04-05 01:18:08'),
(16, 'blibli', 'blibli', 'product_brands', 0, 1, '2022-02-19 07:47:33', '2022-04-05 01:17:52'),
(17, 'lazada', 'lazada', 'product_brands', 0, 1, '2022-02-19 07:47:42', '2022-04-05 01:17:35'),
(18, 'jdid', 'jdid', 'product_brands', 0, 1, '2022-02-19 07:47:52', '2022-04-05 01:17:23'),
(19, 'shopee', 'shopee-17', 'product_brands', 0, 1, '2022-02-22 20:39:53', '2022-04-05 01:17:05'),
(20, 'tokopedia', 'tokopedia-18', 'product_brands', 0, 1, '2022-02-22 20:40:11', '2022-04-09 23:49:04'),
(21, 'Coba', 'coba', 'product_brands', 0, 1, '2022-04-05 07:15:53', '2022-04-05 07:28:40'),
(22, 'coba tanpa gambar', 'coba-tanpa-gambar', 'product_brands', 0, 1, '2022-04-07 08:20:07', '2022-04-07 08:20:07'),
(23, 'a', 'a-21', 'product_tag', 0, 1, '2022-04-19 07:35:13', '2022-04-19 07:35:13'),
(24, 'coba', 'coba-21', 'product_tag', 0, 1, '2022-04-19 09:20:12', '2022-04-19 09:20:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `term_extras`
--

DROP TABLE IF EXISTS `term_extras`;
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

INSERT INTO `term_extras` (`term_extra_id`, `term_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES
(1, 1, '_category_description', '', '2022-02-07 19:16:50', '2022-02-07 19:16:50'),
(2, 1, '_category_img_url', NULL, '2022-02-07 19:16:50', '2022-02-07 19:16:50'),
(5, 3, '_category_description', '', '2022-02-07 20:10:07', '2022-02-07 20:10:07'),
(6, 3, '_category_img_url', NULL, '2022-02-07 20:10:07', '2022-02-07 20:10:07'),
(7, 4, '_category_description', '', '2022-02-07 20:10:22', '2022-02-07 20:10:22'),
(8, 4, '_category_img_url', NULL, '2022-02-07 20:10:22', '2022-02-07 20:10:22'),
(9, 5, '_category_description', '', '2022-02-07 20:10:40', '2022-02-07 20:10:40'),
(10, 5, '_category_img_url', NULL, '2022-02-07 20:10:40', '2022-02-07 20:10:40'),
(11, 6, '_category_description', '', '2022-02-07 20:11:15', '2022-02-07 20:11:15'),
(12, 6, '_category_img_url', NULL, '2022-02-07 20:11:15', '2022-02-07 20:11:15'),
(13, 7, '_category_description', '', '2022-02-07 20:11:41', '2022-02-07 20:11:41'),
(14, 7, '_category_img_url', NULL, '2022-02-07 20:11:41', '2022-02-07 20:11:41'),
(15, 8, '_product_attr_values', 'Semarang,Jogja,Surabaya', '2022-02-07 21:22:16', '2022-02-07 21:22:16'),
(16, 9, '_tag_description', '', '2022-02-07 21:26:51', '2022-02-07 21:26:51'),
(17, 10, '_tag_description', '', '2022-02-07 21:26:57', '2022-02-07 21:26:57'),
(18, 11, '_tag_description', '', '2022-02-07 21:27:03', '2022-02-07 21:27:03'),
(19, 12, '_tag_description', '', '2022-02-07 21:27:09', '2022-02-07 21:27:09'),
(20, 13, '_brand_country_name', 'indonesia', '2022-02-19 07:41:37', '2022-04-05 01:18:46'),
(21, 13, '_brand_short_description', '', '2022-02-19 07:41:37', '2022-04-05 01:18:46'),
(22, 13, '_brand_logo_img_url', '/public/uploads/1649146724-h-80-tokopedia.jpg', '2022-02-19 07:41:37', '2022-04-05 01:18:46'),
(23, 14, '_brand_country_name', 'indonesia', '2022-02-19 07:47:10', '2022-04-05 01:18:24'),
(24, 14, '_brand_short_description', '', '2022-02-19 07:47:10', '2022-04-05 01:18:24'),
(25, 14, '_brand_logo_img_url', '/public/uploads/1649146703-h-80-shopee.jpg', '2022-02-19 07:47:10', '2022-04-05 01:18:24'),
(26, 15, '_brand_country_name', 'indonesia', '2022-02-19 07:47:24', '2022-04-05 01:18:08'),
(27, 15, '_brand_short_description', '', '2022-02-19 07:47:24', '2022-04-05 01:18:08'),
(28, 15, '_brand_logo_img_url', '/public/uploads/1649146685-h-80-bukalapak.jpg', '2022-02-19 07:47:24', '2022-04-05 01:18:08'),
(29, 16, '_brand_country_name', 'indonesia', '2022-02-19 07:47:33', '2022-04-05 01:17:52'),
(30, 16, '_brand_short_description', '', '2022-02-19 07:47:33', '2022-04-05 01:17:52'),
(31, 16, '_brand_logo_img_url', '/public/uploads/1649146669-h-80-blibli.jpg', '2022-02-19 07:47:33', '2022-04-05 01:17:52'),
(32, 17, '_brand_country_name', 'indonesia', '2022-02-19 07:47:42', '2022-04-05 01:17:35'),
(33, 17, '_brand_short_description', '', '2022-02-19 07:47:42', '2022-04-05 01:17:35'),
(34, 17, '_brand_logo_img_url', '/public/uploads/1649146652-h-80-lazada.jpg', '2022-02-19 07:47:42', '2022-04-05 01:17:35'),
(35, 18, '_brand_country_name', 'indonesia', '2022-02-19 07:47:52', '2022-04-05 01:17:23'),
(36, 18, '_brand_short_description', '', '2022-02-19 07:47:52', '2022-04-05 01:17:23'),
(37, 18, '_brand_logo_img_url', '/public/uploads/1649146640-h-80-jdid.jpg', '2022-02-19 07:47:52', '2022-04-05 01:17:23'),
(38, 19, '_brand_country_name', 'indonesia', '2022-02-22 20:39:53', '2022-04-05 01:17:05'),
(39, 19, '_brand_short_description', '', '2022-02-22 20:39:53', '2022-04-05 01:17:05'),
(40, 19, '_brand_logo_img_url', '/public/uploads/1649146622-h-80-shopee.jpg', '2022-02-22 20:39:53', '2022-04-05 01:17:05'),
(41, 20, '_brand_country_name', 'indonesia', '2022-02-22 20:40:11', '2022-04-09 23:49:04'),
(42, 20, '_brand_short_description', 'https://www.tokopedia.com/radiantkomputer?source=universe&amp;amp;st=product', '2022-02-22 20:40:11', '2022-04-09 23:49:04'),
(43, 20, '_brand_logo_img_url', '/public/uploads/1649168060-h-80-tokopedia.jpg', '2022-02-22 20:40:11', '2022-04-09 23:49:04'),
(44, 21, '_brand_country_name', 'indonesia', '2022-04-05 07:15:53', '2022-04-05 07:28:40'),
(45, 21, '_brand_short_description', 'https://pdiperjuangan.id/', '2022-04-05 07:15:53', '2022-04-05 07:28:40'),
(46, 21, '_brand_logo_img_url', '/public/uploads/1649168199-h-80-1.1.jpg', '2022-04-05 07:15:53', '2022-04-05 07:28:40'),
(47, 22, '_brand_country_name', 'indonesia', '2022-04-07 08:20:07', '2022-04-07 08:20:07'),
(48, 22, '_brand_short_description', '', '2022-04-07 08:20:07', '2022-04-07 08:20:07'),
(49, 22, '_brand_logo_img_url', NULL, '2022-04-07 08:20:07', '2022-04-07 08:20:07'),
(50, 23, '_tag_description', 'a', '2022-04-19 07:35:13', '2022-04-19 07:35:13'),
(51, 24, '_tag_description', 'coba', '2022-04-19 09:20:12', '2022-04-19 09:20:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_photo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_status` int(10) UNSIGNED NOT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `display_name`, `name`, `email`, `phone_number`, `password`, `user_photo_url`, `user_status`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '', '$2a$12$vy67upto5TFgj29zrjGIsuPgvKL0/fnsnm.C7pEDe8U0M1eJ3YCXK', '', 1, '$2y$10$xW53MN8gc4td4lkT1vNbGe1/5ldF6hJC7oUWTwVH6qTiBHdpXYMAq', '2019-11-03 23:03:55', '2019-11-03 23:03:55'),
(2, 'Bryan Wijaya', 'Bryan Wijaya', 'bryan@gmail.com', '+628113116991', '$2a$12$FnAg9EFwi/FCIfvzjGxTVeM2qRifi1x2UehRItu3fjtFcrC8OhOUS', NULL, 1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_custom_designs`
--

DROP TABLE IF EXISTS `users_custom_designs`;
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

DROP TABLE IF EXISTS `users_details`;
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

INSERT INTO `users_details` (`id`, `user_id`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"profile_details\":{\"store_name\":\"admin\",\"address_line_1\":\"address 1\",\"address_line_2\":\"address 2\",\"city\":\"city\",\"state\":\"state\",\"country\":\"country\",\"zip_postal_code\":2210,\"phone\":123456},\"general_details\":{\"cover_img\":\"\",\"vendor_home_page_cats\":\"\",\"google_map_app_key\":\"\",\"latitude\":\"-25.363\",\"longitude\":\"131.044\"},\"social_media\":{\"fb_follow_us_url\":\"\",\"twitter_follow_us_url\":\"\",\"linkedin_follow_us_url\":\"\",\"dribbble_follow_us_url\":\"\",\"google_plus_follow_us_url\":\"\",\"instagram_follow_us_url\":\"\",\"youtube_follow_us_url\":\"\"}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role_permissions`
--

DROP TABLE IF EXISTS `user_role_permissions`;
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

INSERT INTO `user_role_permissions` (`id`, `role_id`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 1, 'a:43:{i:0;s:17:\"pages_list_access\";i:1;s:21:\"add_edit_delete_pages\";i:2;s:17:\"list_blogs_access\";i:3;s:20:\"add_edit_delete_blog\";i:4;s:18:\"blog_comments_list\";i:5;s:22:\"blog_categories_access\";i:6;s:23:\"testimonial_list_access\";i:7;s:27:\"add_edit_delete_testimonial\";i:8;s:18:\"brands_list_access\";i:9;s:22:\"add_edit_delete_brands\";i:10;s:15:\"manage_seo_full\";i:11;s:20:\"products_list_access\";i:12;s:23:\"add_edit_delete_product\";i:13;s:25:\"product_categories_access\";i:14;s:19:\"product_tags_access\";i:15;s:25:\"product_attributes_access\";i:16;s:21:\"product_colors_access\";i:17;s:20:\"product_sizes_access\";i:18;s:29:\"products_comments_list_access\";i:19;s:18:\"manage_orders_list\";i:20;s:19:\"manage_reports_list\";i:21;s:19:\"vendors_list_access\";i:22;s:23:\"vendors_withdraw_access\";i:23;s:29:\"vendors_refund_request_access\";i:24;s:30:\"vendors_earning_reports_access\";i:25;s:27:\"vendors_announcement_access\";i:26;s:15:\"vendor_settings\";i:27;s:28:\"vendors_packages_full_access\";i:28;s:28:\"vendors_packages_list_access\";i:29;s:30:\"vendors_packages_create_access\";i:30;s:34:\"manage_shipping_method_menu_access\";i:31;s:33:\"manage_payment_method_menu_access\";i:32;s:36:\"manage_designer_elements_menu_access\";i:33;s:25:\"manage_coupon_menu_access\";i:34;s:27:\"manage_settings_menu_access\";i:35;s:36:\"manage_requested_product_menu_access\";i:36;s:31:\"manage_subscription_menu_access\";i:37;s:28:\"manage_extra_features_access\";i:38;s:19:\"manage_available_at\";i:39;s:19:\"all_checkbox_enable\";i:40;s:20:\"product_brand_access\";i:41;s:21:\"product_compatibility\";i:42;s:14:\"pages_bank_lis\";}', '2019-11-03 23:03:56', '2022-01-23 23:45:17'),
(2, 3, 'a:13:{i:0;s:15:\"manage_seo_full\";i:1;s:20:\"manage_products_full\";i:2;s:20:\"products_list_access\";i:3;s:23:\"add_edit_delete_product\";i:4;s:29:\"products_comments_list_access\";i:5;s:18:\"manage_orders_list\";i:6;s:19:\"manage_reports_list\";i:7;s:34:\"manage_shipping_method_menu_access\";i:8;s:33:\"manage_payment_method_menu_access\";i:9;s:25:\"manage_coupon_menu_access\";i:10;s:23:\"vendors_withdraw_access\";i:11;s:36:\"manage_requested_product_menu_access\";i:12;s:28:\"manage_extra_features_access\";}', '2019-11-03 23:03:56', '2019-11-03 23:03:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor_announcements`
--

DROP TABLE IF EXISTS `vendor_announcements`;
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

DROP TABLE IF EXISTS `vendor_orders`;
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

DROP TABLE IF EXISTS `vendor_packages`;
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

INSERT INTO `vendor_packages` (`id`, `package_type`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default', '{\"max_number_product\":100,\"show_map_on_store_page\":true,\"show_social_media_follow_btn_on_store_page\":true,\"show_social_media_share_btn_on_store_page\":true,\"show_contact_form_on_store_page\":true,\"vendor_expired_date_type\":\"lifetime\",\"vendor_custom_expired_date\":\"\",\"vendor_commission\":20,\"min_withdraw_amount\":50}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor_totals`
--

DROP TABLE IF EXISTS `vendor_totals`;
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

DROP TABLE IF EXISTS `vendor_withdraws`;
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
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `compatibility`
--
ALTER TABLE `compatibility`
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
-- Indeks untuk tabel `list_bank`
--
ALTER TABLE `list_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `list_bestsellerproducts`
--
ALTER TABLE `list_bestsellerproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `list_relatedblog`
--
ALTER TABLE `list_relatedblog`
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
-- Indeks untuk tabel `product_brand`
--
ALTER TABLE `product_brand`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
-- Indeks untuk tabel `user_role_permissions`
--
ALTER TABLE `user_role_permissions`
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
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `api_tokens`
--
ALTER TABLE `api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `compatibility`
--
ALTER TABLE `compatibility`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT untuk tabel `list_bank`
--
ALTER TABLE `list_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `list_bestsellerproducts`
--
ALTER TABLE `list_bestsellerproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `list_relatedblog`
--
ALTER TABLE `list_relatedblog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `post_extras`
--
ALTER TABLE `post_extras`
  MODIFY `post_extra_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `product_extras`
--
ALTER TABLE `product_extras`
  MODIFY `product_extra_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT untuk tabel `request_products`
--
ALTER TABLE `request_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `term_extras`
--
ALTER TABLE `term_extras`
  MODIFY `term_extra_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users_custom_designs`
--
ALTER TABLE `users_custom_designs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user_role_permissions`
--
ALTER TABLE `user_role_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
