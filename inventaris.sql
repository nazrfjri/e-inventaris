-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 03:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `kode` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `asal` varchar(25) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `satuan` varchar(15) NOT NULL,
  `tanggal_diterima` date NOT NULL,
  `tanggal_simpan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `kode`, `nama`, `gambar`, `asal`, `jumlah`, `satuan`, `tanggal_diterima`, `tanggal_simpan`) VALUES
(1, 'INV-2023-001', 'Komputer', 'Desktop-Computer-Transparent-Background.png', 'Sumbangan', 10, 'Unit', '2023-06-15', '2023-06-24 11:00:16'),
(2, 'INV-2023-002', 'Monitor', '9-monitor-png-image-thumb.png', 'Pembelian', 8, 'Unit', '2023-06-16', '2023-06-24 11:00:26'),
(3, 'INV-2023-003', 'Meja Kantor', 'desk-161474_1280.webp', 'Sumbangan', 12, 'Unit', '2023-06-17', '2023-06-24 11:00:35'),
(4, 'INV-2023-004', 'Kursi Kantor', '10499721_2.webp', 'Sumbangan', 50, 'Unit', '2023-06-17', '2023-06-24 11:00:44'),
(6, 'INV-2023-006', 'Proyektor', 'Projector-Transparent-Background.png', 'Bantuan', 5, 'Unit', '2023-06-17', '2023-06-24 11:03:53'),
(12, 'INV-2023-007', 'Lemari Arsip', '7579c196-1880-46dd-9d2b-f9354043f47c.png', 'Hibah', 18, 'Unit', '2023-06-17', '2023-06-24 11:04:07'),
(15, 'INV-2023-008', 'Tinta Print', 'D909BwnaXtBYBYF4wR4t1yR6dObZCtmSvLp8orRk.png', 'Hibah', 56, 'Pcs', '2023-06-18', '2023-06-24 11:03:37'),
(21, 'INV-2022-009', 'Printer', 'Computer-Printer-Transparent-Background.png', 'Bantuan', 14, 'Unit', '2023-06-22', '2023-06-24 11:07:02'),
(22, 'INV-2022-010', 'Alat Tulis', 'background-alat-tulis-kantor-10.webp', 'Pembelian', 150, 'Pak', '2023-06-22', '2023-06-24 11:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `username`, `password`) VALUES
(23, 'Tristan Sisma', 'tristan@gmail.com', 'tristan', '$2y$10$2.iBdHCkAjO6CbP/dWMif.gJRlqd6Dh6PoHu56A20ta42BJuLVzaO'),
(24, 'Inez Zahra', 'inez@gmail.com', 'inez', '$2y$10$AhcbLNjnqIUJs0nq2pRt7u/jmOqBpNRGcYhirdopdmAb6qbrPCwV2'),
(31, 'Nazar Fajri', 'nazar@gmail.com', 'nazar', '$2y$10$Y8Lzy1ypjzVqKSnd1JJ.4uH0diGKO6Rb5MPSytENxR4QKTiLJUssK'),
(32, 'User Anonim', 'user@gmail.com', 'user', '$2y$10$BoHtpAOPMzfB4xVnwPFZH.z/a9A131VXf.i/cl66TKf6zbawT19qW'),
(34, 'User Unknown', 'user2@gmail.com', 'user2', '$2y$10$yBD8/2uYPWZq6BpBvHaAnOkpvcIngaBhkuvHUovzk/uqDso6dwTbC'),
(36, 'User Known', 'user3@gmail.com', 'user3', '$2y$10$VX/IGTQp6.YyroCZTuV65.h69FkOboxQwecrbqkQi3yeld9AROcM2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
