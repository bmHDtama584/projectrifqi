-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2025 at 09:51 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rifqi_mng_kegiatan`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id` int NOT NULL,
  `proyek_id` int NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `date` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `proyek_id`, `file`, `keterangan`, `date`) VALUES
(2, 4, '../uploads/test.jpg', 'Proses', '2025-03-19 10:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `proyek`
--

CREATE TABLE `proyek` (
  `id` int NOT NULL,
  `nama_proyek` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lokasi` text COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_pekerjaan` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_mulai` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_selesai` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Belum Mulai',
  `progres` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proyek`
--

INSERT INTO `proyek` (`id`, `nama_proyek`, `lokasi`, `jenis_pekerjaan`, `tanggal_mulai`, `tanggal_selesai`, `status`, `progres`) VALUES
(4, 'Test', 'Kudus', 'Jasa', '2025-03-19', '2025-03-24', 'Belum Mulai', 'Proses pencarian pekerja'),
(5, 'Proyek Jembatan A', 'Jakarta', 'Konstruksi Jembatan', '2025-01-10', '2025-06-15', 'Berjalan', '45'),
(6, 'Gedung Perkantoran B', 'Bandung', 'Pembangunan Gedung', '2025-02-01', '2025-08-30', 'Berjalan', '30'),
(7, 'Jalan Raya C', 'Surabaya', 'Perbaikan Jalan', '2025-03-05', '2025-07-20', 'Berjalan', '50'),
(8, 'Perumahan D', 'Yogyakarta', 'Pembangunan Rumah', '2025-01-20', '2025-12-15', 'Berjalan', '25'),
(9, 'Bendungan E', 'Medan', 'Konstruksi Bendungan', '2025-04-15', '2026-03-10', 'Baru Dimulai', '10'),
(10, 'Sekolah F', 'Makassar', 'Renovasi Sekolah', '2025-02-10', '2025-09-01', 'Berjalan', '35'),
(11, 'Pelabuhan G', 'Semarang', 'Pengembangan Pelabuhan', '2025-05-01', '2026-01-15', 'Baru Dimulai', '5'),
(12, 'Pabrik H', 'Palembang', 'Pembangunan Pabrik', '2025-06-20', '2026-04-30', 'Belum Dimulai', '0'),
(13, 'Tol I', 'Balikpapan', 'Konstruksi Jalan Tol', '2025-07-05', '2026-06-20', 'Berjalan', '20'),
(14, 'Rumah Sakit J', 'Denpasar', 'Pembangunan Rumah Sakit', '2025-08-10', '2026-07-15', 'Berjalan', '15'),
(15, 'Proyek Jembatan A', 'Jakarta', 'Konstruksi Jembatan', '2025-01-10', '2025-06-15', 'Berjalan', '45'),
(16, 'Proyek Flyover Jakarta', 'Jakarta', 'Pembangunan Flyover', '2025-03-15', '2025-09-10', 'Berjalan', '30'),
(17, 'Tol Jakarta Selatan', 'Jakarta', 'Perbaikan Jalan Tol', '2025-05-01', '2025-12-20', 'Berjalan', '60'),
(18, 'Gedung Perkantoran B', 'Bandung', 'Pembangunan Gedung', '2025-02-01', '2025-08-30', 'Berjalan', '30'),
(19, 'Apartemen Bandung Timur', 'Bandung', 'Konstruksi Apartemen', '2025-03-20', '2025-11-15', 'Berjalan', '50'),
(20, 'Jalan Layang Bandung', 'Bandung', 'Renovasi Jalan', '2025-06-10', '2026-01-25', 'Berjalan', '20'),
(21, 'Jalan Raya C', 'Surabaya', 'Perbaikan Jalan', '2025-03-05', '2025-07-20', 'Berjalan', '50'),
(22, 'Proyek Terminal Surabaya', 'Surabaya', 'Pembangunan Terminal', '2025-04-01', '2025-12-01', 'Baru Dimulai', '15'),
(23, 'Pelabuhan Surabaya Barat', 'Surabaya', 'Pengembangan Pelabuhan', '2025-07-10', '2026-06-30', 'Berjalan', '40'),
(24, 'Perumahan D', 'Yogyakarta', 'Pembangunan Rumah', '2025-01-20', '2025-12-15', 'Berjalan', '25'),
(25, 'Mall Baru Yogyakarta', 'Yogyakarta', 'Pembangunan Mall', '2025-04-05', '2025-11-20', 'Berjalan', '35'),
(26, 'Renovasi Pasar Tradisional', 'Yogyakarta', 'Renovasi Pasar', '2025-06-15', '2025-12-30', 'Berjalan', '50'),
(27, 'Bendungan E', 'Medan', 'Konstruksi Bendungan', '2025-04-15', '2026-03-10', 'Baru Dimulai', '10'),
(28, 'Jalan Medan Timur', 'Medan', 'Perbaikan Jalan', '2025-02-01', '2025-09-10', 'Berjalan', '45'),
(29, 'Stasiun Medan Selatan', 'Medan', 'Renovasi Stasiun', '2025-06-20', '2026-02-28', 'Berjalan', '30'),
(30, 'Sekolah F', 'Makassar', 'Renovasi Sekolah', '2025-02-10', '2025-09-01', 'Berjalan', '35'),
(31, 'Pelabuhan Makassar Baru', 'Makassar', 'Pembangunan Pelabuhan', '2025-03-15', '2026-01-10', 'Berjalan', '20'),
(32, 'Tol Makassar Selatan', 'Makassar', 'Konstruksi Jalan Tol', '2025-07-05', '2026-07-20', 'Baru Dimulai', '5'),
(33, 'Rumah Sakit J', 'Denpasar', 'Pembangunan Rumah Sakit', '2025-08-10', '2026-07-15', 'Berjalan', '15'),
(34, 'Bandara Internasional Bali', 'Denpasar', 'Perluasan Bandara', '2025-09-01', '2026-10-20', 'Baru Dimulai', '5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_general_ci DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proyek_id` (`proyek_id`);

--
-- Indexes for table `proyek`
--
ALTER TABLE `proyek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `proyek`
--
ALTER TABLE `proyek`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD CONSTRAINT `dokumen_ibfk_1` FOREIGN KEY (`proyek_id`) REFERENCES `proyek` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
