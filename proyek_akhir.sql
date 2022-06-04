-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2022 at 10:59 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek_akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idBarang` varchar(30) NOT NULL,
  `namaBarang` varchar(30) NOT NULL,
  `hargaBarang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idBarang`, `namaBarang`, `hargaBarang`) VALUES
('KL-256', 'Kompor Portable', '40000'),
('LT-111', 'Lampu Tenda', '8000'),
('MA-FOIL', 'Matras FOIL', '15000'),
('MA-SPON', 'Matras Spon', '10000'),
('PTK-1000', 'Patok', '3500'),
('TE-2000', 'Tenda', '35000');

-- --------------------------------------------------------

--
-- Table structure for table `penyewa`
--

CREATE TABLE `penyewa` (
  `nama` varchar(30) NOT NULL,
  `jenisKelamin` varchar(10) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `idBarang` varchar(30) NOT NULL,
  `jaminan` varchar(50) NOT NULL,
  `tanggal_sewa` varchar(50) NOT NULL,
  `tanggal_kembali` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyewa`
--

INSERT INTO `penyewa` (`nama`, `jenisKelamin`, `alamat`, `idBarang`, `jaminan`, `tanggal_sewa`, `tanggal_kembali`) VALUES
('Kusuma', 'Laki-laki', 'Ndagen', 'KL-256', 'KTP', '26 Mei 2022', '31 Mei 2022'),
('Ardhian', 'Laki-laki', 'Bantul', 'TE-2000', 'Kartu Pelajar', '2 Juni 2022', '3 Juni 2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idBarang`);

--
-- Indexes for table `penyewa`
--
ALTER TABLE `penyewa`
  ADD KEY `pkid_kereta` (`idBarang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penyewa`
--
ALTER TABLE `penyewa`
  ADD CONSTRAINT `pkid_kereta` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
