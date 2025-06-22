-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2025 pada 20.20
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
  `satuanbesar` enum('kg','biji','bungkus') NOT NULL,
  `stok` smallint(5) UNSIGNED NOT NULL,
  `hargabeli` decimal(12,2) NOT NULL,
  `hargajualsatuan` decimal(12,2) UNSIGNED NOT NULL,
  `satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi') NOT NULL,
  `stoksatuan` smallint(5) UNSIGNED NOT NULL,
  `hargabelisatuan` decimal(12,2) UNSIGNED NOT NULL,
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

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `laporan_kulak_harian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `laporan_kulak_harian` (
`tanggal_faktur` timestamp
,`toko` varchar(100)
,`kdbrg` varchar(20)
,`nmbrg` varchar(100)
,`satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi')
,`jumlah` smallint(5) unsigned
,`harga` decimal(12,2) unsigned
,`tharga` decimal(12,2) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `laporan_penjualan_harian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `laporan_penjualan_harian` (
`tanggal_faktur` timestamp
,`kdbrg` varchar(20)
,`nmbrg` varchar(100)
,`satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi')
,`jumlah` smallint(5) unsigned
,`harga` decimal(12,2) unsigned
,`tharga` decimal(12,2) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `total_kulak_harian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `total_kulak_harian` (
`tanggal_faktur` timestamp
,`total_harian` decimal(34,2)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `total_labarugiharian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `total_labarugiharian` (
`tanggal_faktur` timestamp
,`total_penjualan` decimal(39,2)
,`total_modal` decimal(39,2)
,`total_laba` decimal(40,2)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `total_penjualan_harian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `total_penjualan_harian` (
`tanggal_faktur` timestamp
,`total_harian` decimal(34,2)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_keluar`
--

CREATE TABLE `transaksi_keluar` (
  `nofaktur_keluar` varchar(25) NOT NULL,
  `tanggal_faktur` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kdbrg` varchar(20) NOT NULL,
  `nmbrg` varchar(100) NOT NULL,
  `satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi') NOT NULL,
  `jumlah` smallint(5) UNSIGNED NOT NULL,
  `harga` decimal(12,2) UNSIGNED NOT NULL,
  `tharga` decimal(12,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_masuk`
--

CREATE TABLE `transaksi_masuk` (
  `nofaktur_masuk` varchar(25) NOT NULL,
  `tanggal_faktur` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kdbrg` varchar(20) NOT NULL,
  `nmbrg` varchar(100) NOT NULL,
  `satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi') NOT NULL,
  `jumlah` smallint(5) UNSIGNED NOT NULL,
  `harga` decimal(12,2) UNSIGNED NOT NULL,
  `tharga` decimal(12,2) UNSIGNED NOT NULL,
  `toko` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur untuk view `laporan_kulak_harian`
--
DROP TABLE IF EXISTS `laporan_kulak_harian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporan_kulak_harian`  AS SELECT `transaksi_masuk`.`tanggal_faktur` AS `tanggal_faktur`, `transaksi_masuk`.`toko` AS `toko`, `transaksi_masuk`.`kdbrg` AS `kdbrg`, `transaksi_masuk`.`nmbrg` AS `nmbrg`, `transaksi_masuk`.`satuankecil` AS `satuankecil`, `transaksi_masuk`.`jumlah` AS `jumlah`, `transaksi_masuk`.`harga` AS `harga`, `transaksi_masuk`.`tharga` AS `tharga` FROM `transaksi_masuk` ORDER BY `transaksi_masuk`.`tanggal_faktur` DESC ;

-- --------------------------------------------------------

--
-- Struktur untuk view `laporan_penjualan_harian`
--
DROP TABLE IF EXISTS `laporan_penjualan_harian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporan_penjualan_harian`  AS SELECT `transaksi_keluar`.`tanggal_faktur` AS `tanggal_faktur`, `transaksi_keluar`.`kdbrg` AS `kdbrg`, `transaksi_keluar`.`nmbrg` AS `nmbrg`, `transaksi_keluar`.`satuankecil` AS `satuankecil`, `transaksi_keluar`.`jumlah` AS `jumlah`, `transaksi_keluar`.`harga` AS `harga`, `transaksi_keluar`.`tharga` AS `tharga` FROM `transaksi_keluar` ORDER BY `transaksi_keluar`.`tanggal_faktur` DESC ;

-- --------------------------------------------------------

--
-- Struktur untuk view `total_kulak_harian`
--
DROP TABLE IF EXISTS `total_kulak_harian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_kulak_harian`  AS SELECT `transaksi_masuk`.`tanggal_faktur` AS `tanggal_faktur`, sum(`transaksi_masuk`.`tharga`) AS `total_harian` FROM `transaksi_masuk` GROUP BY `transaksi_masuk`.`tanggal_faktur` ORDER BY `transaksi_masuk`.`tanggal_faktur` DESC ;

-- --------------------------------------------------------

--
-- Struktur untuk view `total_labarugiharian`
--
DROP TABLE IF EXISTS `total_labarugiharian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_labarugiharian`  AS SELECT `tk`.`tanggal_faktur` AS `tanggal_faktur`, sum(`tk`.`harga` * `tk`.`jumlah`) AS `total_penjualan`, sum(`b`.`hargabelisatuan` * `tk`.`jumlah`) AS `total_modal`, sum((`tk`.`harga` - `b`.`hargabelisatuan`) * `tk`.`jumlah`) AS `total_laba` FROM (`transaksi_keluar` `tk` join `barang` `b` on(`tk`.`kdbrg` = `b`.`kdbrg`)) GROUP BY `tk`.`tanggal_faktur` ORDER BY `tk`.`tanggal_faktur` DESC ;

-- --------------------------------------------------------

--
-- Struktur untuk view `total_penjualan_harian`
--
DROP TABLE IF EXISTS `total_penjualan_harian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_penjualan_harian`  AS SELECT `transaksi_keluar`.`tanggal_faktur` AS `tanggal_faktur`, sum(`transaksi_keluar`.`tharga`) AS `total_harian` FROM `transaksi_keluar` GROUP BY `transaksi_keluar`.`tanggal_faktur` ORDER BY `transaksi_keluar`.`tanggal_faktur` DESC ;

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
-- Indeks untuk tabel `transaksi_keluar`
--
ALTER TABLE `transaksi_keluar`
  ADD KEY `nofaktur_keluar` (`nofaktur_keluar`),
  ADD KEY `kdbrg` (`kdbrg`);

--
-- Indeks untuk tabel `transaksi_masuk`
--
ALTER TABLE `transaksi_masuk`
  ADD KEY `nofaktur_masuk` (`nofaktur_masuk`),
  ADD KEY `kdbrg` (`kdbrg`);

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

--
-- Ketidakleluasaan untuk tabel `transaksi_keluar`
--
ALTER TABLE `transaksi_keluar`
  ADD CONSTRAINT `transaksi_keluar_ibfk_1` FOREIGN KEY (`nofaktur_keluar`) REFERENCES `faktur_keluar` (`nofaktur_keluar`),
  ADD CONSTRAINT `transaksi_keluar_ibfk_2` FOREIGN KEY (`kdbrg`) REFERENCES `barang` (`kdbrg`);

--
-- Ketidakleluasaan untuk tabel `transaksi_masuk`
--
ALTER TABLE `transaksi_masuk`
  ADD CONSTRAINT `transaksi_masuk_ibfk_1` FOREIGN KEY (`nofaktur_masuk`) REFERENCES `faktur_masuk` (`nofaktur_masuk`),
  ADD CONSTRAINT `transaksi_masuk_ibfk_2` FOREIGN KEY (`kdbrg`) REFERENCES `barang` (`kdbrg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
