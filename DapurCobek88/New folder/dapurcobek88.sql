-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jun 2025 pada 20.34
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dapurcobek88`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `kd_admin` varchar(8) NOT NULL,
  `username` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kdbrg` varchar(20) NOT NULL,
  `nmbrg` varchar(100) NOT NULL,
  `satuanbesar` enum('kg','biji','bungkus') NOT NULL,
  `stok` smallint(5) UNSIGNED NOT NULL,
  `hargabeli` decimal(12,2) UNSIGNED NOT NULL,
  `hargajualsatuan` decimal(12,2) UNSIGNED NOT NULL,
  `satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi') NOT NULL,
  `stoksatuan` smallint(5) UNSIGNED NOT NULL,
  `hargabelisatuan` decimal(12,2) UNSIGNED NOT NULL,
  `status` enum('ada','tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faktur_konsumen`
--

CREATE TABLE `faktur_konsumen` (
  `nofaktur_keluar` varchar(25) NOT NULL,
  `tanggal_faktur` date NOT NULL,
  `total_brg` tinyint(3) UNSIGNED NOT NULL,
  `gtharga` decimal(12,2) UNSIGNED NOT NULL,
  `kd_admin` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faktur_supplier`
--

CREATE TABLE `faktur_supplier` (
  `nofaktur_masuk` varchar(25) NOT NULL,
  `tanggal_faktur` date NOT NULL,
  `total_brg` tinyint(3) UNSIGNED NOT NULL,
  `gtharga` decimal(12,2) UNSIGNED NOT NULL,
  `kd_admin` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kdbrg`);

--
-- Indeks untuk tabel `faktur_konsumen`
--
ALTER TABLE `faktur_konsumen`
  ADD PRIMARY KEY (`nofaktur_keluar`),
  ADD KEY `kd_admin` (`kd_admin`);

--
-- Indeks untuk tabel `faktur_supplier`
--
ALTER TABLE `faktur_supplier`
  ADD PRIMARY KEY (`nofaktur_masuk`),
  ADD KEY `kd_admin` (`kd_admin`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `faktur_konsumen`
--
ALTER TABLE `faktur_konsumen`
  ADD CONSTRAINT `faktur_konsumen_ibfk_1` FOREIGN KEY (`kd_admin`) REFERENCES `admin` (`kd_admin`);

--
-- Ketidakleluasaan untuk tabel `faktur_supplier`
--
ALTER TABLE `faktur_supplier`
  ADD CONSTRAINT `faktur_supplier_ibfk_1` FOREIGN KEY (`kd_admin`) REFERENCES `admin` (`kd_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
