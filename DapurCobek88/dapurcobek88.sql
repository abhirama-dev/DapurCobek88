-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2025 pada 17.10
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

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
  `kd_admin` tinyint(6) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kdbrg` varchar(20) NOT NULL,
  `nmbrg` varchar(100) NOT NULL,
  `satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi') NOT NULL,
  `stok` smallint(5) UNSIGNED DEFAULT NULL,
  `hargabelisatuan` decimal(12,2) UNSIGNED NOT NULL,
  `hargajualsatuan` decimal(12,2) UNSIGNED NOT NULL,
  `status` enum('ada','tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faktur_keluar`
--

CREATE TABLE `faktur_keluar` (
  `nofaktur_keluar` varchar(25) NOT NULL,
  `tanggal_faktur` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_brg` tinyint(3) UNSIGNED NOT NULL,
  `gtharga` decimal(12,2) UNSIGNED NOT NULL,
  `kd_admin` tinyint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faktur_masuk`
--

CREATE TABLE `faktur_masuk` (
  `nofaktur_masuk` varchar(25) NOT NULL,
  `tanggal_faktur` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_brg` tinyint(3) UNSIGNED NOT NULL,
  `gtharga` decimal(12,2) UNSIGNED NOT NULL,
  `kd_admin` tinyint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indeks untuk tabel `faktur_keluar`
--
ALTER TABLE `faktur_keluar`
  ADD PRIMARY KEY (`nofaktur_keluar`),
  ADD KEY `kd_admin` (`kd_admin`);

--
-- Indeks untuk tabel `faktur_masuk`
--
ALTER TABLE `faktur_masuk`
  ADD PRIMARY KEY (`nofaktur_masuk`),
  ADD KEY `kd_admin` (`kd_admin`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `faktur_keluar`
--
ALTER TABLE `faktur_keluar`
  ADD CONSTRAINT `faktur_keluar_ibfk_1` FOREIGN KEY (`kd_admin`) REFERENCES `admin` (`kd_admin`);

--
-- Ketidakleluasaan untuk tabel `faktur_masuk`
--
ALTER TABLE `faktur_masuk`
  ADD CONSTRAINT `faktur_masuk_ibfk_1` FOREIGN KEY (`kd_admin`) REFERENCES `admin` (`kd_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
