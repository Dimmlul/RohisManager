-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2025 at 03:29 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rohismanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi_kegiatan`
--

CREATE TABLE `absensi_kegiatan` (
  `id_absensi` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `waktu_absen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deskripsi` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_kegiatan` int(11) DEFAULT NULL,
  `nama_kegiatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi_kegiatan`
--

INSERT INTO `absensi_kegiatan` (`id_absensi`, `username`, `waktu_absen`, `deskripsi`, `status`, `id_kegiatan`, `nama_kegiatan`) VALUES
(49, 'acel', '2025-02-23 13:29:43', '', 'Hadir', NULL, 'Maulid');

-- --------------------------------------------------------

--
-- Table structure for table `app_logs`
--

CREATE TABLE `app_logs` (
  `log_id` int(11) NOT NULL,
  `Timestamp` varchar(255) DEFAULT NULL,
  `Action` varchar(255) DEFAULT NULL,
  `TableName` varchar(255) DEFAULT NULL,
  `RecordID` varchar(255) DEFAULT NULL,
  `SqlQuery` varchar(255) DEFAULT NULL,
  `UserID` varchar(255) DEFAULT NULL,
  `ServerIP` varchar(255) DEFAULT NULL,
  `RequestUrl` text,
  `RequestData` text,
  `RequestCompleted` varchar(255) DEFAULT NULL,
  `RequestMsg` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_logs`
--

INSERT INTO `app_logs` (`log_id`, `Timestamp`, `Action`, `TableName`, `RecordID`, `SqlQuery`, `UserID`, `ServerIP`, `RequestUrl`, `RequestData`, `RequestCompleted`, `RequestMsg`) VALUES
(1, '2025-02-07 17:23:21', 'add', 'user', '5', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `user_role_id`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"ada\",\"email\":\"ada@gmail.com\",\"password\":\"$2y$10$8Ss5dnINtNCwU4\\/S9zUveuIp2Z6GuNNmCiL3bK1VqEvjHzdmUO8pS\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/8wax6g7fo1jq_sp.png\",\"user_role_id\":\"3\"}', 'true', NULL),
(2, '2025-02-07 17:23:21', 'userlogin', 'user', '5', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '5', '::1', 'index/register', '{\"username\":\"ada\",\"email\":\"ada@gmail.com\",\"password\":\"$2y$10$8Ss5dnINtNCwU4\\/S9zUveuIp2Z6GuNNmCiL3bK1VqEvjHzdmUO8pS\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/8wax6g7fo1jq_sp.png\",\"user_role_id\":\"3\"}', 'true', NULL),
(3, '2025-02-08 05:32:33', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\",\"rememberme\":\"true\"}', 'true', NULL),
(4, '2025-02-08 05:54:06', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(5, '2025-02-08 06:02:22', 'delete', 'pengumuman', '4', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/4/', '[]', 'true', NULL),
(6, '2025-02-08 06:02:24', 'delete', 'pengumuman', '3', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/3/', '[]', 'true', NULL),
(7, '2025-02-08 06:02:26', 'delete', 'pengumuman', '2', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/2/', '[]', 'true', NULL),
(8, '2025-02-08 06:09:01', 'add', 'absensi_kegiatan', '1', 'INSERT INTO absensi_kegiatan (`id_kegiatan`, `status`, `deskripsi`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"id_kegiatan\":\"5\",\"status\":\"Hadir\",\"deskripsi\":\"aaa\"}', 'true', NULL),
(9, '2025-02-08 06:13:30', 'delete', 'jabatan', '9', 'DELETE FROM jabatan WHERE  jabatan.id_jabatan in ( ? ) ', '2', '::1', 'jabatan/delete/9/', '[]', 'true', NULL),
(10, '2025-02-08 06:13:32', 'delete', 'jabatan', '8', 'DELETE FROM jabatan WHERE  jabatan.id_jabatan in ( ? ) ', '2', '::1', 'jabatan/delete/8/', '[]', 'true', NULL),
(11, '2025-02-08 06:13:33', 'delete', 'jabatan', '7', 'DELETE FROM jabatan WHERE  jabatan.id_jabatan in ( ? ) ', '2', '::1', 'jabatan/delete/7/', '[]', 'true', NULL),
(12, '2025-02-08 06:13:54', 'edit', 'jabatan', '6', 'UPDATE jabatan SET `nama_jabatan` = ?, `nama_divisi` = ? WHERE  jabatan.id_jabatan = ? ', '2', '::1', 'jabatan/edit/6/', '{\"nama_jabatan\":\"SYIAR\",\"nama_divisi\":\"-\"}', 'true', NULL),
(13, '2025-02-08 06:14:00', 'edit', 'jabatan', '5', 'UPDATE jabatan SET `nama_jabatan` = ?, `nama_divisi` = ? WHERE  jabatan.id_jabatan = ? ', '2', '::1', 'jabatan/edit/5/', '{\"nama_jabatan\":\"DKM\",\"nama_divisi\":\"-\"}', 'true', NULL),
(14, '2025-02-08 06:19:34', 'add', 'pengumuman', '5', 'INSERT INTO pengumuman (`id_kegiatan`, `judul_pengumuman`, `isi_pengumuman`, `tanggal_berakhir`)  VALUES (?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"id_kegiatan\":\"meeting\",\"judul_pengumuman\":\"adada\",\"isi_pengumuman\":\"ad\",\"tanggal_berakhir\":\"Enter Tanggal Berakhir\"}', 'true', NULL),
(15, '2025-02-08 06:20:47', 'view', 'pengumuman', '5', 'SELECT   id_pengumuman, id_kegiatan, id_pengurus, judul_pengumuman, isi_pengumuman, tanggal_mulai, tanggal_berakhir FROM pengumuman WHERE  pengumuman.id_pengumuman = ?  LIMIT 1', '2', '::1', 'pengumuman/view/5', '[]', 'true', NULL),
(16, '2025-02-08 06:22:38', 'add', 'user', '6', 'INSERT INTO user (`username`, `email`, `password`, `photo`)  VALUES (?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"anggota\",\"email\":\"anggota@gmail.com\",\"password\":\"$2y$10$r2ayzXkrdBqLSNsMELJt3Od4oyxulnRpWH\\/OkZ\\/YR1XWCtA5X0rlK\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/gizp8t59c0h7wqa.png\"}', 'true', NULL),
(17, '2025-02-08 06:22:38', 'userlogin', 'user', '6', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '6', '::1', 'index/register', '{\"username\":\"anggota\",\"email\":\"anggota@gmail.com\",\"password\":\"$2y$10$r2ayzXkrdBqLSNsMELJt3Od4oyxulnRpWH\\/OkZ\\/YR1XWCtA5X0rlK\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/gizp8t59c0h7wqa.png\"}', 'true', NULL),
(18, '2025-02-08 06:31:24', 'add', 'kegiatan', '6', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `tanggal_mulai`, `kategori_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"dadas\",\"lokasi_kegiatan\":\"adsad\",\"deskripsi_kegiatan\":\"asdadsada\",\"tanggal_mulai\":\"2025-02-08 06:31:04\",\"kategori_kegiatan\":\"Latihan\"}', 'true', NULL),
(19, '2025-02-08 06:31:27', 'view', 'kegiatan', '6', 'SELECT   id_kegiatan, id_pengurus, nama_kegiatan, lokasi_kegiatan, deskripsi_kegiatan, tanggal_mulai, kategori_kegiatan FROM kegiatan WHERE  kegiatan.id_kegiatan = ?  LIMIT 1', '2', '::1', 'kegiatan/view/6', '[]', 'true', NULL),
(20, '2025-02-08 06:38:00', 'add', 'inventaris', '5', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`)  VALUES (?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"wifi\",\"jumlah_barang\":\"1\",\"status_barang\":\"Bagus\"}', 'true', NULL),
(21, '2025-02-08 07:08:29', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(22, '2025-02-08 07:33:07', 'add', 'kas', '2', 'INSERT INTO kas (`id_pengurus`, `jumlah_kas`, `jenis_kas`, `deskripsi`)  VALUES (?, ?, ?, ?)', '2', '::1', 'kas/add', '{\"id_pengurus\":\"1\",\"jumlah_kas\":\"10.000\",\"jenis_kas\":\"pemasukan\",\"deskripsi\":\"ye\"}', 'true', NULL),
(23, '2025-02-08 07:38:01', 'add', 'kas', '3', 'INSERT INTO kas (`id_pengurus`, `jumlah_kas`, `jenis_kas`, `deskripsi`)  VALUES (?, ?, ?, ?)', '2', '::1', 'kas/add', '{\"id_pengurus\":\"2\",\"jumlah_kas\":\"490000\",\"jenis_kas\":\"436\",\"deskripsi\":\"346\"}', 'true', NULL),
(24, '2025-02-08 07:42:06', 'edit', 'kas', '2', 'UPDATE kas SET `id_pengurus` = ?, `jumlah_kas` = ?, `jenis_kas` = ?, `deskripsi` = ? WHERE  kas.id_kas = ? ', '2', '::1', 'kas/edit/2/', '{\"id_pengurus\":\"1\",\"jumlah_kas\":\"10000\",\"jenis_kas\":\"pemasukan\",\"deskripsi\":\"ye\"}', 'true', NULL),
(25, '2025-02-08 07:42:17', 'edit', 'kas', '3', 'UPDATE kas SET `id_pengurus` = ?, `jumlah_kas` = ?, `jenis_kas` = ?, `deskripsi` = ? WHERE  kas.id_kas = ? ', '2', '::1', 'kas/edit/3/', '{\"id_pengurus\":\"2\",\"jumlah_kas\":\"490000\",\"jenis_kas\":\"pengeluaran\",\"deskripsi\":\"wewew\"}', 'true', NULL),
(26, '2025-02-08 07:42:21', 'edit', 'kas', '1', 'UPDATE kas SET `id_pengurus` = ?, `jumlah_kas` = ?, `jenis_kas` = ?, `deskripsi` = ? WHERE  kas.id_kas = ? ', '2', '::1', 'kas/edit/1/', '{\"id_pengurus\":\"1\",\"jumlah_kas\":\"10000\",\"jenis_kas\":\"pemasukan\",\"deskripsi\":\"12\\r\\n\"}', 'true', NULL),
(27, '2025-02-08 07:49:30', 'view', 'pengumuman', '5', 'SELECT   id_pengumuman, id_kegiatan, id_pengurus, judul_pengumuman, isi_pengumuman, tanggal_mulai, tanggal_berakhir FROM pengumuman WHERE  pengumuman.id_pengumuman = ?  LIMIT 1', '2', '::1', 'pengumuman/view/5', '[]', 'true', NULL),
(28, '2025-02-08 10:33:32', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\",\"rememberme\":\"true\"}', 'true', NULL),
(29, '2025-02-08 10:57:04', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(30, '2025-02-08 10:58:01', 'view', 'dokumentasi', '5', 'SELECT   id_dokumentasi, id_kegiatan, foto, nama_dokumen, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/5', '[]', 'true', NULL),
(31, '2025-02-08 10:58:02', 'view', 'dokumentasi', '5', 'SELECT   id_dokumentasi, id_kegiatan, foto, nama_dokumen, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/5', '[]', 'true', NULL),
(32, '2025-02-08 10:58:03', 'view', 'dokumentasi', '5', 'SELECT   id_dokumentasi, id_kegiatan, foto, nama_dokumen, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/5', '[]', 'true', NULL),
(33, '2025-02-11 02:15:57', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(34, '2025-02-11 02:23:21', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\",\"rememberme\":\"true\"}', 'true', NULL),
(35, '2025-02-11 02:23:35', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(36, '2025-02-11 07:37:57', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(37, '2025-02-11 07:38:03', 'view', 'dokumentasi', '5', 'SELECT   id_dokumentasi, id_kegiatan, foto, nama_dokumen, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/5', '[]', 'true', NULL),
(38, '2025-02-11 07:38:04', 'view', 'dokumentasi', '5', 'SELECT   id_dokumentasi, id_kegiatan, foto, nama_dokumen, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/5', '[]', 'true', NULL),
(39, '2025-02-11 07:38:20', 'edit', 'dokumentasi', '5', 'UPDATE dokumentasi SET `foto` = ?, `nama_dokumen` = ?, `deskripsi_dokumen` = ? WHERE  dokumentasi.id_dokumentasi = ? ', '2', '::1', 'dokumentasi/edit/5/', '{\"foto\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/1738923322.jpeg,http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/1738923322.jpg\",\"nama_dokumen\":\"ada\",\"deskripsi_dokumen\":\"ada\"}', 'true', NULL),
(40, '2025-02-11 07:38:40', 'view', 'dokumentasi', '5', 'SELECT   id_dokumentasi, id_kegiatan, foto, nama_dokumen, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/5', '[]', 'true', NULL),
(41, '2025-02-11 07:38:41', 'view', 'dokumentasi', '5', 'SELECT   id_dokumentasi, id_kegiatan, foto, nama_dokumen, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/5', '[]', 'true', NULL),
(42, '2025-02-12 04:25:34', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(43, '2025-02-12 04:29:41', 'add', 'inventaris', '6', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"2\",\"nama_barang\":\"okook\",\"jumlah_barang\":\"24\",\"status_barang\":\"Beberapa Rusak\",\"tanggal_masuk\":\"CURRENT_TIMESTAMP\"}', 'true', NULL),
(44, '2025-02-12 04:36:50', 'add', 'inventaris', '7', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Sapu\",\"jumlah_barang\":\"7\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-02-12 04:36:43\"}', 'true', NULL),
(45, '2025-02-12 04:41:37', 'view', 'pengumuman', '5', 'SELECT   id_pengumuman, id_kegiatan, id_pengurus, judul_pengumuman, isi_pengumuman, tanggal_mulai, tanggal_berakhir FROM pengumuman WHERE  pengumuman.id_pengumuman = ?  LIMIT 1', '2', '::1', 'pengumuman/view/5', '[]', 'true', NULL),
(46, '2025-02-12 04:49:29', 'view', 'pengumuman', '5', 'SELECT   id_pengumuman, id_kegiatan, id_pengurus, judul_pengumuman, isi_pengumuman, tanggal_mulai, tanggal_berakhir FROM pengumuman WHERE  pengumuman.id_pengumuman = ?  LIMIT 1', '2', '::1', 'pengumuman/view/5', '[]', 'true', NULL),
(47, '2025-02-12 04:50:04', 'delete', 'dokumentasi', '5', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/5/', '[]', 'true', NULL),
(48, '2025-02-12 04:58:27', 'delete', 'absensi_kegiatan', '1', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/1/', '[]', 'true', NULL),
(49, '2025-02-12 07:23:13', 'edit', 'pengurus', '2', 'UPDATE pengurus SET `username` = ?, `email` = ?, `password` = ?, `jabatan` = ?, `photo` = ? WHERE  pengurus.id_pengurus = ? ', '2', '::1', 'pengurus/edit/2/', '{\"username\":\"pengurus2\",\"email\":\"pengurus2@gmail.com\",\"password\":\"$2y$10$aI8zUrJgRrARUddMcNp0GuzWkFTp95IQucz09e89W5rfVefGwG1li\",\"jabatan\":\"Ketua Umum\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/6a3_8pm0xtifr9k.jpeg\"}', 'true', NULL),
(50, '2025-02-12 07:26:19', 'add', 'user', '7', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `user_role_id`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"acel\",\"email\":\"525252@gmail.com\",\"password\":\"$2y$10$Hlo7Q0k.BH8D0QnCCqHkyebE6FL8motv2GZH6tEJpMEI.rP2\\/XRAu\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/e6t9ldx8p0r2_uj.png\",\"user_role_id\":\"2\"}', 'true', NULL),
(51, '2025-02-12 07:26:19', 'userlogin', 'user', '7', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '7', '::1', 'index/register', '{\"username\":\"acel\",\"email\":\"525252@gmail.com\",\"password\":\"$2y$10$Hlo7Q0k.BH8D0QnCCqHkyebE6FL8motv2GZH6tEJpMEI.rP2\\/XRAu\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/e6t9ldx8p0r2_uj.png\",\"user_role_id\":\"2\"}', 'true', NULL),
(52, '2025-02-12 08:04:19', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(53, '2025-02-12 08:05:09', 'edit', 'pengurus', '1', 'UPDATE pengurus SET `username` = ?, `email` = ?, `password` = ?, `jabatan` = ?, `photo` = ? WHERE  pengurus.id_pengurus = ? ', '2', '::1', 'pengurus/edit/1/', '{\"username\":\"pengurus\",\"email\":\"pengurus@gmail.com\",\"password\":\"$2y$10$3IhKIZVZmtyD4o.t9P9vDO1q.DbZu2tywN5eIhXhgzz2dNc3pdTo.\",\"jabatan\":\"DKM\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/e21i_6gxdajbsmu.gif\"}', 'true', NULL),
(54, '2025-02-12 08:31:11', 'edit', 'inventaris', '7', 'UPDATE inventaris SET `id_pengurus` = ?, `nama_barang` = ?, `jumlah_barang` = ?, `status_barang` = ?, `tanggal_masuk` = ? WHERE  inventaris.id_barang = ? ', '2', '::1', 'inventaris/edit/7/', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Sapu\",\"jumlah_barang\":\"7\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-01-22 00:00:00\"}', 'true', NULL),
(55, '2025-02-12 08:31:14', 'delete', 'inventaris', '6', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/6/', '[]', 'true', NULL),
(56, '2025-02-12 08:31:16', 'delete', 'inventaris', '5', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/5/', '[]', 'true', NULL),
(57, '2025-02-12 08:31:18', 'delete', 'inventaris', '4', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/4/', '[]', 'true', NULL),
(58, '2025-02-12 08:31:21', 'delete', 'inventaris', '3', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/3/', '[]', 'true', NULL),
(59, '2025-02-12 08:31:23', 'delete', 'inventaris', '2', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/2/', '[]', 'true', NULL),
(60, '2025-02-12 08:31:25', 'delete', 'inventaris', '1', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/1/', '[]', 'true', NULL),
(61, '2025-02-12 08:31:40', 'add', 'inventaris', '8', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Vacuum\",\"jumlah_barang\":\"15\",\"status_barang\":\"Beberapa Rusak\",\"tanggal_masuk\":\"2025-02-12 08:31:26\"}', 'true', NULL),
(62, '2025-02-12 08:32:19', 'view', 'inventaris', '8', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '2', '::1', 'inventaris/view/8', '[]', 'true', NULL),
(63, '2025-02-12 08:33:43', 'add', 'kegiatan', '7', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `tanggal_mulai`, `kategori_kegiatan`, `tanggal_berakhir`)  VALUES (?, ?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"meet\",\"lokasi_kegiatan\":\"mk46\",\"deskripsi_kegiatan\":\"meeting\",\"tanggal_mulai\":\"2025-02-12 08:33:17\",\"kategori_kegiatan\":\"Meeting\",\"tanggal_berakhir\":\"0000-00-00 00:00:00\"}', 'true', NULL),
(64, '2025-02-12 08:34:20', 'delete', 'kegiatan', '6', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/6/', '[]', 'true', NULL),
(65, '2025-02-12 08:34:22', 'delete', 'kegiatan', '5', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/5/', '[]', 'true', NULL),
(66, '2025-02-12 08:34:24', 'delete', 'kegiatan', '7', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/7/', '[]', 'true', NULL),
(67, '2025-02-12 08:34:40', 'add', 'kegiatan', '8', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `tanggal_mulai`, `kategori_kegiatan`, `tanggal_berakhir`)  VALUES (?, ?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"meet\",\"lokasi_kegiatan\":\"smk46\",\"deskripsi_kegiatan\":\"idk\",\"tanggal_mulai\":\"2025-02-12 00:00:00\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_berakhir\":\"2025-02-15 00:00:00\"}', 'true', NULL),
(68, '2025-02-12 08:41:15', 'edit', 'pengumuman', '5', 'UPDATE pengumuman SET `id_kegiatan` = ?, `judul_pengumuman` = ?, `isi_pengumuman` = ?, `tanggal_berakhir` = ? WHERE  pengumuman.id_pengumuman = ? ', '2', '::1', 'pengumuman/edit/5/', '{\"id_kegiatan\":\"8\",\"judul_pengumuman\":\"adada\",\"isi_pengumuman\":\"ad\",\"tanggal_berakhir\":\"2025-02-15 00:00:00\"}', 'true', NULL),
(69, '2025-02-12 08:41:19', 'delete', 'pengumuman', '1', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/1/', '[]', 'true', NULL),
(70, '2025-02-12 08:43:00', 'delete', 'pengumuman', '5', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/5/', '[]', 'true', NULL),
(71, '2025-02-12 08:43:14', 'add', 'pengumuman', '6', 'INSERT INTO pengumuman (`id_kegiatan`, `judul_pengumuman`, `isi_pengumuman`, `tanggal_mulai`, `tanggal_berakhir`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"id_kegiatan\":\"8\",\"judul_pengumuman\":\"meeting\",\"isi_pengumuman\":\"ij\",\"tanggal_mulai\":\"2025-02-12 00:00:00\",\"tanggal_berakhir\":\"2025-02-15 00:00:00\"}', 'true', NULL),
(72, '2025-02-12 08:46:44', 'delete', 'kas', '1', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/1/', '[]', 'true', NULL),
(73, '2025-02-12 08:46:51', 'edit', 'kas', '2', 'UPDATE kas SET `id_pengurus` = ?, `jumlah_kas` = ?, `jenis_kas` = ?, `deskripsi` = ? WHERE  kas.id_kas = ? ', '2', '::1', 'kas/edit/2/', '{\"id_pengurus\":\"1\",\"jumlah_kas\":\"10000\",\"jenis_kas\":\"pemasukan\",\"deskripsi\":\"pemasukan\"}', 'true', NULL),
(74, '2025-02-12 08:46:57', 'edit', 'kas', '3', 'UPDATE kas SET `id_pengurus` = ?, `jumlah_kas` = ?, `jenis_kas` = ?, `deskripsi` = ? WHERE  kas.id_kas = ? ', '2', '::1', 'kas/edit/3/', '{\"id_pengurus\":\"2\",\"jumlah_kas\":\"490000\",\"jenis_kas\":\"pengeluaran\",\"deskripsi\":\"beli kipas\"}', 'true', NULL),
(75, '2025-02-15 13:30:55', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(76, '2025-02-15 13:32:58', 'view', 'kegiatan', '8', 'SELECT   id_kegiatan, id_pengurus, nama_kegiatan, lokasi_kegiatan, deskripsi_kegiatan, tanggal_mulai, kategori_kegiatan, tanggal_berakhir FROM kegiatan WHERE  kegiatan.id_kegiatan = ?  LIMIT 1', '7', '::1', 'kegiatan/view/8', '[]', 'true', NULL),
(77, '2025-02-15 13:45:48', 'add', 'kas', '4', 'INSERT INTO kas (`id_pengurus`, `jumlah_kas`, `jenis_kas`, `deskripsi`)  VALUES (?, ?, ?, ?)', '2', '::1', 'kas/add', '{\"id_pengurus\":\"1\",\"jumlah_kas\":\"2000000\",\"jenis_kas\":\"pemasukan\",\"deskripsi\":\"ada\"}', 'true', NULL),
(78, '2025-02-15 13:46:04', 'add', 'kas', '5', 'INSERT INTO kas (`id_pengurus`, `jumlah_kas`, `jenis_kas`, `deskripsi`)  VALUES (?, ?, ?, ?)', '2', '::1', 'kas/add', '{\"id_pengurus\":\"2\",\"jumlah_kas\":\"324000\",\"jenis_kas\":\"pengeluaran\",\"deskripsi\":\"afa\"}', 'true', NULL),
(79, '2025-02-15 13:51:01', 'delete', 'kas', '5', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/5/', '[]', 'true', NULL),
(80, '2025-02-15 13:51:03', 'delete', 'kas', '4', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/4/', '[]', 'true', NULL),
(81, '2025-02-15 13:51:04', 'delete', 'kas', '3', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/3/', '[]', 'true', NULL),
(82, '2025-02-15 13:51:05', 'delete', 'kas', '2', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/2/', '[]', 'true', NULL),
(83, '2025-02-15 13:54:38', 'add', 'kas', '6', 'INSERT INTO kas (`id_pengurus`, `jumlah_kas`, `jenis_kas`, `deskripsi`)  VALUES (?, ?, ?, ?)', '2', '::1', 'kas/add', '{\"id_pengurus\":\"1\",\"jumlah_kas\":\"100000\",\"jenis_kas\":\"pemasukan\",\"deskripsi\":\"a\"}', 'true', NULL),
(84, '2025-02-15 13:54:49', 'add', 'kas', '7', 'INSERT INTO kas (`id_pengurus`, `jumlah_kas`, `jenis_kas`, `deskripsi`)  VALUES (?, ?, ?, ?)', '2', '::1', 'kas/add', '{\"id_pengurus\":\"2\",\"jumlah_kas\":\"5000\",\"jenis_kas\":\"pengeluaran\",\"deskripsi\":\"a\"}', 'true', NULL),
(85, '2025-02-15 14:06:11', 'add', 'kas', '8', 'INSERT INTO kas (`id_pengurus`, `jumlah_kas`, `jenis_kas`, `deskripsi`)  VALUES (?, ?, ?, ?)', '2', '::1', 'kas/add', '{\"id_pengurus\":\"1\",\"jumlah_kas\":\"100000\",\"jenis_kas\":\"pemasukan\",\"deskripsi\":\"g\"}', 'true', NULL),
(86, '2025-02-15 14:11:44', 'view', 'inventaris', '8', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '2', '::1', 'inventaris/view/8', '[]', 'true', NULL),
(87, '2025-02-15 14:11:45', 'view', 'inventaris', '8', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '2', '::1', 'inventaris/view/8', '[]', 'true', NULL),
(88, '2025-02-18 05:12:09', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(89, '2025-02-18 05:26:36', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(90, '2025-02-18 05:43:14', 'add', 'user', '8', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `user_role_id`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"pengurus3\",\"email\":\"pengurus23@gmail.com\",\"password\":\"$2y$10$UQEmiPUcYQQZBSmaqDmUtuLk7iZ7nHnB4CZMvDqvgayN.KOGeYL.i\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/zvw5k76xidurc2l.png\",\"user_role_id\":\"3\"}', 'true', NULL),
(91, '2025-02-18 05:43:14', 'userlogin', 'user', '8', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '8', '::1', 'index/register', '{\"username\":\"pengurus3\",\"email\":\"pengurus23@gmail.com\",\"password\":\"$2y$10$UQEmiPUcYQQZBSmaqDmUtuLk7iZ7nHnB4CZMvDqvgayN.KOGeYL.i\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/zvw5k76xidurc2l.png\",\"user_role_id\":\"3\"}', 'true', NULL),
(92, '2025-02-18 09:27:59', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(93, '2025-02-18 09:31:25', 'add', 'kegiatan', '9', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `tanggal_mulai`, `kategori_kegiatan`, `tanggal_berakhir`)  VALUES (?, ?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"sfsf\",\"lokasi_kegiatan\":\"sfsf\",\"deskripsi_kegiatan\":\"sfsf\",\"tanggal_mulai\":\"2025-02-18 00:00:00\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_berakhir\":\"2025-02-21 00:00:00\"}', 'true', NULL),
(94, '2025-02-18 09:33:48', 'add', 'pengumuman', '7', 'INSERT INTO pengumuman (`id_kegiatan`, `judul_pengumuman`, `isi_pengumuman`, `tanggal_mulai`, `tanggal_berakhir`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"id_kegiatan\":\"9\",\"judul_pengumuman\":\"dsg\",\"isi_pengumuman\":\"gsgsdg\",\"tanggal_mulai\":\"2025-02-12 00:00:00\",\"tanggal_berakhir\":\"2025-02-21 00:00:00\"}', 'true', NULL),
(95, '2025-02-18 09:37:27', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(96, '2025-02-18 09:44:10', 'add', 'dokumentasi', '1', 'INSERT INTO dokumentasi (`id_kegiatan`, `deskripsi_dokumen`, `waktu_upload`)  VALUES (?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"id_kegiatan\":\"sfsf\",\"deskripsi_dokumen\":\"a\",\"waktu_upload\":\"2025-02-18 09:44:03\"}', 'true', NULL),
(97, '2025-02-18 09:47:55', 'add', 'absensi_kegiatan', '1', 'INSERT INTO absensi_kegiatan (`id_kegiatan`, `status`, `deskripsi`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"id_kegiatan\":\"meet\",\"status\":\"Hadir\",\"deskripsi\":\"ada\"}', 'true', NULL),
(98, '2025-02-19 07:12:56', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(99, '2025-02-19 07:22:50', 'delete', 'dokumentasi', '1', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/1/', '[]', 'true', NULL),
(100, '2025-02-19 07:30:44', 'add', 'kegiatan', '10', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `tanggal_mulai`, `kategori_kegiatan`, `tanggal_berakhir`)  VALUES (?, ?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"Maulid\",\"lokasi_kegiatan\":\"awdawdawdaw\",\"deskripsi_kegiatan\":\"dawdadadawda\",\"tanggal_mulai\":\"2025-02-19 00:00:00\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_berakhir\":\"2025-02-22 00:00:00\"}', 'true', NULL),
(101, '2025-02-19 07:37:42', 'delete', 'inventaris', '8,7', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ?, ? ) ', '2', '::1', 'inventaris/delete/8,7/', '[]', 'true', NULL),
(102, '2025-02-19 07:38:36', 'add', 'inventaris', '9', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Sapu\",\"jumlah_barang\":\"27\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-02-19 07:38:27\"}', 'true', NULL),
(103, '2025-02-19 07:42:31', 'view', 'role_permissions', '828', 'SELECT   permission_id, role_id, page_name, action_name, id_jabatan FROM role_permissions WHERE  role_permissions.permission_id = ?  LIMIT 1', '2', '::1', 'role_permissions/view/828', '[]', 'true', NULL),
(104, '2025-02-19 07:47:07', 'edit', 'kas', '8', 'UPDATE kas SET `id_pengurus` = ?, `jumlah_kas` = ?, `jenis_kas` = ?, `deskripsi` = ? WHERE  kas.id_kas = ? ', '2', '::1', 'kas/edit/8/', '{\"id_pengurus\":\"1\",\"jumlah_kas\":\"100000\",\"jenis_kas\":\"pemasukan\",\"deskripsi\":\"\"}', 'true', NULL),
(105, '2025-02-19 07:49:37', 'add', 'dokumentasi', '2', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/SMKN 46.png\",\"deskripsi_dokumen\":\"huhuhuhuhuhu\",\"waktu_upload\":\"2025-02-19 07:49:01\"}', 'true', NULL),
(106, '2025-02-19 07:53:29', 'add', 'dokumentasi', '3', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"sfsf\",\"foto\":\"uploads\\/files\\/WhatsApp Image 2025-02-03 at 11.30.26_658d9c4f.jpg,uploads\\/files\\/WhatsApp Image 2025-02-03 at 11.30.26_658d9c4f.jpg\",\"deskripsi_dokumen\":\"AIOHCOCO\",\"waktu_upload\":\"2025-02-19 07:53:12\"}', 'true', NULL),
(107, '2025-02-19 07:56:38', 'delete', 'absensi_kegiatan', '1', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/1/', '[]', 'true', NULL),
(108, '2025-02-19 08:03:48', 'add', 'absensi_kegiatan', '2', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `status`, `deskripsi`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"status\":\"Izin\",\"deskripsi\":\"asaf\"}', 'true', NULL),
(109, '2025-02-19 08:13:07', 'delete', 'absensi_kegiatan', '2', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/2/', '[]', 'true', NULL),
(110, '2025-02-19 08:15:00', 'add', 'absensi_kegiatan', '3', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`, `deskripsi`)  VALUES (?, ?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"acel\",\"status\":\"Hadir\",\"deskripsi\":\"mnn\"}', 'true', NULL),
(111, '2025-02-19 08:22:16', 'view', 'inventaris', '9', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '2', '::1', 'inventaris/view/9', '[]', 'true', NULL),
(112, '2025-02-19 08:43:28', 'view', 'inventaris', '9', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '2', '::1', 'inventaris/view/9', '[]', 'true', NULL),
(113, '2025-02-20 04:14:11', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(114, '2025-02-23 06:46:16', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(115, '2025-02-23 07:06:23', 'add', 'inventaris', '10', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Vacuum\",\"jumlah_barang\":\"1\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-02-23 07:06:15\"}', 'true', NULL),
(116, '2025-02-23 07:58:16', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(117, '2025-02-23 08:02:29', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(118, '2025-02-23 08:09:04', 'delete', 'kegiatan', '10', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/10/', '[]', 'true', NULL),
(119, '2025-02-23 08:09:06', 'delete', 'kegiatan', '9', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/9/', '[]', 'true', NULL),
(120, '2025-02-23 08:09:07', 'delete', 'kegiatan', '8', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/8/', '[]', 'true', NULL),
(121, '2025-02-23 08:09:16', 'delete', 'pengumuman', '6', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/6/', '[]', 'true', NULL),
(122, '2025-02-23 08:09:18', 'delete', 'pengumuman', '7', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/7/', '[]', 'true', NULL),
(123, '2025-02-23 08:14:52', 'add', 'kegiatan', '11', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"Maulid\",\"lokasi_kegiatan\":\"SMKN 46\",\"deskripsi_kegiatan\":\"Kegiatan maulid\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_kegiatan\":\"2025-02-23 08:30:00\"}', 'true', NULL),
(124, '2025-02-23 08:15:44', 'add', 'pengumuman', '8', 'INSERT INTO pengumuman (`id_kegiatan`, `judul_pengumuman`, `isi_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"id_kegiatan\":\"11\",\"judul_pengumuman\":\"Persiapan Maulid\",\"isi_pengumuman\":\"menyiapkan\",\"tanggal_kegiatan\":\"2025-02-23 08:30:00\"}', 'true', NULL),
(125, '2025-02-23 08:17:20', 'delete', 'pengumuman', '8', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/8/', '[]', 'true', NULL),
(126, '2025-02-23 08:19:47', 'add', 'pengumuman', '9', 'INSERT INTO pengumuman (`nama_kegiatan`, `judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"nama_kegiatan\":\"11\",\"judul_pengumuman\":\"Gladi Resik Maulid\",\"isi_pengumuman\":\"Persiapan Maulid\",\"tanggal_pengumuman\":\"2025-02-23 08:19:20\",\"tanggal_kegiatan\":\"2025-02-23 08:30:00\"}', 'true', NULL),
(127, '2025-02-23 08:20:16', 'delete', 'pengumuman', '9', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/9/', '[]', 'true', NULL),
(128, '2025-02-23 08:20:20', 'add', 'pengumuman', '10', 'INSERT INTO pengumuman (`nama_kegiatan`, `judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"nama_kegiatan\":\"11\",\"judul_pengumuman\":\"gse\",\"isi_pengumuman\":\"sg\",\"tanggal_pengumuman\":\"2025-02-23 08:20:17\",\"tanggal_kegiatan\":\"2025-02-23 08:30:00\"}', 'true', NULL),
(129, '2025-02-23 08:21:12', 'delete', 'pengumuman', '10', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/10/', '[]', 'true', NULL),
(130, '2025-02-23 08:21:17', 'add', 'pengumuman', '11', 'INSERT INTO pengumuman (`nama_kegiatan`, `judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"nama_kegiatan\":\"Maulid\",\"judul_pengumuman\":\"truu\",\"isi_pengumuman\":\"r\",\"tanggal_pengumuman\":\"2025-02-23 08:21:13\",\"tanggal_kegiatan\":\"2025-02-23 08:30:00\"}', 'true', NULL),
(131, '2025-02-23 08:21:46', 'add', 'pengumuman', '12', 'INSERT INTO pengumuman (`nama_kegiatan`, `judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"nama_kegiatan\":\"Maulid\",\"judul_pengumuman\":\"gsg\",\"isi_pengumuman\":\"sgg\",\"tanggal_pengumuman\":\"2025-02-23 08:21:42\",\"tanggal_kegiatan\":\"2025-02-23 08:30:00\"}', 'true', NULL),
(132, '2025-02-23 08:23:12', 'edit', 'dokumentasi', '3', 'UPDATE dokumentasi SET `nama_kegiatan` = ?, `foto` = ?, `deskripsi_dokumen` = ?, `waktu_upload` = ? WHERE  dokumentasi.id_dokumentasi = ? ', '2', '::1', 'dokumentasi/edit/3/', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/WhatsApp Image 2025-02-03 at 11.30.26_658d9c4f.jpg,uploads\\/files\\/WhatsApp Image 2025-02-03 at 11.30.26_658d9c4f.jpg,uploads\\/files\\/pixelcut-export (1).jpg\",\"deskripsi_dokumen\":\"AIOHCOCO\",\"waktu_upload\":\"2025-02-19 07:53:12\"}', 'true', NULL),
(133, '2025-02-23 08:23:23', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(134, '2025-02-23 08:23:25', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(135, '2025-02-23 08:23:30', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(136, '2025-02-23 08:23:31', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(137, '2025-02-23 08:23:31', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(138, '2025-02-23 08:24:33', 'edit', 'dokumentasi', '3', 'UPDATE dokumentasi SET `nama_kegiatan` = ?, `foto` = ?, `deskripsi_dokumen` = ?, `waktu_upload` = ? WHERE  dokumentasi.id_dokumentasi = ? ', '2', '::1', 'dokumentasi/edit/3/', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/pixelcut-export (1).jpg\",\"deskripsi_dokumen\":\"AIOHCOCO\",\"waktu_upload\":\"2025-02-19 07:53:12\"}', 'true', NULL),
(139, '2025-02-23 08:24:39', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(140, '2025-02-23 08:26:39', 'add', 'kas', '9', 'INSERT INTO kas (`id_pengurus`, `jumlah_kas`, `jenis_kas`, `deskripsi`)  VALUES (?, ?, ?, ?)', '2', '::1', 'kas/add', '{\"id_pengurus\":\"1\",\"jumlah_kas\":\"2e13\",\"jenis_kas\":\"pengeluaran\",\"deskripsi\":\"eheh\"}', 'true', NULL),
(141, '2025-02-23 08:30:40', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(142, '2025-02-23 08:31:02', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '8', '::1', 'index/login/', '{\"username\":\"pengurus3\",\"password\":\"$2y$10$UQEmiPUcYQQZBSmaqDmUtuLk7iZ7nHnB4CZMvDqvgayN.KOGeYL.i\"}', 'true', NULL),
(143, '2025-02-23 08:33:27', 'add', 'kegiatan', '12', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"Isra Miraj\",\"lokasi_kegiatan\":\"smkn 46\",\"deskripsi_kegiatan\":\"awfa\",\"kategori_kegiatan\":\"Meeting\",\"tanggal_kegiatan\":\"2025-02-23 08:33:09\"}', 'true', NULL),
(144, '2025-02-23 08:33:40', 'edit', 'kegiatan', '12', 'UPDATE kegiatan SET `id_pengurus` = ?, `nama_kegiatan` = ?, `lokasi_kegiatan` = ?, `deskripsi_kegiatan` = ?, `kategori_kegiatan` = ?, `tanggal_kegiatan` = ? WHERE  kegiatan.id_kegiatan = ? ', '2', '::1', 'kegiatan/edit/12/', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"Isra Miraj\",\"lokasi_kegiatan\":\"smkn 46\",\"deskripsi_kegiatan\":\"awfa\",\"kategori_kegiatan\":\"Meeting\",\"tanggal_kegiatan\":\"2025-03-01 08:38:00\"}', 'true', NULL),
(145, '2025-02-23 08:35:20', 'userlogout', 'user', NULL, NULL, '8', '::1', 'index/logout', '[]', 'true', NULL),
(146, '2025-02-23 08:57:47', 'view', 'kegiatan', '12', 'SELECT   id_kegiatan, id_pengurus, nama_kegiatan, lokasi_kegiatan, deskripsi_kegiatan, kategori_kegiatan, tanggal_kegiatan FROM kegiatan WHERE  kegiatan.id_kegiatan = ?  LIMIT 1', '2', '::1', 'kegiatan/view/12', '[]', 'true', NULL),
(147, '2025-02-23 09:00:50', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '7', '::1', 'index/login/', '{\"username\":\"acel\",\"password\":\"$2y$10$Hlo7Q0k.BH8D0QnCCqHkyebE6FL8motv2GZH6tEJpMEI.rP2\\/XRAu\"}', 'true', NULL),
(148, '2025-02-23 09:01:51', 'userlogout', 'user', NULL, NULL, '7', '::1', 'index/logout', '[]', 'true', NULL),
(149, '2025-02-23 09:02:36', 'add', 'user', '9', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `user_role_id`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"dimmmm\",\"email\":\"525252d@gmail.com\",\"password\":\"$2y$10$PbyW1CceTFK.TLDYHEFQxu4dxcz309YnVsdnPpdETir78rkE65Pei\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/kbaxof1j_qd4952.png\",\"user_role_id\":\"2\"}', 'true', NULL),
(150, '2025-02-23 09:02:36', 'userlogin', 'user', '9', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '9', '::1', 'index/register', '{\"username\":\"dimmmm\",\"email\":\"525252d@gmail.com\",\"password\":\"$2y$10$PbyW1CceTFK.TLDYHEFQxu4dxcz309YnVsdnPpdETir78rkE65Pei\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/kbaxof1j_qd4952.png\",\"user_role_id\":\"2\"}', 'true', NULL),
(151, '2025-02-23 09:02:47', 'view', 'kegiatan', '12', 'SELECT   id_kegiatan, id_pengurus, nama_kegiatan, lokasi_kegiatan, deskripsi_kegiatan, kategori_kegiatan, tanggal_kegiatan FROM kegiatan WHERE  kegiatan.id_kegiatan = ?  LIMIT 1', '9', '::1', 'kegiatan/view/12', '[]', 'true', NULL),
(152, '2025-02-23 09:03:01', 'view', 'kas', '9', 'SELECT   id_kas, id_pengurus, jumlah_kas, jenis_kas, deskripsi, tanggal, total_kas FROM kas WHERE  kas.id_kas = ?  LIMIT 1', '9', '::1', 'kas/view/9', '[]', 'true', NULL),
(153, '2025-02-23 09:03:14', 'add', 'kas', '10', 'INSERT INTO kas (`id_pengurus`, `jumlah_kas`, `jenis_kas`, `deskripsi`)  VALUES (?, ?, ?, ?)', '9', '::1', 'kas/add', '{\"id_pengurus\":\"1\",\"jumlah_kas\":\"2000\",\"jenis_kas\":\"pemasukan\",\"deskripsi\":\"ioio\"}', 'true', NULL),
(154, '2025-02-23 09:04:14', 'userlogout', 'user', NULL, NULL, '9', '::1', 'index/logout', '[]', 'true', NULL),
(155, '2025-02-23 09:04:28', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '7', '::1', 'index/login/', '{\"username\":\"acel\",\"password\":\"$2y$10$Hlo7Q0k.BH8D0QnCCqHkyebE6FL8motv2GZH6tEJpMEI.rP2\\/XRAu\"}', 'true', NULL),
(156, '2025-02-23 09:04:43', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(157, '2025-02-23 09:04:44', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(158, '2025-02-23 09:04:44', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(159, '2025-02-23 09:04:44', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(160, '2025-02-23 09:04:44', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(161, '2025-02-23 09:04:45', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(162, '2025-02-23 09:04:45', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(163, '2025-02-23 09:04:45', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(164, '2025-02-23 09:04:47', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(165, '2025-02-23 09:04:47', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(166, '2025-02-23 09:04:47', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(167, '2025-02-23 09:04:49', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(168, '2025-02-23 09:04:49', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(169, '2025-02-23 09:04:49', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(170, '2025-02-23 09:04:49', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(171, '2025-02-23 09:05:08', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(172, '2025-02-23 09:05:11', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(173, '2025-02-23 09:05:14', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(174, '2025-02-23 09:05:15', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(175, '2025-02-23 09:05:15', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(176, '2025-02-23 09:05:15', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL);
INSERT INTO `app_logs` (`log_id`, `Timestamp`, `Action`, `TableName`, `RecordID`, `SqlQuery`, `UserID`, `ServerIP`, `RequestUrl`, `RequestData`, `RequestCompleted`, `RequestMsg`) VALUES
(177, '2025-02-23 09:05:16', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(178, '2025-02-23 09:05:16', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(179, '2025-02-23 09:05:16', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(180, '2025-02-23 09:05:16', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(181, '2025-02-23 09:05:20', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(182, '2025-02-23 09:05:29', 'edit', 'dokumentasi', '3', 'UPDATE dokumentasi SET `nama_kegiatan` = ?, `foto` = ?, `deskripsi_dokumen` = ?, `waktu_upload` = ? WHERE  dokumentasi.id_dokumentasi = ? ', '2', '::1', 'dokumentasi/edit/3/', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/pixelcut-export (1).jpg,uploads\\/files\\/2-removebg-preview - Copy.png,uploads\\/files\\/2-removebg-preview.png,uploads\\/files\\/1-removebg-preview.png\",\"deskripsi_dokumen\":\"AIOHCOCO\",\"waktu_upload\":\"2025-02-19 07:53:12\"}', 'true', NULL),
(183, '2025-02-23 09:05:32', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(184, '2025-02-23 09:05:33', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(185, '2025-02-23 09:05:33', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(186, '2025-02-23 09:05:34', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(187, '2025-02-23 09:05:34', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(188, '2025-02-23 09:05:36', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(189, '2025-02-23 09:05:36', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(190, '2025-02-23 09:05:40', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(191, '2025-02-23 09:09:52', 'delete', 'absensi_kegiatan', '3', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/3/', '[]', 'true', NULL),
(192, '2025-02-23 09:59:09', 'add', 'absensi_kegiatan', '4', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`, `deskripsi`)  VALUES (?, ?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"acel\",\"status\":\"Hadir\",\"deskripsi\":\"adad\"}', 'true', NULL),
(193, '2025-02-23 10:05:38', 'view', 'absensi_kegiatan', '4', 'SELECT   id_absensi, nama_kegiatan, username, waktu_absen, deskripsi, status FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi = ?  LIMIT 1', '2', '::1', 'absensi_kegiatan/view/4', '[]', 'true', NULL),
(194, '2025-02-23 10:08:54', 'add', 'absensi_kegiatan', '6', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`, `deskripsi`)  VALUES (?, ?, ?, ?)', '7', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"ada\",\"status\":\"Izin\",\"deskripsi\":\"j\"}', 'true', NULL),
(195, '2025-02-23 10:20:39', 'delete', 'absensi_kegiatan', '6', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/6/', '[]', 'true', NULL),
(196, '2025-02-23 10:25:10', 'add', 'absensi_kegiatan', '12', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`, `deskripsi`)  VALUES (?, ?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"pengurus3\",\"status\":\"Dispen\",\"deskripsi\":\"gdsg\"}', 'true', NULL),
(197, '2025-02-23 10:30:13', 'delete', 'absensi_kegiatan', '12', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/12/', '[]', 'true', NULL),
(198, '2025-02-23 10:30:16', 'delete', 'absensi_kegiatan', '4', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/4/', '[]', 'true', NULL),
(199, '2025-02-23 10:30:27', 'add', 'absensi_kegiatan', '15', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`, `deskripsi`)  VALUES (?, ?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"acel\",\"status\":\"Hadir\",\"deskripsi\":\"a\"}', 'true', NULL),
(200, '2025-02-23 10:37:07', 'add', 'absensi_kegiatan', '18', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"ada\",\"status\":\"Dispen\"}', 'true', NULL),
(201, '2025-02-23 10:45:55', 'add', 'kegiatan', '13', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"dfgdg\",\"lokasi_kegiatan\":\"dfgdg\",\"deskripsi_kegiatan\":\"dfgd\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_kegiatan\":\"2025-02-23 10:45:50\"}', 'true', NULL),
(202, '2025-02-23 10:48:07', 'edit', 'absensi_kegiatan', '18', 'UPDATE absensi_kegiatan SET `nama_kegiatan` = ?, `username` = ?, `status` = ?, `deskripsi` = ? WHERE  absensi_kegiatan.id_absensi = ? ', '2', '::1', 'absensi_kegiatan/edit/18/', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"ada\",\"status\":\"Sakit\",\"deskripsi\":\"\"}', 'true', NULL),
(203, '2025-02-23 11:03:41', 'add', 'inventaris', '11', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Sapu\",\"jumlah_barang\":\"4\",\"status_barang\":\"Beberapa Rusak\",\"tanggal_masuk\":\"2025-02-23 11:03:32\"}', 'true', NULL),
(204, '2025-02-23 11:03:49', 'view', 'inventaris', '11', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '2', '::1', 'inventaris/view/11', '[]', 'true', NULL),
(205, '2025-02-23 11:06:17', 'delete', 'absensi_kegiatan', '18', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/18/', '[]', 'true', NULL),
(206, '2025-02-23 11:06:18', 'delete', 'absensi_kegiatan', '15', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/15/', '[]', 'true', NULL),
(207, '2025-02-23 11:06:24', 'add', 'absensi_kegiatan', '21', 'INSERT INTO absensi_kegiatan (`id_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"id_kegiatan\":\"12\",\"username\":\"ada\",\"status\":\"Hadir\"}', 'true', NULL),
(208, '2025-02-23 11:08:33', 'edit', 'absensi_kegiatan', '21', 'UPDATE absensi_kegiatan SET `id_kegiatan` = ? WHERE  absensi_kegiatan.id_absensi = ? ', '2', '::1', 'absensi_kegiatan/editfield/21', '{\"id_kegiatan\":\"Maulid\"}', 'true', NULL),
(209, '2025-02-23 11:08:38', 'add', 'absensi_kegiatan', '22', 'INSERT INTO absensi_kegiatan (`id_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"id_kegiatan\":\"Isra Miraj\",\"username\":\"ada\",\"status\":\"Hadir\"}', 'true', NULL),
(210, '2025-02-23 11:08:58', 'add', 'absensi_kegiatan', '23', 'INSERT INTO absensi_kegiatan (`id_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"id_kegiatan\":\"Isra Miraj\",\"username\":\"ada\",\"status\":\"Hadir\"}', 'true', NULL),
(211, '2025-02-23 11:09:05', 'add', 'absensi_kegiatan', '24', 'INSERT INTO absensi_kegiatan (`id_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"id_kegiatan\":\"Maulid\",\"username\":\"acel\",\"status\":\"Izin\"}', 'true', NULL),
(212, '2025-02-23 11:11:28', 'add', 'absensi_kegiatan', '25', 'INSERT INTO absensi_kegiatan (`id_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"id_kegiatan\":\"13\",\"username\":\"admin\",\"status\":\"Sakit\"}', 'true', NULL),
(213, '2025-02-23 11:12:36', 'delete', 'absensi_kegiatan', '25', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/25/', '[]', 'true', NULL),
(214, '2025-02-23 11:12:38', 'delete', 'absensi_kegiatan', '24', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/24/', '[]', 'true', NULL),
(215, '2025-02-23 11:12:40', 'delete', 'absensi_kegiatan', '23', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/23/', '[]', 'true', NULL),
(216, '2025-02-23 11:12:42', 'delete', 'absensi_kegiatan', '22', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/22/', '[]', 'true', NULL),
(217, '2025-02-23 11:12:44', 'delete', 'absensi_kegiatan', '21', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/21/', '[]', 'true', NULL),
(218, '2025-02-23 11:12:56', 'add', 'absensi_kegiatan', '26', 'INSERT INTO absensi_kegiatan (`id_kegiatan`, `username`, `status`, `deskripsi`, `nama_kegiatan`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"id_kegiatan\":\"12\",\"username\":\"acel\",\"status\":\"Hadir\",\"deskripsi\":\"as\",\"nama_kegiatan\":\"Maulid\"}', 'true', NULL),
(219, '2025-02-23 11:13:42', 'delete', 'absensi_kegiatan', '26', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/26/', '[]', 'true', NULL),
(220, '2025-02-23 11:13:47', 'add', 'absensi_kegiatan', '27', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(221, '2025-02-23 11:14:08', 'add', 'absensi_kegiatan', '28', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"ada\",\"status\":\"Hadir\"}', 'true', NULL),
(222, '2025-02-23 11:15:09', 'add', 'absensi_kegiatan', '29', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(223, '2025-02-23 11:15:27', 'delete', 'absensi_kegiatan', '29', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/29/', '[]', 'true', NULL),
(224, '2025-02-23 11:15:28', 'delete', 'absensi_kegiatan', '28', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/28/', '[]', 'true', NULL),
(225, '2025-02-23 11:15:30', 'delete', 'absensi_kegiatan', '27', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/27/', '[]', 'true', NULL),
(226, '2025-02-23 11:15:37', 'add', 'absensi_kegiatan', '30', 'INSERT INTO absensi_kegiatan (`id_kegiatan`, `nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"id_kegiatan\":\"12\",\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(227, '2025-02-23 11:16:10', 'add', 'absensi_kegiatan', '31', 'INSERT INTO absensi_kegiatan (`id_kegiatan`, `nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"id_kegiatan\":\"12\",\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"ada\",\"status\":\"Hadir\"}', 'true', NULL),
(228, '2025-02-23 11:16:40', 'add', 'absensi_kegiatan', '32', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(229, '2025-02-23 11:18:07', 'delete', 'absensi_kegiatan', '32', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/32/', '[]', 'true', NULL),
(230, '2025-02-23 11:18:09', 'delete', 'absensi_kegiatan', '31', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/31/', '[]', 'true', NULL),
(231, '2025-02-23 11:18:11', 'delete', 'absensi_kegiatan', '30', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/30/', '[]', 'true', NULL),
(232, '2025-02-23 11:18:36', 'add', 'absensi_kegiatan', '33', 'INSERT INTO absensi_kegiatan (`id_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"id_kegiatan\":\"12\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(233, '2025-02-23 11:30:08', 'add', 'absensi_kegiatan', '34', 'INSERT INTO absensi_kegiatan (`id_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"id_kegiatan\":\"11\",\"username\":\"acel\",\"status\":\"Izin\"}', 'true', NULL),
(234, '2025-02-23 11:38:35', 'add', 'inventaris', '12', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Kipas\",\"jumlah_barang\":\"6\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-02-23 11:38:29\"}', 'true', NULL),
(235, '2025-02-23 11:38:50', 'delete', 'inventaris', '9', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/9/', '[]', 'true', NULL),
(236, '2025-02-23 11:38:52', 'delete', 'inventaris', '11', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/11/', '[]', 'true', NULL),
(237, '2025-02-23 11:39:18', 'view', 'inventaris', '12', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '2', '::1', 'inventaris/view/12', '[]', 'true', NULL),
(238, '2025-02-23 11:40:02', 'view', 'inventaris', '12', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '2', '::1', 'inventaris/view/12', '[]', 'true', NULL),
(239, '2025-02-23 11:43:21', 'delete', 'absensi_kegiatan', '34', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/34/', '[]', 'true', NULL),
(240, '2025-02-23 11:43:23', 'delete', 'absensi_kegiatan', '33', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/33/', '[]', 'true', NULL),
(241, '2025-02-23 11:43:30', 'add', 'absensi_kegiatan', '35', 'INSERT INTO absensi_kegiatan (`id_kegiatan`, `username`, `status`, `deskripsi`, `nama_kegiatan`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"id_kegiatan\":\"12\",\"username\":\"acel\",\"status\":\"Izin\",\"deskripsi\":\"l\",\"nama_kegiatan\":\"Maulid\"}', 'true', NULL),
(242, '2025-02-23 11:44:10', 'delete', 'absensi_kegiatan', '35', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/35/', '[]', 'true', NULL),
(243, '2025-02-23 11:44:28', 'add', 'absensi_kegiatan', '36', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(244, '2025-02-23 11:47:07', 'add', 'absensi_kegiatan', '37', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(245, '2025-02-23 11:47:14', 'add', 'absensi_kegiatan', '38', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(246, '2025-02-23 11:48:08', 'add', 'absensi_kegiatan', '39', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"ada\",\"status\":\"Hadir\"}', 'true', NULL),
(247, '2025-02-23 11:48:13', 'delete', 'absensi_kegiatan', '39', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/39/', '[]', 'true', NULL),
(248, '2025-02-23 11:48:15', 'delete', 'absensi_kegiatan', '38', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/38/', '[]', 'true', NULL),
(249, '2025-02-23 11:48:16', 'delete', 'absensi_kegiatan', '37', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/37/', '[]', 'true', NULL),
(250, '2025-02-23 11:48:17', 'delete', 'absensi_kegiatan', '36', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/36/', '[]', 'true', NULL),
(251, '2025-02-23 11:48:22', 'add', 'absensi_kegiatan', '40', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"acel\",\"status\":\"Izin\"}', 'true', NULL),
(252, '2025-02-23 11:48:27', 'add', 'absensi_kegiatan', '41', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(253, '2025-02-23 11:50:07', 'edit', 'pengumuman', '12', 'UPDATE pengumuman SET `judul_pengumuman` = ?, `isi_pengumuman` = ?, `nama_kegiatan` = ?, `tanggal_pengumuman` = ?, `tanggal_kegiatan` = ? WHERE  pengumuman.id_pengumuman = ? ', '2', '::1', 'pengumuman/edit/12/', '{\"judul_pengumuman\":\"Latihan Persiapan Maulid\",\"isi_pengumuman\":\"latihan maulid di sekolah\",\"nama_kegiatan\":\"Maulid\",\"tanggal_pengumuman\":\"2025-02-23 08:21:42\",\"tanggal_kegiatan\":\"2025-02-23 08:30:00\"}', 'true', NULL),
(254, '2025-02-23 12:02:37', 'view', 'user', '9', 'SELECT   id_user, username, email, user_role_id FROM user WHERE  user.id_user = ?  LIMIT 1', '7', '::1', 'user/view/9', '[]', 'true', NULL),
(255, '2025-02-23 12:03:01', 'view', 'user', '9', 'SELECT   id_user, username, email, password, user_role_id FROM user WHERE  user.id_user = ?  LIMIT 1', '7', '::1', 'user/view/9', '[]', 'true', NULL),
(256, '2025-02-23 12:06:14', 'view', 'user', '9', 'SELECT   id_user, username, photo FROM user WHERE  user.id_user = ?  LIMIT 1', '7', '::1', 'user/view/9', '[]', 'true', NULL),
(257, '2025-02-23 12:06:48', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(258, '2025-02-23 12:06:49', 'view', 'dokumentasi', '3', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '7', '::1', 'dokumentasi/view/3', '[]', 'true', NULL),
(259, '2025-02-23 12:07:00', 'add', 'dokumentasi', '4', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '7', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"foto\":\"uploads\\/files\\/2-removebg-preview - Copy.png\",\"deskripsi_dokumen\":\"jk\",\"waktu_upload\":\"2025-02-23 12:06:51\"}', 'true', NULL),
(260, '2025-02-23 12:07:10', 'add', 'dokumentasi', '5', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '7', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/2-removebg-preview - Copy.png\",\"deskripsi_dokumen\":\"m\",\"waktu_upload\":\"2025-02-23 12:07:04\"}', 'true', NULL),
(261, '2025-02-23 12:08:22', 'delete', 'dokumentasi', '2', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/2/', '[]', 'true', NULL),
(262, '2025-02-23 12:08:24', 'delete', 'dokumentasi', '3', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/3/', '[]', 'true', NULL),
(263, '2025-02-23 12:08:26', 'delete', 'dokumentasi', '4', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/4/', '[]', 'true', NULL),
(264, '2025-02-23 12:08:32', 'add', 'dokumentasi', '6', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `waktu_upload`)  VALUES (?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/2-removebg-preview.png\",\"waktu_upload\":\"2025-02-23 12:08:26\"}', 'true', NULL),
(265, '2025-02-23 12:08:35', 'view', 'dokumentasi', '6', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/6', '[]', 'true', NULL),
(266, '2025-02-23 12:08:38', 'view', 'dokumentasi', '5', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/5', '[]', 'true', NULL),
(267, '2025-02-23 12:08:45', 'add', 'dokumentasi', '7', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `waktu_upload`)  VALUES (?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/pixelcut-export.jpg\",\"waktu_upload\":\"2025-02-23 12:08:40\"}', 'true', NULL),
(268, '2025-02-23 12:15:04', 'userlogout', 'user', NULL, NULL, '7', '::1', 'index/logout', '[]', 'true', NULL),
(269, '2025-02-23 12:15:22', 'add', 'user', '10', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `user_role_id`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"kusnadi\",\"email\":\"141412414244@gmail.com\",\"password\":\"$2y$10$4eabLNwu6JReeu7E0CTrSuNkpHsyI1HWdIrotVz3h9ulvkLa2Y5GS\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/kbr6dqvn4uw7z5m.jpg\",\"user_role_id\":\"2\"}', 'true', NULL),
(270, '2025-02-23 12:15:23', 'userlogin', 'user', '10', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '10', '::1', 'index/register', '{\"username\":\"kusnadi\",\"email\":\"141412414244@gmail.com\",\"password\":\"$2y$10$4eabLNwu6JReeu7E0CTrSuNkpHsyI1HWdIrotVz3h9ulvkLa2Y5GS\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/kbr6dqvn4uw7z5m.jpg\",\"user_role_id\":\"2\"}', 'true', NULL),
(271, '2025-02-23 12:17:11', 'view', 'absensi_kegiatan', '41', 'SELECT   id_absensi, nama_kegiatan, username, waktu_absen, deskripsi, status FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi = ?  LIMIT 1', '10', '::1', 'absensi_kegiatan/view/41', '[]', 'true', NULL),
(272, '2025-02-23 12:24:08', 'edit', 'dokumentasi', '7', 'UPDATE dokumentasi SET `nama_kegiatan` = ?, `foto` = ?, `deskripsi_dokumen` = ?, `waktu_upload` = ? WHERE  dokumentasi.id_dokumentasi = ? ', '2', '::1', 'dokumentasi/edit/7/', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/pixelcut-export.jpg,uploads\\/files\\/2-removebg-preview.png\",\"deskripsi_dokumen\":\"\",\"waktu_upload\":\"2025-02-23 12:08:40\"}', 'true', NULL),
(273, '2025-02-23 12:25:21', 'add', 'dokumentasi', '8', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `waktu_upload`)  VALUES (?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"foto\":\"uploads\\/files\\/pixelcut-export.jpg,uploads\\/files\\/pixelcut-export (1).jpg,uploads\\/files\\/pixelcut-export.jpg,uploads\\/files\\/SMKN_46-removebg-preview.png,uploads\\/files\\/SMKN 46.png,uploads\\/files\\/2-removebg-preview - Copy.png,uploads\\/files\\/2-removebg-preview.png,uploads\\/files\\/1-removebg-preview.png\",\"waktu_upload\":\"2025-02-23 12:24:54\"}', 'true', NULL),
(274, '2025-02-23 12:28:29', 'add', 'absensi_kegiatan', '42', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(275, '2025-02-23 12:28:38', 'delete', 'absensi_kegiatan', '42', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/42/', '[]', 'true', NULL),
(276, '2025-02-23 12:28:40', 'delete', 'absensi_kegiatan', '41', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/41/', '[]', 'true', NULL),
(277, '2025-02-23 12:28:42', 'delete', 'absensi_kegiatan', '40', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/40/', '[]', 'true', NULL),
(278, '2025-02-23 12:28:47', 'delete', 'dokumentasi', '8', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/8/', '[]', 'true', NULL),
(279, '2025-02-23 12:28:49', 'delete', 'dokumentasi', '7', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/7/', '[]', 'true', NULL),
(280, '2025-02-23 12:28:50', 'delete', 'dokumentasi', '6', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/6/', '[]', 'true', NULL),
(281, '2025-02-23 12:29:37', 'view', 'kas', '10', 'SELECT   id_kas, id_pengurus, jumlah_kas, jenis_kas, deskripsi, tanggal, total_kas FROM kas WHERE  kas.id_kas = ?  LIMIT 1', '2', '::1', 'kas/view/10', '[]', 'true', NULL),
(282, '2025-02-23 12:30:33', 'add', 'absensi_kegiatan', '43', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '10', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(283, '2025-02-23 12:30:56', 'view', 'dokumentasi', '5', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '10', '::1', 'dokumentasi/view/5', '[]', 'true', NULL),
(284, '2025-02-23 12:30:56', 'view', 'dokumentasi', '5', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '10', '::1', 'dokumentasi/view/5', '[]', 'true', NULL),
(285, '2025-02-23 12:30:57', 'view', 'dokumentasi', '5', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '10', '::1', 'dokumentasi/view/5', '[]', 'true', NULL),
(286, '2025-02-23 12:30:57', 'view', 'dokumentasi', '5', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '10', '::1', 'dokumentasi/view/5', '[]', 'true', NULL),
(287, '2025-02-23 12:30:57', 'view', 'dokumentasi', '5', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '10', '::1', 'dokumentasi/view/5', '[]', 'true', NULL),
(288, '2025-02-23 12:31:26', 'view', 'kegiatan', '13', 'SELECT   id_kegiatan, id_pengurus, nama_kegiatan, lokasi_kegiatan, deskripsi_kegiatan, kategori_kegiatan, tanggal_kegiatan FROM kegiatan WHERE  kegiatan.id_kegiatan = ?  LIMIT 1', '10', '::1', 'kegiatan/view/13', '[]', 'true', NULL),
(289, '2025-02-23 12:38:46', 'delete', 'dokumentasi', '5', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/5/', '[]', 'true', NULL),
(290, '2025-02-23 12:40:49', 'add', 'pengumuman', '13', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\"ada\",\"isi_pengumuman\":\"ada\",\"nama_kegiatan\":\"dfgdg\",\"tanggal_pengumuman\":\"2025-01-01 12:40:00\",\"tanggal_kegiatan\":\"2025-02-23 08:30:00\"}', 'true', NULL),
(291, '2025-02-23 12:42:38', 'delete', 'kegiatan', '13', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/13/', '[]', 'true', NULL),
(292, '2025-02-23 12:42:40', 'delete', 'kegiatan', '12', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/12/', '[]', 'true', NULL),
(293, '2025-02-23 12:42:41', 'delete', 'kegiatan', '11', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/11/', '[]', 'true', NULL),
(294, '2025-02-23 12:43:23', 'add', 'kegiatan', '14', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"Maulid\",\"lokasi_kegiatan\":\"SMKN 46\",\"deskripsi_kegiatan\":\"&#34;Acara Maulid untuk memperingati hari kelahiran Nabi Muhammad SAW. Kegiatan ini akan dihadiri oleh seluruh siswa dan guru di sekolah, dengan acara seperti ceramah, pembacaan shalawat, dan makan bersama.&#34;\",\"kategori_kegiatan\":\"Meeting\",\"tanggal_kegiatan\":\"2025-02-23 12:42:42\"}', 'true', NULL),
(295, '2025-02-23 12:44:20', 'edit', 'kegiatan', '14', 'UPDATE kegiatan SET `id_pengurus` = ?, `nama_kegiatan` = ?, `lokasi_kegiatan` = ?, `deskripsi_kegiatan` = ?, `kategori_kegiatan` = ?, `tanggal_kegiatan` = ? WHERE  kegiatan.id_kegiatan = ? ', '2', '::1', 'kegiatan/edit/14/', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"Maulid\",\"lokasi_kegiatan\":\"SMKN 46\",\"deskripsi_kegiatan\":\"&#34;Acara Maulid untuk memperingati hari kelahiran Nabi Muhammad SAW. Kegiatan ini akan dihadiri oleh seluruh siswa dan guru di sekolah, dengan acara seperti ceramah, pembacaan shalawat, dan makan bersama.&#34;\",\"kategori_kegiatan\":\"Acara\",\"tanggal_kegiatan\":\"2025-02-23 12:42:42\"}', 'true', NULL),
(296, '2025-02-23 12:44:24', 'delete', 'pengumuman', '13', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/13/', '[]', 'true', NULL),
(297, '2025-02-23 12:44:26', 'delete', 'pengumuman', '11', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/11/', '[]', 'true', NULL),
(298, '2025-02-23 12:44:27', 'delete', 'pengumuman', '12', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/12/', '[]', 'true', NULL),
(299, '2025-02-23 12:44:51', 'add', 'pengumuman', '14', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\" Latihan Persiapan Maulid\",\"isi_pengumuman\":\"&#34;Diharapkan seluruh siswa mengikuti latihan persiapan untuk acara Maulid yang akan diselenggarakan pada tanggal 25 Februari 2025. Kehadiran adalah wajib untuk semua anggota.&#34;\",\"nama_kegiatan\":\"Maulid\",\"tanggal_pengumuman\":\"2025-02-23 12:44:28\",\"tanggal_kegiatan\":\"2025-02-23 12:42:42\"}', 'true', NULL),
(300, '2025-02-23 12:45:22', 'delete', 'kas', '9', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/9/', '[]', 'true', NULL),
(301, '2025-02-23 12:45:24', 'delete', 'kas', '10', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/10/', '[]', 'true', NULL),
(302, '2025-02-23 12:45:26', 'delete', 'kas', '8', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/8/', '[]', 'true', NULL),
(303, '2025-02-23 12:45:27', 'delete', 'kas', '7', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/7/', '[]', 'true', NULL),
(304, '2025-02-23 12:45:29', 'delete', 'kas', '6', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/6/', '[]', 'true', NULL),
(305, '2025-02-23 12:45:39', 'add', 'kas', '11', 'INSERT INTO kas (`id_pengurus`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '2', '::1', 'kas/add', '{\"id_pengurus\":\"1\",\"jumlah_kas\":\"100000\",\"jenis_kas\":\"pemasukan\"}', 'true', NULL),
(306, '2025-02-23 12:45:47', 'add', 'kas', '12', 'INSERT INTO kas (`id_pengurus`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '2', '::1', 'kas/add', '{\"id_pengurus\":\"1\",\"jumlah_kas\":\"50000\",\"jenis_kas\":\"pengeluaran\"}', 'true', NULL),
(307, '2025-02-23 12:48:01', 'delete', 'inventaris', '12', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/12/', '[]', 'true', NULL),
(308, '2025-02-23 12:48:02', 'delete', 'inventaris', '10', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/10/', '[]', 'true', NULL),
(309, '2025-02-23 12:48:12', 'add', 'inventaris', '13', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Sapu\",\"jumlah_barang\":\"2\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-02-23 12:48:06\"}', 'true', NULL),
(310, '2025-02-23 12:50:46', 'view', 'kegiatan', '14', 'SELECT   id_kegiatan, id_pengurus, nama_kegiatan, lokasi_kegiatan, deskripsi_kegiatan, kategori_kegiatan, tanggal_kegiatan FROM kegiatan WHERE  kegiatan.id_kegiatan = ?  LIMIT 1', '10', '::1', 'kegiatan/view/14', '[]', 'true', NULL),
(311, '2025-02-23 12:51:16', 'add', 'dokumentasi', '9', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `waktu_upload`)  VALUES (?, ?, ?)', '10', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/2-removebg-preview.png\",\"waktu_upload\":\"2025-02-23 12:51:11\"}', 'true', NULL),
(312, '2025-02-23 13:01:31', 'delete', 'absensi_kegiatan', '43', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/43/', '[]', 'true', NULL),
(313, '2025-02-23 13:14:51', 'add', 'absensi_kegiatan', '44', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(314, '2025-02-23 13:15:16', 'delete', 'absensi_kegiatan', '44', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/44/', '[]', 'true', NULL),
(315, '2025-02-23 13:15:21', 'add', 'absensi_kegiatan', '45', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"acel\",\"status\":\"Izin\"}', 'true', NULL),
(316, '2025-02-23 13:16:43', 'add', 'kegiatan', '15', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"Kajian Mingguan\",\"lokasi_kegiatan\":\"SMKN 46\",\"deskripsi_kegiatan\":\"ada\",\"kategori_kegiatan\":\"Acara\",\"tanggal_kegiatan\":\"2025-02-23 13:16:28\"}', 'true', NULL),
(317, '2025-02-23 13:17:14', 'add', 'kegiatan', '16', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"adwda\",\"lokasi_kegiatan\":\"adwd\",\"deskripsi_kegiatan\":\"awda\",\"kategori_kegiatan\":\"Meeting\",\"tanggal_kegiatan\":\"2025-02-23 13:17:09\"}', 'true', NULL),
(318, '2025-02-23 13:18:46', 'add', 'kegiatan', '17', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"2\",\"nama_kegiatan\":\"wad\",\"lokasi_kegiatan\":\"adawd\",\"deskripsi_kegiatan\":\"daw\",\"kategori_kegiatan\":\"Meeting\",\"tanggal_kegiatan\":\"2025-02-27 13:18:00\"}', 'true', NULL),
(319, '2025-02-23 13:28:04', 'delete', 'absensi_kegiatan', '45', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/45/', '[]', 'true', NULL),
(320, '2025-02-23 13:30:54', 'add', 'absensi_kegiatan', '46', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Kajian Mingguan\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(321, '2025-02-23 13:31:01', 'add', 'absensi_kegiatan', '47', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"adwda\",\"username\":\"anggota\",\"status\":\"Hadir\"}', 'true', NULL),
(322, '2025-02-23 13:31:09', 'add', 'absensi_kegiatan', '48', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"wad\",\"username\":\"acel\",\"status\":\"Alpha\"}', 'true', NULL),
(323, '2025-02-23 13:36:33', 'delete', 'kegiatan', '17', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/17/', '[]', 'true', NULL),
(324, '2025-02-23 13:36:35', 'delete', 'kegiatan', '16', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/16/', '[]', 'true', NULL),
(325, '2025-02-23 13:36:37', 'delete', 'kegiatan', '15', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/15/', '[]', 'true', NULL),
(326, '2025-02-23 13:36:42', 'delete', 'absensi_kegiatan', '48', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/48/', '[]', 'true', NULL),
(327, '2025-02-23 13:36:44', 'delete', 'absensi_kegiatan', '47', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/47/', '[]', 'true', NULL),
(328, '2025-02-23 13:36:45', 'delete', 'absensi_kegiatan', '46', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/46/', '[]', 'true', NULL),
(329, '2025-02-23 13:37:01', 'add', 'inventaris', '14', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Pel  Lantai\",\"jumlah_barang\":\"2\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-02-23 13:36:53\"}', 'true', NULL),
(330, '2025-02-23 13:40:11', 'add', 'inventaris', '15', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"2\",\"nama_barang\":\"Mikrofon\",\"jumlah_barang\":\"3\",\"status_barang\":\"Beberapa Rusak\",\"tanggal_masuk\":\"2025-02-23 13:40:06\"}', 'true', NULL),
(331, '2025-02-23 13:50:49', 'view', 'inventaris', '15', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '2', '::1', 'inventaris/view/15', '[]', 'true', NULL),
(332, '2025-02-23 13:51:09', 'view', 'inventaris', '15', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '2', '::1', 'inventaris/view/15', '[]', 'true', NULL),
(333, '2025-02-23 13:51:12', 'delete', 'inventaris', '15', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/15/', '[]', 'true', NULL),
(334, '2025-02-23 13:51:13', 'delete', 'inventaris', '14', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/14/', '[]', 'true', NULL),
(335, '2025-02-23 13:51:15', 'delete', 'inventaris', '13', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/13/', '[]', 'true', NULL),
(336, '2025-02-23 13:51:28', 'add', 'inventaris', '16', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Sapu\",\"jumlah_barang\":\"3\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-02-23 13:51:15\"}', 'true', NULL),
(337, '2025-02-23 13:57:20', 'add', 'inventaris', '17', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"2\",\"nama_barang\":\"Pel  Lantai\",\"jumlah_barang\":\"4\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-02-23 13:57:12\"}', 'true', NULL),
(338, '2025-02-23 14:09:30', 'add', 'inventaris', '18', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Karpet Masjid\",\"jumlah_barang\":\"8\",\"status_barang\":\"Beberapa Rusak\",\"tanggal_masuk\":\"2025-02-23 14:09:23\"}', 'true', NULL),
(339, '2025-02-23 14:16:58', 'delete', 'inventaris', '18', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/18/', '[]', 'true', NULL),
(340, '2025-02-23 14:16:59', 'delete', 'inventaris', '17', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/17/', '[]', 'true', NULL),
(341, '2025-02-23 14:17:01', 'delete', 'inventaris', '16', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/16/', '[]', 'true', NULL),
(342, '2025-02-23 14:17:11', 'add', 'inventaris', '19', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Bedug\",\"jumlah_barang\":\"9\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-02-23 14:17:02\"}', 'true', NULL),
(343, '2025-02-23 14:18:56', 'add', 'inventaris', '20', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Sapu\",\"jumlah_barang\":\"9\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-02-23 14:18:16\"}', 'true', NULL),
(344, '2025-02-23 14:29:43', 'add', 'absensi_kegiatan', '49', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"acel\",\"status\":\"Hadir\"}', 'true', NULL),
(345, '2025-02-23 14:32:00', 'add', 'kegiatan', '18', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"Isra Miraj\",\"lokasi_kegiatan\":\"csc\",\"deskripsi_kegiatan\":\"asca\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_kegiatan\":\"2025-02-23 14:31:37\"}', 'true', NULL),
(346, '2025-02-23 14:35:12', 'add', 'kas', '13', 'INSERT INTO kas (`id_pengurus`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '2', '::1', 'kas/add', '{\"id_pengurus\":\"1\",\"jumlah_kas\":\"50000\",\"jenis_kas\":\"pemasukan\"}', 'true', NULL),
(347, '2025-02-23 14:37:31', 'view', 'kas', '13', 'SELECT   id_kas, id_pengurus, jumlah_kas, jenis_kas, deskripsi, tanggal, total_kas FROM kas WHERE  kas.id_kas = ?  LIMIT 1', '2', '::1', 'kas/view/13', '[]', 'true', NULL),
(348, '2025-02-23 14:48:58', 'add', 'inventaris', '21', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Kipas\",\"jumlah_barang\":\"6\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-02-23 14:48:50\"}', 'true', NULL),
(349, '2025-02-23 15:13:32', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi`
--

CREATE TABLE `dokumentasi` (
  `id_dokumentasi` int(11) NOT NULL,
  `nama_kegiatan` varchar(11) DEFAULT NULL,
  `foto` varchar(255) NOT NULL,
  `deskripsi_dokumen` text NOT NULL,
  `waktu_upload` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumentasi`
--

INSERT INTO `dokumentasi` (`id_dokumentasi`, `nama_kegiatan`, `foto`, `deskripsi_dokumen`, `waktu_upload`) VALUES
(9, 'Maulid', 'uploads/files/2-removebg-preview.png', '', '2025-02-23 12:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `inventaris`
--

CREATE TABLE `inventaris` (
  `id_barang` int(11) NOT NULL,
  `id_pengurus` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jumlah_barang` int(11) DEFAULT NULL,
  `status_barang` varchar(255) DEFAULT NULL,
  `tanggal_masuk` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventaris`
--

INSERT INTO `inventaris` (`id_barang`, `id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`) VALUES
(19, 1, 'Bedug', 9, 'Bagus', '2025-02-23 14:17:02'),
(20, 1, 'Sapu', 9, 'Bagus', '2025-02-23 14:18:16'),
(21, 1, 'Kipas', 6, 'Bagus', '2025-02-23 14:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'Ketua Umum'),
(2, 'Ketua Keputrian'),
(3, 'Sekretaris'),
(4, 'Bendahara'),
(5, 'DKM'),
(6, 'SYIAR');

-- --------------------------------------------------------

--
-- Table structure for table `kas`
--

CREATE TABLE `kas` (
  `id_kas` int(11) NOT NULL,
  `id_pengurus` int(11) DEFAULT NULL,
  `jumlah_kas` int(11) DEFAULT NULL,
  `jenis_kas` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_kas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kas`
--

INSERT INTO `kas` (`id_kas`, `id_pengurus`, `jumlah_kas`, `jenis_kas`, `deskripsi`, `tanggal`, `total_kas`) VALUES
(11, 1, 100000, 'pemasukan', '', '2025-02-23 11:45:39', 0),
(12, 1, 50000, 'pengeluaran', '', '2025-02-23 11:45:47', 0),
(13, 1, 50000, 'pemasukan', '', '2025-02-23 13:35:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `id_pengurus` int(11) DEFAULT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `lokasi_kegiatan` varchar(255) NOT NULL,
  `deskripsi_kegiatan` text NOT NULL,
  `tanggal_kegiatan` datetime DEFAULT NULL,
  `kategori_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `tanggal_kegiatan`, `kategori_kegiatan`) VALUES
(14, 1, 'Maulid', 'SMKN 46', '&#34;Acara Maulid untuk memperingati hari kelahiran Nabi Muhammad SAW. Kegiatan ini akan dihadiri oleh seluruh siswa dan guru di sekolah, dengan acara seperti ceramah, pembacaan shalawat, dan makan bersama.&#34;', '2025-02-23 12:42:42', 'Acara'),
(18, 1, 'Isra Miraj', 'csc', 'asca', '2025-02-23 14:31:37', 'Latihan');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `id_pengurus` int(11) DEFAULT NULL,
  `judul_pengumuman` varchar(255) NOT NULL,
  `isi_pengumuman` text NOT NULL,
  `tanggal_pengumuman` datetime DEFAULT NULL,
  `tanggal_kegiatan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `nama_kegiatan`, `id_pengurus`, `judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`, `tanggal_kegiatan`) VALUES
(14, 'Maulid', NULL, ' Latihan Persiapan Maulid', '&#34;Diharapkan seluruh siswa mengikuti latihan persiapan untuk acara Maulid yang akan diselenggarakan pada tanggal 25 Februari 2025. Kehadiran adalah wajib untuk semua anggota.&#34;', '2025-02-23 12:44:28', '2025-02-23 12:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE `pengurus` (
  `id_pengurus` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `waktu_gabung` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photo` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2025-05-06 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengurus`
--

INSERT INTO `pengurus` (`id_pengurus`, `username`, `email`, `password`, `jabatan`, `waktu_gabung`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`) VALUES
(1, 'pengurus', 'pengurus@gmail.com', '$2y$10$3IhKIZVZmtyD4o.t9P9vDO1q.DbZu2tywN5eIhXhgzz2dNc3pdTo.', 'DKM', '2025-02-07 10:19:14', 'http://localhost/rohismanager/uploads/files/e21i_6gxdajbsmu.gif', NULL, NULL, '2025-05-06 00:00:00', NULL, 3),
(2, 'pengurus2', 'pengurus2@gmail.com', '$2y$10$aI8zUrJgRrARUddMcNp0GuzWkFTp95IQucz09e89W5rfVefGwG1li', 'Ketua Umum', '2025-02-07 10:20:57', 'http://localhost/rohismanager/uploads/files/6a3_8pm0xtifr9k.jpeg', NULL, NULL, '2025-05-06 00:00:00', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(3, 'Pengurus'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL,
  `id_jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`, `id_jabatan`) VALUES
(342, 0, 'absensi_kegiatan', 'list', 7),
(343, 0, 'absensi_kegiatan', 'view', 7),
(344, 0, 'absensi_kegiatan', 'add', 7),
(345, 0, 'absensi_kegiatan', 'edit', 7),
(346, 0, 'absensi_kegiatan', 'editfield', 7),
(347, 0, 'absensi_kegiatan', 'delete', 7),
(348, 0, 'absensi_kegiatan', 'import_data', 7),
(349, 0, 'app_logs', 'list', 7),
(350, 0, 'app_logs', 'view', 7),
(351, 0, 'app_logs', 'add', 7),
(352, 0, 'app_logs', 'edit', 7),
(353, 0, 'app_logs', 'editfield', 7),
(354, 0, 'app_logs', 'delete', 7),
(355, 0, 'app_logs', 'import_data', 7),
(356, 0, 'dokumentasi', 'list', 7),
(357, 0, 'dokumentasi', 'view', 7),
(358, 0, 'dokumentasi', 'add', 7),
(359, 0, 'dokumentasi', 'edit', 7),
(360, 0, 'dokumentasi', 'editfield', 7),
(361, 0, 'dokumentasi', 'delete', 7),
(362, 0, 'dokumentasi', 'import_data', 7),
(363, 0, 'inventaris', 'list', 7),
(364, 0, 'inventaris', 'view', 7),
(365, 0, 'inventaris', 'add', 7),
(366, 0, 'inventaris', 'edit', 7),
(367, 0, 'inventaris', 'editfield', 7),
(368, 0, 'inventaris', 'delete', 7),
(369, 0, 'inventaris', 'import_data', 7),
(370, 0, 'jabatan', 'list', 7),
(371, 0, 'jabatan', 'view', 7),
(372, 0, 'jabatan', 'add', 7),
(373, 0, 'jabatan', 'edit', 7),
(374, 0, 'jabatan', 'editfield', 7),
(375, 0, 'jabatan', 'delete', 7),
(376, 0, 'jabatan', 'import_data', 7),
(377, 0, 'kas', 'list', 7),
(378, 0, 'kas', 'view', 7),
(379, 0, 'kas', 'add', 7),
(380, 0, 'kas', 'edit', 7),
(381, 0, 'kas', 'editfield', 7),
(382, 0, 'kas', 'delete', 7),
(383, 0, 'kas', 'import_data', 7),
(384, 0, 'kegiatan', 'list', 7),
(385, 0, 'kegiatan', 'view', 7),
(386, 0, 'kegiatan', 'add', 7),
(387, 0, 'kegiatan', 'edit', 7),
(388, 0, 'kegiatan', 'editfield', 7),
(389, 0, 'kegiatan', 'delete', 7),
(390, 0, 'kegiatan', 'import_data', 7),
(391, 0, 'pengumuman', 'list', 7),
(392, 0, 'pengumuman', 'view', 7),
(393, 0, 'pengumuman', 'add', 7),
(394, 0, 'pengumuman', 'edit', 7),
(395, 0, 'pengumuman', 'editfield', 7),
(396, 0, 'pengumuman', 'delete', 7),
(397, 0, 'pengumuman', 'import_data', 7),
(398, 0, 'pengurus', 'list', 7),
(399, 0, 'pengurus', 'view', 7),
(400, 0, 'pengurus', 'add', 7),
(401, 0, 'pengurus', 'edit', 7),
(402, 0, 'pengurus', 'editfield', 7),
(403, 0, 'pengurus', 'delete', 7),
(404, 0, 'pengurus', 'import_data', 7),
(405, 0, 'role_permissions', 'list', 7),
(406, 0, 'role_permissions', 'view', 7),
(407, 0, 'role_permissions', 'add', 7),
(408, 0, 'role_permissions', 'edit', 7),
(409, 0, 'role_permissions', 'editfield', 7),
(410, 0, 'role_permissions', 'delete', 7),
(411, 0, 'role_permissions', 'import_data', 7),
(412, 0, 'roles', 'list', 7),
(413, 0, 'roles', 'view', 7),
(414, 0, 'roles', 'add', 7),
(415, 0, 'roles', 'edit', 7),
(416, 0, 'roles', 'editfield', 7),
(417, 0, 'roles', 'delete', 7),
(418, 0, 'roles', 'import_data', 7),
(419, 0, 'user', 'list', 7),
(420, 0, 'user', 'view', 7),
(421, 0, 'user', 'add', 7),
(422, 0, 'user', 'edit', 7),
(423, 0, 'user', 'editfield', 7),
(424, 0, 'user', 'delete', 7),
(425, 0, 'user', 'import_data', 7),
(426, 0, 'user', 'userregister', 7),
(427, 0, 'user', 'accountedit', 7),
(428, 0, 'user', 'accountview', 7),
(1203, 1, 'absensi_kegiatan', 'list', 0),
(1204, 1, 'absensi_kegiatan', 'view', 0),
(1205, 1, 'absensi_kegiatan', 'add', 0),
(1206, 1, 'absensi_kegiatan', 'edit', 0),
(1207, 1, 'absensi_kegiatan', 'editfield', 0),
(1208, 1, 'absensi_kegiatan', 'delete', 0),
(1209, 1, 'absensi_kegiatan', 'import_data', 0),
(1210, 1, 'app_logs', 'list', 0),
(1211, 1, 'app_logs', 'view', 0),
(1212, 1, 'app_logs', 'add', 0),
(1213, 1, 'app_logs', 'edit', 0),
(1214, 1, 'app_logs', 'editfield', 0),
(1215, 1, 'app_logs', 'delete', 0),
(1216, 1, 'app_logs', 'import_data', 0),
(1217, 1, 'dokumentasi', 'list', 0),
(1218, 1, 'dokumentasi', 'view', 0),
(1219, 1, 'dokumentasi', 'add', 0),
(1220, 1, 'dokumentasi', 'edit', 0),
(1221, 1, 'dokumentasi', 'editfield', 0),
(1222, 1, 'dokumentasi', 'delete', 0),
(1223, 1, 'dokumentasi', 'import_data', 0),
(1224, 1, 'inventaris', 'list', 0),
(1225, 1, 'inventaris', 'view', 0),
(1226, 1, 'inventaris', 'add', 0),
(1227, 1, 'inventaris', 'edit', 0),
(1228, 1, 'inventaris', 'editfield', 0),
(1229, 1, 'inventaris', 'delete', 0),
(1230, 1, 'inventaris', 'import_data', 0),
(1231, 1, 'jabatan', 'list', 0),
(1232, 1, 'jabatan', 'view', 0),
(1233, 1, 'jabatan', 'add', 0),
(1234, 1, 'jabatan', 'edit', 0),
(1235, 1, 'jabatan', 'editfield', 0),
(1236, 1, 'jabatan', 'delete', 0),
(1237, 1, 'jabatan', 'import_data', 0),
(1238, 1, 'kas', 'list', 0),
(1239, 1, 'kas', 'view', 0),
(1240, 1, 'kas', 'add', 0),
(1241, 1, 'kas', 'edit', 0),
(1242, 1, 'kas', 'editfield', 0),
(1243, 1, 'kas', 'delete', 0),
(1244, 1, 'kas', 'import_data', 0),
(1245, 1, 'kegiatan', 'list', 0),
(1246, 1, 'kegiatan', 'view', 0),
(1247, 1, 'kegiatan', 'add', 0),
(1248, 1, 'kegiatan', 'edit', 0),
(1249, 1, 'kegiatan', 'editfield', 0),
(1250, 1, 'kegiatan', 'delete', 0),
(1251, 1, 'kegiatan', 'import_data', 0),
(1252, 1, 'pengumuman', 'list', 0),
(1253, 1, 'pengumuman', 'view', 0),
(1254, 1, 'pengumuman', 'add', 0),
(1255, 1, 'pengumuman', 'edit', 0),
(1256, 1, 'pengumuman', 'editfield', 0),
(1257, 1, 'pengumuman', 'delete', 0),
(1258, 1, 'pengumuman', 'import_data', 0),
(1259, 1, 'pengurus', 'list', 0),
(1260, 1, 'pengurus', 'view', 0),
(1261, 1, 'pengurus', 'add', 0),
(1262, 1, 'pengurus', 'edit', 0),
(1263, 1, 'pengurus', 'editfield', 0),
(1264, 1, 'pengurus', 'delete', 0),
(1265, 1, 'pengurus', 'import_data', 0),
(1266, 1, 'role_permissions', 'list', 0),
(1267, 1, 'role_permissions', 'view', 0),
(1268, 1, 'role_permissions', 'add', 0),
(1269, 1, 'role_permissions', 'edit', 0),
(1270, 1, 'role_permissions', 'editfield', 0),
(1271, 1, 'role_permissions', 'delete', 0),
(1272, 1, 'role_permissions', 'import_data', 0),
(1273, 1, 'roles', 'list', 0),
(1274, 1, 'roles', 'view', 0),
(1275, 1, 'roles', 'add', 0),
(1276, 1, 'roles', 'edit', 0),
(1277, 1, 'roles', 'editfield', 0),
(1278, 1, 'roles', 'delete', 0),
(1279, 1, 'roles', 'import_data', 0),
(1280, 1, 'user', 'list', 0),
(1281, 1, 'user', 'view', 0),
(1282, 1, 'user', 'add', 0),
(1283, 1, 'user', 'edit', 0),
(1284, 1, 'user', 'editfield', 0),
(1285, 1, 'user', 'delete', 0),
(1286, 1, 'user', 'import_data', 0),
(1287, 1, 'user', 'userregister', 0),
(1288, 1, 'user', 'accountedit', 0),
(1289, 1, 'user', 'accountview', 0),
(1290, 1, 'dokumentasi', 'list', 0),
(1291, 1, 'dokumentasi', 'view', 0),
(1292, 1, 'dokumentasi', 'add', 0),
(1293, 1, 'dokumentasi', 'edit', 0),
(1294, 1, 'dokumentasi', 'editfield', 0),
(1295, 1, 'dokumentasi', 'delete', 0),
(1296, 3, 'absensi_kegiatan', 'list', 0),
(1297, 3, 'absensi_kegiatan', 'view', 0),
(1298, 3, 'absensi_kegiatan', 'add', 0),
(1299, 3, 'absensi_kegiatan', 'edit', 0),
(1300, 3, 'absensi_kegiatan', 'editfield', 0),
(1301, 3, 'absensi_kegiatan', 'delete', 0),
(1302, 3, 'absensi_kegiatan', 'import_data', 0),
(1303, 3, 'dokumentasi', 'list', 0),
(1304, 3, 'dokumentasi', 'view', 0),
(1305, 3, 'dokumentasi', 'add', 0),
(1306, 3, 'dokumentasi', 'edit', 0),
(1307, 3, 'dokumentasi', 'editfield', 0),
(1308, 3, 'dokumentasi', 'delete', 0),
(1309, 3, 'dokumentasi', 'import_data', 0),
(1310, 3, 'inventaris', 'list', 0),
(1311, 3, 'inventaris', 'view', 0),
(1312, 3, 'inventaris', 'add', 0),
(1313, 3, 'inventaris', 'edit', 0),
(1314, 3, 'inventaris', 'editfield', 0),
(1315, 3, 'inventaris', 'delete', 0),
(1316, 3, 'inventaris', 'import_data', 0),
(1317, 3, 'jabatan', 'list', 0),
(1318, 3, 'jabatan', 'view', 0),
(1319, 3, 'jabatan', 'add', 0),
(1320, 3, 'jabatan', 'edit', 0),
(1321, 3, 'jabatan', 'editfield', 0),
(1322, 3, 'jabatan', 'delete', 0),
(1323, 3, 'jabatan', 'import_data', 0),
(1324, 3, 'kas', 'list', 0),
(1325, 3, 'kas', 'view', 0),
(1326, 3, 'kas', 'add', 0),
(1327, 3, 'kas', 'edit', 0),
(1328, 3, 'kas', 'editfield', 0),
(1329, 3, 'kas', 'delete', 0),
(1330, 3, 'kas', 'import_data', 0),
(1331, 3, 'kegiatan', 'list', 0),
(1332, 3, 'kegiatan', 'view', 0),
(1333, 3, 'kegiatan', 'add', 0),
(1334, 3, 'kegiatan', 'edit', 0),
(1335, 3, 'kegiatan', 'editfield', 0),
(1336, 3, 'kegiatan', 'delete', 0),
(1337, 3, 'kegiatan', 'import_data', 0),
(1338, 3, 'pengumuman', 'list', 0),
(1339, 3, 'pengumuman', 'view', 0),
(1340, 3, 'pengumuman', 'add', 0),
(1341, 3, 'pengumuman', 'edit', 0),
(1342, 3, 'pengumuman', 'editfield', 0),
(1343, 3, 'pengumuman', 'delete', 0),
(1344, 3, 'pengumuman', 'import_data', 0),
(1345, 3, 'pengurus', 'list', 0),
(1346, 3, 'pengurus', 'view', 0),
(1347, 3, 'pengurus', 'add', 0),
(1348, 3, 'pengurus', 'edit', 0),
(1349, 3, 'pengurus', 'editfield', 0),
(1350, 3, 'pengurus', 'delete', 0),
(1351, 3, 'pengurus', 'import_data', 0),
(1352, 3, 'dokumentasi', 'list', 0),
(1353, 3, 'dokumentasi', 'view', 0),
(1354, 3, 'dokumentasi', 'add', 0),
(1355, 3, 'dokumentasi', 'edit', 0),
(1356, 3, 'dokumentasi', 'editfield', 0),
(1357, 3, 'dokumentasi', 'delete', 0),
(1358, 2, 'absensi_kegiatan', 'list', 0),
(1359, 2, 'absensi_kegiatan', 'view', 0),
(1360, 2, 'absensi_kegiatan', 'add', 0),
(1361, 2, 'dokumentasi', 'list', 0),
(1362, 2, 'dokumentasi', 'view', 0),
(1363, 2, 'dokumentasi', 'add', 0),
(1364, 2, 'inventaris', 'list', 0),
(1365, 2, 'inventaris', 'view', 0),
(1366, 2, 'kas', 'list', 0),
(1367, 2, 'kas', 'view', 0),
(1368, 2, 'kegiatan', 'list', 0),
(1369, 2, 'kegiatan', 'view', 0),
(1370, 2, 'pengumuman', 'list', 0),
(1371, 2, 'pengumuman', 'view', 0),
(1372, 2, 'pengurus', 'list', 0),
(1373, 2, 'pengurus', 'view', 0),
(1374, 2, 'user', 'list', 0),
(1375, 2, 'user', 'view', 0),
(1376, 2, 'user', 'accountedit', 0),
(1377, 2, 'user', 'accountview', 0),
(1378, 2, 'dokumentasi', 'list', 0),
(1379, 2, 'dokumentasi', 'view', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2025-05-06 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`) VALUES
(2, 'admin', 'admins@gmail.com', '$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a', 'http://localhost/rohismanager/uploads/files/acndvg5wh82p9m0.png', 'ad5b6d7d08d0dc8464a48ce1ec028da4', NULL, '2025-05-06 00:00:00', NULL, 1),
(4, 'user', 'user@gmail.com', '$2y$10$u5.tnY0L1q45oInF.A3NuOsnDVPuJGh4wQaPxWoLIA2.V4NepCwui', 'http://localhost/rohismanager/uploads/files/b7hcafz6yq4gts0.jpg', NULL, NULL, '2025-05-06 00:00:00', NULL, 2),
(5, 'ada', 'ada@gmail.com', '$2y$10$8Ss5dnINtNCwU4/S9zUveuIp2Z6GuNNmCiL3bK1VqEvjHzdmUO8pS', 'http://localhost/rohismanager/uploads/files/8wax6g7fo1jq_sp.png', NULL, NULL, '2025-05-06 00:00:00', NULL, 3),
(6, 'anggota', 'anggota@gmail.com', '$2y$10$r2ayzXkrdBqLSNsMELJt3Od4oyxulnRpWH/OkZ/YR1XWCtA5X0rlK', 'http://localhost/rohismanager/uploads/files/gizp8t59c0h7wqa.png', NULL, NULL, '2025-05-06 00:00:00', NULL, 0),
(7, 'acel', '525252@gmail.com', '$2y$10$Hlo7Q0k.BH8D0QnCCqHkyebE6FL8motv2GZH6tEJpMEI.rP2/XRAu', 'http://localhost/rohismanager/uploads/files/e6t9ldx8p0r2_uj.png', NULL, NULL, '2025-05-06 00:00:00', NULL, 2),
(8, 'pengurus3', 'pengurus23@gmail.com', '$2y$10$UQEmiPUcYQQZBSmaqDmUtuLk7iZ7nHnB4CZMvDqvgayN.KOGeYL.i', 'http://localhost/rohismanager/uploads/files/zvw5k76xidurc2l.png', NULL, NULL, '2025-05-06 00:00:00', NULL, 3),
(9, 'dimmmm', '525252d@gmail.com', '$2y$10$PbyW1CceTFK.TLDYHEFQxu4dxcz309YnVsdnPpdETir78rkE65Pei', 'http://localhost/rohismanager/uploads/files/kbaxof1j_qd4952.png', NULL, NULL, '2025-05-06 00:00:00', NULL, 2),
(10, 'kusnadi', '141412414244@gmail.com', '$2y$10$4eabLNwu6JReeu7E0CTrSuNkpHsyI1HWdIrotVz3h9ulvkLa2Y5GS', 'http://localhost/rohismanager/uploads/files/kbr6dqvn4uw7z5m.jpg', NULL, NULL, '2025-05-06 00:00:00', NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi_kegiatan`
--
ALTER TABLE `absensi_kegiatan`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `app_logs`
--
ALTER TABLE `app_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  ADD PRIMARY KEY (`id_dokumentasi`);

--
-- Indexes for table `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`id_kas`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`id_pengurus`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi_kegiatan`
--
ALTER TABLE `absensi_kegiatan`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `app_logs`
--
ALTER TABLE `app_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  MODIFY `id_dokumentasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `inventaris`
--
ALTER TABLE `inventaris`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kas`
--
ALTER TABLE `kas`
  MODIFY `id_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `id_pengurus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1380;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
