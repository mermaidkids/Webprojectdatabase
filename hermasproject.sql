-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 06:26 AM
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
-- Database: `hermasproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_karyawan`
--

INSERT INTO `tbl_karyawan` (`id`, `nama`, `username`, `password`, `email`, `no_hp`, `alamat`, `catatan`, `image`, `role`) VALUES
(1, 'Hermas Bintang', 'admin', '$2y$10$I2gQA7/0MUSM527ZBFyNnuMYZ2HOzKQUBzOnPf98./GNftzZk6rme', 'hermasbintang@gmail.com', '085852484937', 'Krembung', 'Pemiliki', '144Screenshot_3.png', 'Admin'),
(4, 'Mbak Santi', 'santi', '$2y$10$HmFKgBHLg7Z1mdfqu3Jmd.Vl3MjGRQSHOQqlLAl8dm2v7F.4U0/Xy', 'santi@gmail.com', '081283830619', 'Krembung', 'Setrika', '875Screenshot_3.png', 'Karyawan'),
(5, 'Mbak Sumiati', 'sumiati', '$2y$10$nWonKXwo4rwU1/H8aYNTk.wZ46EfDfdUQxluXKRBhDyatdCaSjvG2', 'sumiati@gmail.com', '085852484937', 'Lemujut', 'Setrika', '979Screenshot_3.png', 'Karyawan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paket`
--

CREATE TABLE `tbl_paket` (
  `id` varchar(10) NOT NULL,
  `paket` varchar(100) NOT NULL,
  `harga_kilo` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_paket`
--

INSERT INTO `tbl_paket` (`id`, `paket`, `harga_kilo`, `deskripsi`) VALUES
('PKT004', 'Setrika', 4000, 'Kalau malas setrika'),
('PKT001', 'Cuci Kering', 4000, 'Cuci, Kering, Selesai\r\n'),
('PKT002', 'Cuci Basah', 3000, 'Cuci, Selesai'),
('PKT003', 'Cuci Setrika', 6000, 'Cuci, Kering, Setrika, Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id` varchar(10) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `id_pelanggan` varchar(10) NOT NULL,
  `kd_paket` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `biaya` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `kd_paket` (`kd_paket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
