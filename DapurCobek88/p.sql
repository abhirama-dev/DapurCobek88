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
-- Database: `p`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `kode_admin` varchar(10) NOT NULL,
  `nama_Admin` varchar(50) NOT NULL,
  `nomor_telepon_admin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`kode_admin`, `nama_Admin`, `nomor_telepon_admin`) VALUES
('KARDR01', 'RINA DAN ROMI', '085600104454');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_kembali`
--

CREATE TABLE `barang_kembali` (
  `kode_retur` varchar(15) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `alasan_barang_kembali` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang_kembali`
--

INSERT INTO `barang_kembali` (`kode_retur`, `kode_barang`, `jumlah`, `alasan_barang_kembali`) VALUES
('RTR001', 'SAUKSD077', 1, 'BUNGKUS TERBUKA'),
('RTR001', 'SAUKSD077', 1, 'BUNGKUS TERBUKA'),
('RTR003', 'JAMTLA015S', 2, 'BOCOR'),
('RTR004', 'THBDN180', 3, 'BASI'),
('RTR005', 'THNT180', 1, 'BASI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_faktur_pembelian`
--

CREATE TABLE `detail_faktur_pembelian` (
  `id_detail` varchar(15) NOT NULL,
  `nomor_faktur` varchar(25) NOT NULL,
  `kode_barang` varchar(30) NOT NULL,
  `satuan` enum('DUS','PACK') NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` decimal(12,2) NOT NULL,
  `total_harga` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_faktur_pembelian`
--

INSERT INTO `detail_faktur_pembelian` (`id_detail`, `nomor_faktur`, `kode_barang`, `satuan`, `jumlah`, `harga`, `total_harga`) VALUES
('DEFKPN01', '01C280525100064', '0049SOR22034', 'DUS', 2, '60000.00', '120000.00'),
('DEFKPN02', '01C280525100064', '1035TGR417020914', 'DUS', 3, '14000.00', '42000.00'),
('DEFKPN03', '01C280525100064', '1953TGR2210201A4', 'DUS', 3, '16000.00', '48000.00'),
('DEFKPN04', '01C280525100064', '1DKGMJL', 'DUS', 6, '14000.00', '84000.00'),
('DEFKPN05', '01C280525100064', '2SEGMJL', 'DUS', 5, '102000.00', '510000.00'),
('DEFKPN06', '01C280525100064', 'SMD031225F6204148', 'DUS', 6, '16800.00', '100800.00'),
('DEFKPN07', '01C280525100064', 'SMLKCK200', 'DUS', 3, '42000.00', '126000.00'),
('DEFKPN08', '01C280525100064', 'SMLKVN200', 'DUS', 2, '42000.00', '84000.00'),
('DEFKPN09', '01C280525100064', 'SMLKST200', 'DUS', 2, '42000.00', '84000.00'),
('DEFKPN10', '01C280525100064', 'AQ600BTL', 'DUS', 2, '30000.00', '60000.00'),
('DEFKPN11', 'AYO.250524125533.2442', '2506040012', 'DUS', 1, '68800.00', '68800.00'),
('DEFKPN12', 'AYO.250524125533.2442', 'DJC010200', 'DUS', 1, '146000.00', '146000.00'),
('DEFKPN13', 'AYO.250524125533.2442', 'DM25060401001', 'DUS', 1, '237000.00', '237000.00'),
('DEFKPN14', 'AYO.250524125533.2442', 'MC08999909003439', 'DUS', 1, '103000.00', '103000.00'),
('DEFKPN15', 'AYO.250524125533.2442', 'PAK6004700122', 'DUS', 1, '110000.00', '110000.00'),
('DEFKPN16', 'AYO.250524125533.2442', 'DJSP8999909028999', 'DUS', 1, '208000.00', '208000.00'),
('DEFKPN17', 'AYO.250524125533.2442', 'SIJ7009500150', 'DUS', 1, '166000.00', '166000.00'),
('DEFKPN18', 'AYO.250524125533.2442', 'THNT180', 'DUS', 1, '36000.00', '36000.00'),
('DEFKPN19', 'AYO.250524125533.2442', 'THBDN180', 'DUS', 2, '36000.00', '72000.00'),
('DEFKPN20', 'AYO.250524125533.2442', 'SPRT250BTL', 'PACK', 1, '54000.00', '54000.00'),
('DEFKPN21', 'FRA02025005141345', 'GLAP1K', 'DUS', 2, '272000.00', '544000.00'),
('DEFKPN22', 'FRA02025005141345', 'JAMTLA015SCH', 'PACK', 3, '48000.00', '144000.00'),
('DEFKPN23', 'FRA02025005141345', 'MNYKTA900', 'DUS', 4, '204000.00', '816000.00'),
('DEFKPN24', 'FRA02025005141345', 'SAUKBG077', 'DUS', 2, '120000.00', '240000.00'),
('DEFKPN25', 'FRA02025005141345', 'SAUKSD077', 'DUS', 2, '72000.00', '144000.00'),
('DEFKPN26', 'FRA02025005141345', 'SBGVC250LAV', 'DUS', 2, '120000.00', '240000.00'),
('DEFKPN27', 'FRA02025005141345', 'TISPSOMIN', 'PACK', 3, '16000.00', '48000.00'),
('DEFKPN28', 'FRA02025005141345', 'COL250BTL', 'PACK', 1, '54000.00', '54000.00'),
('DEFKPN29', 'FRA02025005141345', 'THBOTSOS350', 'DUS', 2, '54000.00', '108000.00'),
('DEFKPN30', 'FRA02025005141345', 'KKP150CUP', 'DUS', 1, '36000.00', '36000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi_penjualan`
--

CREATE TABLE `detail_transaksi_penjualan` (
  `id_detail` varchar(15) NOT NULL,
  `nomor_faktur_keluar` varchar(15) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `satuan` enum('PCS','SACHET','CUP','BOTOL','PLASTIK') NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` decimal(12,2) NOT NULL,
  `total_harga` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_transaksi_penjualan`
--

INSERT INTO `detail_transaksi_penjualan` (`id_detail`, `nomor_faktur_keluar`, `kode_barang`, `satuan`, `jumlah`, `harga`, `total_harga`) VALUES
('NFK0001', 'NFKPN0001', 'DJC010200', 'PCS', 1, '16000.00', '16000.00'),
('NFK0002', 'NFKPN0002', 'MNYKTA900', 'BOTOL', 3, '18000.00', '54000.00'),
('NFK0003', 'NFKPN0003', 'SAUKSD077', 'PCS', 6, '2000.00', '12000.00'),
('NFK0004', 'NFKPN0004', '0049SOR220', 'BOTOL', 2, '3000.00', '6000.00'),
('NFK0005', 'NFKPN0005', 'GLAP1K', 'PLASTIK', 2, '18000.00', '36000.00'),
('NFK0006', 'NFKPN0006', 'PAK6004700', 'PCS', 1, '13000.00', '13000.00'),
('NFK0007', 'NFKPN0007', 'SMD031225F', 'PCS', 5, '1000.00', '5000.00'),
('NFK0008', 'NFKPN0008', 'SBGVC250LA', 'PCS', 3, '3000.00', '9000.00'),
('NFK0009', 'NFKPN0009', 'JAMTLA015S', 'SACHET', 4, '5000.00', '20000.00'),
('NFK0010', 'NFKPN0010', 'DJSP899990', 'PCS', 1, '23500.00', '23500.00'),
('NFK0011', 'NFKPN0011', 'SMLKCK200', 'BOTOL', 5, '4000.00', '20000.00'),
('NFK0012', 'NFKPN0012', 'THBDN180', 'CUP', 10, '2000.00', '20000.00'),
('NFK0013', 'NFKPN0013', 'THBOTSOS35', 'BOTOL', 3, '5000.00', '15000.00'),
('NFK0014', 'NFKPN0014', 'AQ600BTL', 'BOTOL', 2, '3000.00', '6000.00'),
('NFK0015', 'NFKPN0015', 'THNT180', 'CUP', 6, '2000.00', '12000.00');

--
-- Trigger `detail_transaksi_penjualan`
--
DELIMITER $$
CREATE TRIGGER `trg_after_penjualan` AFTER INSERT ON `detail_transaksi_penjualan` FOR EACH ROW BEGIN
  DECLARE stok_lama INT;
  DECLARE stok_baru INT;

  SELECT stok INTO stok_lama
  FROM barang
  WHERE kode_barang = NEW.kode_barang;

  SET stok_baru = stok_lama - NEW.jumlah;

  INSERT INTO log_stok (
    id_log, kode_barang, tanggal_perubahan,
    stok_sebelumnya, stok_sesudahnya, stok_setelahretur,
    jenis_transaksi, kode_admin
  ) VALUES (
    CONCAT('LOG', DATE_FORMAT(NOW(), '%y%m%d%H%i%s')),
    NEW.kode_barang, NOW(),
    stok_lama, stok_baru, stok_baru,
    'PENJUALAN', 'KARDR01'
  );

  UPDATE barang
  SET stok = stok_baru
  WHERE kode_barang = NEW.kode_barang;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faktur_pembelian`
--

CREATE TABLE `faktur_pembelian` (
  `nomor_faktur` varchar(25) NOT NULL,
  `tanggal_faktur` date NOT NULL,
  `total_barang` int(11) NOT NULL,
  `kode_supplier` varchar(10) NOT NULL,
  `total_harga_beli` decimal(12,2) NOT NULL,
  `kode_Admin` varchar(10) NOT NULL,
  `nama_petugas_pengirim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `faktur_pembelian`
--

INSERT INTO `faktur_pembelian` (`nomor_faktur`, `tanggal_faktur`, `total_barang`, `kode_supplier`, `total_harga_beli`, `kode_Admin`, `nama_petugas_pengirim`) VALUES
('01C280525100064', '2025-05-17', 810, 'SPFA001', '1258800.00', 'KARDR01', 'JUJUK'),
('AYO.250524125533.2442', '2025-05-24', 152, 'SPDL002', '1200800.00', 'KARDR01', 'PAULUS'),
('FRA02025005141345', '2025-05-14', 488, 'SPZH003', '2374000.00', 'KARDR01', 'ASEP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faktur_penjualan`
--

CREATE TABLE `faktur_penjualan` (
  `nomor_faktur_keluar` varchar(15) NOT NULL,
  `tanggal_faktur_keluar` date NOT NULL,
  `total_barang` int(11) NOT NULL,
  `total_harga_jual` decimal(12,2) NOT NULL,
  `kode_admin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `faktur_penjualan`
--

INSERT INTO `faktur_penjualan` (`nomor_faktur_keluar`, `tanggal_faktur_keluar`, `total_barang`, `total_harga_jual`, `kode_admin`) VALUES
('NFKPN0001', '2025-05-25', 1, '16000.00', 'KARDR01'),
('NFKPN0002', '2025-05-16', 3, '54000.00', 'KARDR01'),
('NFKPN0003', '2025-05-16', 6, '12000.00', 'KARDR01'),
('NFKPN0004', '2025-05-17', 2, '6000.00', 'KARDR01'),
('NFKPN0005', '2025-05-15', 2, '36000.00', 'KARDR01'),
('NFKPN0006', '2025-05-25', 1, '13000.00', 'KARDR01'),
('NFKPN0007', '2025-05-18', 5, '5000.00', 'KARDR01'),
('NFKPN0008', '2025-05-15', 3, '9000.00', 'KARDR01'),
('NFKPN0009', '2025-05-15', 4, '20000.00', 'KARDR01'),
('NFKPN0010', '2025-05-26', 1, '23500.00', 'KARDR01'),
('NFKPN0011', '2025-05-18', 5, '20000.00', 'KARDR01'),
('NFKPN0012', '2025-05-26', 10, '20000.00', 'KARDR01'),
('NFKPN0013', '2025-05-18', 3, '15000.00', 'KARDR01'),
('NFKPN0014', '2025-05-18', 2, '6000.00', 'KARDR01'),
('NFKPN0015', '2025-05-27', 6, '12000.00', 'KARDR01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `katagori_barang`
--

CREATE TABLE `katagori_barang` (
  `kode_katagori` varchar(10) NOT NULL,
  `nama_katagori` varchar(50) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `katagori_barang`
--

INSERT INTO `katagori_barang` (`kode_katagori`, `nama_katagori`, `deskripsi`) VALUES
('KTGMKN01', 'MAKANAN', 'MAKANAN RINGAN'),
('KTGMKN02', 'MAKANAN', 'MAKANAN RINGAN'),
('KTGMKN03', 'MAKANAN', 'MAKANAN RINGAN'),
('KTGMKN04', 'MAKANAN', 'MAKANAN RINGAN'),
('KTGMKN05', 'MAKANAN', 'MAKANAN RINGAN'),
('KTGMNM01', 'MINUMAN', 'AIR MINERAL'),
('KTGMNM02', 'MINUMAN', 'MINUMAN SUSU'),
('KTGMNM03', 'MINUMAN', 'MINUMAN SUSU'),
('KTGMNM04', 'MINUMAN', 'MINUMAN SUSU'),
('KTGMNM05', 'MINUMAN', 'AIR MINERAL'),
('KTGMNM06', 'MINUMAN', 'MINUMAN TEH'),
('KTGMNM07', 'MINUMAN', 'MINUMAN TEH'),
('KTGMNM08', 'MINUMAN', 'MINUMAN BERSODA'),
('KTGMNM09', 'MINUMAN', 'MINUMAN BERSODA'),
('KTGMNM10', 'MINUMAN', 'MINUMAN TEH'),
('KTGMNM11', 'MINUMAN', 'MINUMAN KOPI'),
('KTGOBT01', 'OBAT', 'OBAT CAIR'),
('KTGRKK01', 'TEMBAKAU', 'ROKOK'),
('KTGRKK02', 'TEMBAKAU', 'ROKOK'),
('KTGRKK03', 'TEMBAKAU', 'ROKOK'),
('KTGRKK04', 'TEMBAKAU', 'ROKOK'),
('KTGRKK05', 'TEMBAKAU', 'ROKOK'),
('KTGRKK06', 'TEMBAKAU', 'ROKOK'),
('KTGRKK07', 'TEMBAKAU', 'ROKOK'),
('KTGSBN01', 'SABUN', 'SABUN CAIR'),
('KTGSMB01', 'BAHAN POKOK', 'SEMBAKO'),
('KTGSMB02', 'BAHAN POKOK', 'SEMBAKO'),
('KTGSMB03', 'BAHAN POKOK', 'SEMBAKO'),
('KTGSMB04', 'BAHAN POKOK', 'SEMBAKO'),
('KTGTSU01', 'K. RUMAH TANGGA', 'PRODUK KEBERSIHAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_stok`
--

CREATE TABLE `log_stok` (
  `id_log` varchar(15) NOT NULL,
  `kode_barang` varchar(30) NOT NULL,
  `tanggal_perubahan` datetime NOT NULL,
  `stok_sebelumnya` int(11) NOT NULL,
  `stok_sesudahnya` int(11) NOT NULL,
  `stok_setelahretur` int(11) DEFAULT NULL,
  `jenis_transaksi` enum('PEMBELIAN','PENJUALAN','RETUR') NOT NULL,
  `kode_admin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log_stok`
--

INSERT INTO `log_stok` (`id_log`, `kode_barang`, `tanggal_perubahan`, `stok_sebelumnya`, `stok_sesudahnya`, `stok_setelahretur`, `jenis_transaksi`, `kode_admin`) VALUES
('LBRG01', '0049SOR22034', '2025-05-17 12:43:19', 72, 70, 70, 'PENJUALAN', 'KARDR01'),
('LBRG02', '1035TGR417020914', '2025-05-17 11:21:40', 12, 72, 72, 'PEMBELIAN', 'KARDR01'),
('LBRG03', '1953TGR2210201A4', '2025-05-17 10:18:56', 10, 40, 40, 'PEMBELIAN', 'KARDR01'),
('LBRG04', '1DKGMJL', '2025-05-17 10:24:14', 20, 140, 140, 'PEMBELIAN', 'KARDR01'),
('LBRG05', '2SEGMJL', '2025-05-17 15:04:42', 10, 310, 310, 'PEMBELIAN', 'KARDR01'),
('LBRG06', 'SMD031225F6204148', '2025-05-18 15:02:06', 168, 163, 163, 'RETUR', 'KARDR01'),
('LBRG07', 'SMLKCK200', '2025-05-18 12:41:52', 60, 55, 55, 'PENJUALAN', 'KARDR01'),
('LBRG08', 'SMLKVN200', '2025-05-17 09:41:47', 12, 36, 36, 'PEMBELIAN', 'KARDR01'),
('LBRG09', 'SMLKST200', '2025-05-17 13:50:17', 12, 36, 36, 'PEMBELIAN', 'KARDR01'),
('LBRG10', 'AQ600BTL', '2025-05-18 08:32:52', 48, 46, 46, 'PENJUALAN', 'KARDR01'),
('LBRG11', '2506040012', '2025-05-24 13:51:14', 2, 10, 10, 'PEMBELIAN', 'KARDR01'),
('LBRG12', 'DJC010200', '2025-05-25 17:05:06', 12, 11, 11, 'PENJUALAN', 'KARDR01'),
('LBRG13', 'DM25060401001', '2025-05-24 15:42:31', 5, 15, 15, 'PEMBELIAN', 'KARDR01'),
('LBRG14', 'MC08999909003439', '2025-05-24 09:02:55', 5, 15, 15, 'PEMBELIAN', 'KARDR01'),
('LBRG15', 'PAK6004700122', '2025-05-25 11:50:59', 13, 12, 12, 'PENJUALAN', 'KARDR01'),
('LBRG16', 'DJSP8999909028999', '2025-05-26 15:54:48', 12, 11, 11, 'PENJUALAN', 'KARDR01'),
('LBRG17', 'SIJ7009500150', '2025-05-24 14:52:06', 2, 12, 12, 'PEMBELIAN', 'KARDR01'),
('LBRG18', 'THNT180', '2025-05-27 10:03:33', 48, 42, 42, 'RETUR', 'KARDR01'),
('LBRG19', 'THBDN180', '2025-05-26 16:35:37', 96, 86, 86, 'RETUR', 'KARDR01'),
('LBRG20', 'SPRT250BTL', '2025-05-24 09:39:29', 12, 24, 24, 'PEMBELIAN', 'KARDR01'),
('LBRG21', 'GLAP1K', '2025-05-15 16:51:58', 28, 26, 26, 'PENJUALAN', 'KARDR01'),
('LBRG22', 'JAMTLA015SCH', '2025-05-15 11:42:59', 34, 30, 30, 'RETUR', 'KARDR01'),
('LBRG23', 'MNYKTA900', '2025-05-16 17:54:28', 22, 19, 19, 'PENJUALAN', 'KARDR01'),
('LBRG24', 'SAUKBG077', '2025-05-14 14:22:59', 5, 15, 15, 'PEMBELIAN', 'KARDR01'),
('LBRG25', 'SAUKSD077', '2025-05-16 14:36:22', 20, 14, 14, 'RETUR', 'KARDR01'),
('LBRG26', 'SBGVC250LAV', '2025-05-15 13:30:39', 30, 27, 27, 'PENJUALAN', 'KARDR01'),
('LBRG27', 'TISPSOMIN', '2025-05-14 13:48:48', 6, 16, 16, 'PEMBELIAN', 'KARDR01'),
('LBRG28', 'COL250BTL', '2025-05-14 16:48:22', 12, 36, 36, 'PEMBELIAN', 'KARDR01'),
('LBRG29', 'THBOTSOS350', '2025-05-18 15:13:16', 60, 57, 57, 'PENJUALAN', 'KARDR01'),
('LBRG30', 'KKP150CUP', '2025-05-14 14:01:38', 24, 36, 36, 'PEMBELIAN', 'KARDR01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `retur_barang`
--

CREATE TABLE `retur_barang` (
  `kode_retur` varchar(15) NOT NULL,
  `tanggal_retur` date NOT NULL,
  `nomor_faktur_keluar` varchar(15) DEFAULT NULL,
  `status` enum('DIPROSES','DITERIMA','DITOLAK','UANG KEMBALI') DEFAULT 'DIPROSES',
  `kode_admin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `retur_barang`
--

INSERT INTO `retur_barang` (`kode_retur`, `tanggal_retur`, `nomor_faktur_keluar`, `status`, `kode_admin`) VALUES
('RTR001', '2025-05-16', 'NFK0003', 'DITERIMA', 'KARDR01'),
('RTR002', '2025-05-19', 'NFK0007', 'DITOLAK', 'KARDR01'),
('RTR003', '2025-05-16', 'NFK0009', 'UANG KEMBALI', 'KARDR01'),
('RTR004', '2025-05-28', 'NFK0012', 'DITERIMA', 'KARDR01'),
('RTR005', '2025-05-28', 'NFK0015', 'DITOLAK', 'KARDR01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_barang`
--

CREATE TABLE `stok_barang` (
  `kode_barang` varchar(30) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `harga_beli` decimal(12,2) NOT NULL,
  `harga_jual` decimal(12,2) DEFAULT NULL,
  `stok` int(11) NOT NULL DEFAULT 0,
  `stok_min` int(1) NOT NULL,
  `katagori_retur` enum('YA','TIDAK') DEFAULT 'TIDAK',
  `kode_supplier` varchar(10) NOT NULL,
  `kode_katagori` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `stok_barang`
--

INSERT INTO `stok_barang` (`kode_barang`, `nama_barang`, `satuan`, `harga_beli`, `harga_jual`, `stok`, `stok_min`, `katagori_retur`, `kode_supplier`, `kode_katagori`) VALUES
('0049SOR22034', 'LE MINERALE', 'ML', '2500.00', '3000.00', 24, 3, 'YA', 'SPFA001', 'KTGMNM01'),
('1035TGR417020914', 'SUPERSTAR', 'GRAM', '700.00', '1000.00', 12, 3, 'TIDAK', 'SPFA001', 'KTGMKN01'),
('1953TGR2210201A4', 'SARI GANDUM SANDWITCH', 'GRAM', '1600.00', '2000.00', 10, 3, 'TIDAK', 'SPFA001', 'KTGMKN02'),
('1DKGMJL', 'NABATI WAFER KECIL', 'GRAM', '700.00', '1000.00', 20, 3, 'TIDAK', 'SPFA001', 'KTGMKN03'),
('2506040012', 'DIO TEH MANIS', 'GRAM', '8600.00', '10000.00', 2, 3, 'TIDAK', 'SPDL002', 'KTGRKK01'),
('2SEGMJL', 'NABATI WAFER BESAR', 'GRAM', '1700.00', '2000.00', 10, 3, 'TIDAK', 'SPFA001', 'KTGMKN04'),
('AQ600BTL', 'AQUA', 'ML', '2500.00', '3000.00', 24, 3, 'YA', 'SPFA001', 'KTGMNM05'),
('COL250BTL', 'COCA COLA', 'ML', '4500.00', '5000.00', 12, 3, 'YA', 'SPZH003', 'KTGMNM09'),
('DJC010200', 'DJARUM COKLAT', 'GRAM', '14600.00', '16000.00', 2, 3, 'TIDAK', 'SPDL002', 'KTGRKK02'),
('DJSP8999909028999', 'DJI SAM SOE', 'GRAM', '20800.00', '23500.00', 2, 3, 'TIDAK', 'SPDL002', 'KTGRKK06'),
('DM25060401001', 'DIPLOMAT MILD', 'GRAM', '23700.00', '25000.00', 5, 3, 'TIDAK', 'SPDL002', 'KTGRKK03'),
('GLAP1K', 'GULA PASIR', 'KG', '17000.00', '18000.00', 20, 3, 'TIDAK', 'SPZH003', 'KTGSMB01'),
('JAMTLA015SCH', 'TOLAK ANGIN SACHET', 'ML', '4000.00', '5000.00', 24, 3, 'TIDAK', 'SPZH003', 'KTGOBT01'),
('KKP150CUP', 'KOPIKAP', 'ML', '1500.00', '2000.00', 24, 3, 'YA', 'SPZH003', 'KTGMNM11'),
('MC08999909003439', 'MALBORO CRAFTED', 'GRAM', '10300.00', '12000.00', 5, 3, 'TIDAK', 'SPDL002', 'KTGRKK04'),
('MNYKTA900', 'MINYAK GORENG KITA', 'ML', '17000.00', '18000.00', 12, 3, 'TIDAK', 'SPZH003', 'KTGSMB02'),
('PAK6004700122', 'SUKUN HIJAU', 'GRAM', '11000.00', '13000.00', 3, 3, 'TIDAK', 'SPDL002', 'KTGRKK05'),
('SAUKBG077', 'KECAP BANGO', 'GRAM', '2500.00', '3000.00', 5, 3, 'TIDAK', 'SPZH003', 'KTGSMB03'),
('SAUKSD077', 'KECAP SEDAP', 'GRAM', '1500.00', '2000.00', 10, 3, 'TIDAK', 'SPZH003', 'KTGSMB04'),
('SBGVC250LAV', 'GIV LAVENDER CAIR', 'ML', '2500.00', '3000.00', 20, 3, 'TIDAK', 'SPZH003', 'KTGSBN01'),
('SIJ7009500150', 'GAJAH BARU', 'GRAM', '16600.00', '18000.00', 2, 3, 'TIDAK', 'SPDL002', 'KTGRKK07'),
('SMD031225F6204148', 'GERY WAFER ROLL', 'ML', '700.00', '1000.00', 24, 3, 'TIDAK', 'SPFA001', 'KTGMKN05'),
('SMLKCK200', 'MILKU COKLAT', 'ML', '3500.00', '4000.00', 24, 3, 'YA', 'SPFA001', 'KTGMNM02'),
('SMLKST200', 'MILKU STROWBERI', 'ML', '3500.00', '4000.00', 12, 3, 'YA', 'SPFA001', 'KTGMNM04'),
('SMLKVN200', 'MILKU VANILA', 'ML', '3500.00', '4000.00', 12, 3, 'YA', 'SPFA001', 'KTGMNM03'),
('SPRT250BTL', 'SPRITE', 'ML', '4500.00', '5000.00', 12, 3, 'YA', 'SPDL002', 'KTGMNM08'),
('THBDN180', 'TEH BANDULAN', 'ML', '1500.00', '2000.00', 48, 3, 'YA', 'SPDL002', 'KTGMNM07'),
('THBOTSOS350', 'TEH BOTOL SOSRO', 'ML', '4500.00', '5000.00', 12, 3, 'YA', 'SPZH003', 'KTGMNM10'),
('THNT180', 'TEH NUTU', 'ML', '1500.00', '2000.00', 24, 3, 'YA', 'SPDL002', 'KTGMNM06'),
('TISPSOMIN', 'TISU PASEO MINION', 'GRAM', '2000.00', '2500.00', 6, 3, 'TIDAK', 'SPZH003', 'KTGTSU01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `kode_supplier` varchar(10) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `nama_petugas_pengirim` varchar(50) NOT NULL,
  `alamat_supplier` text NOT NULL,
  `jumlah_jenis_barang` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`kode_supplier`, `nama_supplier`, `nama_petugas_pengirim`, `alamat_supplier`, `jumlah_jenis_barang`) VALUES
('SPDL002', 'DEWI LESTARI', '', 'Jl. Jawa, Bendan, Kec. Pekalongan, Jawa Tengah', 10),
('SPFA001', 'FAUZAN ABADI', '', 'Jl. Sultan Agung no 21 Pekalongan,Jawa Tengah', 10),
('SPZH003', 'ZAHRA KHAIRUNNISA', '', 'Jl. Angsana, Kalisak Batang, Jawa tengah', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `uang_kembali`
--

CREATE TABLE `uang_kembali` (
  `kode_retur` varchar(15) NOT NULL,
  `total_uang` decimal(12,2) NOT NULL,
  `jumlah_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `uang_kembali`
--

INSERT INTO `uang_kembali` (`kode_retur`, `total_uang`, `jumlah_barang`) VALUES
('RTR001', '2000.00', 1),
('RTR002', '1000.00', 1),
('RTR003', '10000.00', 2),
('RTR004', '6000.00', 3),
('RTR005', '2000.00', 1);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_barang_perlu_restok`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_barang_perlu_restok` (
`kode_barang` varchar(30)
,`nama_barang` varchar(50)
,`stok` int(11)
,`satuan` varchar(10)
,`nama_supplier` varchar(50)
,`nama_petugas_pengirim` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_laporan_penjualan_harian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_laporan_penjualan_harian` (
`tanggal` date
,`jumlah_transaksi` bigint(21)
,`total_barang_terjual` bigint(21)
,`total_pendapatan` decimal(34,2)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_stok_barang_lengkap`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_stok_barang_lengkap` (
`kode_barang` varchar(30)
,`nama_barang` varchar(50)
,`satuan` varchar(10)
,`harga_beli` decimal(12,2)
,`harga_jual` decimal(12,2)
,`stok` int(11)
,`katagori_retur` enum('YA','TIDAK')
,`nama_supplier` varchar(50)
,`nama_petugas_pengirim` varchar(50)
,`nama_katagori` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_barang_perlu_restok`
--
DROP TABLE IF EXISTS `view_barang_perlu_restok`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_barang_perlu_restok`  AS SELECT `view_stok_barang_lengkap`.`kode_barang` AS `kode_barang`, `view_stok_barang_lengkap`.`nama_barang` AS `nama_barang`, `view_stok_barang_lengkap`.`stok` AS `stok`, `view_stok_barang_lengkap`.`satuan` AS `satuan`, `view_stok_barang_lengkap`.`nama_supplier` AS `nama_supplier`, `view_stok_barang_lengkap`.`nama_petugas_pengirim` AS `nama_petugas_pengirim` FROM `view_stok_barang_lengkap` WHERE `view_stok_barang_lengkap`.`stok` < 3 ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_laporan_penjualan_harian`
--
DROP TABLE IF EXISTS `view_laporan_penjualan_harian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_laporan_penjualan_harian`  AS SELECT cast(`faktur_pembelian`.`tanggal_faktur_keluar` as date) AS `tanggal`, count(distinct `faktur_pembelian`.`nomor_faktur_keluar`) AS `jumlah_transaksi`, cast(sum(`detail_transaksi_penjualan`.`jumlah`) as signed) AS `total_barang_terjual`, sum(`detail_transaksi_penjualan`.`total_harga`) AS `total_pendapatan` FROM (`faktur_penjualan` `faktur_pembelian` join `detail_transaksi_penjualan` on(`faktur_pembelian`.`nomor_faktur_keluar` = `detail_transaksi_penjualan`.`nomor_faktur_keluar`)) GROUP BY cast(`faktur_pembelian`.`tanggal_faktur_keluar` as date) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_stok_barang_lengkap`
--
DROP TABLE IF EXISTS `view_stok_barang_lengkap`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_stok_barang_lengkap`  AS SELECT `sb`.`kode_barang` AS `kode_barang`, `sb`.`nama_barang` AS `nama_barang`, `sb`.`satuan` AS `satuan`, `sb`.`harga_beli` AS `harga_beli`, `sb`.`harga_jual` AS `harga_jual`, `sb`.`stok` AS `stok`, `sb`.`katagori_retur` AS `katagori_retur`, `s`.`nama_supplier` AS `nama_supplier`, `fb`.`nama_petugas_pengirim` AS `nama_petugas_pengirim`, `kb`.`nama_katagori` AS `nama_katagori` FROM (((`stok_barang` `sb` join `supplier` `s` on(`sb`.`kode_supplier` = `s`.`kode_supplier`)) join `faktur_pembelian` `fb` on(`sb`.`kode_supplier` = `fb`.`kode_supplier`)) left join `katagori_barang` `kb` on(`sb`.`kode_katagori` = `kb`.`kode_katagori`)) WHERE `sb`.`stok` <> 0 ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`kode_admin`);

--
-- Indeks untuk tabel `barang_kembali`
--
ALTER TABLE `barang_kembali`
  ADD KEY `fk_barang_kembali_retur` (`kode_retur`);

--
-- Indeks untuk tabel `detail_faktur_pembelian`
--
ALTER TABLE `detail_faktur_pembelian`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `idx_detail_faktur_pembelian_faktur` (`nomor_faktur`),
  ADD KEY `fk_detail_barang` (`kode_barang`);

--
-- Indeks untuk tabel `detail_transaksi_penjualan`
--
ALTER TABLE `detail_transaksi_penjualan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `idx_detail_transaksi_penjualan_faktur` (`nomor_faktur_keluar`);

--
-- Indeks untuk tabel `faktur_pembelian`
--
ALTER TABLE `faktur_pembelian`
  ADD PRIMARY KEY (`nomor_faktur`),
  ADD KEY `idx_faktur_pembelian_tanggal` (`tanggal_faktur`),
  ADD KEY `fk_faktur_supplier` (`kode_supplier`),
  ADD KEY `fk_faktur_admin` (`kode_Admin`);

--
-- Indeks untuk tabel `faktur_penjualan`
--
ALTER TABLE `faktur_penjualan`
  ADD PRIMARY KEY (`nomor_faktur_keluar`),
  ADD KEY `idx_faktur_penjualan_tanggal` (`tanggal_faktur_keluar`),
  ADD KEY `fk_penjualan_admin` (`kode_admin`);

--
-- Indeks untuk tabel `katagori_barang`
--
ALTER TABLE `katagori_barang`
  ADD PRIMARY KEY (`kode_katagori`);

--
-- Indeks untuk tabel `log_stok`
--
ALTER TABLE `log_stok`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `fk_log_admin` (`kode_admin`),
  ADD KEY `fk_log_barang` (`kode_barang`);

--
-- Indeks untuk tabel `retur_barang`
--
ALTER TABLE `retur_barang`
  ADD PRIMARY KEY (`kode_retur`),
  ADD KEY `fk_retur_admin` (`kode_admin`);

--
-- Indeks untuk tabel `stok_barang`
--
ALTER TABLE `stok_barang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD KEY `idx_stok_barang_nama` (`nama_barang`),
  ADD KEY `fk_barang_supplier` (`kode_supplier`),
  ADD KEY `fk_barang_kategori` (`kode_katagori`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kode_supplier`);

--
-- Indeks untuk tabel `uang_kembali`
--
ALTER TABLE `uang_kembali`
  ADD KEY `fk_uang_kembali_retur` (`kode_retur`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang_kembali`
--
ALTER TABLE `barang_kembali`
  ADD CONSTRAINT `fk_barang_kembali_retur` FOREIGN KEY (`kode_retur`) REFERENCES `retur_barang` (`kode_retur`);

--
-- Ketidakleluasaan untuk tabel `detail_faktur_pembelian`
--
ALTER TABLE `detail_faktur_pembelian`
  ADD CONSTRAINT `fk_detail_barang` FOREIGN KEY (`kode_barang`) REFERENCES `stok_barang` (`kode_barang`),
  ADD CONSTRAINT `fk_detail_faktur` FOREIGN KEY (`nomor_faktur`) REFERENCES `faktur_pembelian` (`nomor_faktur`);

--
-- Ketidakleluasaan untuk tabel `detail_transaksi_penjualan`
--
ALTER TABLE `detail_transaksi_penjualan`
  ADD CONSTRAINT `fk_detail_penjualan` FOREIGN KEY (`nomor_faktur_keluar`) REFERENCES `faktur_penjualan` (`nomor_faktur_keluar`);

--
-- Ketidakleluasaan untuk tabel `faktur_pembelian`
--
ALTER TABLE `faktur_pembelian`
  ADD CONSTRAINT `fk_faktur_admin` FOREIGN KEY (`kode_Admin`) REFERENCES `admin` (`kode_admin`),
  ADD CONSTRAINT `fk_faktur_supplier` FOREIGN KEY (`kode_supplier`) REFERENCES `supplier` (`kode_supplier`);

--
-- Ketidakleluasaan untuk tabel `faktur_penjualan`
--
ALTER TABLE `faktur_penjualan`
  ADD CONSTRAINT `fk_penjualan_admin` FOREIGN KEY (`kode_admin`) REFERENCES `admin` (`kode_admin`);

--
-- Ketidakleluasaan untuk tabel `log_stok`
--
ALTER TABLE `log_stok`
  ADD CONSTRAINT `fk_log_admin` FOREIGN KEY (`kode_admin`) REFERENCES `admin` (`kode_admin`),
  ADD CONSTRAINT `fk_log_barang` FOREIGN KEY (`kode_barang`) REFERENCES `stok_barang` (`kode_barang`);

--
-- Ketidakleluasaan untuk tabel `retur_barang`
--
ALTER TABLE `retur_barang`
  ADD CONSTRAINT `fk_retur_admin` FOREIGN KEY (`kode_admin`) REFERENCES `admin` (`kode_admin`);

--
-- Ketidakleluasaan untuk tabel `stok_barang`
--
ALTER TABLE `stok_barang`
  ADD CONSTRAINT `fk_barang_kategori` FOREIGN KEY (`kode_katagori`) REFERENCES `katagori_barang` (`kode_katagori`),
  ADD CONSTRAINT `fk_barang_supplier` FOREIGN KEY (`kode_supplier`) REFERENCES `supplier` (`kode_supplier`);

--
-- Ketidakleluasaan untuk tabel `uang_kembali`
--
ALTER TABLE `uang_kembali`
  ADD CONSTRAINT `fk_uang_kembali_retur` FOREIGN KEY (`kode_retur`) REFERENCES `retur_barang` (`kode_retur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
