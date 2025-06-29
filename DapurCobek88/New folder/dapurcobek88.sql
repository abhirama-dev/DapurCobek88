-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2025 pada 15.12
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

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`kd_admin`, `username`, `passwd`) VALUES
('Ad01', 'Admin', 'kepobgt'),
('Ad02', 'Abhirama', 'Satu234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kdbrg` varchar(20) NOT NULL,
  `nmbrg` varchar(100) NOT NULL,
  `satuanbesar` enum('kg','biji','bungkus','papan','porsi','bulan') DEFAULT NULL,
  `stok` smallint(5) UNSIGNED NOT NULL,
  `hargabeli` decimal(12,2) UNSIGNED NOT NULL,
  `hargajualsatuan` decimal(12,2) UNSIGNED NOT NULL,
  `satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi','gelas','hari') DEFAULT NULL,
  `stoksatuan` smallint(5) UNSIGNED NOT NULL,
  `hargabelisatuan` decimal(12,2) UNSIGNED NOT NULL,
  `status` enum('ada','tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kdbrg`, `nmbrg`, `satuanbesar`, `stok`, `hargabeli`, `hargajualsatuan`, `satuankecil`, `stoksatuan`, `hargabelisatuan`, `status`) VALUES
('BHN001', 'Telur', 'kg', 1, '26000.00', '2000.00', 'butir', 16, '1625.00', 'ada'),
('BHN002', 'Ayam', 'kg', 1, '35000.00', '2500.00', 'potong', 16, '2187.00', 'ada'),
('BHN003', 'Lele', 'kg', 1, '27000.00', '3000.00', 'ekor', 10, '2700.00', 'ada'),
('BHN004', 'Tomat', 'kg', 1, '16000.00', '2500.00', 'buah', 8, '2000.00', 'ada'),
('BHN005', 'Timun', 'kg', 1, '14000.00', '4000.00', 'buah', 4, '3500.00', 'ada'),
('BHN006', 'Kol', '', 4, '16000.00', '500.00', 'potong', 48, '334.00', 'ada'),
('BHN007', 'Sawi putIh', 'biji', 4, '20000.00', '700.00', 'potong', 48, '417.00', 'ada'),
('BHN008', 'Daun bawang', 'kg', 0, '3000.00', '60.00', 'gram', 250, '12.00', 'ada'),
('BHN009', 'Teh', 'bungkus', 2, '16000.00', '3000.00', 'gelas', 30, '534.00', 'ada'),
('BHN010', 'Kopi', 'bungkus', 30, '45000.00', '4000.00', 'gelas', 30, '1407.00', 'ada'),
('BHN011', 'Mie instan', 'bungkus', 5, '15000.00', '3500.00', 'sachet', 5, '3000.00', 'ada'),
('BHN012', 'Tempe', 'papan', 2, '10000.00', '1000.00', 'potong', 20, '500.00', 'ada'),
('BHN013', 'Tahu', 'biji', 20, '10000.00', '1000.00', 'potong', 20, '500.00', 'ada'),
('BHN014', 'Beras', 'kg', 3, '45000.00', '100.00', 'gram', 3000, '15.00', 'ada'),
('BMB001', 'Cabe merah', 'kg', 0, '7500.00', '500.00', 'buah', 25, '300.00', 'ada'),
('BMB002', 'Cabe putih', 'kg', 0, '9000.00', '500.00', 'buah', 40, '225.00', 'ada'),
('BMB003', 'Bawang putih', 'kg', 0, '12000.00', '500.00', 'buah', 48, '250.00', 'ada'),
('BMB004', 'Bawang merah', 'kg', 0, '12000.00', '500.00', 'buah', 48, '250.00', 'ada'),
('BMB005', 'Terasi', 'bungkus', 5, '6000.00', '1500.00', 'sachet', 5, '1200.00', 'ada'),
('BMB006', 'Micin', 'bungkus', 6, '5000.00', '1000.00', 'sachet', 6, '834.00', 'ada'),
('BMB007', 'Garam', 'bungkus', 1, '2500.00', '100.00', 'gram', 250, '10.00', 'ada'),
('BMB008', 'Gula merah', 'kg', 0, '6000.00', '250.00', 'gram', 250, '24.00', 'ada'),
('BMB009', 'Gula pasir', 'kg', 1, '17500.00', '350.00', 'gram', 500, '35.00', 'ada'),
('BMB010', 'Kecap', 'bungkus', 1, '8500.00', '100.00', 'gram', 225, '38.00', 'ada'),
('BMB011', 'Saus', 'bungkus', 1, '7000.00', '100.00', 'gram', 225, '32.00', 'ada'),
('BMB012', 'Minyak goreng', 'kg', 1, '19000.00', '100.00', 'gram', 1000, '19.00', 'ada'),
('MSK001', 'Ayam kremes', 'porsi', 0, '0.00', '15000.00', 'porsi', 0, '12724.00', 'tidak'),
('MSK002', 'Ayam bakar', 'porsi', 0, '0.00', '15000.00', 'porsi', 0, '12724.00', 'tidak'),
('MSK003', 'Telur orak-arik', 'porsi', 0, '0.00', '15000.00', 'porsi', 0, '12162.00', 'tidak'),
('MSK004', 'Telur krebo', 'porsi', 0, '0.00', '15000.00', 'porsi', 0, '12162.00', 'tidak'),
('MSK005', 'Lele goreng', 'porsi', 0, '0.00', '15000.00', 'porsi', 0, '13237.00', 'tidak'),
('MSK006', 'Mie komplit', 'porsi', 0, '0.00', '15000.00', 'porsi', 0, '13522.00', 'tidak'),
('NON001', 'Gas', 'kg', 3, '22000.00', '30.00', 'gram', 3000, '8.00', 'ada'),
('NON002', 'Listrik', 'bulan', 1, '100000.00', '4000.00', 'hari', 30, '3334.00', 'ada'),
('NON003', 'Sewa ruko', 'bulan', 1, '300000.00', '12000.00', 'hari', 30, '10000.00', 'ada');

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

