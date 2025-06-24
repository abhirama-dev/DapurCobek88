-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2025 pada 17.56
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
  `kd_admin` varchar(8) NOT NULL,
  `kdsuppl` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `kdsuppl` varchar(25) NOT NULL,
  `nmsuppl` varchar(100) NOT NULL,
  `almt_suppl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `total_kulak_harian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `total_kulak_harian` (
`tanggal_faktur` date
,`total_harian` decimal(34,2)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `total_penjualan_harian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `total_penjualan_harian` (
`tanggal_faktur` date
,`total_harian` decimal(34,2)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_konsumen`
--

CREATE TABLE `transaksi_konsumen` (
  `nofaktur_keluar` varchar(25) NOT NULL,
  `tanggal_faktur` date NOT NULL,
  `kdbrg` varchar(25) NOT NULL,
  `nmbrg` varchar(100) NOT NULL,
  `satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi') NOT NULL,
  `jumlah` smallint(5) UNSIGNED NOT NULL,
  `harga` decimal(12,2) UNSIGNED NOT NULL,
  `tharga` decimal(12,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_supplier`
--

CREATE TABLE `transaksi_supplier` (
  `nofaktur_masuk` varchar(25) NOT NULL,
  `tanggal_faktur` date NOT NULL,
  `kdbrg` varchar(20) NOT NULL,
  `nmbrg` varchar(100) NOT NULL,
  `satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi') NOT NULL,
  `jumlah` smallint(5) UNSIGNED NOT NULL,
  `harga` decimal(12,2) UNSIGNED NOT NULL,
  `tharga` decimal(12,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `utility`
--

CREATE TABLE `utility` (
  `nama_toko` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nama_pemilik` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_barang_ada`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_barang_ada` (
`kdbrg` varchar(20)
,`nmbrg` varchar(100)
,`satuanbesar` enum('kg','biji','bungkus')
,`stok` smallint(5) unsigned
,`hargabeli` decimal(12,2) unsigned
,`satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi')
,`stoksatuan` smallint(5) unsigned
,`hargabelisatuan` decimal(12,2) unsigned
,`hargajualsatuan` decimal(12,2) unsigned
,`status` enum('ada','tidak')
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_barang_tidak_ada`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_barang_tidak_ada` (
`kdbrg` varchar(20)
,`nmbrg` varchar(100)
,`satuanbesar` enum('kg','biji','bungkus')
,`stok` smallint(5) unsigned
,`hargabeli` decimal(12,2) unsigned
,`satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi')
,`stoksatuan` smallint(5) unsigned
,`hargabelisatuan` decimal(12,2) unsigned
,`hargajualsatuan` decimal(12,2) unsigned
,`status` enum('ada','tidak')
);

-- --------------------------------------------------------

--
-- Struktur untuk view `total_kulak_harian`
--
DROP TABLE IF EXISTS `total_kulak_harian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_kulak_harian`  AS SELECT `transaksi_supplier`.`tanggal_faktur` AS `tanggal_faktur`, sum(`transaksi_supplier`.`tharga`) AS `total_harian` FROM `transaksi_supplier` GROUP BY `transaksi_supplier`.`tanggal_faktur` ORDER BY `transaksi_supplier`.`tanggal_faktur` DESC ;

-- --------------------------------------------------------

--
-- Struktur untuk view `total_penjualan_harian`
--
DROP TABLE IF EXISTS `total_penjualan_harian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_penjualan_harian`  AS SELECT `transaksi_konsumen`.`tanggal_faktur` AS `tanggal_faktur`, sum(`transaksi_konsumen`.`tharga`) AS `total_harian` FROM `transaksi_konsumen` GROUP BY `transaksi_konsumen`.`tanggal_faktur` ORDER BY `transaksi_konsumen`.`tanggal_faktur` DESC ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_barang_ada`
--
DROP TABLE IF EXISTS `view_barang_ada`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_barang_ada`  AS SELECT `barang`.`kdbrg` AS `kdbrg`, `barang`.`nmbrg` AS `nmbrg`, `barang`.`satuanbesar` AS `satuanbesar`, `barang`.`stok` AS `stok`, `barang`.`hargabeli` AS `hargabeli`, `barang`.`satuankecil` AS `satuankecil`, `barang`.`stoksatuan` AS `stoksatuan`, `barang`.`hargabelisatuan` AS `hargabelisatuan`, `barang`.`hargajualsatuan` AS `hargajualsatuan`, `barang`.`status` AS `status` FROM `barang` WHERE `barang`.`status` = 'ada' ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_barang_tidak_ada`
--
DROP TABLE IF EXISTS `view_barang_tidak_ada`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_barang_tidak_ada`  AS SELECT `barang`.`kdbrg` AS `kdbrg`, `barang`.`nmbrg` AS `nmbrg`, `barang`.`satuanbesar` AS `satuanbesar`, `barang`.`stok` AS `stok`, `barang`.`hargabeli` AS `hargabeli`, `barang`.`satuankecil` AS `satuankecil`, `barang`.`stoksatuan` AS `stoksatuan`, `barang`.`hargabelisatuan` AS `hargabelisatuan`, `barang`.`hargajualsatuan` AS `hargajualsatuan`, `barang`.`status` AS `status` FROM `barang` WHERE `barang`.`status` = 'tidak' ;

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
  ADD KEY `kd_admin` (`kd_admin`),
  ADD KEY `kdsuppl` (`kdsuppl`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kdsuppl`);

--
-- Indeks untuk tabel `transaksi_konsumen`
--
ALTER TABLE `transaksi_konsumen`
  ADD KEY `nofaktur_keluar` (`nofaktur_keluar`),
  ADD KEY `kdbrg` (`kdbrg`);

--
-- Indeks untuk tabel `transaksi_supplier`
--
ALTER TABLE `transaksi_supplier`
  ADD KEY `nofaktur_masuk` (`nofaktur_masuk`),
  ADD KEY `kdbrg` (`kdbrg`);

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
  ADD CONSTRAINT `faktur_supplier_ibfk_1` FOREIGN KEY (`kd_admin`) REFERENCES `admin` (`kd_admin`),
  ADD CONSTRAINT `faktur_supplier_ibfk_2` FOREIGN KEY (`kdsuppl`) REFERENCES `supplier` (`kdsuppl`);

--
-- Ketidakleluasaan untuk tabel `transaksi_konsumen`
--
ALTER TABLE `transaksi_konsumen`
  ADD CONSTRAINT `transaksi_konsumen_ibfk_1` FOREIGN KEY (`nofaktur_keluar`) REFERENCES `faktur_konsumen` (`nofaktur_keluar`),
  ADD CONSTRAINT `transaksi_konsumen_ibfk_2` FOREIGN KEY (`kdbrg`) REFERENCES `barang` (`kdbrg`);

--
-- Ketidakleluasaan untuk tabel `transaksi_supplier`
--
ALTER TABLE `transaksi_supplier`
  ADD CONSTRAINT `transaksi_supplier_ibfk_1` FOREIGN KEY (`nofaktur_masuk`) REFERENCES `faktur_supplier` (`nofaktur_masuk`),
  ADD CONSTRAINT `transaksi_supplier_ibfk_2` FOREIGN KEY (`kdbrg`) REFERENCES `barang` (`kdbrg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
