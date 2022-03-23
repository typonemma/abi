-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Mar 2022 pada 06.12
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

INSERT INTO `ads` (`id`, `title`, `image`, `section`, `url`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES(4, 'left_right', '/public/uploads/1644285710-h-250-Screenshot_1.png', '', 'https://www.facebook.com/', '2022-02-08', '2022-02-15', '1', '2022-02-07 19:01:52', '2022-02-07 19:01:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `api_tokens`
--

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

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

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
-- Struktur dari tabel `custom_currency_values`
--

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
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id` int(10) UNSIGNED NOT NULL,
  `rajaongkir_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provinsi_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(10, '1', '21', 'Aceh Barat', 'Kabupaten', '23681', '2019-08-26 10:06:24', '2019-10-09 08:37:03');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(11, '2', '21', 'Aceh Barat Daya', 'Kabupaten', '23764', '2019-08-26 10:06:24', '2019-10-09 08:37:03');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(12, '3', '21', 'Aceh Besar', 'Kabupaten', '23951', '2019-08-26 10:06:24', '2019-10-09 08:37:03');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(13, '4', '21', 'Aceh Jaya', 'Kabupaten', '23654', '2019-08-26 10:06:24', '2019-10-09 08:37:03');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(14, '5', '21', 'Aceh Selatan', 'Kabupaten', '23719', '2019-08-26 10:06:24', '2019-10-09 08:37:03');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(15, '6', '21', 'Aceh Singkil', 'Kabupaten', '24785', '2019-08-26 10:06:24', '2019-10-09 08:37:03');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(16, '7', '21', 'Aceh Tamiang', 'Kabupaten', '24476', '2019-08-26 10:06:24', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(17, '8', '21', 'Aceh Tengah', 'Kabupaten', '24511', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(18, '9', '21', 'Aceh Tenggara', 'Kabupaten', '24611', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(19, '10', '21', 'Aceh Timur', 'Kabupaten', '24454', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(20, '11', '21', 'Aceh Utara', 'Kabupaten', '24382', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(21, '12', '32', 'Agam', 'Kabupaten', '26411', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(22, '13', '23', 'Alor', 'Kabupaten', '85811', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(23, '14', '19', 'Ambon', 'Kota', '97222', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(24, '15', '34', 'Asahan', 'Kabupaten', '21214', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(25, '16', '24', 'Asmat', 'Kabupaten', '99777', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(26, '17', '1', 'Badung', 'Kabupaten', '80351', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(27, '18', '13', 'Balangan', 'Kabupaten', '71611', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(28, '19', '15', 'Balikpapan', 'Kota', '76111', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(29, '20', '21', 'Banda Aceh', 'Kota', '23238', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(30, '21', '18', 'Bandar Lampung', 'Kota', '35139', '2019-08-26 10:06:25', '2019-10-09 08:37:04');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(31, '23', '9', 'Bandung', 'Kota', '40111', '2019-08-26 10:06:25', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(32, '24', '9', 'Bandung Barat', 'Kabupaten', '40721', '2019-08-26 10:06:25', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(33, '25', '29', 'Banggai', 'Kabupaten', '94711', '2019-08-26 10:06:25', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(34, '26', '29', 'Banggai Kepulauan', 'Kabupaten', '94881', '2019-08-26 10:06:26', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(35, '27', '2', 'Bangka', 'Kabupaten', '33212', '2019-08-26 10:06:26', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(36, '28', '2', 'Bangka Barat', 'Kabupaten', '33315', '2019-08-26 10:06:26', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(37, '29', '2', 'Bangka Selatan', 'Kabupaten', '33719', '2019-08-26 10:06:26', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(38, '30', '2', 'Bangka Tengah', 'Kabupaten', '33613', '2019-08-26 10:06:26', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(39, '31', '11', 'Bangkalan', 'Kabupaten', '69118', '2019-08-26 10:06:26', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(40, '32', '1', 'Bangli', 'Kabupaten', '80619', '2019-08-26 10:06:26', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(41, '34', '9', 'Banjar', 'Kota', '46311', '2019-08-26 10:06:26', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(42, '35', '13', 'Banjarbaru', 'Kota', '70712', '2019-08-26 10:06:26', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(43, '36', '13', 'Banjarmasin', 'Kota', '70117', '2019-08-26 10:06:26', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(44, '37', '10', 'Banjarnegara', 'Kabupaten', '53419', '2019-08-26 10:06:26', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(45, '38', '28', 'Bantaeng', 'Kabupaten', '92411', '2019-08-26 10:06:26', '2019-10-09 08:37:05');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(46, '39', '5', 'Bantul', 'Kabupaten', '55715', '2019-08-26 10:06:26', '2019-10-09 08:37:06');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(47, '40', '33', 'Banyuasin', 'Kabupaten', '30911', '2019-08-26 10:06:26', '2019-10-09 08:37:06');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(48, '41', '10', 'Banyumas', 'Kabupaten', '53114', '2019-08-26 10:06:26', '2019-10-09 08:37:06');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(49, '42', '11', 'Banyuwangi', 'Kabupaten', '68416', '2019-08-26 10:06:27', '2019-10-09 08:37:06');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(50, '43', '13', 'Barito Kuala', 'Kabupaten', '70511', '2019-08-26 10:06:27', '2019-10-09 08:37:06');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(51, '44', '14', 'Barito Selatan', 'Kabupaten', '73711', '2019-08-26 10:06:27', '2019-10-09 08:37:06');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(52, '45', '14', 'Barito Timur', 'Kabupaten', '73671', '2019-08-26 10:06:27', '2019-10-09 08:37:06');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(53, '46', '14', 'Barito Utara', 'Kabupaten', '73881', '2019-08-26 10:06:27', '2019-10-09 08:37:06');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(54, '47', '28', 'Barru', 'Kabupaten', '90719', '2019-08-26 10:06:27', '2019-10-09 08:37:06');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(55, '48', '17', 'Batam', 'Kota', '29413', '2019-08-26 10:06:27', '2019-10-09 08:37:06');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(56, '49', '10', 'Batang', 'Kabupaten', '51211', '2019-08-26 10:06:27', '2019-10-09 08:37:06');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(57, '50', '8', 'Batang Hari', 'Kabupaten', '36613', '2019-08-26 10:06:27', '2019-10-09 08:37:06');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(58, '51', '11', 'Batu', 'Kota', '65311', '2019-08-26 10:06:27', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(59, '52', '34', 'Batu Bara', 'Kabupaten', '21655', '2019-08-26 10:06:27', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(60, '53', '30', 'Bau-Bau', 'Kota', '93719', '2019-08-26 10:06:27', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(61, '55', '9', 'Bekasi', 'Kota', '17121', '2019-08-26 10:06:27', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(62, '56', '2', 'Belitung', 'Kabupaten', '33419', '2019-08-26 10:06:27', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(63, '57', '2', 'Belitung Timur', 'Kabupaten', '33519', '2019-08-26 10:06:28', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(64, '58', '23', 'Belu', 'Kabupaten', '85711', '2019-08-26 10:06:28', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(65, '59', '21', 'Bener Meriah', 'Kabupaten', '24581', '2019-08-26 10:06:28', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(66, '60', '26', 'Bengkalis', 'Kabupaten', '28719', '2019-08-26 10:06:28', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(67, '61', '12', 'Bengkayang', 'Kabupaten', '79213', '2019-08-26 10:06:28', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(68, '62', '4', 'Bengkulu', 'Kota', '38229', '2019-08-26 10:06:28', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(69, '63', '4', 'Bengkulu Selatan', 'Kabupaten', '38519', '2019-08-26 10:06:28', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(70, '64', '4', 'Bengkulu Tengah', 'Kabupaten', '38319', '2019-08-26 10:06:28', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(71, '65', '4', 'Bengkulu Utara', 'Kabupaten', '38619', '2019-08-26 10:06:28', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(72, '66', '15', 'Berau', 'Kabupaten', '77311', '2019-08-26 10:06:28', '2019-10-09 08:37:07');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(73, '67', '24', 'Biak Numfor', 'Kabupaten', '98119', '2019-08-26 10:06:28', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(74, '69', '22', 'Bima', 'Kota', '84139', '2019-08-26 10:06:29', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(75, '70', '34', 'Binjai', 'Kota', '20712', '2019-08-26 10:06:29', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(76, '71', '17', 'Bintan', 'Kabupaten', '29135', '2019-08-26 10:06:29', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(77, '72', '21', 'Bireuen', 'Kabupaten', '24219', '2019-08-26 10:06:29', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(78, '73', '31', 'Bitung', 'Kota', '95512', '2019-08-26 10:06:29', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(79, '75', '11', 'Blitar', 'Kota', '66124', '2019-08-26 10:06:29', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(80, '76', '10', 'Blora', 'Kabupaten', '58219', '2019-08-26 10:06:29', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(81, '77', '7', 'Boalemo', 'Kabupaten', '96319', '2019-08-26 10:06:29', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(82, '79', '9', 'Bogor', 'Kota', '16119', '2019-08-26 10:06:29', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(83, '80', '11', 'Bojonegoro', 'Kabupaten', '62119', '2019-08-26 10:06:29', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(84, '81', '31', 'Bolaang Mongondow (Bolmong)', 'Kabupaten', '95755', '2019-08-26 10:06:29', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(85, '82', '31', 'Bolaang Mongondow Selatan', 'Kabupaten', '95774', '2019-08-26 10:06:29', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(86, '83', '31', 'Bolaang Mongondow Timur', 'Kabupaten', '95783', '2019-08-26 10:06:29', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(87, '84', '31', 'Bolaang Mongondow Utara', 'Kabupaten', '95765', '2019-08-26 10:06:30', '2019-10-09 08:37:08');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(88, '85', '30', 'Bombana', 'Kabupaten', '93771', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(89, '86', '11', 'Bondowoso', 'Kabupaten', '68219', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(90, '87', '28', 'Bone', 'Kabupaten', '92713', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(91, '88', '7', 'Bone Bolango', 'Kabupaten', '96511', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(92, '89', '15', 'Bontang', 'Kota', '75313', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(93, '90', '24', 'Boven Digoel', 'Kabupaten', '99662', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(94, '91', '10', 'Boyolali', 'Kabupaten', '57312', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(95, '92', '10', 'Brebes', 'Kabupaten', '52212', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(96, '93', '32', 'Bukittinggi', 'Kota', '26115', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(97, '94', '1', 'Buleleng', 'Kabupaten', '81111', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(98, '95', '28', 'Bulukumba', 'Kabupaten', '92511', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(99, '96', '16', 'Bulungan (Bulongan)', 'Kabupaten', '77211', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(100, '97', '8', 'Bungo', 'Kabupaten', '37216', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(101, '98', '29', 'Buol', 'Kabupaten', '94564', '2019-08-26 10:06:30', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(102, '99', '19', 'Buru', 'Kabupaten', '97371', '2019-08-26 10:06:31', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(103, '100', '19', 'Buru Selatan', 'Kabupaten', '97351', '2019-08-26 10:06:31', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(104, '101', '30', 'Buton', 'Kabupaten', '93754', '2019-08-26 10:06:31', '2019-10-09 08:37:09');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(105, '102', '30', 'Buton Utara', 'Kabupaten', '93745', '2019-08-26 10:06:31', '2019-10-09 08:37:10');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(106, '103', '9', 'Ciamis', 'Kabupaten', '46211', '2019-08-26 10:06:31', '2019-10-09 08:37:10');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(107, '104', '9', 'Cianjur', 'Kabupaten', '43217', '2019-08-26 10:06:31', '2019-10-09 08:37:10');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(108, '105', '10', 'Cilacap', 'Kabupaten', '53211', '2019-08-26 10:06:31', '2019-10-09 08:37:10');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(109, '106', '3', 'Cilegon', 'Kota', '42417', '2019-08-26 10:06:31', '2019-10-09 08:37:10');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(110, '107', '9', 'Cimahi', 'Kota', '40512', '2019-08-26 10:06:31', '2019-10-09 08:37:10');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(111, '109', '9', 'Cirebon', 'Kota', '45116', '2019-08-26 10:06:31', '2019-10-09 08:37:10');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(112, '110', '34', 'Dairi', 'Kabupaten', '22211', '2019-08-26 10:06:31', '2019-10-09 08:37:10');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(113, '111', '24', 'Deiyai (Deliyai)', 'Kabupaten', '98784', '2019-08-26 10:06:31', '2019-10-09 08:37:10');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(114, '112', '34', 'Deli Serdang', 'Kabupaten', '20511', '2019-08-26 10:06:31', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(115, '113', '10', 'Demak', 'Kabupaten', '59519', '2019-08-26 10:06:31', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(116, '114', '1', 'Denpasar', 'Kota', '80227', '2019-08-26 10:06:31', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(117, '115', '9', 'Depok', 'Kota', '16416', '2019-08-26 10:06:31', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(118, '116', '32', 'Dharmasraya', 'Kabupaten', '27612', '2019-08-26 10:06:31', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(119, '117', '24', 'Dogiyai', 'Kabupaten', '98866', '2019-08-26 10:06:31', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(120, '118', '22', 'Dompu', 'Kabupaten', '84217', '2019-08-26 10:06:31', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(121, '119', '29', 'Donggala', 'Kabupaten', '94341', '2019-08-26 10:06:32', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(122, '120', '26', 'Dumai', 'Kota', '28811', '2019-08-26 10:06:32', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(123, '121', '33', 'Empat Lawang', 'Kabupaten', '31811', '2019-08-26 10:06:32', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(124, '122', '23', 'Ende', 'Kabupaten', '86351', '2019-08-26 10:06:32', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(125, '123', '28', 'Enrekang', 'Kabupaten', '91719', '2019-08-26 10:06:32', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(126, '124', '25', 'Fakfak', 'Kabupaten', '98651', '2019-08-26 10:06:32', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(127, '125', '23', 'Flores Timur', 'Kabupaten', '86213', '2019-08-26 10:06:32', '2019-10-09 08:37:11');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(128, '126', '9', 'Garut', 'Kabupaten', '44126', '2019-08-26 10:06:32', '2019-10-09 08:37:12');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(129, '127', '21', 'Gayo Lues', 'Kabupaten', '24653', '2019-08-26 10:06:32', '2019-10-09 08:37:12');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(130, '128', '1', 'Gianyar', 'Kabupaten', '80519', '2019-08-26 10:06:32', '2019-10-09 08:37:12');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(131, '130', '7', 'Gorontalo', 'Kota', '96115', '2019-08-26 10:06:32', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(132, '131', '7', 'Gorontalo Utara', 'Kabupaten', '96611', '2019-08-26 10:06:32', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(133, '132', '28', 'Gowa', 'Kabupaten', '92111', '2019-08-26 10:06:32', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(134, '133', '11', 'Gresik', 'Kabupaten', '61115', '2019-08-26 10:06:32', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(135, '134', '10', 'Grobogan', 'Kabupaten', '58111', '2019-08-26 10:06:32', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(136, '135', '5', 'Gunung Kidul', 'Kabupaten', '55812', '2019-08-26 10:06:33', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(137, '136', '14', 'Gunung Mas', 'Kabupaten', '74511', '2019-08-26 10:06:33', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(138, '137', '34', 'Gunungsitoli', 'Kota', '22813', '2019-08-26 10:06:33', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(139, '138', '20', 'Halmahera Barat', 'Kabupaten', '97757', '2019-08-26 10:06:33', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(140, '139', '20', 'Halmahera Selatan', 'Kabupaten', '97911', '2019-08-26 10:06:33', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(141, '140', '20', 'Halmahera Tengah', 'Kabupaten', '97853', '2019-08-26 10:06:33', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(142, '141', '20', 'Halmahera Timur', 'Kabupaten', '97862', '2019-08-26 10:06:33', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(143, '142', '20', 'Halmahera Utara', 'Kabupaten', '97762', '2019-08-26 10:06:33', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(144, '143', '13', 'Hulu Sungai Selatan', 'Kabupaten', '71212', '2019-08-26 10:06:33', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(145, '144', '13', 'Hulu Sungai Tengah', 'Kabupaten', '71313', '2019-08-26 10:06:33', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(146, '145', '13', 'Hulu Sungai Utara', 'Kabupaten', '71419', '2019-08-26 10:06:33', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(147, '146', '34', 'Humbang Hasundutan', 'Kabupaten', '22457', '2019-08-26 10:06:33', '2019-10-09 08:37:13');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(148, '147', '26', 'Indragiri Hilir', 'Kabupaten', '29212', '2019-08-26 10:06:33', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(149, '148', '26', 'Indragiri Hulu', 'Kabupaten', '29319', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(150, '149', '9', 'Indramayu', 'Kabupaten', '45214', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(151, '150', '24', 'Intan Jaya', 'Kabupaten', '98771', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(152, '151', '6', 'Jakarta Barat', 'Kota', '11220', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(153, '152', '6', 'Jakarta Pusat', 'Kota', '10540', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(154, '153', '6', 'Jakarta Selatan', 'Kota', '12230', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(155, '154', '6', 'Jakarta Timur', 'Kota', '13330', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(156, '155', '6', 'Jakarta Utara', 'Kota', '14140', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(157, '156', '8', 'Jambi', 'Kota', '36111', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(158, '158', '24', 'Jayapura', 'Kota', '99114', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(159, '159', '24', 'Jayawijaya', 'Kabupaten', '99511', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(160, '160', '11', 'Jember', 'Kabupaten', '68113', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(161, '161', '1', 'Jembrana', 'Kabupaten', '82251', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(162, '162', '28', 'Jeneponto', 'Kabupaten', '92319', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(163, '163', '10', 'Jepara', 'Kabupaten', '59419', '2019-08-26 10:06:34', '2019-10-09 08:37:14');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(164, '164', '11', 'Jombang', 'Kabupaten', '61415', '2019-08-26 10:06:34', '2019-10-09 08:37:15');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(165, '165', '25', 'Kaimana', 'Kabupaten', '98671', '2019-08-26 10:06:34', '2019-10-09 08:37:15');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(166, '166', '26', 'Kampar', 'Kabupaten', '28411', '2019-08-26 10:06:34', '2019-10-09 08:37:15');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(167, '167', '14', 'Kapuas', 'Kabupaten', '73583', '2019-08-26 10:06:34', '2019-10-09 08:37:15');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(168, '168', '12', 'Kapuas Hulu', 'Kabupaten', '78719', '2019-08-26 10:06:35', '2019-10-09 08:37:15');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(169, '169', '10', 'Karanganyar', 'Kabupaten', '57718', '2019-08-26 10:06:35', '2019-10-09 08:37:15');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(170, '170', '1', 'Karangasem', 'Kabupaten', '80819', '2019-08-26 10:06:35', '2019-10-09 08:37:15');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(171, '171', '9', 'Karawang', 'Kabupaten', '41311', '2019-08-26 10:06:35', '2019-10-09 08:37:15');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(172, '172', '17', 'Karimun', 'Kabupaten', '29611', '2019-08-26 10:06:35', '2019-10-09 08:37:15');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(173, '173', '34', 'Karo', 'Kabupaten', '22119', '2019-08-26 10:06:35', '2019-10-09 08:37:15');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(174, '174', '14', 'Katingan', 'Kabupaten', '74411', '2019-08-26 10:06:35', '2019-10-09 08:37:15');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(175, '175', '4', 'Kaur', 'Kabupaten', '38911', '2019-08-26 10:06:35', '2019-10-09 08:37:15');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(176, '176', '12', 'Kayong Utara', 'Kabupaten', '78852', '2019-08-26 10:06:35', '2019-10-09 08:37:15');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(177, '177', '10', 'Kebumen', 'Kabupaten', '54319', '2019-08-26 10:06:35', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(178, '179', '11', 'Kediri', 'Kota', '64125', '2019-08-26 10:06:35', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(179, '180', '24', 'Keerom', 'Kabupaten', '99461', '2019-08-26 10:06:35', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(180, '181', '10', 'Kendal', 'Kabupaten', '51314', '2019-08-26 10:06:36', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(181, '182', '30', 'Kendari', 'Kota', '93126', '2019-08-26 10:06:36', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(182, '183', '4', 'Kepahiang', 'Kabupaten', '39319', '2019-08-26 10:06:36', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(183, '184', '17', 'Kepulauan Anambas', 'Kabupaten', '29991', '2019-08-26 10:06:36', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(184, '185', '19', 'Kepulauan Aru', 'Kabupaten', '97681', '2019-08-26 10:06:36', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(185, '186', '32', 'Kepulauan Mentawai', 'Kabupaten', '25771', '2019-08-26 10:06:36', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(186, '187', '26', 'Kepulauan Meranti', 'Kabupaten', '28791', '2019-08-26 10:06:36', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(187, '188', '31', 'Kepulauan Sangihe', 'Kabupaten', '95819', '2019-08-26 10:06:36', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(188, '189', '6', 'Kepulauan Seribu', 'Kabupaten', '14550', '2019-08-26 10:06:36', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(189, '190', '31', 'Kepulauan Siau Tagulandang Biaro (Sitaro)', 'Kabupaten', '95862', '2019-08-26 10:06:36', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(190, '191', '20', 'Kepulauan Sula', 'Kabupaten', '97995', '2019-08-26 10:06:36', '2019-10-09 08:37:16');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(191, '192', '31', 'Kepulauan Talaud', 'Kabupaten', '95885', '2019-08-26 10:06:36', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(192, '193', '24', 'Kepulauan Yapen (Yapen Waropen)', 'Kabupaten', '98211', '2019-08-26 10:06:36', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(193, '194', '8', 'Kerinci', 'Kabupaten', '37167', '2019-08-26 10:06:36', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(194, '195', '12', 'Ketapang', 'Kabupaten', '78874', '2019-08-26 10:06:36', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(195, '196', '10', 'Klaten', 'Kabupaten', '57411', '2019-08-26 10:06:36', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(196, '197', '1', 'Klungkung', 'Kabupaten', '80719', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(197, '198', '30', 'Kolaka', 'Kabupaten', '93511', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(198, '199', '30', 'Kolaka Utara', 'Kabupaten', '93911', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(199, '200', '30', 'Konawe', 'Kabupaten', '93411', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(200, '201', '30', 'Konawe Selatan', 'Kabupaten', '93811', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(201, '202', '30', 'Konawe Utara', 'Kabupaten', '93311', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(202, '203', '13', 'Kotabaru', 'Kabupaten', '72119', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(203, '204', '31', 'Kotamobagu', 'Kota', '95711', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(204, '205', '14', 'Kotawaringin Barat', 'Kabupaten', '74119', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(205, '206', '14', 'Kotawaringin Timur', 'Kabupaten', '74364', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(206, '207', '26', 'Kuantan Singingi', 'Kabupaten', '29519', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(207, '208', '12', 'Kubu Raya', 'Kabupaten', '78311', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(208, '209', '10', 'Kudus', 'Kabupaten', '59311', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(209, '210', '5', 'Kulon Progo', 'Kabupaten', '55611', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(210, '211', '9', 'Kuningan', 'Kabupaten', '45511', '2019-08-26 10:06:37', '2019-10-09 08:37:17');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(211, '213', '23', 'Kupang', 'Kota', '85119', '2019-08-26 10:06:37', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(212, '214', '15', 'Kutai Barat', 'Kabupaten', '75711', '2019-08-26 10:06:37', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(213, '215', '15', 'Kutai Kartanegara', 'Kabupaten', '75511', '2019-08-26 10:06:37', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(214, '216', '15', 'Kutai Timur', 'Kabupaten', '75611', '2019-08-26 10:06:37', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(215, '217', '34', 'Labuhan Batu', 'Kabupaten', '21412', '2019-08-26 10:06:38', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(216, '218', '34', 'Labuhan Batu Selatan', 'Kabupaten', '21511', '2019-08-26 10:06:38', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(217, '219', '34', 'Labuhan Batu Utara', 'Kabupaten', '21711', '2019-08-26 10:06:38', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(218, '220', '33', 'Lahat', 'Kabupaten', '31419', '2019-08-26 10:06:38', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(219, '221', '14', 'Lamandau', 'Kabupaten', '74611', '2019-08-26 10:06:38', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(220, '222', '11', 'Lamongan', 'Kabupaten', '64125', '2019-08-26 10:06:38', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(221, '223', '18', 'Lampung Barat', 'Kabupaten', '34814', '2019-08-26 10:06:38', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(222, '224', '18', 'Lampung Selatan', 'Kabupaten', '35511', '2019-08-26 10:06:38', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(223, '225', '18', 'Lampung Tengah', 'Kabupaten', '34212', '2019-08-26 10:06:38', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(224, '226', '18', 'Lampung Timur', 'Kabupaten', '34319', '2019-08-26 10:06:38', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(225, '227', '18', 'Lampung Utara', 'Kabupaten', '34516', '2019-08-26 10:06:38', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(226, '228', '12', 'Landak', 'Kabupaten', '78319', '2019-08-26 10:06:38', '2019-10-09 08:37:18');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(227, '229', '34', 'Langkat', 'Kabupaten', '20811', '2019-08-26 10:06:38', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(228, '230', '21', 'Langsa', 'Kota', '24412', '2019-08-26 10:06:38', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(229, '231', '24', 'Lanny Jaya', 'Kabupaten', '99531', '2019-08-26 10:06:38', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(230, '232', '3', 'Lebak', 'Kabupaten', '42319', '2019-08-26 10:06:38', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(231, '233', '4', 'Lebong', 'Kabupaten', '39264', '2019-08-26 10:06:38', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(232, '234', '23', 'Lembata', 'Kabupaten', '86611', '2019-08-26 10:06:38', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(233, '235', '21', 'Lhokseumawe', 'Kota', '24352', '2019-08-26 10:06:38', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(234, '236', '32', 'Lima Puluh Koto/Kota', 'Kabupaten', '26671', '2019-08-26 10:06:38', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(235, '237', '17', 'Lingga', 'Kabupaten', '29811', '2019-08-26 10:06:39', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(236, '238', '22', 'Lombok Barat', 'Kabupaten', '83311', '2019-08-26 10:06:39', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(237, '239', '22', 'Lombok Tengah', 'Kabupaten', '83511', '2019-08-26 10:06:39', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(238, '240', '22', 'Lombok Timur', 'Kabupaten', '83612', '2019-08-26 10:06:39', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(239, '241', '22', 'Lombok Utara', 'Kabupaten', '83711', '2019-08-26 10:06:39', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(240, '242', '33', 'Lubuk Linggau', 'Kota', '31614', '2019-08-26 10:06:39', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(241, '243', '11', 'Lumajang', 'Kabupaten', '67319', '2019-08-26 10:06:39', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(242, '244', '28', 'Luwu', 'Kabupaten', '91994', '2019-08-26 10:06:39', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(243, '245', '28', 'Luwu Timur', 'Kabupaten', '92981', '2019-08-26 10:06:39', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(244, '246', '28', 'Luwu Utara', 'Kabupaten', '92911', '2019-08-26 10:06:39', '2019-10-09 08:37:19');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(245, '248', '11', 'Madiun', 'Kota', '63122', '2019-08-26 10:06:39', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(246, '250', '10', 'Magelang', 'Kota', '56133', '2019-08-26 10:06:39', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(247, '251', '11', 'Magetan', 'Kabupaten', '63314', '2019-08-26 10:06:39', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(248, '252', '9', 'Majalengka', 'Kabupaten', '45412', '2019-08-26 10:06:40', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(249, '253', '27', 'Majene', 'Kabupaten', '91411', '2019-08-26 10:06:40', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(250, '254', '28', 'Makassar', 'Kota', '90111', '2019-08-26 10:06:40', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(251, '256', '11', 'Malang', 'Kota', '65112', '2019-08-26 10:06:40', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(252, '257', '16', 'Malinau', 'Kabupaten', '77511', '2019-08-26 10:06:40', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(253, '258', '19', 'Maluku Barat Daya', 'Kabupaten', '97451', '2019-08-26 10:06:40', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(254, '259', '19', 'Maluku Tengah', 'Kabupaten', '97513', '2019-08-26 10:06:40', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(255, '260', '19', 'Maluku Tenggara', 'Kabupaten', '97651', '2019-08-26 10:06:41', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(256, '261', '19', 'Maluku Tenggara Barat', 'Kabupaten', '97465', '2019-08-26 10:06:41', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(257, '262', '27', 'Mamasa', 'Kabupaten', '91362', '2019-08-26 10:06:41', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(258, '263', '24', 'Mamberamo Raya', 'Kabupaten', '99381', '2019-08-26 10:06:41', '2019-10-09 08:37:20');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(259, '264', '24', 'Mamberamo Tengah', 'Kabupaten', '99553', '2019-08-26 10:06:41', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(260, '265', '27', 'Mamuju', 'Kabupaten', '91519', '2019-08-26 10:06:41', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(261, '266', '27', 'Mamuju Utara', 'Kabupaten', '91571', '2019-08-26 10:06:42', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(262, '267', '31', 'Manado', 'Kota', '95247', '2019-08-26 10:06:42', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(263, '268', '34', 'Mandailing Natal', 'Kabupaten', '22916', '2019-08-26 10:06:42', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(264, '269', '23', 'Manggarai', 'Kabupaten', '86551', '2019-08-26 10:06:42', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(265, '270', '23', 'Manggarai Barat', 'Kabupaten', '86711', '2019-08-26 10:06:42', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(266, '271', '23', 'Manggarai Timur', 'Kabupaten', '86811', '2019-08-26 10:06:42', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(267, '272', '25', 'Manokwari', 'Kabupaten', '98311', '2019-08-26 10:06:42', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(268, '273', '25', 'Manokwari Selatan', 'Kabupaten', '98355', '2019-08-26 10:06:42', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(269, '274', '24', 'Mappi', 'Kabupaten', '99853', '2019-08-26 10:06:42', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(270, '275', '28', 'Maros', 'Kabupaten', '90511', '2019-08-26 10:06:42', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(271, '276', '22', 'Mataram', 'Kota', '83131', '2019-08-26 10:06:42', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(272, '277', '25', 'Maybrat', 'Kabupaten', '98051', '2019-08-26 10:06:42', '2019-10-09 08:37:21');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(273, '278', '34', 'Medan', 'Kota', '20228', '2019-08-26 10:06:42', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(274, '279', '12', 'Melawi', 'Kabupaten', '78619', '2019-08-26 10:06:43', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(275, '280', '8', 'Merangin', 'Kabupaten', '37319', '2019-08-26 10:06:43', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(276, '281', '24', 'Merauke', 'Kabupaten', '99613', '2019-08-26 10:06:43', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(277, '282', '18', 'Mesuji', 'Kabupaten', '34911', '2019-08-26 10:06:43', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(278, '283', '18', 'Metro', 'Kota', '34111', '2019-08-26 10:06:43', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(279, '284', '24', 'Mimika', 'Kabupaten', '99962', '2019-08-26 10:06:43', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(280, '285', '31', 'Minahasa', 'Kabupaten', '95614', '2019-08-26 10:06:43', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(281, '286', '31', 'Minahasa Selatan', 'Kabupaten', '95914', '2019-08-26 10:06:43', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(282, '287', '31', 'Minahasa Tenggara', 'Kabupaten', '95995', '2019-08-26 10:06:43', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(283, '288', '31', 'Minahasa Utara', 'Kabupaten', '95316', '2019-08-26 10:06:43', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(284, '290', '11', 'Mojokerto', 'Kota', '61316', '2019-08-26 10:06:43', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(285, '291', '29', 'Morowali', 'Kabupaten', '94911', '2019-08-26 10:06:43', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(286, '292', '33', 'Muara Enim', 'Kabupaten', '31315', '2019-08-26 10:06:43', '2019-10-09 08:37:22');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(287, '293', '8', 'Muaro Jambi', 'Kabupaten', '36311', '2019-08-26 10:06:43', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(288, '294', '4', 'Muko Muko', 'Kabupaten', '38715', '2019-08-26 10:06:43', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(289, '295', '30', 'Muna', 'Kabupaten', '93611', '2019-08-26 10:06:43', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(290, '296', '14', 'Murung Raya', 'Kabupaten', '73911', '2019-08-26 10:06:44', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(291, '297', '33', 'Musi Banyuasin', 'Kabupaten', '30719', '2019-08-26 10:06:44', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(292, '298', '33', 'Musi Rawas', 'Kabupaten', '31661', '2019-08-26 10:06:44', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(293, '299', '24', 'Nabire', 'Kabupaten', '98816', '2019-08-26 10:06:44', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(294, '300', '21', 'Nagan Raya', 'Kabupaten', '23674', '2019-08-26 10:06:44', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(295, '301', '23', 'Nagekeo', 'Kabupaten', '86911', '2019-08-26 10:06:44', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(296, '302', '17', 'Natuna', 'Kabupaten', '29711', '2019-08-26 10:06:44', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(297, '303', '24', 'Nduga', 'Kabupaten', '99541', '2019-08-26 10:06:44', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(298, '304', '23', 'Ngada', 'Kabupaten', '86413', '2019-08-26 10:06:44', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(299, '305', '11', 'Nganjuk', 'Kabupaten', '64414', '2019-08-26 10:06:44', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(300, '306', '11', 'Ngawi', 'Kabupaten', '63219', '2019-08-26 10:06:44', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(301, '307', '34', 'Nias', 'Kabupaten', '22876', '2019-08-26 10:06:44', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(302, '308', '34', 'Nias Barat', 'Kabupaten', '22895', '2019-08-26 10:06:44', '2019-10-09 08:37:23');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(303, '309', '34', 'Nias Selatan', 'Kabupaten', '22865', '2019-08-26 10:06:44', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(304, '310', '34', 'Nias Utara', 'Kabupaten', '22856', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(305, '311', '16', 'Nunukan', 'Kabupaten', '77421', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(306, '312', '33', 'Ogan Ilir', 'Kabupaten', '30811', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(307, '313', '33', 'Ogan Komering Ilir', 'Kabupaten', '30618', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(308, '314', '33', 'Ogan Komering Ulu', 'Kabupaten', '32112', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(309, '315', '33', 'Ogan Komering Ulu Selatan', 'Kabupaten', '32211', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(310, '316', '33', 'Ogan Komering Ulu Timur', 'Kabupaten', '32312', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(311, '317', '11', 'Pacitan', 'Kabupaten', '63512', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(312, '318', '32', 'Padang', 'Kota', '25112', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(313, '319', '34', 'Padang Lawas', 'Kabupaten', '22763', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(314, '320', '34', 'Padang Lawas Utara', 'Kabupaten', '22753', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(315, '321', '32', 'Padang Panjang', 'Kota', '27122', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(316, '322', '32', 'Padang Pariaman', 'Kabupaten', '25583', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(317, '323', '34', 'Padang Sidempuan', 'Kota', '22727', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(318, '324', '33', 'Pagar Alam', 'Kota', '31512', '2019-08-26 10:06:45', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(319, '325', '34', 'Pakpak Bharat', 'Kabupaten', '22272', '2019-08-26 10:06:46', '2019-10-09 08:37:24');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(320, '326', '14', 'Palangka Raya', 'Kota', '73112', '2019-08-26 10:06:46', '2019-10-09 08:37:25');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(321, '327', '33', 'Palembang', 'Kota', '30111', '2019-08-26 10:06:46', '2019-10-09 08:37:25');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(322, '328', '28', 'Palopo', 'Kota', '91911', '2019-08-26 10:06:46', '2019-10-09 08:37:25');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(323, '329', '29', 'Palu', 'Kota', '94111', '2019-08-26 10:06:46', '2019-10-09 08:37:25');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(324, '330', '11', 'Pamekasan', 'Kabupaten', '69319', '2019-08-26 10:06:46', '2019-10-09 08:37:25');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(325, '331', '3', 'Pandeglang', 'Kabupaten', '42212', '2019-08-26 10:06:46', '2019-10-09 08:37:25');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(326, '332', '9', 'Pangandaran', 'Kabupaten', '46511', '2019-08-26 10:06:46', '2019-10-09 08:37:25');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(327, '333', '28', 'Pangkajene Kepulauan', 'Kabupaten', '90611', '2019-08-26 10:06:46', '2019-10-09 08:37:25');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(328, '334', '2', 'Pangkal Pinang', 'Kota', '33115', '2019-08-26 10:06:46', '2019-10-09 08:37:25');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(329, '335', '24', 'Paniai', 'Kabupaten', '98765', '2019-08-26 10:06:46', '2019-10-09 08:37:25');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(330, '336', '28', 'Parepare', 'Kota', '91123', '2019-08-26 10:06:46', '2019-10-09 08:37:25');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(331, '337', '32', 'Pariaman', 'Kota', '25511', '2019-08-26 10:06:46', '2019-10-09 08:37:25');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(332, '338', '29', 'Parigi Moutong', 'Kabupaten', '94411', '2019-08-26 10:06:46', '2019-10-09 08:37:25');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(333, '339', '32', 'Pasaman', 'Kabupaten', '26318', '2019-08-26 10:06:47', '2019-10-09 08:37:26');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(334, '340', '32', 'Pasaman Barat', 'Kabupaten', '26511', '2019-08-26 10:06:47', '2019-10-09 08:37:26');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(335, '341', '15', 'Paser', 'Kabupaten', '76211', '2019-08-26 10:06:47', '2019-10-09 08:37:26');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(336, '343', '11', 'Pasuruan', 'Kota', '67118', '2019-08-26 10:06:47', '2019-10-09 08:37:26');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(337, '344', '10', 'Pati', 'Kabupaten', '59114', '2019-08-26 10:06:47', '2019-10-09 08:37:26');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(338, '345', '32', 'Payakumbuh', 'Kota', '26213', '2019-08-26 10:06:47', '2019-10-09 08:37:26');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(339, '346', '25', 'Pegunungan Arfak', 'Kabupaten', '98354', '2019-08-26 10:06:47', '2019-10-09 08:37:26');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(340, '347', '24', 'Pegunungan Bintang', 'Kabupaten', '99573', '2019-08-26 10:06:47', '2019-10-09 08:37:26');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(341, '349', '10', 'Pekalongan', 'Kota', '51122', '2019-08-26 10:06:47', '2019-10-09 08:37:26');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(342, '350', '26', 'Pekanbaru', 'Kota', '28112', '2019-08-26 10:06:47', '2019-10-09 08:37:26');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(343, '351', '26', 'Pelalawan', 'Kabupaten', '28311', '2019-08-26 10:06:47', '2019-10-09 08:37:26');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(344, '352', '10', 'Pemalang', 'Kabupaten', '52319', '2019-08-26 10:06:47', '2019-10-09 08:37:26');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(345, '353', '34', 'Pematang Siantar', 'Kota', '21126', '2019-08-26 10:06:48', '2019-10-09 08:37:26');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(346, '354', '15', 'Penajam Paser Utara', 'Kabupaten', '76311', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(347, '355', '18', 'Pesawaran', 'Kabupaten', '35312', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(348, '356', '18', 'Pesisir Barat', 'Kabupaten', '35974', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(349, '357', '32', 'Pesisir Selatan', 'Kabupaten', '25611', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(350, '358', '21', 'Pidie', 'Kabupaten', '24116', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(351, '359', '21', 'Pidie Jaya', 'Kabupaten', '24186', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(352, '360', '28', 'Pinrang', 'Kabupaten', '91251', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(353, '361', '7', 'Pohuwato', 'Kabupaten', '96419', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(354, '362', '27', 'Polewali Mandar', 'Kabupaten', '91311', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(355, '363', '11', 'Ponorogo', 'Kabupaten', '63411', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(356, '365', '12', 'Pontianak', 'Kota', '78112', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(357, '366', '29', 'Poso', 'Kabupaten', '94615', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(358, '367', '33', 'Prabumulih', 'Kota', '31121', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(359, '368', '18', 'Pringsewu', 'Kabupaten', '35719', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(360, '370', '11', 'Probolinggo', 'Kota', '67215', '2019-08-26 10:06:48', '2019-10-09 08:37:27');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(361, '371', '14', 'Pulang Pisau', 'Kabupaten', '74811', '2019-08-26 10:06:49', '2019-10-09 08:37:28');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(362, '372', '20', 'Pulau Morotai', 'Kabupaten', '97771', '2019-08-26 10:06:49', '2019-10-09 08:37:28');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(363, '373', '24', 'Puncak', 'Kabupaten', '98981', '2019-08-26 10:06:49', '2019-10-09 08:37:28');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(364, '374', '24', 'Puncak Jaya', 'Kabupaten', '98979', '2019-08-26 10:06:49', '2019-10-09 08:37:28');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(365, '375', '10', 'Purbalingga', 'Kabupaten', '53312', '2019-08-26 10:06:49', '2019-10-09 08:37:28');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(366, '376', '9', 'Purwakarta', 'Kabupaten', '41119', '2019-08-26 10:06:49', '2019-10-09 08:37:28');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(367, '377', '10', 'Purworejo', 'Kabupaten', '54111', '2019-08-26 10:06:49', '2019-10-09 08:37:28');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(368, '378', '25', 'Raja Ampat', 'Kabupaten', '98489', '2019-08-26 10:06:49', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(369, '379', '4', 'Rejang Lebong', 'Kabupaten', '39112', '2019-08-26 10:06:49', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(370, '380', '10', 'Rembang', 'Kabupaten', '59219', '2019-08-26 10:06:49', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(371, '381', '26', 'Rokan Hilir', 'Kabupaten', '28992', '2019-08-26 10:06:49', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(372, '382', '26', 'Rokan Hulu', 'Kabupaten', '28511', '2019-08-26 10:06:49', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(373, '383', '23', 'Rote Ndao', 'Kabupaten', '85982', '2019-08-26 10:06:49', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(374, '384', '21', 'Sabang', 'Kota', '23512', '2019-08-26 10:06:49', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(375, '385', '23', 'Sabu Raijua', 'Kabupaten', '85391', '2019-08-26 10:06:50', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(376, '386', '10', 'Salatiga', 'Kota', '50711', '2019-08-26 10:06:50', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(377, '387', '15', 'Samarinda', 'Kota', '75133', '2019-08-26 10:06:50', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(378, '388', '12', 'Sambas', 'Kabupaten', '79453', '2019-08-26 10:06:50', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(379, '389', '34', 'Samosir', 'Kabupaten', '22392', '2019-08-26 10:06:50', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(380, '390', '11', 'Sampang', 'Kabupaten', '69219', '2019-08-26 10:06:50', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(381, '391', '12', 'Sanggau', 'Kabupaten', '78557', '2019-08-26 10:06:50', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(382, '392', '24', 'Sarmi', 'Kabupaten', '99373', '2019-08-26 10:06:50', '2019-10-09 08:37:29');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(383, '393', '8', 'Sarolangun', 'Kabupaten', '37419', '2019-08-26 10:06:50', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(384, '394', '32', 'Sawah Lunto', 'Kota', '27416', '2019-08-26 10:06:50', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(385, '395', '12', 'Sekadau', 'Kabupaten', '79583', '2019-08-26 10:06:50', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(386, '396', '28', 'Selayar (Kepulauan Selayar)', 'Kabupaten', '92812', '2019-08-26 10:06:50', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(387, '397', '4', 'Seluma', 'Kabupaten', '38811', '2019-08-26 10:06:50', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(388, '399', '10', 'Semarang', 'Kota', '50135', '2019-08-26 10:06:50', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(389, '400', '19', 'Seram Bagian Barat', 'Kabupaten', '97561', '2019-08-26 10:06:51', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(390, '401', '19', 'Seram Bagian Timur', 'Kabupaten', '97581', '2019-08-26 10:06:51', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(391, '403', '3', 'Serang', 'Kota', '42111', '2019-08-26 10:06:51', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(392, '404', '34', 'Serdang Bedagai', 'Kabupaten', '20915', '2019-08-26 10:06:51', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(393, '405', '14', 'Seruyan', 'Kabupaten', '74211', '2019-08-26 10:06:51', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(394, '406', '26', 'Siak', 'Kabupaten', '28623', '2019-08-26 10:06:51', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(395, '407', '34', 'Sibolga', 'Kota', '22522', '2019-08-26 10:06:51', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(396, '408', '28', 'Sidenreng Rappang/Rapang', 'Kabupaten', '91613', '2019-08-26 10:06:52', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(397, '409', '11', 'Sidoarjo', 'Kabupaten', '61219', '2019-08-26 10:06:52', '2019-10-09 08:37:30');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(398, '410', '29', 'Sigi', 'Kabupaten', '94364', '2019-08-26 10:06:52', '2019-10-09 08:37:31');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(399, '411', '32', 'Sijunjung (Sawah Lunto Sijunjung)', 'Kabupaten', '27511', '2019-08-26 10:06:52', '2019-10-09 08:37:31');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(400, '412', '23', 'Sikka', 'Kabupaten', '86121', '2019-08-26 10:06:52', '2019-10-09 08:37:31');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(401, '413', '34', 'Simalungun', 'Kabupaten', '21162', '2019-08-26 10:06:52', '2019-10-09 08:37:31');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(402, '414', '21', 'Simeulue', 'Kabupaten', '23891', '2019-08-26 10:06:52', '2019-10-09 08:37:31');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(403, '415', '12', 'Singkawang', 'Kota', '79117', '2019-08-26 10:06:52', '2019-10-09 08:37:31');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(404, '416', '28', 'Sinjai', 'Kabupaten', '92615', '2019-08-26 10:06:52', '2019-10-09 08:37:31');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(405, '417', '12', 'Sintang', 'Kabupaten', '78619', '2019-08-26 10:06:52', '2019-10-09 08:37:31');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(406, '418', '11', 'Situbondo', 'Kabupaten', '68316', '2019-08-26 10:06:52', '2019-10-09 08:37:31');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(407, '419', '5', 'Sleman', 'Kabupaten', '55513', '2019-08-26 10:06:52', '2019-10-09 08:37:31');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(408, '421', '32', 'Solok', 'Kota', '27315', '2019-08-26 10:06:52', '2019-10-09 08:37:31');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(409, '422', '32', 'Solok Selatan', 'Kabupaten', '27779', '2019-08-26 10:06:52', '2019-10-09 08:37:31');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(410, '423', '28', 'Soppeng', 'Kabupaten', '90812', '2019-08-26 10:06:52', '2019-10-09 08:37:31');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(411, '425', '25', 'Sorong', 'Kota', '98411', '2019-08-26 10:06:52', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(412, '426', '25', 'Sorong Selatan', 'Kabupaten', '98454', '2019-08-26 10:06:53', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(413, '427', '10', 'Sragen', 'Kabupaten', '57211', '2019-08-26 10:06:53', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(414, '428', '9', 'Subang', 'Kabupaten', '41215', '2019-08-26 10:06:53', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(415, '429', '21', 'Subulussalam', 'Kota', '24882', '2019-08-26 10:06:53', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(416, '431', '9', 'Sukabumi', 'Kota', '43114', '2019-08-26 10:06:53', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(417, '432', '14', 'Sukamara', 'Kabupaten', '74712', '2019-08-26 10:06:53', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(418, '433', '10', 'Sukoharjo', 'Kabupaten', '57514', '2019-08-26 10:06:53', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(419, '434', '23', 'Sumba Barat', 'Kabupaten', '87219', '2019-08-26 10:06:53', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(420, '435', '23', 'Sumba Barat Daya', 'Kabupaten', '87453', '2019-08-26 10:06:53', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(421, '436', '23', 'Sumba Tengah', 'Kabupaten', '87358', '2019-08-26 10:06:54', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(422, '437', '23', 'Sumba Timur', 'Kabupaten', '87112', '2019-08-26 10:06:54', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(423, '438', '22', 'Sumbawa', 'Kabupaten', '84315', '2019-08-26 10:06:54', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(424, '439', '22', 'Sumbawa Barat', 'Kabupaten', '84419', '2019-08-26 10:06:54', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(425, '440', '9', 'Sumedang', 'Kabupaten', '45326', '2019-08-26 10:06:54', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(426, '441', '11', 'Sumenep', 'Kabupaten', '69413', '2019-08-26 10:06:54', '2019-10-09 08:37:32');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(427, '442', '8', 'Sungaipenuh', 'Kota', '37113', '2019-08-26 10:06:54', '2019-10-09 08:37:33');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(428, '443', '24', 'Supiori', 'Kabupaten', '98164', '2019-08-26 10:06:54', '2019-10-09 08:37:33');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(429, '444', '11', 'Surabaya', 'Kota', '60119', '2019-08-26 10:06:54', '2019-10-09 08:37:33');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(430, '445', '10', 'Surakarta (Solo)', 'Kota', '57113', '2019-08-26 10:06:54', '2019-10-09 08:37:33');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(431, '446', '13', 'Tabalong', 'Kabupaten', '71513', '2019-08-26 10:06:54', '2019-10-09 08:37:33');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(432, '447', '1', 'Tabanan', 'Kabupaten', '82119', '2019-08-26 10:06:54', '2019-10-09 08:37:33');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(433, '448', '28', 'Takalar', 'Kabupaten', '92212', '2019-08-26 10:06:54', '2019-10-09 08:37:33');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(434, '449', '25', 'Tambrauw', 'Kabupaten', '98475', '2019-08-26 10:06:54', '2019-10-09 08:37:33');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(435, '450', '16', 'Tana Tidung', 'Kabupaten', '77611', '2019-08-26 10:06:54', '2019-10-09 08:37:33');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(436, '451', '28', 'Tana Toraja', 'Kabupaten', '91819', '2019-08-26 10:06:55', '2019-10-09 08:37:33');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(437, '452', '13', 'Tanah Bumbu', 'Kabupaten', '72211', '2019-08-26 10:06:55', '2019-10-09 08:37:33');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(438, '453', '32', 'Tanah Datar', 'Kabupaten', '27211', '2019-08-26 10:06:55', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(439, '454', '13', 'Tanah Laut', 'Kabupaten', '70811', '2019-08-26 10:06:55', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(440, '456', '3', 'Tangerang', 'Kota', '15111', '2019-08-26 10:06:55', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(441, '457', '3', 'Tangerang Selatan', 'Kota', '15332', '2019-08-26 10:06:55', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(442, '458', '18', 'Tanggamus', 'Kabupaten', '35619', '2019-08-26 10:06:55', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(443, '459', '34', 'Tanjung Balai', 'Kota', '21321', '2019-08-26 10:06:55', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(444, '460', '8', 'Tanjung Jabung Barat', 'Kabupaten', '36513', '2019-08-26 10:06:55', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(445, '461', '8', 'Tanjung Jabung Timur', 'Kabupaten', '36719', '2019-08-26 10:06:55', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(446, '462', '17', 'Tanjung Pinang', 'Kota', '29111', '2019-08-26 10:06:55', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(447, '463', '34', 'Tapanuli Selatan', 'Kabupaten', '22742', '2019-08-26 10:06:55', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(448, '464', '34', 'Tapanuli Tengah', 'Kabupaten', '22611', '2019-08-26 10:06:55', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(449, '465', '34', 'Tapanuli Utara', 'Kabupaten', '22414', '2019-08-26 10:06:55', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(450, '466', '13', 'Tapin', 'Kabupaten', '71119', '2019-08-26 10:06:56', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(451, '467', '16', 'Tarakan', 'Kota', '77114', '2019-08-26 10:06:56', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(452, '469', '9', 'Tasikmalaya', 'Kota', '46116', '2019-08-26 10:06:56', '2019-10-09 08:37:34');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(453, '470', '34', 'Tebing Tinggi', 'Kota', '20632', '2019-08-26 10:06:56', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(454, '471', '8', 'Tebo', 'Kabupaten', '37519', '2019-08-26 10:06:56', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(455, '473', '10', 'Tegal', 'Kota', '52114', '2019-08-26 10:06:56', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(456, '474', '25', 'Teluk Bintuni', 'Kabupaten', '98551', '2019-08-26 10:06:56', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(457, '475', '25', 'Teluk Wondama', 'Kabupaten', '98591', '2019-08-26 10:06:56', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(458, '476', '10', 'Temanggung', 'Kabupaten', '56212', '2019-08-26 10:06:56', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(459, '477', '20', 'Ternate', 'Kota', '97714', '2019-08-26 10:06:56', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(460, '478', '20', 'Tidore Kepulauan', 'Kota', '97815', '2019-08-26 10:06:56', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(461, '479', '23', 'Timor Tengah Selatan', 'Kabupaten', '85562', '2019-08-26 10:06:57', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(462, '480', '23', 'Timor Tengah Utara', 'Kabupaten', '85612', '2019-08-26 10:06:57', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(463, '481', '34', 'Toba Samosir', 'Kabupaten', '22316', '2019-08-26 10:06:57', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(464, '482', '29', 'Tojo Una-Una', 'Kabupaten', '94683', '2019-08-26 10:06:57', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(465, '483', '29', 'Toli-Toli', 'Kabupaten', '94542', '2019-08-26 10:06:57', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(466, '484', '24', 'Tolikara', 'Kabupaten', '99411', '2019-08-26 10:06:57', '2019-10-09 08:37:35');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(467, '485', '31', 'Tomohon', 'Kota', '95416', '2019-08-26 10:06:57', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(468, '486', '28', 'Toraja Utara', 'Kabupaten', '91831', '2019-08-26 10:06:57', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(469, '487', '11', 'Trenggalek', 'Kabupaten', '66312', '2019-08-26 10:06:57', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(470, '488', '19', 'Tual', 'Kota', '97612', '2019-08-26 10:06:57', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(471, '489', '11', 'Tuban', 'Kabupaten', '62319', '2019-08-26 10:06:57', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(472, '490', '18', 'Tulang Bawang', 'Kabupaten', '34613', '2019-08-26 10:06:57', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(473, '491', '18', 'Tulang Bawang Barat', 'Kabupaten', '34419', '2019-08-26 10:06:57', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(474, '492', '11', 'Tulungagung', 'Kabupaten', '66212', '2019-08-26 10:06:57', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(475, '493', '28', 'Wajo', 'Kabupaten', '90911', '2019-08-26 10:06:57', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(476, '494', '30', 'Wakatobi', 'Kabupaten', '93791', '2019-08-26 10:06:58', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(477, '495', '24', 'Waropen', 'Kabupaten', '98269', '2019-08-26 10:06:58', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(478, '496', '18', 'Way Kanan', 'Kabupaten', '34711', '2019-08-26 10:06:58', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(479, '497', '10', 'Wonogiri', 'Kabupaten', '57619', '2019-08-26 10:06:58', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(480, '498', '10', 'Wonosobo', 'Kabupaten', '56311', '2019-08-26 10:06:58', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(481, '499', '24', 'Yahukimo', 'Kabupaten', '99041', '2019-08-26 10:06:58', '2019-10-09 08:37:36');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(482, '500', '24', 'Yalimo', 'Kabupaten', '99481', '2019-08-26 10:06:58', '2019-10-09 08:37:37');
INSERT INTO `kota` (`id`, `rajaongkir_id`, `provinsi_id`, `nama_kota`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES(483, '501', '5', 'Yogyakarta', 'Kota', '55111', '2019-08-26 10:06:58', '2019-10-09 08:37:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manage_languages`
--

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

INSERT INTO `manage_languages` (`id`, `lang_name`, `lang_code`, `lang_sample_img`, `status`, `default_lang`, `created_at`, `updated_at`) VALUES(1, 'english', 'en', 'en_lang_sample_img.png', 1, 1, '2019-11-03 23:03:55', '2019-11-03 23:03:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(2, '2014_10_12_000036_create_api_tokens_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(3, '2014_10_12_263536_create_order_products_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(4, '2015_12_05_184931_create_roles_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(5, '2015_12_05_185011_create_role_user_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(6, '2015_12_05_190659_create_options_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(7, '2016_01_01_022900_create_posts_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(8, '2016_01_01_022900_create_products_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(9, '2016_01_01_022956_create_post_extras_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(10, '2016_01_01_022956_create_product_extras_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(11, '2016_01_17_181505_create_object_relationships_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(12, '2016_05_12_015250_create_orders_items_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(13, '2016_06_04_053757_create_save_custom_designs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(14, '2016_06_15_182116_create_users_custom_designs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(15, '2016_10_02_061320_create_users_details_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(16, '2016_10_07_023527_create_manage_languages_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(17, '2016_11_28_173526_create_user_role_permissions_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(18, '2017_01_06_185011_create_vendor_announcements_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(19, '2017_02_07_173536_create_comments_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(20, '2017_02_09_173636_create_subscriptions_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(21, '2017_02_09_173736_create_request_products_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(22, '2017_05_23_153636_create_term_extras_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(23, '2017_05_23_173636_create_terms_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(24, '2017_09_22_172636_create_download_extras_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(25, '2017_11_18_1726459_create_vendor_withdraws_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(26, '2017_12_03_172638_create_vendor_packages_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(27, '2017_12_26_172638_create_vendor_orders_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(28, '2018_01_01_172638_create_custom_currency_values_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(29, '2018_01_01_172638_create_vendor_totals_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(34, '2022_01_24_131127_create_ads_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `object_relationships`
--

CREATE TABLE `object_relationships` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `object_relationships`
--

INSERT INTO `object_relationships` (`term_id`, `object_id`, `created_at`, `updated_at`) VALUES(1, 2, '2022-03-16 22:40:51', '2022-03-16 22:40:51');
INSERT INTO `object_relationships` (`term_id`, `object_id`, `created_at`, `updated_at`) VALUES(2, 3, '2022-03-15 20:36:49', '2022-03-15 20:36:49');
INSERT INTO `object_relationships` (`term_id`, `object_id`, `created_at`, `updated_at`) VALUES(3, 4, '2022-03-16 17:44:45', '2022-03-16 17:44:45');
INSERT INTO `object_relationships` (`term_id`, `object_id`, `created_at`, `updated_at`) VALUES(5, 5, '2022-03-16 17:42:01', '2022-03-16 17:42:01');
INSERT INTO `object_relationships` (`term_id`, `object_id`, `created_at`, `updated_at`) VALUES(9, 2, '2022-03-16 22:40:51', '2022-03-16 22:40:51');
INSERT INTO `object_relationships` (`term_id`, `object_id`, `created_at`, `updated_at`) VALUES(10, 2, '2022-03-16 22:40:51', '2022-03-16 22:40:51');
INSERT INTO `object_relationships` (`term_id`, `object_id`, `created_at`, `updated_at`) VALUES(11, 5, '2022-03-16 17:42:01', '2022-03-16 17:42:01');
INSERT INTO `object_relationships` (`term_id`, `object_id`, `created_at`, `updated_at`) VALUES(12, 2, '2022-03-16 22:40:51', '2022-03-16 22:40:51');
INSERT INTO `object_relationships` (`term_id`, `object_id`, `created_at`, `updated_at`) VALUES(12, 4, '2022-03-16 17:44:45', '2022-03-16 17:44:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `options`
--

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

INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES(1, '_shipping_method_data', 'a:4:{s:15:\"shipping_option\";a:2:{s:15:\"enable_shipping\";s:0:\"\";s:12:\"display_mode\";s:13:\"radio_buttons\";}s:9:\"flat_rate\";a:3:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:9:\"Flat Rate\";s:11:\"method_cost\";s:0:\"\";}s:13:\"free_shipping\";a:3:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:13:\"Free Shipping\";s:12:\"order_amount\";s:0:\"\";}s:14:\"local_delivery\";a:4:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:14:\"Local Delivery\";s:8:\"fee_type\";s:0:\"\";s:12:\"delivery_fee\";s:0:\"\";}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES(2, '_settings_data', 'a:1:{s:16:\"general_settings\";a:10:{s:15:\"general_options\";a:5:{s:10:\"site_title\";s:7:\"Shopist\";s:13:\"email_address\";s:20:\"yourEmail@domain.com\";s:9:\"site_logo\";s:0:\"\";s:31:\"allow_registration_for_frontend\";b:1;s:26:\"default_role_slug_for_site\";s:9:\"site-user\";}s:13:\"taxes_options\";a:3:{s:13:\"enable_status\";i:0;s:13:\"apply_tax_for\";s:0:\"\";s:10:\"tax_amount\";s:0:\"\";}s:16:\"checkout_options\";a:2:{s:17:\"enable_guest_user\";b:1;s:17:\"enable_login_user\";b:1;}s:29:\"downloadable_products_options\";a:3:{s:17:\"login_restriction\";b:0;s:31:\"grant_access_from_thankyou_page\";b:1;s:23:\"grant_access_from_email\";b:0;}s:17:\"recaptcha_options\";a:7:{s:32:\"enable_recaptcha_for_admin_login\";b:0;s:31:\"enable_recaptcha_for_user_login\";b:0;s:38:\"enable_recaptcha_for_user_registration\";b:0;s:33:\"enable_recaptcha_for_vendor_login\";b:0;s:40:\"enable_recaptcha_for_vendor_registration\";b:0;s:20:\"recaptcha_secret_key\";s:0:\"\";s:18:\"recaptcha_site_key\";s:0:\"\";}s:19:\"nexmo_config_option\";a:6:{s:19:\"enable_nexmo_option\";b:0;s:9:\"nexmo_key\";s:0:\"\";s:12:\"nexmo_secret\";s:0:\"\";s:9:\"number_to\";s:0:\"\";s:11:\"number_from\";s:0:\"\";s:7:\"message\";s:0:\"\";}s:19:\"fixer_config_option\";a:1:{s:20:\"fixer_api_access_key\";s:0:\"\";}s:16:\"currency_options\";a:7:{s:13:\"currency_name\";s:3:\"USD\";s:17:\"currency_position\";s:4:\"left\";s:18:\"thousand_separator\";s:1:\",\";s:17:\"decimal_separator\";s:1:\".\";s:18:\"number_of_decimals\";s:1:\"2\";s:26:\"currency_conversion_method\";s:0:\"\";s:17:\"frontend_currency\";a:4:{i:0;s:3:\"USD\";i:1;s:3:\"GBP\";i:2;s:3:\"BDT\";i:3;s:3:\"EUR\";}}s:19:\"date_format_options\";a:1:{s:11:\"date_format\";s:5:\"Y-m-d\";}s:25:\"default_frontend_currency\";a:5:{i:0;s:3:\"AUD\";i:1;s:3:\"EUR\";i:2;s:3:\"GBP\";i:3;s:3:\"USD\";i:4;s:3:\"BDT\";}}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES(3, '_custom_designer_settings_data', 'a:1:{s:16:\"general_settings\";a:1:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES(4, '_payment_method_data', 'a:6:{s:14:\"payment_option\";a:1:{s:21:\"enable_payment_method\";s:0:\"\";}s:4:\"bacs\";a:5:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:20:\"Direct Bank Transfer\";s:18:\"method_description\";s:173:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won\'t be shipped until the funds have cleared in our account.\";s:19:\"method_instructions\";s:173:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won\'t be shipped until the funds have cleared in our account.\";s:15:\"account_details\";a:6:{s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:10:\"short_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:5:\"swift\";s:0:\"\";}}s:3:\"cod\";a:4:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:16:\"Cash on Delivery\";s:18:\"method_description\";s:28:\"Pay with cash upon delivery.\";s:19:\"method_instructions\";s:28:\"Pay with cash upon delivery.\";}s:6:\"paypal\";a:6:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:6:\"Paypal\";s:16:\"paypal_client_id\";s:0:\"\";s:13:\"paypal_secret\";s:0:\"\";s:28:\"paypal_sandbox_enable_option\";s:3:\"yes\";s:18:\"method_description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";}s:6:\"stripe\";a:8:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:6:\"Stripe\";s:15:\"test_secret_key\";s:0:\"\";s:20:\"test_publishable_key\";s:0:\"\";s:15:\"live_secret_key\";s:0:\"\";s:20:\"live_publishable_key\";s:0:\"\";s:25:\"stripe_test_enable_option\";s:3:\"yes\";s:18:\"method_description\";s:49:\"Stripe is a simple way to accept payments online.\";}s:9:\"2checkout\";a:7:{s:13:\"enable_option\";s:0:\"\";s:12:\"method_title\";s:9:\"2Checkout\";s:8:\"sellerId\";s:0:\"\";s:14:\"publishableKey\";s:0:\"\";s:10:\"privateKey\";s:0:\"\";s:21:\"sandbox_enable_option\";s:3:\"yes\";s:18:\"method_description\";s:52:\"2Checkout is a simple way to accept payments online.\";}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES(5, '_appearance_tab_data', 'a:7:{s:8:\"settings\";s:71:\"{\"header_slider_images_and_text\":{\"slider_images\":[],\"slider_text\":[]}}\";s:16:\"settings_details\";a:4:{s:7:\"general\";a:20:{s:10:\"custom_css\";b:0;s:13:\"body_bg_color\";s:6:\"d2d6de\";s:16:\"filter_price_min\";i:0;s:16:\"filter_price_max\";i:1000;s:22:\"sidebar_panel_bg_color\";s:6:\"f2f0f1\";s:30:\"sidebar_panel_title_text_color\";s:6:\"333333\";s:44:\"sidebar_panel_title_text_bottom_border_color\";s:6:\"1fc0a0\";s:34:\"sidebar_panel_title_text_font_size\";i:14;s:32:\"sidebar_panel_content_text_color\";s:6:\"333333\";s:36:\"sidebar_panel_content_text_font_size\";i:12;s:20:\"product_box_bg_color\";s:6:\"f2f0f1\";s:24:\"product_box_border_color\";s:6:\"e1e1e1\";s:22:\"product_box_text_color\";s:6:\"333333\";s:26:\"product_box_text_font_size\";i:13;s:24:\"product_box_btn_bg_color\";s:6:\"1fc0a0\";s:27:\"product_box_btn_hover_color\";s:6:\"e1e1e1\";s:14:\"btn_text_color\";s:6:\"FFFFFF\";s:20:\"btn_hover_text_color\";s:6:\"444444\";s:26:\"selected_menu_border_color\";s:6:\"1fc0a0\";s:32:\"pages_content_title_border_color\";s:6:\"1fc0a0\";}s:14:\"header_details\";a:12:{s:17:\"slider_visibility\";b:1;s:10:\"custom_css\";b:0;s:31:\"header_top_gradient_start_color\";s:6:\"272727\";s:29:\"header_top_gradient_end_color\";s:6:\"272727\";s:34:\"header_bottom_gradient_start_color\";s:6:\"1e1e1e\";s:32:\"header_bottom_gradient_end_color\";s:6:\"1e1e1e\";s:17:\"header_text_color\";s:6:\"B4B1AB\";s:16:\"header_text_size\";s:2:\"14\";s:23:\"header_text_hover_color\";s:6:\"d2404d\";s:29:\"header_selected_menu_bg_color\";s:6:\"C0C0C0\";s:31:\"header_selected_menu_text_color\";s:6:\"d2404d\";s:13:\"header_slogan\";s:23:\"Default welcome message\";}s:12:\"home_details\";a:2:{s:19:\"cat_list_to_display\";a:0:{}s:30:\"cat_collection_list_to_display\";a:0:{}}s:14:\"footer_details\";a:2:{s:27:\"footer_about_us_description\";s:21:\"Your description here\";s:13:\"follow_us_url\";a:7:{s:2:\"fb\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:8:\"dribbble\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"youtube\";s:0:\"\";}}}s:6:\"header\";s:9:\"ice-cream\";s:4:\"home\";s:8:\"customfy\";s:8:\"products\";s:5:\"crazy\";s:14:\"single_product\";s:5:\"crazy\";s:5:\"blogs\";s:5:\"crazy\";}', '2019-11-03 23:03:55', '2022-01-23 23:42:21');
INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES(6, '_permissions_files_list', 'a:39:{s:17:\"pages_list_access\";s:17:\"Pages list access\";s:21:\"add_edit_delete_pages\";s:21:\"Add/edit/delete pages\";s:17:\"list_blogs_access\";s:16:\"Blog list access\";s:20:\"add_edit_delete_blog\";s:20:\"Add/edit/delete blog\";s:18:\"blog_comments_list\";s:20:\"Blog comments access\";s:22:\"blog_categories_access\";s:31:\"Add/edit/delete blog categories\";s:23:\"testimonial_list_access\";s:23:\"Testimonial list access\";s:27:\"add_edit_delete_testimonial\";s:27:\"Add/edit/delete testimonial\";s:18:\"brands_list_access\";s:25:\"Manufacturers list access\";s:22:\"add_edit_delete_brands\";s:29:\"Add/edit/delete manufacturers\";s:15:\"manage_seo_full\";s:22:\"Manage SEO full access\";s:20:\"products_list_access\";s:20:\"Products list access\";s:23:\"add_edit_delete_product\";s:23:\"Add/edit/delete product\";s:25:\"product_categories_access\";s:35:\"Add/edit/delete products categories\";s:19:\"product_tags_access\";s:29:\"Add/edit/delete products tags\";s:25:\"product_attributes_access\";s:35:\"Add/edit/delete products attributes\";s:21:\"product_colors_access\";s:31:\"Add/edit/delete products colors\";s:20:\"product_sizes_access\";s:30:\"Add/edit/delete products sizes\";s:29:\"products_comments_list_access\";s:29:\"Products comments list access\";s:18:\"manage_orders_list\";s:25:\"Manage orders list access\";s:19:\"manage_reports_list\";s:26:\"Manage reports list access\";s:19:\"vendors_list_access\";s:19:\"Vendors list access\";s:23:\"vendors_withdraw_access\";s:23:\"Vendors withdraw access\";s:29:\"vendors_refund_request_access\";s:29:\"Vendors refund request access\";s:30:\"vendors_earning_reports_access\";s:30:\"Vendors earning reports access\";s:27:\"vendors_announcement_access\";s:27:\"Vendors announcement access\";s:15:\"vendor_settings\";s:8:\"settings\";s:28:\"vendors_packages_full_access\";s:33:\"Vendors packages menu full access\";s:28:\"vendors_packages_list_access\";s:28:\"Vendors packages list access\";s:30:\"vendors_packages_create_access\";s:30:\"Vendors packages create access\";s:34:\"manage_shipping_method_menu_access\";s:34:\"Manage shipping method full access\";s:33:\"manage_payment_method_menu_access\";s:33:\"Manage payment method full access\";s:36:\"manage_designer_elements_menu_access\";s:43:\"Manage custom designer elements full access\";s:25:\"manage_coupon_menu_access\";s:33:\"Manage coupon manager full access\";s:27:\"manage_settings_menu_access\";s:27:\"Manage settings full access\";s:36:\"manage_requested_product_menu_access\";s:35:\"Manage request products full access\";s:31:\"manage_subscription_menu_access\";s:31:\"Manage subscription full access\";s:28:\"manage_extra_features_access\";s:33:\"Manage extra features full access\";s:19:\"manage_available_at\";s:28:\"Add/edit/delete Available At\";}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES(7, '_seo_data', 'a:1:{s:8:\"meta_tag\";a:2:{s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES(8, '_subscription_data', 'a:1:{s:9:\"mailchimp\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"list_id\";s:0:\"\";}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES(9, '_subscription_settings_data', 'a:9:{s:23:\"subscription_visibility\";b:1;s:14:\"subscribe_type\";s:9:\"mailchimp\";s:17:\"subscribe_options\";s:10:\"name_email\";s:14:\"popup_bg_color\";s:6:\"f5f5f5\";s:13:\"popup_content\";s:0:\"\";s:18:\"popup_display_page\";a:2:{i:0;s:4:\"home\";i:1;s:4:\"shop\";}s:18:\"subscribe_btn_text\";s:13:\"Subscribe Now\";s:37:\"subscribe_popup_cookie_set_visibility\";b:1;s:31:\"subscribe_popup_cookie_set_text\";s:31:\"No thanks, i am not interested!\";}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES(10, '_vendor_settings_data', 'a:1:{s:17:\"term_n_conditions\";s:222:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, itaque, modi, aliquam nostrum at sapiente consequuntur natus odio reiciendis perferendis rem nisi tempore possimus ipsa porro delectus quidem dolorem ad.\";}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES(11, '_emails_notification_data', 'a:10:{s:9:\"new_order\";a:5:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:36:\"Your order receipt from #date_place#\";s:13:\"email_heading\";s:24:\"Thank you for your order\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";s:17:\"selected_template\";s:10:\"template-3\";}s:15:\"cancelled_order\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:15:\"Cancelled order\";s:13:\"email_heading\";s:15:\"Cancelled order\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:15:\"processed_order\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:35:\"Order #order_id# has been Processed\";s:13:\"email_heading\";s:15:\"Processed order\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:15:\"completed_order\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:33:\"Your Order #order_id# is complete\";s:13:\"email_heading\";s:22:\"Your order is complete\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:20:\"new_customer_account\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:28:\"Successfully created account\";s:13:\"email_heading\";s:24:\"Customer account created\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:18:\"vendor_new_account\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:28:\"Successfully created account\";s:13:\"email_heading\";s:22:\"Vendor account created\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:25:\"vendor_account_activation\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:14:\"account status\";s:13:\"email_heading\";s:25:\"Vendor account activation\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:23:\"vendor_withdraw_request\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:40:\"Your Request for Withdrawal was Received\";s:13:\"email_heading\";s:16:\"Withdraw request\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:33:\"vendor_withdraw_request_cancelled\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:35:\"Withdraw request has been cancelled\";s:13:\"email_heading\";s:0:\"\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}s:33:\"vendor_withdraw_request_completed\";a:4:{s:14:\"enable_disable\";b:1;s:7:\"subject\";s:35:\"Withdraw request has been completed\";s:13:\"email_heading\";s:0:\"\";s:13:\"body_bg_color\";s:7:\"#f5f5f5\";}}', '2019-11-03 23:03:55', '2019-11-03 23:03:55');
INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES(12, '_menu_data', '[{\"status\":\"enable\",\"label\":\"home|simple##0\"},{\"status\":\"enable\",\"label\":\"collection|simple##0\"},{\"status\":\"enable\",\"label\":\"products|simple##0\"},{\"status\":\"enable\",\"label\":\"checkout|simple##0\"},{\"status\":\"enable\",\"label\":\"cart|simple##0\"},{\"status\":\"enable\",\"label\":\"blog|simple##0\"},{\"status\":\"enable\",\"label\":\"store_list|simple##0\"},{\"status\":\"enable\",\"label\":\"pages|simple##0\"}]', '2019-11-03 23:03:55', '2019-11-03 23:03:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_items`
--

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

INSERT INTO `products` (`id`, `author_id`, `content`, `title`, `slug`, `status`, `sku`, `regular_price`, `sale_price`, `price`, `stock_qty`, `stock_availability`, `type`, `image_url`, `created_at`, `updated_at`) VALUES(2, 1, '&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.&lt;br&gt;&lt;/p&gt;', 'LED LCD Laptop Asus A455L', 'led-lcd-laptop-asus-a455l', 1, '', '350000', '200000', '200000', '0', 'in_stock', 'simple_product', '/public/uploads/1647495614-h-250-lcd.jpg', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `products` (`id`, `author_id`, `content`, `title`, `slug`, `status`, `sku`, `regular_price`, `sale_price`, `price`, `stock_qty`, `stock_availability`, `type`, `image_url`, `created_at`, `updated_at`) VALUES(3, 1, '&lt;p&gt;test&lt;/p&gt;', 'test', 'test', 1, '', '350000', '200000', '200000', '0', 'in_stock', 'simple_product', '/public/uploads/1647362870-h-250-gta5.jpg', '2022-03-15 09:47:24', '2022-03-15 20:36:49');
INSERT INTO `products` (`id`, `author_id`, `content`, `title`, `slug`, `status`, `sku`, `regular_price`, `sale_price`, `price`, `stock_qty`, `stock_availability`, `type`, `image_url`, `created_at`, `updated_at`) VALUES(4, 1, '&lt;p&gt;test1&lt;/p&gt;', 'test1', 'test1', 1, '', '300000', '200000', '200000', '0', 'in_stock', 'simple_product', '/public/uploads/1647477039-h-250-acer.png', '2022-03-16 17:30:52', '2022-03-16 17:44:45');
INSERT INTO `products` (`id`, `author_id`, `content`, `title`, `slug`, `status`, `sku`, `regular_price`, `sale_price`, `price`, `stock_qty`, `stock_availability`, `type`, `image_url`, `created_at`, `updated_at`) VALUES(5, 1, '&lt;p&gt;test2&lt;/p&gt;', 'test2', 'test2', 1, '', '200000', '200000', '200000', '0', 'in_stock', 'simple_product', '/public/uploads/1647477666-h-250-adaptor.jpg', '2022-03-16 17:41:44', '2022-03-16 17:42:00');

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

INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(40, 2, '_product_related_images_url', '{\"product_image\":\"/public/uploads/1647495614-h-250-lcd.jpg\",\"product_gallery_images\":[{\"id\":\"F682DE0D-E46B-4E96-E2D7-BF508E9C4969\",\"url\":\"/public/uploads/01647495628-h-250-lcd.jpg\"},{\"id\":\"9D3EB40E-5BF5-4BDD-84F7-FF6EABDDE3B0\",\"url\":\"/public/uploads/01647495637-h-250-lcd.jpg\"},{\"id\":\"02C9FCCC-7ADB-4B07-DC1A-206651FB1C7E\",\"url\":\"/public/uploads/01647495647-h-250-lcd.jpg\"}],\"shop_banner_image\":\"\"}', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(41, 2, '_product_sale_price_start_date', '', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(42, 2, '_product_sale_price_end_date', '', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(43, 2, '_product_manage_stock', 'no', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(44, 2, '_product_manage_stock_back_to_order', 'not_allow', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(45, 2, '_product_extra_features', '', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(46, 2, '_product_enable_as_recommended', 'no', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(47, 2, '_product_enable_as_features', 'no', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(48, 2, '_product_enable_as_latest', 'no', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(49, 2, '_product_enable_as_related', 'yes', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(50, 2, '_product_enable_as_custom_design', 'yes', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(51, 2, '_product_enable_as_selected_cat', 'no', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(52, 2, '_product_enable_taxes', 'no', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(53, 2, '_product_custom_designer_settings', 'a:3:{s:16:\"canvas_dimension\";a:3:{s:13:\"small_devices\";a:2:{s:5:\"width\";i:280;s:6:\"height\";i:300;}s:14:\"medium_devices\";a:2:{s:5:\"width\";i:480;s:6:\"height\";i:480;}s:13:\"large_devices\";a:2:{s:5:\"width\";i:500;s:6:\"height\";i:550;}}s:25:\"enable_layout_at_frontend\";s:2:\"no\";s:22:\"enable_global_settings\";s:2:\"no\";}', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(54, 2, '_product_custom_designer_data', NULL, '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(55, 2, '_product_enable_reviews', 'yes', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(56, 2, '_product_enable_reviews_add_link_to_product_page', 'yes', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(57, 2, '_product_enable_reviews_add_link_to_details_page', 'yes', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(58, 2, '_product_enable_video_feature', 'no', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(59, 2, '_product_video_feature_display_mode', 'content', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(60, 2, '_product_video_feature_title', NULL, '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(61, 2, '_product_video_feature_panel_size', 'a:2:{s:5:\"width\";N;s:6:\"height\";N;}', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(62, 2, '_product_video_feature_source', '', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(63, 2, '_product_video_feature_source_embedded_code', NULL, '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(64, 2, '_product_video_feature_source_online_url', NULL, '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(65, 2, '_product_enable_manufacturer', 'no', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(66, 2, '_product_enable_visibility_schedule', 'no', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(67, 2, '_product_seo_title', 'LED LCD Laptop Asus A455L', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(68, 2, '_product_seo_description', '', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(69, 2, '_product_seo_keywords', '', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(70, 2, '_product_compare_data', 'N;', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(71, 2, '_is_role_based_pricing_enable', 'no', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(72, 2, '_role_based_pricing', 'a:3:{s:13:\"administrator\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:9:\"site-user\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}s:6:\"vendor\";a:2:{s:13:\"regular_price\";N;s:10:\"sale_price\";s:0:\"\";}}', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(73, 2, '_downloadable_product_files', 'a:0:{}', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(74, 2, '_downloadable_product_download_limit', '', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(75, 2, '_downloadable_product_download_expiry', '', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(76, 2, '_upsell_products', 'a:0:{}', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(77, 2, '_crosssell_products', 'a:0:{}', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
INSERT INTO `product_extras` (`product_extra_id`, `product_id`, `key_name`, `key_value`, `created_at`, `updated_at`) VALUES(78, 2, '_selected_vendor', '1', '2022-02-07 19:15:32', '2022-03-16 22:40:51');
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
INSERT INTO `users` (`id`, `display_name`, `name`, `email`, `phone_number`, `password`, `user_photo_url`, `user_status`, `secret_key`, `created_at`, `updated_at`) VALUES(11, 'Bryan Wijaya', 'Bryan Wijaya', 'bryan@gmail.com', '+628113116991', '$2y$10$RTBqnyCo3uvOk.f/i/hVDeJFf0PaoYCCi9rL4gJ9Rj.SU9RUNEckW', NULL, 1, NULL, '2022-03-07 19:18:18', '2022-03-08 19:40:41');

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
-- Struktur dari tabel `user_order`
--

CREATE TABLE `user_order` (
  `id` int(11) NOT NULL,
  `invoice_number` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_order`
--

INSERT INTO `user_order` (`id`, `invoice_number`, `country`, `full_name`, `email`, `phone_number`, `address`, `note`, `payment_method`, `total`, `date`, `status`, `user_id`) VALUES(4, '27QA-308964', '', '', '', '', '', NULL, '', 100000, '17/02/2022', 0, 11);
INSERT INTO `user_order` (`id`, `invoice_number`, `country`, `full_name`, `email`, `phone_number`, `address`, `note`, `payment_method`, `total`, `date`, `status`, `user_id`) VALUES(21, '27QA-308965', '', '', '', '', '', NULL, '', 200000, '03/03/2022', 1, 11);
INSERT INTO `user_order` (`id`, `invoice_number`, `country`, `full_name`, `email`, `phone_number`, `address`, `note`, `payment_method`, `total`, `date`, `status`, `user_id`) VALUES(22, '27QA-308966', '', '', '', '', '', NULL, '', 200000, '03/03/2022', 1, 11);
INSERT INTO `user_order` (`id`, `invoice_number`, `country`, `full_name`, `email`, `phone_number`, `address`, `note`, `payment_method`, `total`, `date`, `status`, `user_id`) VALUES(23, '27QA-308967', '', '', '', '', '', NULL, '', 200000, '03/03/2022', 1, 11);
INSERT INTO `user_order` (`id`, `invoice_number`, `country`, `full_name`, `email`, `phone_number`, `address`, `note`, `payment_method`, `total`, `date`, `status`, `user_id`) VALUES(24, '27QA-308968', '', '', '', '', '', NULL, '', 200000, '03/03/2022', 1, 11);
INSERT INTO `user_order` (`id`, `invoice_number`, `country`, `full_name`, `email`, `phone_number`, `address`, `note`, `payment_method`, `total`, `date`, `status`, `user_id`) VALUES(25, '27QA-677981', '', '', '', '', '', NULL, '', 1000000, '09/03/2022', 1, 11);
INSERT INTO `user_order` (`id`, `invoice_number`, `country`, `full_name`, `email`, `phone_number`, `address`, `note`, `payment_method`, `total`, `date`, `status`, `user_id`) VALUES(27, '', 'Indonesia', 't', 't@gmail.com', '1234', 'Ngagel jaya 100', NULL, 'BCA - Cabang : HR Muhammad Surabaya\n                    No. Rek. : 8290332959\n                    Nama : Raffles Indonesia, CV', 700000, '2022-03-23', 0, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_order_details`
--

CREATE TABLE `user_order_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `shipping_cost` int(11) NOT NULL,
  `user_order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_order_details`
--

INSERT INTO `user_order_details` (`id`, `product_id`, `price`, `quantity`, `shipping_cost`, `user_order_id`) VALUES(3, 2, 200000, 1, 20000, 4);
INSERT INTO `user_order_details` (`id`, `product_id`, `price`, `quantity`, `shipping_cost`, `user_order_id`) VALUES(4, 2, 100000, 2, 20000, 21);
INSERT INTO `user_order_details` (`id`, `product_id`, `price`, `quantity`, `shipping_cost`, `user_order_id`) VALUES(5, 2, 100000, 2, 20000, 22);
INSERT INTO `user_order_details` (`id`, `product_id`, `price`, `quantity`, `shipping_cost`, `user_order_id`) VALUES(6, 2, 100000, 2, 20000, 23);
INSERT INTO `user_order_details` (`id`, `product_id`, `price`, `quantity`, `shipping_cost`, `user_order_id`) VALUES(7, 2, 100000, 2, 20000, 24);
INSERT INTO `user_order_details` (`id`, `product_id`, `price`, `quantity`, `shipping_cost`, `user_order_id`) VALUES(8, 2, 100000, 10, 20000, 25);
INSERT INTO `user_order_details` (`id`, `product_id`, `price`, `quantity`, `shipping_cost`, `user_order_id`) VALUES(9, 2, 350000, 2, 20000, 4);
INSERT INTO `user_order_details` (`id`, `product_id`, `price`, `quantity`, `shipping_cost`, `user_order_id`) VALUES(10, 3, 350000, 3, 20000, 4);
INSERT INTO `user_order_details` (`id`, `product_id`, `price`, `quantity`, `shipping_cost`, `user_order_id`) VALUES(11, 2, 350000, 2, 20000, 4);
INSERT INTO `user_order_details` (`id`, `product_id`, `price`, `quantity`, `shipping_cost`, `user_order_id`) VALUES(13, 2, 350000, 2, 20000, 27);

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
-- Indeks untuk tabel `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_order_details`
--
ALTER TABLE `user_order_details`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `post_extras`
--
ALTER TABLE `post_extras`
  MODIFY `post_extra_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `product_extras`
--
ALTER TABLE `product_extras`
  MODIFY `product_extra_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT untuk tabel `user_order`
--
ALTER TABLE `user_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `user_order_details`
--
ALTER TABLE `user_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