--
-- Dumping data untuk tabel `faktur_konsumen`
--

INSERT INTO `faktur_konsumen` (`nofaktur_keluar`, `tanggal_faktur`, `total_brg`, `gtharga`, `kd_admin`) VALUES
('INV-K-260625-001', '2025-06-26', 2, '54000.00', 'Ad02'),
('INV-K-260625-002', '2025-06-26', 2, '76000.00', 'Ad02'),
('INV-K-260625-003', '2025-06-26', 2, '90000.00', 'Ad02'),
('INV-K-260625-004', '2025-06-26', 2, '75000.00', 'Ad02'),
('INV-K-260625-005', '2025-06-26', 2, '57000.00', 'Ad02'),
('INV-K-260625-006', '2025-06-26', 3, '92000.00', 'Ad02');

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

--
-- Dumping data untuk tabel `faktur_supplier`
--

INSERT INTO `faktur_supplier` (`nofaktur_masuk`, `tanggal_faktur`, `total_brg`, `gtharga`, `kd_admin`, `kdsuppl`) VALUES
('INV-S-260625-001', '2025-06-26', 1, '26000.00', 'Ad01', 'S004'),
('INV-S-260625-002', '2025-06-26', 1, '35000.00', 'Ad01', 'S006'),
('INV-S-260625-003', '2025-06-26', 1, '27000.00', 'Ad01', 'S001'),
('INV-S-260625-004', '2025-06-26', 4, '40500.00', 'Ad01', 'S005'),
('INV-S-260625-005', '2025-06-26', 10, '106000.00', 'Ad01', 'S002'),
('INV-S-260625-006', '2025-06-26', 9, '130500.00', 'Ad01', 'S003'),
('INV-S-260625-007', '2025-06-26', 3, '422000.00', 'Ad01', 'S007');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `kdsuppl` varchar(25) NOT NULL,
  `nmsuppl` varchar(100) NOT NULL,
  `almt_suppl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`kdsuppl`, `nmsuppl`, `almt_suppl`) VALUES
('S001', 'Toko Lele Seger', 'Pasar Wiradesa'),
('S002', 'Toko Jaya Pasar', 'Pasar Wiradesa'),
('S003', 'Toko Sayur Sembako', 'Pasar Wiradesa'),
('S004', 'Agen Telur Barokah', 'Pasar Wiradesa'),
('S005', 'Toko Dapur Kita', 'Pasar Wiradesa'),
('S006', 'Toko Ayam dan Daging', 'Pasar Wiradesa'),
('S007', 'Agen IBC', 'IBC');

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
-- Stand-in struktur untuk tampilan `total_labarugi_harian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `total_labarugi_harian` (
`tanggal_faktur` date
,`total_penjualan` decimal(34,2)
,`total_kulak` decimal(34,2)
,`total_laba` decimal(35,2)
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
  `satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi','gelas','hari') DEFAULT NULL,
  `jumlah` smallint(5) UNSIGNED NOT NULL,
  `harga` decimal(12,2) UNSIGNED NOT NULL,
  `tharga` decimal(12,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi_konsumen`
--

INSERT INTO `transaksi_konsumen` (`nofaktur_keluar`, `tanggal_faktur`, `kdbrg`, `nmbrg`, `satuankecil`, `jumlah`, `harga`, `tharga`) VALUES
('INV-K-260625-001', '2025-06-26', 'MSK001', 'Ayam kremes', 'porsi', 3, '15000.00', '45000.00'),
('INV-K-260625-001', '2025-06-26', 'BHN009', 'Teh', 'gelas', 3, '3000.00', '9000.00'),
('INV-K-260625-002', '2025-06-26', 'MSK002', 'Ayam bakar', 'porsi', 4, '15000.00', '60000.00'),
('INV-K-260625-002', '2025-06-26', 'BHN010', 'Kopi', 'gelas', 4, '4000.00', '16000.00'),
('INV-K-260625-003', '2025-06-26', 'MSK003', 'Telur orak-arik', 'porsi', 5, '15000.00', '75000.00'),
('INV-K-260625-003', '2025-06-26', 'BHN009', 'Teh', 'gelas', 5, '3000.00', '15000.00'),
('INV-K-260625-004', '2025-06-26', 'MSK004', 'Telur krebo', 'porsi', 4, '15000.00', '60000.00'),
('INV-K-260625-004', '2025-06-26', 'BHN009', 'Teh', 'gelas', 5, '3000.00', '15000.00'),
('INV-K-260625-005', '2025-06-26', 'MSK005', 'Lele goreng', 'porsi', 3, '15000.00', '45000.00'),
('INV-K-260625-005', '2025-06-26', 'BHN009', 'Teh', 'gelas', 4, '3000.00', '12000.00'),
('INV-K-260625-006', '2025-06-26', 'MSK006', 'Mie komplit', 'porsi', 5, '15000.00', '75000.00'),
('INV-K-260625-006', '2025-06-26', 'BHN009', 'Teh', 'gelas', 3, '3000.00', '9000.00'),
('INV-K-260625-006', '2025-06-26', 'BHN010', 'Kopi', 'gelas', 2, '4000.00', '8000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_supplier`
--

CREATE TABLE `transaksi_supplier` (
  `nofaktur_masuk` varchar(25) NOT NULL,
  `tanggal_faktur` date NOT NULL,
  `kdbrg` varchar(20) NOT NULL,
  `nmbrg` varchar(100) NOT NULL,
  `satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi','gelas','hari') DEFAULT NULL,
  `jumlah` smallint(5) UNSIGNED NOT NULL,
  `harga` decimal(12,2) UNSIGNED NOT NULL,
  `tharga` decimal(12,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi_supplier`
--

INSERT INTO `transaksi_supplier` (`nofaktur_masuk`, `tanggal_faktur`, `kdbrg`, `nmbrg`, `satuankecil`, `jumlah`, `harga`, `tharga`) VALUES
('INV-S-260625-001', '2025-06-26', 'BHN001', 'Telur', 'butir', 16, '1625.00', '26000.00'),
('INV-S-260625-002', '2025-06-26', 'BHN002', 'Ayam', 'potong', 16, '2187.00', '35000.00'),
('INV-S-260625-003', '2025-06-26', 'BHN003', 'Lele', 'ekor', 10, '2700.00', '27000.00'),
('INV-S-260625-004', '2025-06-26', 'BMB001', 'Cabe merah', 'buah', 25, '300.00', '7500.00'),
('INV-S-260625-004', '2025-06-26', 'BMB002', 'Cabe putih', 'buah', 40, '225.00', '9000.00'),
('INV-S-260625-004', '2025-06-26', 'BMB003', 'Bawang putih', 'buah', 48, '250.00', '12000.00'),
('INV-S-260625-004', '2025-06-26', 'BMB004', 'Bawang merah', 'buah', 48, '250.00', '12000.00'),
('INV-S-260625-005', '2025-06-26', 'BHN004', 'Tomat', 'buah', 8, '2000.00', '16000.00'),
('INV-S-260625-005', '2025-06-26', 'BHN005', 'Timun', 'buah', 4, '3500.00', '14000.00'),
('INV-S-260625-005', '2025-06-26', 'BMB005', 'Terasi', 'sachet', 5, '1200.00', '6000.00'),
('INV-S-260625-005', '2025-06-26', 'BMB006', 'Micin', 'sachet', 6, '834.00', '5000.00'),
('INV-S-260625-005', '2025-06-26', 'BMB007', 'Garam', 'gram', 250, '10.00', '2500.00'),
('INV-S-260625-005', '2025-06-26', 'BMB008', 'Gula merah', 'gram', 250, '24.00', '6000.00'),
('INV-S-260625-005', '2025-06-26', 'BMB009', 'Gula pasir', 'gram', 500, '35.00', '17500.00'),
('INV-S-260625-005', '2025-06-26', 'BHN006', 'Kol', 'potong', 48, '334.00', '16000.00'),
('INV-S-260625-005', '2025-06-26', 'BHN007', 'Sawi putIh', 'potong', 48, '417.00', '20000.00'),
('INV-S-260625-005', '2025-06-26', 'BHN008', 'Daun bawang', 'gram', 250, '12.00', '3000.00'),
('INV-S-260625-006', '2025-06-26', 'BMB010', 'Kecap', 'gram', 225, '38.00', '8500.00'),
('INV-S-260625-006', '2025-06-26', 'BMB011', 'Saus', 'gram', 225, '32.00', '7000.00'),
('INV-S-260625-006', '2025-06-26', 'BHN009', 'Teh', 'gelas', 30, '534.00', '16000.00'),
('INV-S-260625-006', '2025-06-26', 'BHN010', 'Kopi', 'gelas', 30, '1407.00', '45000.00'),
('INV-S-260625-006', '2025-06-26', 'BHN011', 'Mie instan', 'sachet', 5, '3000.00', '15000.00'),
('INV-S-260625-006', '2025-06-26', 'BHN012', 'Tempe', 'potong', 20, '500.00', '10000.00'),
('INV-S-260625-006', '2025-06-26', 'BHN013', 'Tahu', 'potong', 20, '500.00', '10000.00'),
('INV-S-260625-006', '2025-06-26', 'BMB012', 'Minyak goreng', 'gram', 1000, '19.00', '19000.00'),
('INV-S-260625-006', '2025-06-26', 'BHN014', 'Beras', 'gram', 3000, '15.00', '45000.00'),
('INV-S-260625-007', '2025-06-26', 'NON001', 'Gas', 'gram', 3000, '8.00', '22000.00'),
('INV-S-260625-007', '2025-06-26', 'NON002', 'Listrik', 'hari', 30, '3334.00', '100000.00'),
('INV-S-260625-007', '2025-06-26', 'NON003', 'Sewa ruko', 'hari', 30, '10000.00', '300000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `utility`
--

CREATE TABLE `utility` (
  `nama_toko` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nama_pemilik` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `utility`
--

INSERT INTO `utility` (`nama_toko`, `alamat`, `nama_pemilik`) VALUES
('Dapur Cobek 88', 'Jl. Ahmad Yani No.573, Pekuncen, Kec. Wiradesa, Kab. Pekalongan, Jawa Tengah', 'Bu Woro');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_barang_ada`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_barang_ada` (
`kdbrg` varchar(20)
,`nmbrg` varchar(100)
,`satuanbesar` enum('kg','biji','bungkus','papan','porsi','bulan')
,`stok` smallint(5) unsigned
,`hargabeli` decimal(12,2) unsigned
,`satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi','gelas','hari')
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
,`satuanbesar` enum('kg','biji','bungkus','papan','porsi','bulan')
,`stok` smallint(5) unsigned
,`hargabeli` decimal(12,2) unsigned
,`satuankecil` enum('butir','potong','ekor','buah','gram','sachet','bungkus','porsi','gelas','hari')
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
-- Struktur untuk view `total_labarugi_harian`
--
DROP TABLE IF EXISTS `total_labarugi_harian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_labarugi_harian`  AS SELECT coalesce(`tp`.`tanggal_faktur`,`tk`.`tanggal_faktur`) AS `tanggal_faktur`, ifnull(`tp`.`total_harian`,0) AS `total_penjualan`, ifnull(`tk`.`total_harian`,0) AS `total_kulak`, ifnull(`tp`.`total_harian`,0) - ifnull(`tk`.`total_harian`,0) AS `total_laba` FROM (`total_penjualan_harian` `tp` left join `total_kulak_harian` `tk` on(`tp`.`tanggal_faktur` = `tk`.`tanggal_faktur`)) ;

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
  ADD PRIMARY KEY (`kdbrg`),
  ADD KEY `idx_nama_barang` (`nmbrg`),
  ADD KEY `idx_status_barang` (`status`);

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
  ADD KEY `idx_kdbrg_konsumen` (`kdbrg`);

--
-- Indeks untuk tabel `transaksi_supplier`
--
ALTER TABLE `transaksi_supplier`
  ADD KEY `nofaktur_masuk` (`nofaktur_masuk`),
  ADD KEY `idx_kdbrg_supplier` (`kdbrg`);

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
