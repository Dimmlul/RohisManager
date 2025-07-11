-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2025 at 11:19 AM
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
(71, 'Fajri', '2025-04-26 08:48:35', '', 'Hadir', NULL, 'Bakti Sosial ke Panti Asuhan'),
(72, 'user', '2025-04-26 08:48:57', '', 'Izin', NULL, 'Maulid'),
(73, 'Fajri', '2025-04-26 08:49:23', '', 'Hadir', NULL, 'Pesantren Kilat Ramadhan');

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
(349, '2025-02-23 15:13:32', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(350, '2025-02-23 16:42:13', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(351, '2025-02-23 16:46:52', 'add', 'user', '11', 'INSERT INTO user (`username`, `email`, `password`, `photo`)  VALUES (?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"keke\",\"email\":\"kee@gmail.com\",\"password\":\"$2y$10$GWcTuhUV.tMHoFxPnkVOnuU9o0Glsa.ww8PsnBQ.gYD26kvepQZs.\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/m0p7wv5dgjh8n4o.jpg\"}', 'true', NULL),
(352, '2025-02-23 16:46:52', 'userlogin', 'user', '11', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '11', '::1', 'index/register', '{\"username\":\"keke\",\"email\":\"kee@gmail.com\",\"password\":\"$2y$10$GWcTuhUV.tMHoFxPnkVOnuU9o0Glsa.ww8PsnBQ.gYD26kvepQZs.\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/m0p7wv5dgjh8n4o.jpg\"}', 'true', NULL),
(353, '2025-02-23 16:47:01', 'userlogout', 'user', NULL, NULL, '11', '::1', 'index/logout', '[]', 'true', NULL),
(354, '2025-02-23 16:47:08', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(355, '2025-02-23 16:47:31', 'view', 'user', '11', 'SELECT   id_user, username, photo FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/11', '[]', 'true', NULL),
(356, '2025-02-23 16:47:45', 'view', 'user', '11', 'SELECT   id_user, username, photo, user_role_id FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/11', '[]', 'true', NULL),
(357, '2025-02-23 16:47:54', 'view', 'user', '10', 'SELECT   id_user, username, photo, user_role_id FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/10', '[]', 'true', NULL),
(358, '2025-02-23 16:48:35', 'view', 'user', '11', 'SELECT   id_user, username, photo FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/11', '[]', 'true', NULL),
(359, '2025-02-23 17:05:28', 'delete', 'user', '10', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/10/', '[]', 'true', NULL),
(360, '2025-02-23 17:05:32', 'delete', 'user', '7', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/7/', '[]', 'true', NULL),
(361, '2025-02-23 17:21:36', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(362, '2025-02-23 17:22:11', 'add', 'user', '12', 'INSERT INTO user (`username`, `email`, `password`, `photo`)  VALUES (?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"anggota23\",\"email\":\"anggota123@gmail.com\",\"password\":\"$2y$10$odVp.Fp2.Wu6nWBlevpdk.IW.61fUrpmEDzWNrAMQpePy1SJTUgNy\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/gcnfbam39o0ux_d.png\"}', 'true', NULL),
(363, '2025-02-23 17:22:11', 'userlogin', 'user', '12', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '12', '::1', 'index/register', '{\"username\":\"anggota23\",\"email\":\"anggota123@gmail.com\",\"password\":\"$2y$10$odVp.Fp2.Wu6nWBlevpdk.IW.61fUrpmEDzWNrAMQpePy1SJTUgNy\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/gcnfbam39o0ux_d.png\"}', 'true', NULL);
INSERT INTO `app_logs` (`log_id`, `Timestamp`, `Action`, `TableName`, `RecordID`, `SqlQuery`, `UserID`, `ServerIP`, `RequestUrl`, `RequestData`, `RequestCompleted`, `RequestMsg`) VALUES
(364, '2025-02-23 17:30:18', 'userlogout', 'user', NULL, NULL, '12', '::1', 'index/logout', '[]', 'true', NULL),
(365, '2025-02-23 17:30:40', 'add', 'user', '13', 'INSERT INTO user (`username`, `email`, `password`, `photo`)  VALUES (?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"user123\",\"email\":\"user123@gmail.com\",\"password\":\"$2y$10$zYNRh5KEIEKpC7vb8jAcnOY8jk7JIUntrSPGCr7kxgsNmZFbp336a\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/dbxcq83yfz5he9n.png\"}', 'true', NULL),
(366, '2025-02-23 17:30:41', 'userlogin', 'user', '13', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '13', '::1', 'index/register', '{\"username\":\"user123\",\"email\":\"user123@gmail.com\",\"password\":\"$2y$10$zYNRh5KEIEKpC7vb8jAcnOY8jk7JIUntrSPGCr7kxgsNmZFbp336a\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/dbxcq83yfz5he9n.png\"}', 'true', NULL),
(367, '2025-02-23 17:41:13', 'userlogout', 'user', NULL, NULL, '13', '::1', 'index/logout', '[]', 'true', NULL),
(368, '2025-02-23 17:41:31', 'add', 'user', '14', 'INSERT INTO user (`username`, `email`, `password`, `user_role_id`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"admin123123\",\"email\":\"daddddd@gmail.com\",\"password\":\"$2y$10$iOs46U1QFZLAUSKvnKC1BeUa.yd8w7yWa5RtyqznROyQBn8VlIxSS\",\"user_role_id\":\"Administrator\"}', 'true', NULL),
(369, '2025-02-24 05:02:56', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(370, '2025-02-24 05:03:32', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/9k287nrci14wbqv.jpg\",\"account_status\":\"Active\"}', 'true', NULL),
(371, '2025-02-24 16:35:43', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(372, '2025-02-24 16:45:04', 'add', 'kegiatan', '19', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"Latihan #1\",\"lokasi_kegiatan\":\"SMKN46\",\"deskripsi_kegiatan\":\"latihan\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_kegiatan\":\"2025-02-24 16:44:44\"}', 'true', NULL),
(373, '2025-02-24 16:45:19', 'add', 'kegiatan', '20', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"Latihan #2\",\"lokasi_kegiatan\":\"SMKN46\",\"deskripsi_kegiatan\":\"YAA\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_kegiatan\":\"2025-02-24 16:45:05\"}', 'true', NULL),
(374, '2025-02-24 16:45:34', 'add', 'kegiatan', '21', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"LATIHAN #3\",\"lokasi_kegiatan\":\"SMKN46\",\"deskripsi_kegiatan\":\"YAA\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_kegiatan\":\"2025-02-24 16:45:21\"}', 'true', NULL),
(375, '2025-02-24 16:47:04', 'add', 'pengumuman', '15', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\"Dummy\",\"isi_pengumuman\":\"dummy\",\"nama_kegiatan\":\"Latihan #1\",\"tanggal_pengumuman\":\"2025-02-24 16:46:32\",\"tanggal_kegiatan\":\"2025-02-23 14:31:37\"}', 'true', NULL),
(376, '2025-02-24 16:47:49', 'add', 'pengumuman', '16', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\"DUMMY\",\"isi_pengumuman\":\"DUMMY DATA\",\"nama_kegiatan\":\"Latihan #2\",\"tanggal_pengumuman\":\"2025-02-24 16:47:39\",\"tanggal_kegiatan\":\"2025-02-23 14:31:37\"}', 'true', NULL),
(377, '2025-02-24 16:47:56', 'add', 'pengumuman', '17', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`)  VALUES (?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\"DUMMY DATAA\",\"isi_pengumuman\":\"ADADA\",\"nama_kegiatan\":\"LATIHAN #3\",\"tanggal_pengumuman\":\"2025-02-24 16:47:50\"}', 'true', NULL),
(378, '2025-02-24 16:48:03', 'add', 'pengumuman', '18', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\"DADADA\",\"isi_pengumuman\":\"ADDA\",\"nama_kegiatan\":\"LATIHAN #3\",\"tanggal_pengumuman\":\"2025-02-24 16:47:57\",\"tanggal_kegiatan\":\"2025-02-24 16:45:21\"}', 'true', NULL),
(379, '2025-02-24 16:50:08', 'add', 'kegiatan', '22', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"DADWD\",\"lokasi_kegiatan\":\"ADAWDA\",\"deskripsi_kegiatan\":\"ADAWD\",\"kategori_kegiatan\":\"Acara\",\"tanggal_kegiatan\":\"2025-02-24 16:50:04\"}', 'true', NULL),
(380, '2025-02-24 16:50:23', 'add', 'kegiatan', '23', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"DADWAD\",\"lokasi_kegiatan\":\"AAWDAD\",\"deskripsi_kegiatan\":\"AWDAW\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_kegiatan\":\"2025-02-24 16:50:19\"}', 'true', NULL),
(381, '2025-02-24 16:50:30', 'add', 'kegiatan', '24', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"2\",\"nama_kegiatan\":\"DAWWDAW\",\"lokasi_kegiatan\":\"DAWDAWDA\",\"deskripsi_kegiatan\":\"AWDAWDAWD\",\"kategori_kegiatan\":\"Sambutan\",\"tanggal_kegiatan\":\"2025-02-24 16:50:25\"}', 'true', NULL),
(382, '2025-02-24 16:50:36', 'add', 'kegiatan', '25', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"2\",\"nama_kegiatan\":\"DAWDAWDWA\",\"lokasi_kegiatan\":\"ADAWD\",\"deskripsi_kegiatan\":\"AWDAD\",\"kategori_kegiatan\":\"Meeting\",\"tanggal_kegiatan\":\"2025-02-24 16:50:31\"}', 'true', NULL),
(383, '2025-02-24 16:50:48', 'add', 'pengumuman', '19', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`)  VALUES (?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\"DADWADAW\",\"isi_pengumuman\":\"DWADWADAWDA\",\"tanggal_pengumuman\":\"2025-02-24 16:50:45\"}', 'true', NULL),
(384, '2025-02-24 16:54:02', 'add', 'absensi_kegiatan', '50', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"admin123123\",\"status\":\"Hadir\"}', 'true', NULL),
(385, '2025-02-24 16:59:10', 'userlogout', 'user', NULL, NULL, '10', '::1', 'index/logout', '[]', 'true', NULL),
(386, '2025-02-24 17:01:17', 'add', 'user', '15', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `user_role_id`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"Dimas\",\"email\":\"dims3838383@gmail.com\",\"password\":\"$2y$10$GkH6IirlH..7B.VLz26CPe5ZIdrADfD2pP91jWYqyI\\/LNzM\\/J.j8.\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/kv0ixecuzw8_l6t.jpg\",\"user_role_id\":\"User\"}', 'true', NULL),
(387, '2025-02-24 17:01:17', 'userlogin', 'user', '15', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '15', '::1', 'index/register', '{\"username\":\"Dimas\",\"email\":\"dims3838383@gmail.com\",\"password\":\"$2y$10$GkH6IirlH..7B.VLz26CPe5ZIdrADfD2pP91jWYqyI\\/LNzM\\/J.j8.\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/kv0ixecuzw8_l6t.jpg\",\"user_role_id\":\"User\"}', 'true', NULL),
(388, '2025-02-24 17:01:44', 'edit', 'user', '15', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/15/', '{\"username\":\"Dimas\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/kv0ixecuzw8_l6t.jpg\",\"account_status\":\"Active\"}', 'true', NULL),
(389, '2025-02-24 17:02:13', 'view', 'user', '15', 'SELECT   id_user, username, account_status FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/15', '[]', 'true', NULL),
(390, '2025-02-24 17:02:50', 'userlogout', 'user', NULL, NULL, '15', '::1', 'index/logout', '[]', 'true', NULL),
(391, '2025-02-24 17:03:10', 'add', 'user', '16', 'INSERT INTO user (`username`, `email`, `password`, `user_role_id`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"Fajri\",\"email\":\"fajri@gmail.com\",\"password\":\"$2y$10$4kC6S4MRpT7e74IGSPhDXOUhTOFGGb7pXhLONNH8ZZ0E4WnLPy\\/TO\",\"user_role_id\":\"2\"}', 'true', NULL),
(392, '2025-02-24 17:03:26', 'edit', 'user', '16', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/16/', '{\"username\":\"Fajri\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/1wldc3q2o9uzjxt.png\",\"account_status\":\"Active\"}', 'true', NULL),
(393, '2025-02-24 17:03:33', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '16', '::1', 'index/login/', '{\"username\":\"fajri\",\"password\":\"$2y$10$4kC6S4MRpT7e74IGSPhDXOUhTOFGGb7pXhLONNH8ZZ0E4WnLPy\\/TO\"}', 'true', NULL),
(394, '2025-02-24 17:05:04', 'view', 'absensi_kegiatan', '50', 'SELECT   id_absensi, nama_kegiatan, username, waktu_absen, deskripsi, status FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi = ?  LIMIT 1', '16', '::1', 'absensi_kegiatan/view/50', '[]', 'true', NULL),
(395, '2025-02-24 17:06:32', 'delete', 'user', '5', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/5/', '[]', 'true', NULL),
(396, '2025-02-24 17:06:46', 'edit', 'user', '8', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `user_role_id` = ?, `account_status` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/8/', '{\"username\":\"pengurus\",\"email\":\"pengurus23@gmail.com\",\"password\":\"$2y$10$ef5xrpFeuw0W2tUzZ.FFv.qhwgdio9or3f4Kv7oQ7.5HSrEjN4k6W\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/zvw5k76xidurc2l.png\",\"user_role_id\":\"3\",\"account_status\":\"Pending\"}', 'true', NULL),
(397, '2025-02-24 17:07:06', 'edit', 'user', '4', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `user_role_id` = ?, `account_status` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/4/', '{\"username\":\"user\",\"email\":\"user@gmail.com\",\"password\":\"$2y$10$VDRxF68Xpbxto8NmCUuU.u8LNjetDh1JaKqZjoUMo\\/BUFOmNky7Xm\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/b7hcafz6yq4gts0.jpg\",\"user_role_id\":\"2\",\"account_status\":\"Active\"}', 'true', NULL),
(398, '2025-02-24 17:07:26', 'edit', 'user', '8', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `user_role_id` = ?, `account_status` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/8/', '{\"username\":\"pengurus\",\"email\":\"pengurus23@gmail.com\",\"password\":\"$2y$10$Ai6cBb7cSERW18R0A4icqujlxLxtUpZZKnvdW8TQHKAur5De3mBb6\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/zvw5k76xidurc2l.png\",\"user_role_id\":\"3\",\"account_status\":\"Active\"}', 'true', NULL),
(399, '2025-02-24 17:07:32', 'delete', 'user', '9', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/9/', '[]', 'true', NULL),
(400, '2025-02-24 17:07:35', 'delete', 'user', '11', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/11/', '[]', 'true', NULL),
(401, '2025-02-24 17:07:37', 'delete', 'user', '12', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/12/', '[]', 'true', NULL),
(402, '2025-02-24 17:07:39', 'delete', 'user', '13', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/13/', '[]', 'true', NULL),
(403, '2025-02-24 17:07:41', 'delete', 'user', '14', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/14/', '[]', 'true', NULL),
(404, '2025-02-24 17:18:37', 'edit', 'user', '6', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `user_role_id` = ?, `account_status` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/6/', '{\"username\":\"anggota\",\"email\":\"anggota@gmail.com\",\"password\":\"$2y$10$lAjNW2WlFPDxp7jnjd\\/F4.ONJue32.QADoK4Mtg2WwnOcr\\/CYdq.i\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/gizp8t59c0h7wqa.png\",\"user_role_id\":\"2\",\"account_status\":\"Active\"}', 'true', NULL),
(405, '2025-02-24 17:21:28', 'view', 'kas', '13', 'SELECT   id_kas, id_pengurus, jumlah_kas, jenis_kas, deskripsi, tanggal, total_kas FROM kas WHERE  kas.id_kas = ?  LIMIT 1', '16', '::1', 'kas/view/13', '[]', 'true', NULL),
(406, '2025-02-25 04:11:45', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(407, '2025-03-02 17:49:04', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(408, '2025-03-11 01:54:35', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(409, '2025-03-12 04:30:19', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(410, '2025-04-15 05:56:09', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\",\"rememberme\":\"true\"}', 'true', NULL),
(411, '2025-04-16 05:29:03', 'add', 'user', '17', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$xHoFsMP4su0M36HvbzmwuuBPUCnYIwjGXnRQ5lQYxi6folWfs5sgW\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/9nfhvzi2x8grm5o.jpeg\",\"role_name\":\"User\"}', 'true', NULL),
(412, '2025-04-16 05:29:35', 'add', 'user', '18', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test1\",\"email\":\"test1@gmail.com\",\"password\":\"$2y$10$N03JQCas6mZFnosC2.j4XezXF2h0ZaDTH38QXAt7038vc\\/7HCOa.O\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/y0aib8wjgchl_d6.jpeg\",\"role_name\":\"User\"}', 'true', NULL),
(413, '2025-04-16 05:30:03', 'add', 'user', '19', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test2\",\"email\":\"test2@gmail.com\",\"password\":\"$2y$10$LyUTovqnd4ASTAuHzYLrR.ZhM8p5Sr3YYggMqaiX9gF\\/QQJgbzznK\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/7zlrev_sx4faub0.jpeg\",\"role_name\":\"User\"}', 'true', NULL),
(414, '2025-04-16 05:30:03', 'userlogin', 'user', '19', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '19', '::1', 'index/register', '{\"username\":\"test2\",\"email\":\"test2@gmail.com\",\"password\":\"$2y$10$LyUTovqnd4ASTAuHzYLrR.ZhM8p5Sr3YYggMqaiX9gF\\/QQJgbzznK\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/7zlrev_sx4faub0.jpeg\",\"role_name\":\"User\"}', 'true', NULL),
(415, '2025-04-16 05:36:18', 'userlogout', 'user', NULL, NULL, '19', '::1', 'index/logout', '[]', 'true', NULL),
(416, '2025-04-16 05:37:00', 'add', 'user', '20', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test3\",\"email\":\"test3@gmail.com\",\"password\":\"$2y$10$0DRmPVPHVo\\/soyg30UaKQuEhk59GLgUjT7w1x2pyvSz44B.gMGWiK\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/z4pysbvx053j_hf.jpeg\",\"role_name\":\"User\"}', 'true', NULL),
(417, '2025-04-16 05:37:00', 'userlogin', 'user', '20', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '20', '::1', 'index/register', '{\"username\":\"test3\",\"email\":\"test3@gmail.com\",\"password\":\"$2y$10$0DRmPVPHVo\\/soyg30UaKQuEhk59GLgUjT7w1x2pyvSz44B.gMGWiK\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/z4pysbvx053j_hf.jpeg\",\"role_name\":\"User\"}', 'true', NULL),
(418, '2025-04-16 05:38:51', 'userlogout', 'user', NULL, NULL, '20', '::1', 'index/logout', '[]', 'true', NULL),
(419, '2025-04-16 05:40:36', 'add', 'user', '21', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test4\",\"email\":\"test4@gmail.com\",\"password\":\"$2y$10$izQyWDEeFaCLTqziovALj.ejnqF9H8ho0iah2rNw9O8G3KqLyMVBm\",\"role_name\":\"User\"}', 'true', NULL),
(420, '2025-04-16 05:40:36', 'userlogin', 'user', '21', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '21', '::1', 'index/register', '{\"username\":\"test4\",\"email\":\"test4@gmail.com\",\"password\":\"$2y$10$izQyWDEeFaCLTqziovALj.ejnqF9H8ho0iah2rNw9O8G3KqLyMVBm\",\"role_name\":\"User\"}', 'true', NULL),
(421, '2025-04-16 05:41:22', 'userlogout', 'user', NULL, NULL, '21', '::1', 'index/logout', '[]', 'true', NULL),
(422, '2025-04-16 05:41:46', 'add', 'user', '22', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test5\",\"email\":\"test5@gmail.com\",\"password\":\"$2y$10$XRn9wzsPt\\/jJy47TVTAN9eOwIfIc3DLEX0jJZDnMr02z2AoCgeAQa\",\"role_name\":\"2\"}', 'true', NULL),
(423, '2025-04-16 05:41:46', 'userlogin', 'user', '22', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '22', '::1', 'index/register', '{\"username\":\"test5\",\"email\":\"test5@gmail.com\",\"password\":\"$2y$10$XRn9wzsPt\\/jJy47TVTAN9eOwIfIc3DLEX0jJZDnMr02z2AoCgeAQa\",\"role_name\":\"2\"}', 'true', NULL),
(424, '2025-04-16 05:41:52', 'userlogout', 'user', NULL, NULL, '22', '::1', 'index/logout', '[]', 'true', NULL),
(425, '2025-04-16 05:41:57', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(426, '2025-04-16 05:49:34', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(427, '2025-04-16 05:51:19', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(428, '2025-04-16 05:52:10', 'add', 'user', '23', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test6\",\"email\":\"test6@gmail.com\",\"password\":\"$2y$10$JIAqgRfZKsltewCqOYV22OjBHiUoZGb4iqMi76cN0H9imkV.sqUJe\",\"role_name\":\"User\"}', 'true', NULL),
(429, '2025-04-16 05:52:10', 'userlogin', 'user', '23', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '23', '::1', 'index/register', '{\"username\":\"test6\",\"email\":\"test6@gmail.com\",\"password\":\"$2y$10$JIAqgRfZKsltewCqOYV22OjBHiUoZGb4iqMi76cN0H9imkV.sqUJe\",\"role_name\":\"User\"}', 'true', NULL),
(430, '2025-04-16 05:54:09', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(431, '2025-04-16 05:58:12', 'add', 'user', '24', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"admins\",\"email\":\"adminssss@gmail.com\",\"password\":\"$2y$10$9LOsM4emK24AjqQPaQtDKOnfy8meGDkFdodTTuev\\/LIZ6ecU5FD4O\",\"role_name\":\"Administrator\"}', 'true', NULL),
(432, '2025-04-16 05:58:12', 'userlogin', 'user', '24', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '24', '::1', 'index/register', '{\"username\":\"admins\",\"email\":\"adminssss@gmail.com\",\"password\":\"$2y$10$9LOsM4emK24AjqQPaQtDKOnfy8meGDkFdodTTuev\\/LIZ6ecU5FD4O\",\"role_name\":\"Administrator\"}', 'true', NULL),
(433, '2025-04-16 05:59:30', 'userlogout', 'user', NULL, NULL, '24', '::1', 'index/logout', '[]', 'true', NULL),
(434, '2025-04-16 06:01:27', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(435, '2025-04-16 06:01:39', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role_name` = ?, `user_role_id` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/9k287nrci14wbqv.jpg\",\"account_status\":\"Active\",\"role_name\":\"Administrator\",\"user_role_id\":\"0\"}', 'true', NULL),
(436, '2025-04-16 06:02:09', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role_name` = ?, `user_role_id` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/9k287nrci14wbqv.jpg\",\"account_status\":\"Active\",\"role_name\":\"Administrator\",\"user_role_id\":\"3\"}', 'true', NULL),
(437, '2025-04-16 06:02:14', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(438, '2025-04-16 06:05:11', 'add', 'user', '25', 'INSERT INTO user (`username`, `email`, `password`, `user_role_id`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test65\",\"email\":\"tes1231t@gmail.com\",\"password\":\"$2y$10$FnHV86Pj2rjp2w8xLxLrgev7kS8Ueu1fvM0LfUDP1.30qB0Gx4xyO\",\"user_role_id\":\"2\"}', 'true', NULL),
(439, '2025-04-16 06:05:11', 'userlogin', 'user', '25', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '25', '::1', 'index/register', '{\"username\":\"test65\",\"email\":\"tes1231t@gmail.com\",\"password\":\"$2y$10$FnHV86Pj2rjp2w8xLxLrgev7kS8Ueu1fvM0LfUDP1.30qB0Gx4xyO\",\"user_role_id\":\"2\"}', 'true', NULL),
(440, '2025-04-16 06:05:30', 'userlogout', 'user', NULL, NULL, '25', '::1', 'index/logout', '[]', 'true', NULL),
(441, '2025-04-16 06:05:35', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(442, '2025-04-16 06:06:30', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role_name` = ?, `user_role_id` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/7s4kczwx1df_au6.jpg\",\"account_status\":\"Active\",\"role_name\":\"Administrator\",\"user_role_id\":\"3\"}', 'true', NULL),
(443, '2025-04-16 06:08:56', 'edit', 'kas', '13', 'UPDATE kas SET `nama_pengurus` = ?, `jumlah_kas` = ?, `jenis_kas` = ?, `deskripsi` = ? WHERE  kas.id_kas = ? ', '2', '::1', 'kas/edit/13/', '{\"nama_pengurus\":\"pengurus\",\"jumlah_kas\":\"50000\",\"jenis_kas\":\"pemasukan\",\"deskripsi\":\"\"}', 'true', NULL),
(444, '2025-04-16 06:09:04', 'add', 'kas', '14', 'INSERT INTO kas (`nama_pengurus`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '2', '::1', 'kas/add', '{\"nama_pengurus\":\"pengurus\",\"jumlah_kas\":\"32523523\",\"jenis_kas\":\"pengeluaran\"}', 'true', NULL),
(445, '2025-04-16 06:10:27', 'edit', 'absensi_kegiatan', '50', 'UPDATE absensi_kegiatan SET `nama_kegiatan` = ?, `username` = ?, `status` = ?, `deskripsi` = ? WHERE  absensi_kegiatan.id_absensi = ? ', '2', '::1', 'absensi_kegiatan/edit/50/', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"anggota\",\"status\":\"Hadir\",\"deskripsi\":\"\"}', 'true', NULL),
(446, '2025-04-16 06:10:36', 'delete', 'kegiatan', '25', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/25/', '[]', 'true', NULL),
(447, '2025-04-16 06:10:37', 'delete', 'kegiatan', '24', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/24/', '[]', 'true', NULL),
(448, '2025-04-16 06:10:39', 'delete', 'kegiatan', '23', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/23/', '[]', 'true', NULL),
(449, '2025-04-16 06:10:41', 'delete', 'kegiatan', '22', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/22/', '[]', 'true', NULL),
(450, '2025-04-16 06:16:51', 'delete', 'absensi_kegiatan', '50', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/50/', '[]', 'true', NULL),
(451, '2025-04-16 06:16:53', 'delete', 'absensi_kegiatan', '49', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/49/', '[]', 'true', NULL),
(452, '2025-04-16 06:17:01', 'add', 'absensi_kegiatan', '51', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Latihan #1\",\"username\":\"Dimas\",\"status\":\"Izin\"}', 'true', NULL),
(453, '2025-04-16 06:18:06', 'edit', 'pengurus', '2', 'UPDATE pengurus SET `username` = ?, `email` = ?, `password` = ?, `jabatan` = ?, `photo` = ? WHERE  pengurus.id_pengurus = ? ', '2', '::1', 'pengurus/edit/2/', '{\"username\":\"Fajri\",\"email\":\"pengurus2@gmail.com\",\"password\":\"$2y$10$z0g6ahcrav5YFDOjo2hNVefKZAKlBmNNwLdnwXzlhcoy\\/F\\/e03Pte\",\"jabatan\":\"Ketua Umum\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/6a3_8pm0xtifr9k.jpeg\"}', 'true', NULL),
(454, '2025-04-16 06:18:26', 'edit', 'pengurus', '1', 'UPDATE pengurus SET `username` = ?, `email` = ?, `password` = ?, `jabatan` = ?, `photo` = ? WHERE  pengurus.id_pengurus = ? ', '2', '::1', 'pengurus/edit/1/', '{\"username\":\"Elang\",\"email\":\"pengurus@gmail.com\",\"password\":\"$2y$10$wT.0MbHHzZhM9e4P1Bx7V.h6q4RuoF2aBsBNKFK8H2A\\/.dM7iaMym\",\"jabatan\":\"Ketua Umum\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/e21i_6gxdajbsmu.gif\"}', 'true', NULL),
(455, '2025-04-16 06:18:40', 'edit', 'pengurus', '2', 'UPDATE pengurus SET `username` = ?, `email` = ?, `password` = ?, `jabatan` = ?, `photo` = ? WHERE  pengurus.id_pengurus = ? ', '2', '::1', 'pengurus/edit/2/', '{\"username\":\"Fajri\",\"email\":\"pengurus2@gmail.com\",\"password\":\"$2y$10$xWx.7V9tNKdKbIXOYmbTneEYuqetW4EqPY3TbzBvr5TRET8qb3XxK\",\"jabatan\":\"DKM\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/6a3_8pm0xtifr9k.jpeg\"}', 'true', NULL),
(456, '2025-04-16 06:18:44', 'view', 'user', '25', 'SELECT   id_user, username, account_status, role_name, user_role_id FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/25', '[]', 'true', NULL),
(457, '2025-04-16 06:19:05', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(458, '2025-04-16 06:19:19', 'view', 'user', '25', 'SELECT   id_user, username, account_status, role_name, user_role_id FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/25', '[]', 'true', NULL),
(459, '2025-04-16 06:19:33', 'view', 'user', '25', 'SELECT   id_user, username, account_status, role_name, user_role_id FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/25', '[]', 'true', NULL),
(460, '2025-04-16 06:20:29', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role_name` = ?, `user_role_id` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/7s4kczwx1df_au6.jpg\",\"account_status\":\"Active\",\"role_name\":\"Pengurus\",\"user_role_id\":\"3\"}', 'true', NULL),
(461, '2025-04-16 06:22:16', 'add', 'dokumentasi', '10', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"foto\":\"uploads\\/files\\/WhatsApp Image 2025-04-16 at 06.48.46_6c05d803.jpg,uploads\\/files\\/WhatsApp Image 2025-04-16 at 06.48.45_365c9591.jpg,uploads\\/files\\/WhatsApp Image 2025-04-16 at 06.48.45_836c07af.jpg,uploads\\/files\\/WhatsApp Image 2025-04-16 at 06.48.45_688660f6.jpg\",\"deskripsi_dokumen\":\"a\",\"waktu_upload\":\"2025-04-16 06:22:06\"}', 'true', NULL),
(462, '2025-04-16 06:24:28', 'add', 'kegiatan', '26', 'INSERT INTO kegiatan (`id_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"yey\",\"lokasi_kegiatan\":\"yey\",\"deskripsi_kegiatan\":\"yeye\",\"kategori_kegiatan\":\"Meeting\",\"tanggal_kegiatan\":\"2025-04-16 06:24:21\"}', 'true', NULL),
(463, '2025-04-16 06:25:58', 'add', 'pengumuman', '20', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`)  VALUES (?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\"twt\",\"isi_pengumuman\":\"twtw\",\"nama_kegiatan\":\"yey\",\"tanggal_pengumuman\":\"2025-04-16 06:25:53\"}', 'true', NULL),
(464, '2025-04-16 06:26:16', 'edit', 'pengumuman', '20', 'UPDATE pengumuman SET `judul_pengumuman` = ?, `isi_pengumuman` = ?, `nama_kegiatan` = ?, `tanggal_pengumuman` = ?, `tanggal_kegiatan` = ? WHERE  pengumuman.id_pengumuman = ? ', '2', '::1', 'pengumuman/edit/20/', '{\"judul_pengumuman\":\"twt\",\"isi_pengumuman\":\"twtw\",\"nama_kegiatan\":\"yey\",\"tanggal_pengumuman\":\"2025-04-16 06:25:53\",\"tanggal_kegiatan\":\"2025-02-23 12:42:42\"}', 'true', NULL),
(465, '2025-04-16 06:26:27', 'delete', 'kas', '11', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/11/', '[]', 'true', NULL),
(466, '2025-04-16 06:26:29', 'delete', 'kas', '12', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/12/', '[]', 'true', NULL),
(467, '2025-04-16 06:26:32', 'delete', 'kas', '14', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/14/', '[]', 'true', NULL),
(468, '2025-04-16 06:26:44', 'edit', 'kas', '13', 'UPDATE kas SET `nama_pengurus` = ?, `jumlah_kas` = ?, `jenis_kas` = ?, `deskripsi` = ? WHERE  kas.id_kas = ? ', '2', '::1', 'kas/edit/13/', '{\"nama_pengurus\":\"Elang\",\"jumlah_kas\":\"50000\",\"jenis_kas\":\"pengeluaran\",\"deskripsi\":\"beli \"}', 'true', NULL),
(469, '2025-04-16 06:27:04', 'add', 'kas', '15', 'INSERT INTO kas (`nama_pengurus`, `jumlah_kas`, `jenis_kas`, `deskripsi`)  VALUES (?, ?, ?, ?)', '2', '::1', 'kas/add', '{\"nama_pengurus\":\"Elang\",\"jumlah_kas\":\"400000\",\"jenis_kas\":\"pemasukan\",\"deskripsi\":\"kas\"}', 'true', NULL),
(470, '2025-04-16 07:00:42', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(471, '2025-04-16 07:03:53', 'add', 'user', '26', 'INSERT INTO user (`username`, `email`, `password`, `user_role_id`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"users\",\"email\":\"user2@gmail.com\",\"password\":\"$2y$10$SpWmPohzbXJJ1VXqyFujC.7\\/p4P5sjUyBEK\\/Cf89onT6thi7gmNKe\",\"user_role_id\":\"2\"}', 'true', NULL),
(472, '2025-04-16 07:03:53', 'userlogin', 'user', '26', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '26', '::1', 'index/register', '{\"username\":\"users\",\"email\":\"user2@gmail.com\",\"password\":\"$2y$10$SpWmPohzbXJJ1VXqyFujC.7\\/p4P5sjUyBEK\\/Cf89onT6thi7gmNKe\",\"user_role_id\":\"2\"}', 'true', NULL),
(473, '2025-04-16 10:24:04', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(474, '2025-04-16 10:37:39', 'add', 'inventaris', '22', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Speaker\",\"jumlah_barang\":\"0\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-04-16 10:37:28\"}', 'true', NULL),
(475, '2025-04-16 15:58:12', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$GNCwmdc9mj7JuZIyAY2voOp0fKuFfyJRYhsqxRvCnBf7yIukcek3a\"}', 'true', NULL),
(476, '2025-04-16 15:58:23', 'view', 'user', '26', 'SELECT   id_user, username, photo, account_status, role_name, user_role_id FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/26', '[]', 'true', NULL),
(477, '2025-04-16 16:01:22', 'view', 'user', '26', 'SELECT   id_user, username, photo, account_status, role_name FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/26', '[]', 'true', NULL),
(478, '2025-04-16 16:01:53', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role_name` = ?, `user_role_id` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"email\":\"admins@gmail.com\",\"password\":\"$2y$10$GgeqYk8acs9hhkNrlLjBbePqJxCIfK3a0ifLaGxNSOCspJ0a\\/j6uG\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/7s4kczwx1df_au6.jpg\",\"account_status\":\"Active\",\"role_name\":\"Administrator\",\"user_role_id\":\"1\"}', 'true', NULL),
(479, '2025-04-16 16:01:57', 'delete', 'user', '26', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/26/', '[]', 'true', NULL),
(480, '2025-04-16 16:01:58', 'delete', 'user', '25', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/25/', '[]', 'true', NULL),
(481, '2025-04-16 16:02:00', 'delete', 'user', '24', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/24/', '[]', 'true', NULL),
(482, '2025-04-16 16:02:01', 'delete', 'user', '23', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/23/', '[]', 'true', NULL),
(483, '2025-04-16 16:02:03', 'delete', 'user', '22', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/22/', '[]', 'true', NULL),
(484, '2025-04-16 16:02:05', 'delete', 'user', '21', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/21/', '[]', 'true', NULL),
(485, '2025-04-16 16:02:06', 'delete', 'user', '20', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/20/', '[]', 'true', NULL),
(486, '2025-04-16 16:02:08', 'delete', 'user', '19', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/19/', '[]', 'true', NULL),
(487, '2025-04-16 16:02:10', 'delete', 'user', '18', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/18/', '[]', 'true', NULL),
(488, '2025-04-16 16:02:13', 'delete', 'user', '17', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/17/', '[]', 'true', NULL),
(489, '2025-04-16 16:03:44', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role_name` = ?, `user_role_id` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"email\":\"admins@gmail.com\",\"password\":\"$2y$10$MTUd5.AWEw7IMOfJfZMLquBfliG1zBQDkoFaq4X7\\/9vOAgTOoQCem\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/7s4kczwx1df_au6.jpg\",\"account_status\":\"Active\",\"role_name\":\"Administrator\",\"user_role_id\":\"1\"}', 'true', NULL),
(490, '2025-04-16 16:04:23', 'edit', 'user', '4', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role_name` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/4/', '{\"username\":\"user\",\"email\":\"user@gmail.com\",\"password\":\"$2y$10$80eCPKb6Q.YeBjaXjAHx3u08ZnEfAmXfP9Azp\\/4oG0NjuSzDzKIcK\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/b7hcafz6yq4gts0.jpg\",\"account_status\":\"Active\",\"role_name\":\"User\"}', 'true', NULL),
(491, '2025-04-16 16:04:42', 'edit', 'user', '16', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role_name` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/16/', '{\"username\":\"Fajri\",\"email\":\"fajri@gmail.com\",\"password\":\"$2y$10$6BAnEkdfzFqQvwCYYe3INupxm5..PDuE3YG3xJKTKw8B519Wituxa\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/1wldc3q2o9uzjxt.png\",\"account_status\":\"Active\",\"role_name\":\"Pengurus\"}', 'true', NULL),
(492, '2025-04-16 16:05:55', 'delete', 'kegiatan', '26', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/26/', '[]', 'true', NULL),
(493, '2025-04-16 16:17:04', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$MTUd5.AWEw7IMOfJfZMLquBfliG1zBQDkoFaq4X7\\/9vOAgTOoQCem\"}', 'true', NULL),
(494, '2025-04-16 16:18:27', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role_name` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"email\":\"admins@gmail.com\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/7s4kczwx1df_au6.jpg\",\"account_status\":\"Active\",\"role_name\":\"Administrator\"}', 'true', NULL),
(495, '2025-04-16 16:19:09', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(496, '2025-04-16 16:19:26', 'add', 'user', '27', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"admin3\",\"email\":\"admin3@gmail.com\",\"password\":\"$2y$10$5V2CdvKOa9tPAXkVSEk.W.j2kqnXavwSrXc8ozlEYzozM1Ic3v7de\",\"role_name\":\"1\"}', 'true', NULL),
(497, '2025-04-16 16:19:26', 'userlogin', 'user', '27', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '27', '::1', 'index/register', '{\"username\":\"admin3\",\"email\":\"admin3@gmail.com\",\"password\":\"$2y$10$5V2CdvKOa9tPAXkVSEk.W.j2kqnXavwSrXc8ozlEYzozM1Ic3v7de\",\"role_name\":\"1\"}', 'true', NULL),
(498, '2025-04-16 16:20:00', 'userlogout', 'user', NULL, NULL, '27', '::1', 'index/logout', '[]', 'true', NULL),
(499, '2025-04-16 16:20:05', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(500, '2025-04-16 16:20:41', 'delete', 'user', '27', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/27/', '[]', 'true', NULL),
(501, '2025-04-16 16:27:12', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(502, '2025-04-16 16:33:11', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(503, '2025-04-16 16:33:21', 'add', 'absensi_kegiatan', '52', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Latihan #1\",\"username\":\"admin\",\"status\":\"Hadir\"}', 'true', NULL),
(504, '2025-04-16 16:34:17', 'edit', 'inventaris', '22', 'UPDATE inventaris SET `id_pengurus` = ?, `nama_barang` = ?, `jumlah_barang` = ?, `status_barang` = ?, `tanggal_masuk` = ? WHERE  inventaris.id_barang = ? ', '2', '::1', 'inventaris/edit/22/', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Speaker\",\"jumlah_barang\":\"8\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-04-16 10:37:28\"}', 'true', NULL),
(505, '2025-04-16 16:44:26', 'add', 'absensi_kegiatan', '53', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Latihan #1\",\"username\":\"admin\",\"status\":\"Dispen\"}', 'true', NULL),
(506, '2025-04-16 16:44:52', 'delete', 'absensi_kegiatan', '53', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? )  AND absensi_kegiatan.username = ? ', '2', '::1', 'absensi_kegiatan/delete/53/', '[]', 'true', NULL),
(507, '2025-04-16 16:48:27', 'edit', 'pengurus', '1', 'UPDATE pengurus SET `username` = ?, `email` = ?, `password` = ?, `jabatan` = ?, `photo` = ? WHERE  pengurus.id_pengurus = ? ', '2', '::1', 'pengurus/edit/1/', '{\"username\":\"Elang\",\"email\":\"pengurus@gmail.com\",\"password\":\"$2y$10$mZcnzBHuVdXGPFHD\\/Ig\\/ZuAnpBzjuUwRnJJW0A4zaEnwTeWnyR.Pm\",\"jabatan\":\"Ketua Umum\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/e21i_6gxdajbsmu.gif\"}', 'true', NULL),
(508, '2025-04-16 16:48:29', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(509, '2025-04-16 16:48:52', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '16', '::1', 'index/login/', '{\"username\":\"fajri\",\"password\":\"$2y$10$6BAnEkdfzFqQvwCYYe3INupxm5..PDuE3YG3xJKTKw8B519Wituxa\"}', 'true', NULL),
(510, '2025-04-16 16:49:59', 'add', 'kas', '16', 'INSERT INTO kas (`nama_pengurus`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '16', '::1', 'kas/add', '{\"nama_pengurus\":\"Fajri\",\"jumlah_kas\":\"23423\",\"jenis_kas\":\"pengeluaran\"}', 'true', NULL),
(511, '2025-04-16 16:51:41', 'userlogout', 'user', NULL, NULL, '16', '::1', 'index/logout', '[]', 'true', NULL),
(512, '2025-04-16 16:52:35', 'add', 'user', '28', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"Husni\",\"email\":\"husni@gmail.com\",\"password\":\"$2y$10$N3lG\\/LoqotGDPTZ3sZrQIuCIfKJ9kl33t3XDC5sREpCBBgvF\\/EVBG\",\"role_name\":\"User\"}', 'true', NULL),
(513, '2025-04-16 16:52:35', 'userlogin', 'user', '28', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '28', '::1', 'index/register', '{\"username\":\"Husni\",\"email\":\"husni@gmail.com\",\"password\":\"$2y$10$N3lG\\/LoqotGDPTZ3sZrQIuCIfKJ9kl33t3XDC5sREpCBBgvF\\/EVBG\",\"role_name\":\"User\"}', 'true', NULL),
(514, '2025-04-16 16:55:22', 'userlogout', 'user', NULL, NULL, '28', '::1', 'index/logout', '[]', 'true', NULL),
(515, '2025-04-16 16:55:45', 'add', 'user', '29', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"ayam\",\"email\":\"ayam@gmail.com\",\"password\":\"$2y$10$TclehMH65NzATqka2Eqmw.7YZgVUjwlqpbTDTgMA0jKmQm1EiQCh.\",\"role_name\":\"User\"}', 'true', NULL),
(516, '2025-04-16 16:55:45', 'userlogin', 'user', '29', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '29', '::1', 'index/register', '{\"username\":\"ayam\",\"email\":\"ayam@gmail.com\",\"password\":\"$2y$10$TclehMH65NzATqka2Eqmw.7YZgVUjwlqpbTDTgMA0jKmQm1EiQCh.\",\"role_name\":\"User\"}', 'true', NULL),
(517, '2025-04-16 16:56:45', 'userlogout', 'user', NULL, NULL, '29', '::1', 'index/logout', '[]', 'true', NULL),
(518, '2025-04-16 16:57:06', 'add', 'user', '30', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"gdgdg\",\"email\":\"sgsese@hgmail.com\",\"password\":\"$2y$10$n1FjDmiIS\\/zSEVklSo87fO7y18PeIZqFpkSUp1IUj\\/6Ws2xhJsMKK\",\"role_name\":\"User\"}', 'true', NULL),
(519, '2025-04-16 16:57:07', 'userlogin', 'user', '30', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '30', '::1', 'index/register', '{\"username\":\"gdgdg\",\"email\":\"sgsese@hgmail.com\",\"password\":\"$2y$10$n1FjDmiIS\\/zSEVklSo87fO7y18PeIZqFpkSUp1IUj\\/6Ws2xhJsMKK\",\"role_name\":\"User\"}', 'true', NULL),
(520, '2025-04-16 16:58:18', 'userlogout', 'user', NULL, NULL, '30', '::1', 'index/logout', '[]', 'true', NULL),
(521, '2025-04-16 16:59:23', 'add', 'user', '31', 'INSERT INTO user (`username`, `email`, `password`, `user_role_id`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"maul\",\"email\":\"maul123@gmail.com\",\"password\":\"$2y$10$5fy.mMmAmxoaEj6xWSGsPetfw15xmB.NMjR\\/qjL393cEyTVfpkdx2\",\"user_role_id\":\"User\"}', 'true', NULL),
(522, '2025-04-16 16:59:23', 'userlogin', 'user', '31', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '31', '::1', 'index/register', '{\"username\":\"maul\",\"email\":\"maul123@gmail.com\",\"password\":\"$2y$10$5fy.mMmAmxoaEj6xWSGsPetfw15xmB.NMjR\\/qjL393cEyTVfpkdx2\",\"user_role_id\":\"User\"}', 'true', NULL),
(523, '2025-04-16 17:01:35', 'userlogout', 'user', NULL, NULL, '31', '::1', 'index/logout', '[]', 'true', NULL),
(524, '2025-04-16 17:02:21', 'add', 'user', '32', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"testet23\",\"email\":\"terterter@gmail.com\",\"password\":\"$2y$10$E99WQzFmJJZCa\\/gEyWLyCeNBOp4Pnm.uv0U29s6gq4ihJiH2dpVvK\",\"role_name\":\"User\"}', 'true', NULL),
(525, '2025-04-16 17:02:21', 'userlogin', 'user', '32', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '32', '::1', 'index/register', '{\"username\":\"testet23\",\"email\":\"terterter@gmail.com\",\"password\":\"$2y$10$E99WQzFmJJZCa\\/gEyWLyCeNBOp4Pnm.uv0U29s6gq4ihJiH2dpVvK\",\"role_name\":\"User\"}', 'true', NULL),
(526, '2025-04-16 17:02:43', 'userlogout', 'user', NULL, NULL, '32', '::1', 'index/logout', '[]', 'true', NULL),
(527, '2025-04-16 17:03:00', 'add', 'user', '33', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"assssss\",\"email\":\"asssss@gmail.com\",\"password\":\"$2y$10$SEpKOPdzQgMGaJ5SH2JZfuQ2gOvhMMi75vEWBrxBk7v.y3.YIT2AO\",\"role_name\":\"User\"}', 'true', NULL),
(528, '2025-04-16 17:03:01', 'userlogin', 'user', '33', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '33', '::1', 'index/register', '{\"username\":\"assssss\",\"email\":\"asssss@gmail.com\",\"password\":\"$2y$10$SEpKOPdzQgMGaJ5SH2JZfuQ2gOvhMMi75vEWBrxBk7v.y3.YIT2AO\",\"role_name\":\"User\"}', 'true', NULL),
(529, '2025-04-16 17:05:22', 'userlogout', 'user', NULL, NULL, '33', '::1', 'index/logout', '[]', 'true', NULL),
(530, '2025-04-16 17:05:38', 'add', 'user', '34', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"sgesgsegseg\",\"email\":\"sgsegsgses@gmail.com\",\"password\":\"$2y$10$.KsFDOnvIbV06WIvARtd9.mFhqGdRWNq0Fqb2u9g4asaywHe.7L6C\",\"role_name\":\"User\"}', 'true', NULL),
(531, '2025-04-16 17:05:38', 'userlogin', 'user', '34', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '34', '::1', 'index/register', '{\"username\":\"sgesgsegseg\",\"email\":\"sgsegsgses@gmail.com\",\"password\":\"$2y$10$.KsFDOnvIbV06WIvARtd9.mFhqGdRWNq0Fqb2u9g4asaywHe.7L6C\",\"role_name\":\"User\"}', 'true', NULL);
INSERT INTO `app_logs` (`log_id`, `Timestamp`, `Action`, `TableName`, `RecordID`, `SqlQuery`, `UserID`, `ServerIP`, `RequestUrl`, `RequestData`, `RequestCompleted`, `RequestMsg`) VALUES
(532, '2025-04-16 17:06:57', 'userlogout', 'user', NULL, NULL, '34', '::1', 'index/logout', '[]', 'true', NULL),
(533, '2025-04-16 17:07:13', 'add', 'user', '35', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"aaaa\",\"email\":\"aaaa@gmail.com\",\"password\":\"$2y$10$ycnFaBhtEuFufiUWxohmO.Z1VmsmbkCbzwKbsWhKkSCJL0e9LQK.a\",\"role_name\":\"2\"}', 'true', NULL),
(534, '2025-04-16 17:07:13', 'userlogin', 'user', '35', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '35', '::1', 'index/register', '{\"username\":\"aaaa\",\"email\":\"aaaa@gmail.com\",\"password\":\"$2y$10$ycnFaBhtEuFufiUWxohmO.Z1VmsmbkCbzwKbsWhKkSCJL0e9LQK.a\",\"role_name\":\"2\"}', 'true', NULL),
(535, '2025-04-16 17:08:14', 'add', 'absensi_kegiatan', '54', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '35', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Isra Miraj\",\"username\":\"aaaa\",\"status\":\"Hadir\"}', 'true', NULL),
(536, '2025-04-16 17:08:19', 'add', 'absensi_kegiatan', '55', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '35', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"LATIHAN #3\",\"username\":\"aaaa\",\"status\":\"Sakit\"}', 'true', NULL),
(537, '2025-04-16 17:28:32', 'view', 'dokumentasi', '9', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '35', '::1', 'dokumentasi/view/9', '[]', 'true', NULL),
(538, '2025-04-16 17:28:34', 'view', 'dokumentasi', '9', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '35', '::1', 'dokumentasi/view/9', '[]', 'true', NULL),
(539, '2025-04-16 17:28:35', 'view', 'dokumentasi', '9', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '35', '::1', 'dokumentasi/view/9', '[]', 'true', NULL),
(540, '2025-04-16 17:28:39', 'view', 'dokumentasi', '10', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '35', '::1', 'dokumentasi/view/10', '[]', 'true', NULL),
(541, '2025-04-16 17:31:15', 'view', 'dokumentasi', '10', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '35', '::1', 'dokumentasi/view/10', '[]', 'true', NULL),
(542, '2025-04-16 17:32:18', 'view', 'dokumentasi', '10', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '35', '::1', 'dokumentasi/view/10', '[]', 'true', NULL),
(543, '2025-04-16 17:32:21', 'view', 'dokumentasi', '10', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '35', '::1', 'dokumentasi/view/10', '[]', 'true', NULL),
(544, '2025-04-16 17:32:56', 'view', 'dokumentasi', '10', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '35', '::1', 'dokumentasi/view/10', '[]', 'true', NULL),
(545, '2025-04-16 17:33:13', 'view', 'dokumentasi', '10', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '35', '::1', 'dokumentasi/view/10', '[]', 'true', NULL),
(546, '2025-04-16 17:36:41', 'userlogout', 'user', NULL, NULL, '35', '::1', 'index/logout', '[]', 'true', NULL),
(547, '2025-04-16 17:37:55', 'add', 'user', '36', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"teststest\",\"email\":\"testset@gmail.com\",\"password\":\"$2y$10$ys6fJ1dwBT5t5tWNWaY4zuQLiHJi83v4vj\\/t3gEH3KcFMpoRKDLzO\",\"role_name\":\"User\"}', 'true', NULL),
(548, '2025-04-16 17:37:55', 'userlogin', 'user', '36', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '36', '::1', 'index/register', '{\"username\":\"teststest\",\"email\":\"testset@gmail.com\",\"password\":\"$2y$10$ys6fJ1dwBT5t5tWNWaY4zuQLiHJi83v4vj\\/t3gEH3KcFMpoRKDLzO\",\"role_name\":\"User\"}', 'true', NULL),
(549, '2025-04-16 17:38:29', 'userlogout', 'user', NULL, NULL, '36', '::1', 'index/logout', '[]', 'true', NULL),
(550, '2025-04-16 17:43:15', 'add', 'user', '37', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"kukuku\",\"email\":\"kukuku@gmail.com\",\"password\":\"$2y$10$\\/Ibo6s173M8DHg80dm04b.8QLULEY3AlalWx\\/nUi1L4\\/fSkhMq44m\",\"role_name\":\"User\"}', 'true', NULL),
(551, '2025-04-16 17:43:15', 'userlogin', 'user', '37', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '37', '::1', 'index/register', '{\"username\":\"kukuku\",\"email\":\"kukuku@gmail.com\",\"password\":\"$2y$10$\\/Ibo6s173M8DHg80dm04b.8QLULEY3AlalWx\\/nUi1L4\\/fSkhMq44m\",\"role_name\":\"User\"}', 'true', NULL),
(552, '2025-04-16 17:43:46', 'userlogout', 'user', NULL, NULL, '37', '::1', 'index/logout', '[]', 'true', NULL),
(553, '2025-04-16 17:44:01', 'add', 'user', '38', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"userss\",\"email\":\"userss@gmail.com\",\"password\":\"$2y$10$UfvFwQErcbXEppoViCOjSOGpNYb2czk54LxnRiJKd1Cx0RFcehFYa\",\"role_name\":\"User\"}', 'true', NULL),
(554, '2025-04-16 17:44:01', 'userlogin', 'user', '38', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '38', '::1', 'index/register', '{\"username\":\"userss\",\"email\":\"userss@gmail.com\",\"password\":\"$2y$10$UfvFwQErcbXEppoViCOjSOGpNYb2czk54LxnRiJKd1Cx0RFcehFYa\",\"role_name\":\"User\"}', 'true', NULL),
(555, '2025-04-16 17:44:27', 'userlogout', 'user', NULL, NULL, '38', '::1', 'index/logout', '[]', 'true', NULL),
(556, '2025-04-16 17:44:33', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '16', '::1', 'index/login/', '{\"username\":\"fajri\",\"password\":\"$2y$10$6BAnEkdfzFqQvwCYYe3INupxm5..PDuE3YG3xJKTKw8B519Wituxa\"}', 'true', NULL),
(557, '2025-04-16 17:48:14', 'userlogout', 'user', NULL, NULL, '16', '::1', 'index/logout', '[]', 'true', NULL),
(558, '2025-04-16 17:48:26', 'add', 'user', '39', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"etestests\",\"email\":\"tsetsetsts@gmail.com\",\"password\":\"$2y$10$SkLtHr0XFobDRQQN.QeM7.q8GTSWZ31I8ttLQhBadBJvX6AZjn6Vq\",\"role_name\":\"User\"}', 'true', NULL),
(559, '2025-04-16 17:48:26', 'userlogin', 'user', '39', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '39', '::1', 'index/register', '{\"username\":\"etestests\",\"email\":\"tsetsetsts@gmail.com\",\"password\":\"$2y$10$SkLtHr0XFobDRQQN.QeM7.q8GTSWZ31I8ttLQhBadBJvX6AZjn6Vq\",\"role_name\":\"User\"}', 'true', NULL),
(560, '2025-04-16 17:51:21', 'add', 'pengumuman', '21', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?)', '39', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\"fdgf\",\"isi_pengumuman\":\"fjgjfjf\",\"nama_kegiatan\":\"Isra Miraj\",\"tanggal_pengumuman\":\"2025-03-31 17:51:00\",\"tanggal_kegiatan\":\"2025-02-23 14:31:37\"}', 'true', NULL),
(561, '2025-04-16 17:58:21', 'userlogout', 'user', NULL, NULL, '39', '::1', 'index/logout', '[]', 'true', NULL),
(562, '2025-04-16 17:59:12', 'add', 'user', '40', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"ucucuuc\",\"email\":\"ucuc@gmail.com\",\"password\":\"$2y$10$1UDEOfNObvPeLklByrKEMurDrUJ\\/I2O\\/ZEd4WLLhqsyj6ESjMvcW6\",\"role_name\":\"User\"}', 'true', NULL),
(563, '2025-04-16 17:59:12', 'userlogin', 'user', '40', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '40', '::1', 'index/register', '{\"username\":\"ucucuuc\",\"email\":\"ucuc@gmail.com\",\"password\":\"$2y$10$1UDEOfNObvPeLklByrKEMurDrUJ\\/I2O\\/ZEd4WLLhqsyj6ESjMvcW6\",\"role_name\":\"User\"}', 'true', NULL),
(564, '2025-04-16 18:00:04', 'userlogout', 'user', NULL, NULL, '40', '::1', 'index/logout', '[]', 'true', NULL),
(565, '2025-04-16 18:00:18', 'add', 'user', '41', 'INSERT INTO user (`username`, `email`, `password`, `account_status`)  VALUES (?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"dimasss\",\"email\":\"dimasss@gmail.com\",\"password\":\"$2y$10$lV5WOFJnVWliy.bDWOg6XurrVsht0VbEEYyCyf0cHHek4eV1zPpvK\"}', 'true', NULL),
(566, '2025-04-16 18:00:19', 'userlogin', 'user', '41', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '41', '::1', 'index/register', '{\"username\":\"dimasss\",\"email\":\"dimasss@gmail.com\",\"password\":\"$2y$10$lV5WOFJnVWliy.bDWOg6XurrVsht0VbEEYyCyf0cHHek4eV1zPpvK\"}', 'true', NULL),
(567, '2025-04-16 18:01:27', 'userlogout', 'user', NULL, NULL, '41', '::1', 'index/logout', '[]', 'true', NULL),
(568, '2025-04-16 18:05:48', 'add', 'user', '42', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"tset\",\"email\":\"tset@gmail.com\",\"password\":\"$2y$10$fxMvSFP1jvIRauPJBm.kherxfsfLv6yca5LMLhh4qeyGtDudx9UQW\",\"role_name\":\"2\"}', 'true', NULL),
(569, '2025-04-16 18:05:48', 'userlogin', 'user', '42', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '42', '::1', 'index/register', '{\"username\":\"tset\",\"email\":\"tset@gmail.com\",\"password\":\"$2y$10$fxMvSFP1jvIRauPJBm.kherxfsfLv6yca5LMLhh4qeyGtDudx9UQW\",\"role_name\":\"2\"}', 'true', NULL),
(570, '2025-04-16 18:05:56', 'userlogout', 'user', NULL, NULL, '42', '::1', 'index/logout', '[]', 'true', NULL),
(571, '2025-04-16 18:06:03', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(572, '2025-04-16 18:07:29', 'add', 'user', '43', 'INSERT INTO user (`username`, `email`, `password`, `account_status`, `role_name`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'user/add', '{\"username\":\"testtttt\",\"email\":\"testttt@gmail.com\",\"password\":\"$2y$10$IWClJtd6uAmX9FSAwEjjWey.em.M3.1AVc9z8ysE.vWI3VMThN\\/ei\",\"account_status\":\"Active\",\"role_name\":\"2\"}', 'true', NULL),
(573, '2025-04-16 18:07:42', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(574, '2025-04-16 18:07:45', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '43', '::1', 'index/login/', '{\"username\":\"testtttt\",\"password\":\"$2y$10$IWClJtd6uAmX9FSAwEjjWey.em.M3.1AVc9z8ysE.vWI3VMThN\\/ei\"}', 'true', NULL),
(575, '2025-04-16 18:08:45', 'userlogout', 'user', NULL, NULL, '43', '::1', 'index/logout', '[]', 'true', NULL),
(576, '2025-04-16 18:11:05', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(577, '2025-04-17 06:47:20', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(578, '2025-04-17 06:47:50', 'edit', 'kegiatan', '21', 'UPDATE kegiatan SET `id_pengurus` = ?, `nama_kegiatan` = ?, `lokasi_kegiatan` = ?, `deskripsi_kegiatan` = ?, `kategori_kegiatan` = ?, `tanggal_kegiatan` = ? WHERE  kegiatan.id_kegiatan = ? ', '2', '::1', 'kegiatan/edit/21/', '{\"id_pengurus\":\"1\",\"nama_kegiatan\":\"test123\",\"lokasi_kegiatan\":\"SMKN46\",\"deskripsi_kegiatan\":\"YAA\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_kegiatan\":\"2025-02-24 16:45:21\"}', 'true', NULL),
(579, '2025-04-17 22:16:51', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(580, '2025-04-17 22:30:48', 'delete', 'user', '43', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/43/', '[]', 'true', NULL),
(581, '2025-04-17 22:30:50', 'delete', 'user', '42', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/42/', '[]', 'true', NULL),
(582, '2025-04-17 22:30:52', 'delete', 'user', '41', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/41/', '[]', 'true', NULL),
(583, '2025-04-17 22:30:55', 'delete', 'user', '40', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/40/', '[]', 'true', NULL),
(584, '2025-04-17 22:30:57', 'delete', 'user', '39', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/39/', '[]', 'true', NULL),
(585, '2025-04-17 22:30:59', 'delete', 'user', '38', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/38/', '[]', 'true', NULL),
(586, '2025-04-17 22:31:00', 'delete', 'user', '37', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/37/', '[]', 'true', NULL),
(587, '2025-04-17 22:31:02', 'delete', 'user', '36', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/36/', '[]', 'true', NULL),
(588, '2025-04-17 22:31:04', 'delete', 'user', '35', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/35/', '[]', 'true', NULL),
(589, '2025-04-17 22:31:06', 'delete', 'user', '34', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/34/', '[]', 'true', NULL),
(590, '2025-04-17 22:31:08', 'delete', 'user', '33', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/33/', '[]', 'true', NULL),
(591, '2025-04-17 22:31:09', 'delete', 'user', '32', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/32/', '[]', 'true', NULL),
(592, '2025-04-17 22:31:11', 'delete', 'user', '31', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/31/', '[]', 'true', NULL),
(593, '2025-04-17 22:31:13', 'delete', 'user', '30', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/30/', '[]', 'true', NULL),
(594, '2025-04-17 22:31:15', 'delete', 'user', '29', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/29/', '[]', 'true', NULL),
(595, '2025-04-17 22:31:29', 'delete', 'user', '6', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/6/', '[]', 'true', NULL),
(596, '2025-04-17 22:31:46', 'edit', 'user', '15', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role_name` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/15/', '{\"username\":\"Dimas\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/kv0ixecuzw8_l6t.jpg\",\"account_status\":\"Active\",\"role_name\":\"2\"}', 'true', NULL),
(597, '2025-04-17 22:32:56', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role_name` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/2/', '{\"username\":\"admin\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/7s4kczwx1df_au6.jpg\",\"account_status\":\"Active\",\"role_name\":\"2\"}', 'true', NULL),
(598, '2025-04-17 22:33:04', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role_name` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/2/', '{\"username\":\"admin\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/7s4kczwx1df_au6.jpg\",\"account_status\":\"Active\",\"role_name\":\"1\"}', 'true', NULL),
(599, '2025-04-17 22:35:00', 'edit', 'user', '15', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role_name` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/15/', '{\"username\":\"Dimas\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/kv0ixecuzw8_l6t.jpg\",\"account_status\":\"Active\",\"role_name\":\"User\"}', 'true', NULL),
(600, '2025-04-17 22:35:06', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role_name` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/2/', '{\"username\":\"admin\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/7s4kczwx1df_au6.jpg\",\"account_status\":\"Active\",\"role_name\":\"Administrator\"}', 'true', NULL),
(601, '2025-04-17 22:35:23', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(602, '2025-04-17 22:35:47', 'add', 'user', '44', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"Maul\",\"email\":\"maul@gmail.com\",\"password\":\"$2y$10$P5O430NDF0cGzNDsC5sYJegkLXylIHZOnCzY1drhq2ZgFeq91I13a\",\"role_name\":\"User\"}', 'true', NULL),
(603, '2025-04-17 22:37:09', 'add', 'user', '45', 'INSERT INTO user (`username`, `email`, `password`, `account_status`)  VALUES (?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$TeVv4qVAdzelJZ\\/QB3gbnudvWEMi1wdaQRBcccAjkth6Y1b9Pzq7.\"}', 'true', NULL),
(604, '2025-04-17 22:37:09', 'userlogin', 'user', '45', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '45', '::1', 'index/register', '{\"username\":\"test\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$TeVv4qVAdzelJZ\\/QB3gbnudvWEMi1wdaQRBcccAjkth6Y1b9Pzq7.\"}', 'true', NULL),
(605, '2025-04-17 22:38:22', 'userlogout', 'user', NULL, NULL, '45', '::1', 'index/logout', '[]', 'true', NULL),
(606, '2025-04-17 22:38:35', 'add', 'user', '46', 'INSERT INTO user (`username`, `email`, `password`, `account_status`)  VALUES (?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test3\",\"email\":\"test3@gmail.com\",\"password\":\"$2y$10$OZvRzxsZZNYGEo0D33S8TeVD.MRQyj4MQaTfoptn1vou2ggoUq61m\"}', 'true', NULL),
(607, '2025-04-17 22:38:36', 'userlogin', 'user', '46', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '46', '::1', 'index/register', '{\"username\":\"test3\",\"email\":\"test3@gmail.com\",\"password\":\"$2y$10$OZvRzxsZZNYGEo0D33S8TeVD.MRQyj4MQaTfoptn1vou2ggoUq61m\"}', 'true', NULL),
(608, '2025-04-17 22:41:06', 'userlogout', 'user', NULL, NULL, '46', '::1', 'index/logout', '[]', 'true', NULL),
(609, '2025-04-17 22:41:17', 'add', 'user', '47', 'INSERT INTO user (`username`, `email`, `password`, `account_status`)  VALUES (?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"yrdyr\",\"email\":\"ydrydrydr@gmail.com\",\"password\":\"$2y$10$jQZ62SsJWqe0IXb9\\/O9gsO.\\/luW244mY1NuUcQAi9V5z1wzH4yjHm\"}', 'true', NULL),
(610, '2025-04-17 22:41:17', 'userlogin', 'user', '47', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '47', '::1', 'index/register', '{\"username\":\"yrdyr\",\"email\":\"ydrydrydr@gmail.com\",\"password\":\"$2y$10$jQZ62SsJWqe0IXb9\\/O9gsO.\\/luW244mY1NuUcQAi9V5z1wzH4yjHm\"}', 'true', NULL),
(611, '2025-04-17 22:41:42', 'userlogout', 'user', NULL, NULL, '47', '::1', 'index/logout', '[]', 'true', NULL),
(612, '2025-04-17 22:41:54', 'add', 'user', '48', 'INSERT INTO user (`username`, `email`, `password`, `account_status`)  VALUES (?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"tytytyt\",\"email\":\"ytyttyt@gmail.com\",\"password\":\"$2y$10$9QdMAPK9zMYjrpRNG3iAeuVIy0FeCgO8Lv2DglIbchw2\\/R4138Wlu\"}', 'true', NULL),
(613, '2025-04-17 22:41:54', 'userlogin', 'user', '48', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '48', '::1', 'index/register', '{\"username\":\"tytytyt\",\"email\":\"ytyttyt@gmail.com\",\"password\":\"$2y$10$9QdMAPK9zMYjrpRNG3iAeuVIy0FeCgO8Lv2DglIbchw2\\/R4138Wlu\"}', 'true', NULL),
(614, '2025-04-17 22:46:13', 'userlogout', 'user', NULL, NULL, '48', '::1', 'index/logout', '[]', 'true', NULL),
(615, '2025-04-17 22:49:53', 'add', 'user', '49', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"testsett\",\"email\":\"testsetset@gmail.com\",\"password\":\"$2y$10$hfxah0fYAYY0ClvgDKvqv.l.8XWI7Uqe5K1QFYmxbaOglIQiUCL\\/m\",\"role_name\":\"2\"}', 'true', NULL),
(616, '2025-04-17 22:49:53', 'userlogin', 'user', '49', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '49', '::1', 'index/register', '{\"username\":\"testsett\",\"email\":\"testsetset@gmail.com\",\"password\":\"$2y$10$hfxah0fYAYY0ClvgDKvqv.l.8XWI7Uqe5K1QFYmxbaOglIQiUCL\\/m\",\"role_name\":\"2\"}', 'true', NULL),
(617, '2025-04-17 22:54:42', 'userlogout', 'user', NULL, NULL, '49', '::1', 'index/logout', '[]', 'true', NULL),
(618, '2025-04-17 23:02:18', 'add', 'user', '50', 'INSERT INTO user (`username`, `email`, `password`, `account_status`)  VALUES (?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"Testanjing\",\"email\":\"test2qq@gmail.com\",\"password\":\"$2y$10$DzuG9YKTKAonUlgXopTWo.jAjHtWC1H8civIppk.ue0k\\/f0EW0WOK\"}', 'true', NULL),
(619, '2025-04-17 23:02:18', 'userlogin', 'user', '50', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '50', '::1', 'index/register', '{\"username\":\"Testanjing\",\"email\":\"test2qq@gmail.com\",\"password\":\"$2y$10$DzuG9YKTKAonUlgXopTWo.jAjHtWC1H8civIppk.ue0k\\/f0EW0WOK\"}', 'true', NULL),
(620, '2025-04-17 23:02:49', 'userlogout', 'user', NULL, NULL, '50', '::1', 'index/logout', '[]', 'true', NULL),
(621, '2025-04-17 23:02:58', 'add', 'user', '51', 'INSERT INTO user (`username`, `email`, `password`, `account_status`)  VALUES (?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"wetwtwtwt\",\"email\":\"etwtwtwt@gmail.com\",\"password\":\"$2y$10$au.87Ij2dQCrdxtbEN2N..oy9zZQyrm49VGxykZcb5iDD6aK\\/\\/RUy\"}', 'true', NULL),
(622, '2025-04-17 23:02:58', 'userlogin', 'user', '51', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '51', '::1', 'index/register', '{\"username\":\"wetwtwtwt\",\"email\":\"etwtwtwt@gmail.com\",\"password\":\"$2y$10$au.87Ij2dQCrdxtbEN2N..oy9zZQyrm49VGxykZcb5iDD6aK\\/\\/RUy\"}', 'true', NULL),
(623, '2025-04-17 23:03:56', 'userlogout', 'user', NULL, NULL, '51', '::1', 'index/logout', '[]', 'true', NULL),
(624, '2025-04-17 23:04:32', 'add', 'user', '52', 'INSERT INTO user (`username`, `email`, `password`, `account_status`)  VALUES (?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"drhdryhd\",\"email\":\"hdrhdrdrh@gmail.com\",\"password\":\"$2y$10$OuRHHEonKTumMYlDwRHBKufQNLOwSsF.ZiYMzF3i2ZIDkp4vIAyDy\"}', 'true', NULL),
(625, '2025-04-17 23:04:32', 'userlogin', 'user', '52', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '52', '::1', 'index/register', '{\"username\":\"drhdryhd\",\"email\":\"hdrhdrdrh@gmail.com\",\"password\":\"$2y$10$OuRHHEonKTumMYlDwRHBKufQNLOwSsF.ZiYMzF3i2ZIDkp4vIAyDy\"}', 'true', NULL),
(626, '2025-04-17 23:05:20', 'userlogout', 'user', NULL, NULL, '52', '::1', 'index/logout', '[]', 'true', NULL),
(627, '2025-04-17 23:05:32', 'add', 'user', '53', 'INSERT INTO user (`username`, `email`, `password`, `role_id`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"atawtawtataw\",\"email\":\"awffafaf@gmail.com\",\"password\":\"$2y$10$e09cINGYZKzw2IFwqjGUb.ZNPxwqsB1T1YyEyvuAsFAmbHJbvD29.\",\"role_id\":\"2\"}', 'true', NULL),
(628, '2025-04-17 23:05:32', 'userlogin', 'user', '53', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '53', '::1', 'index/register', '{\"username\":\"atawtawtataw\",\"email\":\"awffafaf@gmail.com\",\"password\":\"$2y$10$e09cINGYZKzw2IFwqjGUb.ZNPxwqsB1T1YyEyvuAsFAmbHJbvD29.\",\"role_id\":\"2\"}', 'true', NULL),
(629, '2025-04-17 23:08:11', 'userlogout', 'user', NULL, NULL, '53', '::1', 'index/logout', '[]', 'true', NULL),
(630, '2025-04-17 23:08:31', 'add', 'user', '54', 'INSERT INTO user (`username`, `email`, `password`, `role`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"tsetsetse\",\"email\":\"tsetsetsetset@gmail.com\",\"password\":\"$2y$10$uCOwrFvOnHMQOQ.decQ8OeRQMqgFrcO\\/U4G1cyY.DNm0OwAd.PuKm\",\"role\":\"2\"}', 'true', NULL),
(631, '2025-04-17 23:08:31', 'userlogin', 'user', '54', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '54', '::1', 'index/register', '{\"username\":\"tsetsetse\",\"email\":\"tsetsetsetset@gmail.com\",\"password\":\"$2y$10$uCOwrFvOnHMQOQ.decQ8OeRQMqgFrcO\\/U4G1cyY.DNm0OwAd.PuKm\",\"role\":\"2\"}', 'true', NULL),
(632, '2025-04-17 23:09:51', 'userlogout', 'user', NULL, NULL, '54', '::1', 'index/logout', '[]', 'true', NULL),
(633, '2025-04-17 23:11:11', 'add', 'user', '55', 'INSERT INTO user (`username`, `email`, `password`, `role`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"estsettsetsetse\",\"email\":\"tsetsetsetse@gmail.com\",\"password\":\"$2y$10$Yi6NnfsWJ9K90BCIN\\/PeB.p\\/mgSYKQxa86Ubaz5Ky06ug9OFNYjGi\",\"role\":\"2\"}', 'true', NULL),
(634, '2025-04-17 23:11:11', 'userlogin', 'user', '55', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '55', '::1', 'index/register', '{\"username\":\"estsettsetsetse\",\"email\":\"tsetsetsetse@gmail.com\",\"password\":\"$2y$10$Yi6NnfsWJ9K90BCIN\\/PeB.p\\/mgSYKQxa86Ubaz5Ky06ug9OFNYjGi\",\"role\":\"2\"}', 'true', NULL),
(635, '2025-04-17 23:14:55', 'add', 'user', '56', 'INSERT INTO user (`username`, `email`, `password`, `role`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"fawfawfaw\",\"email\":\"fawgwagawgaw@gmail.com\",\"password\":\"$2y$10$PCqsRwjxpAcfjp4bF3Cud.OPT\\/FPp.t.3J4SLw\\/XGSn2XqaDGLWjK\",\"role\":\"2\"}', 'true', NULL),
(636, '2025-04-17 23:14:55', 'userlogin', 'user', '56', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '56', '::1', 'index/register', '{\"username\":\"fawfawfaw\",\"email\":\"fawgwagawgaw@gmail.com\",\"password\":\"$2y$10$PCqsRwjxpAcfjp4bF3Cud.OPT\\/FPp.t.3J4SLw\\/XGSn2XqaDGLWjK\",\"role\":\"2\"}', 'true', NULL),
(637, '2025-04-17 23:15:29', 'userlogout', 'user', NULL, NULL, '56', '::1', 'index/logout', '[]', 'true', NULL),
(638, '2025-04-17 23:15:44', 'add', 'user', '57', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"koeaktoaktoeaktoaetea\",\"email\":\"koeaktoaktoeaktoaetea@gmail.com\",\"password\":\"$2y$10$iZosvq0A0iGf7A0BGhN5sOYWaz1K.prVSSki5ObZIyeaTRamjYxRG\",\"role_name\":\"User\"}', 'true', NULL),
(639, '2025-04-17 23:15:44', 'userlogin', 'user', '57', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '57', '::1', 'index/register', '{\"username\":\"koeaktoaktoeaktoaetea\",\"email\":\"koeaktoaktoeaktoaetea@gmail.com\",\"password\":\"$2y$10$iZosvq0A0iGf7A0BGhN5sOYWaz1K.prVSSki5ObZIyeaTRamjYxRG\",\"role_name\":\"User\"}', 'true', NULL),
(640, '2025-04-18 05:51:29', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(641, '2025-04-18 05:52:21', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role_name` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/7s4kczwx1df_au6.jpg\",\"account_status\":\"Active\",\"role_name\":\"Administrator\"}', 'true', NULL),
(642, '2025-04-18 05:53:18', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(643, '2025-04-18 05:54:37', 'add', 'user', '58', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"testsets\",\"email\":\"testset@gmail.com\",\"password\":\"$2y$10$6jqCaxk7lfbXqtGTDryQkenr1NDAFiVYuSuW9m4fMQXPaB6e4EBoC\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/mdra6gjnp2ywxte.png\",\"role_name\":\"User\"}', 'true', NULL),
(644, '2025-04-18 05:54:37', 'userlogin', 'user', '58', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '58', '::1', 'index/register', '{\"username\":\"testsets\",\"email\":\"testset@gmail.com\",\"password\":\"$2y$10$6jqCaxk7lfbXqtGTDryQkenr1NDAFiVYuSuW9m4fMQXPaB6e4EBoC\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/mdra6gjnp2ywxte.png\",\"role_name\":\"User\"}', 'true', NULL),
(645, '2025-04-18 05:55:38', 'edit', 'user', '58', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role_name` = ? WHERE  user.id_user = ? ', '58', '::1', 'user/edit/58/', '{\"username\":\"testsets\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/mdra6gjnp2ywxte.png\",\"account_status\":\"Pending\",\"role_name\":\"Pengurus\"}', 'true', NULL),
(646, '2025-04-18 05:56:52', 'userlogout', 'user', NULL, NULL, '58', '::1', 'index/logout', '[]', 'true', NULL),
(647, '2025-04-18 05:57:06', 'add', 'user', '59', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"kunyy\",\"email\":\"kunyy@gmail.com\",\"password\":\"$2y$10$yiTlOYZPLiClTDILlDwwtugUK4cWovdwlRHuX6BE19ycduOIpQQK.\",\"role_name\":\"User\"}', 'true', NULL),
(648, '2025-04-18 05:57:06', 'userlogin', 'user', '59', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '59', '::1', 'index/register', '{\"username\":\"kunyy\",\"email\":\"kunyy@gmail.com\",\"password\":\"$2y$10$yiTlOYZPLiClTDILlDwwtugUK4cWovdwlRHuX6BE19ycduOIpQQK.\",\"role_name\":\"User\"}', 'true', NULL),
(649, '2025-04-18 05:59:17', 'userlogout', 'user', NULL, NULL, '59', '::1', 'index/logout', '[]', 'true', NULL),
(650, '2025-04-18 05:59:38', 'add', 'user', '60', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"teststets\",\"email\":\"testseadat@gmail.com\",\"password\":\"$2y$10$7X4ZgLF16Bojerb8cp5rhe.CP1X8ydVrRLPwteGUh9uV1GjEWqpsy\",\"role_name\":\"2\"}', 'true', NULL),
(651, '2025-04-18 05:59:38', 'userlogin', 'user', '60', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '60', '::1', 'index/register', '{\"username\":\"teststets\",\"email\":\"testseadat@gmail.com\",\"password\":\"$2y$10$7X4ZgLF16Bojerb8cp5rhe.CP1X8ydVrRLPwteGUh9uV1GjEWqpsy\",\"role_name\":\"2\"}', 'true', NULL),
(652, '2025-04-18 06:03:56', 'userlogout', 'user', NULL, NULL, '60', '::1', 'index/logout', '[]', 'true', NULL),
(653, '2025-04-18 06:07:47', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(654, '2025-04-18 06:15:51', 'add', 'kas', '17', 'INSERT INTO kas (`nama_pengurus`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '2', '::1', 'kas/add', '{\"nama_pengurus\":\"admin\",\"jumlah_kas\":\"150000\",\"jenis_kas\":\"pengeluaran\"}', 'true', NULL),
(655, '2025-04-18 06:25:03', 'add', 'dokumentasi', '11', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Latihan #1\",\"foto\":\"uploads\\/files\\/rohismanagerTIMELINE project.pdf\",\"deskripsi_dokumen\":\"trhjrt\",\"waktu_upload\":\"2025-04-18 06:24:52\"}', 'true', NULL),
(656, '2025-04-18 06:25:45', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(657, '2025-04-18 06:26:02', 'add', 'user', '61', 'INSERT INTO user (`username`, `email`, `password`, `role_name`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"asem\",\"email\":\"asem@gmail.com\",\"password\":\"$2y$10$tnxe0rKl7iYw5nO9XuNRc.OwTwCHWj5dT6MVQ6.dXOkLadlf0p56y\",\"role_name\":\"3\"}', 'true', NULL),
(658, '2025-04-18 06:26:08', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(659, '2025-04-18 06:26:22', 'edit', 'user', '61', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role_name` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/61/', '{\"username\":\"asem\",\"photo\":\"\",\"account_status\":\"Active\",\"role_name\":\"3\"}', 'true', NULL),
(660, '2025-04-18 06:27:21', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(661, '2025-04-18 06:27:37', 'add', 'user', '62', 'INSERT INTO user (`username`, `email`, `password`, `account_status`, `role_name`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"testgsegse\",\"email\":\"testtsetset@gmail.com\",\"password\":\"$2y$10$Or4E3aNnuLBPoUXrYKOwDOlRdALVsCy\\/OJRBxkEd\\/cc\\/NRZRCdwKK\"}', 'true', NULL),
(662, '2025-04-18 06:27:42', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(663, '2025-04-18 06:28:10', 'edit', 'user', '62', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role_name` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/62/', '{\"username\":\"testgsegse\",\"photo\":\"\",\"account_status\":\"Active\",\"role_name\":\"2\"}', 'true', NULL),
(664, '2025-04-18 06:29:09', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(665, '2025-04-18 06:29:27', 'add', 'user', '63', 'INSERT INTO user (`username`, `email`, `password`, `role_id`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test123\",\"email\":\"test2112@gmail.com\",\"password\":\"$2y$10$hQ52Ike.t0msZQutznwY4OE\\/t4yLVsuNVsovh.VOKswCFwJqaPWia\",\"role_id\":\"2\"}', 'true', NULL),
(666, '2025-04-18 06:29:27', 'userlogin', 'user', '63', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '63', '::1', 'index/register', '{\"username\":\"test123\",\"email\":\"test2112@gmail.com\",\"password\":\"$2y$10$hQ52Ike.t0msZQutznwY4OE\\/t4yLVsuNVsovh.VOKswCFwJqaPWia\",\"role_id\":\"2\"}', 'true', NULL),
(667, '2025-04-18 06:30:13', 'userlogout', 'user', NULL, NULL, '63', '::1', 'index/logout', '[]', 'true', NULL),
(668, '2025-04-18 06:32:19', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(669, '2025-04-18 06:32:55', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/7s4kczwx1df_au6.jpg\",\"account_status\":\"Active\",\"role\":\"1\"}', 'true', NULL),
(670, '2025-04-18 06:35:20', 'delete', 'kas', '17', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/17/', '[]', 'true', NULL),
(671, '2025-04-18 06:35:23', 'delete', 'kas', '16', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/16/', '[]', 'true', NULL),
(672, '2025-04-18 06:35:34', 'delete', 'pengumuman', '21', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/21/', '[]', 'true', NULL),
(673, '2025-04-18 06:35:36', 'delete', 'pengumuman', '20', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/20/', '[]', 'true', NULL),
(674, '2025-04-18 06:35:37', 'delete', 'pengumuman', '19', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/19/', '[]', 'true', NULL),
(675, '2025-04-18 06:35:39', 'delete', 'pengumuman', '18', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/18/', '[]', 'true', NULL),
(676, '2025-04-18 06:35:41', 'delete', 'pengumuman', '17', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/17/', '[]', 'true', NULL),
(677, '2025-04-18 06:35:43', 'delete', 'pengumuman', '16', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/16/', '[]', 'true', NULL),
(678, '2025-04-18 06:35:45', 'delete', 'pengumuman', '15', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/15/', '[]', 'true', NULL),
(679, '2025-04-18 06:35:48', 'delete', 'kegiatan', '21', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/21/', '[]', 'true', NULL),
(680, '2025-04-18 06:35:50', 'delete', 'kegiatan', '20', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/20/', '[]', 'true', NULL),
(681, '2025-04-18 06:35:52', 'delete', 'kegiatan', '19', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/19/', '[]', 'true', NULL),
(682, '2025-04-18 06:35:54', 'delete', 'kegiatan', '18', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/18/', '[]', 'true', NULL),
(683, '2025-04-18 06:42:09', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(684, '2025-04-18 06:42:22', 'delete', 'absensi_kegiatan', '55', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/55/', '[]', 'true', NULL),
(685, '2025-04-18 06:42:24', 'delete', 'absensi_kegiatan', '54', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/54/', '[]', 'true', NULL),
(686, '2025-04-18 06:42:26', 'delete', 'absensi_kegiatan', '52', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/52/', '[]', 'true', NULL),
(687, '2025-04-18 06:42:28', 'delete', 'absensi_kegiatan', '51', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/51/', '[]', 'true', NULL),
(688, '2025-04-18 06:42:32', 'add', 'absensi_kegiatan', '56', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"admin\",\"status\":\"Hadir\"}', 'true', NULL),
(689, '2025-04-18 06:42:36', 'add', 'absensi_kegiatan', '57', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"admin\",\"status\":\"Izin\"}', 'true', NULL),
(690, '2025-04-18 06:42:59', 'delete', 'absensi_kegiatan', '57', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/57/', '[]', 'true', NULL),
(691, '2025-04-18 06:44:22', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(692, '2025-04-18 06:44:29', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '16', '::1', 'index/login/', '{\"username\":\"fajri\",\"password\":\"$2y$10$6BAnEkdfzFqQvwCYYe3INupxm5..PDuE3YG3xJKTKw8B519Wituxa\"}', 'true', NULL),
(693, '2025-04-18 06:44:32', 'userlogout', 'user', NULL, NULL, '16', '::1', 'index/logout', '[]', 'true', NULL),
(694, '2025-04-18 06:44:38', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(695, '2025-04-18 06:44:51', 'edit', 'user', '16', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/16/', '{\"username\":\"Fajri\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/1wldc3q2o9uzjxt.png\",\"account_status\":\"Active\",\"role\":\"3\"}', 'true', NULL),
(696, '2025-04-18 06:45:47', 'add', 'absensi_kegiatan', '58', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"admin\",\"status\":\"Hadir\"}', 'true', NULL),
(697, '2025-04-18 06:45:52', 'delete', 'absensi_kegiatan', '58', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/58/', '[]', 'true', NULL),
(698, '2025-04-18 06:48:55', 'add', 'kegiatan', '22', 'INSERT INTO kegiatan (`nama_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"nama_pengurus\":\"admin\",\"nama_kegiatan\":\"14\",\"lokasi_kegiatan\":\"kun\",\"deskripsi_kegiatan\":\"htdfh\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_kegiatan\":\"2025-04-18 06:48:48\"}', 'true', NULL),
(699, '2025-04-18 06:48:58', 'delete', 'kegiatan', '14', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/14/', '[]', 'true', NULL),
(700, '2025-04-18 06:49:01', 'delete', 'kegiatan', '22', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/22/', '[]', 'true', NULL),
(701, '2025-04-18 06:50:45', 'add', 'kegiatan', '23', 'INSERT INTO kegiatan (`nama_pengurus`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"nama_pengurus\":\"admin\",\"nama_kegiatan\":\"Maulid\",\"lokasi_kegiatan\":\"SMKN 46\",\"deskripsi_kegiatan\":\"Maulid\",\"kategori_kegiatan\":\"Acara\",\"tanggal_kegiatan\":\"2025-04-18 06:50:29\"}', 'true', NULL),
(702, '2025-04-18 06:50:51', 'edit', 'pengumuman', '14', 'UPDATE pengumuman SET `judul_pengumuman` = ?, `isi_pengumuman` = ?, `nama_kegiatan` = ?, `tanggal_pengumuman` = ?, `tanggal_kegiatan` = ? WHERE  pengumuman.id_pengumuman = ? ', '2', '::1', 'pengumuman/edit/14/', '{\"judul_pengumuman\":\" Latihan Persiapan Maulid\",\"isi_pengumuman\":\"&#34;Diharapkan seluruh siswa mengikuti latihan persiapan untuk acara Maulid yang akan diselenggarakan pada tanggal 25 Februari 2025. Kehadiran adalah wajib untuk semua anggota.&#34;\",\"nama_kegiatan\":\"Maulid\",\"tanggal_pengumuman\":\"2025-02-23 12:44:28\",\"tanggal_kegiatan\":\"2025-04-18 06:50:29\"}', 'true', NULL),
(703, '2025-04-18 06:51:22', 'delete', 'user', '63', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/63/', '[]', 'true', NULL),
(704, '2025-04-18 06:51:23', 'delete', 'user', '62', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/62/', '[]', 'true', NULL),
(705, '2025-04-18 06:51:29', 'delete', 'user', '61', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/61/', '[]', 'true', NULL),
(706, '2025-04-18 06:51:30', 'delete', 'user', '60', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/60/', '[]', 'true', NULL),
(707, '2025-04-18 06:54:11', 'delete', 'dokumentasi', '11', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/11/', '[]', 'true', NULL),
(708, '2025-04-18 06:54:15', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(709, '2025-04-18 06:54:33', 'add', 'user', '64', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `role`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"mao\",\"email\":\"maomao@gmail.com\",\"password\":\"$2y$10$4S3SO0WSmBKRcnQiQx\\/iXOKpbU.FQtVLdHmjB2xHQQJDmtP.p947q\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/uox7sdaeybrvt42.png\",\"role\":\"1\"}', 'true', NULL),
(710, '2025-04-18 06:54:33', 'userlogin', 'user', '64', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '64', '::1', 'index/register', '{\"username\":\"mao\",\"email\":\"maomao@gmail.com\",\"password\":\"$2y$10$4S3SO0WSmBKRcnQiQx\\/iXOKpbU.FQtVLdHmjB2xHQQJDmtP.p947q\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/uox7sdaeybrvt42.png\",\"role\":\"1\"}', 'true', NULL),
(711, '2025-04-18 06:54:44', 'edit', 'user', '64', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role` = ? WHERE  user.id_user = ? ', '64', '::1', 'user/edit/64/', '{\"username\":\"mao\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/uox7sdaeybrvt42.png\",\"account_status\":\"Active\",\"role\":\"3\"}', 'true', NULL),
(712, '2025-04-18 06:56:43', 'delete', 'user', '59', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/59/', '[]', 'true', NULL),
(713, '2025-04-18 06:56:45', 'delete', 'user', '58', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/58/', '[]', 'true', NULL),
(714, '2025-04-18 06:56:46', 'delete', 'user', '57', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/57/', '[]', 'true', NULL),
(715, '2025-04-18 06:56:48', 'delete', 'user', '56', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/56/', '[]', 'true', NULL),
(716, '2025-04-18 06:56:49', 'delete', 'user', '55', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/55/', '[]', 'true', NULL),
(717, '2025-04-18 06:56:51', 'delete', 'user', '54', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/54/', '[]', 'true', NULL),
(718, '2025-04-18 06:56:53', 'delete', 'user', '53', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/53/', '[]', 'true', NULL),
(719, '2025-04-18 06:56:54', 'delete', 'user', '52', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/52/', '[]', 'true', NULL),
(720, '2025-04-18 06:56:56', 'delete', 'user', '51', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/51/', '[]', 'true', NULL),
(721, '2025-04-18 06:56:58', 'delete', 'user', '50', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/50/', '[]', 'true', NULL),
(722, '2025-04-18 06:56:59', 'delete', 'user', '49', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/49/', '[]', 'true', NULL),
(723, '2025-04-18 06:57:02', 'delete', 'user', '48', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/48/', '[]', 'true', NULL),
(724, '2025-04-18 06:57:05', 'delete', 'user', '47', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/47/', '[]', 'true', NULL),
(725, '2025-04-18 06:57:06', 'delete', 'user', '46', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/46/', '[]', 'true', NULL),
(726, '2025-04-18 06:57:08', 'delete', 'user', '45', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/45/', '[]', 'true', NULL),
(727, '2025-04-18 06:57:10', 'delete', 'user', '44', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/44/', '[]', 'true', NULL),
(728, '2025-04-18 06:57:13', 'delete', 'user', '28', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '64', '::1', 'user/delete/28/', '[]', 'true', NULL),
(729, '2025-04-18 06:57:45', 'edit', 'user', '64', 'UPDATE user SET `username` = ?, `photo` = ?, `account_status` = ?, `role` = ? WHERE  user.id_user = ? ', '64', '::1', 'user/edit/64/', '{\"username\":\"mao\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/uox7sdaeybrvt42.png\",\"account_status\":\"Active\",\"role\":\"2\"}', 'true', NULL),
(730, '2025-04-18 06:58:12', 'userlogout', 'user', NULL, NULL, '64', '::1', 'index/logout', '[]', 'true', NULL),
(731, '2025-04-18 06:58:27', 'add', 'user', '65', 'INSERT INTO user (`username`, `email`, `password`, `role`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"asasas\",\"email\":\"asasasaa@gmail.com\",\"password\":\"$2y$10$4Ow2g8jdb7bQazcnCIjPB.9OTdbaT5y5KdEl73lG1tUUMsOyWJrB2\",\"role\":\"2\"}', 'true', NULL),
(732, '2025-04-18 06:58:27', 'userlogin', 'user', '65', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '65', '::1', 'index/register', '{\"username\":\"asasas\",\"email\":\"asasasaa@gmail.com\",\"password\":\"$2y$10$4Ow2g8jdb7bQazcnCIjPB.9OTdbaT5y5KdEl73lG1tUUMsOyWJrB2\",\"role\":\"2\"}', 'true', NULL),
(733, '2025-04-18 06:59:42', 'userlogout', 'user', NULL, NULL, '65', '::1', 'index/logout', '[]', 'true', NULL),
(734, '2025-04-18 06:59:52', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '64', '::1', 'index/login/', '{\"username\":\"mao\",\"password\":\"$2y$10$4S3SO0WSmBKRcnQiQx\\/iXOKpbU.FQtVLdHmjB2xHQQJDmtP.p947q\"}', 'true', NULL),
(735, '2025-04-18 07:00:07', 'userlogout', 'user', NULL, NULL, '64', '::1', 'index/logout', '[]', 'true', NULL);
INSERT INTO `app_logs` (`log_id`, `Timestamp`, `Action`, `TableName`, `RecordID`, `SqlQuery`, `UserID`, `ServerIP`, `RequestUrl`, `RequestData`, `RequestCompleted`, `RequestMsg`) VALUES
(736, '2025-04-18 07:00:50', 'add', 'user', '66', 'INSERT INTO user (`username`, `email`, `password`, `role`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"penguruss\",\"email\":\"pengurus@gmail.com\",\"password\":\"$2y$10$foY\\/\\/P3EiGhp7v4gnb.HbOfecXsf3TisLhUoWNOhgypfYF5\\/9O2Km\",\"role\":\"3\"}', 'true', NULL),
(737, '2025-04-18 07:00:50', 'userlogin', 'user', '66', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '66', '::1', 'index/register', '{\"username\":\"penguruss\",\"email\":\"pengurus@gmail.com\",\"password\":\"$2y$10$foY\\/\\/P3EiGhp7v4gnb.HbOfecXsf3TisLhUoWNOhgypfYF5\\/9O2Km\",\"role\":\"3\"}', 'true', NULL),
(738, '2025-04-18 07:02:18', 'view', 'user', '66', 'SELECT   id_user, username, account_status, role FROM user WHERE  user.id_user = ?  LIMIT 1', '66', '::1', 'user/view/66', '[]', 'true', NULL),
(739, '2025-04-18 07:02:39', 'view', 'user', '2', 'SELECT   id_user, username, account_status, role FROM user WHERE  user.id_user = ?  LIMIT 1', '66', '::1', 'user/view/2', '[]', 'true', NULL),
(740, '2025-04-18 07:02:51', 'view', 'user', '2', 'SELECT   id_user, username, photo FROM user WHERE  user.id_user = ?  LIMIT 1', '66', '::1', 'user/view/2', '[]', 'true', NULL),
(741, '2025-04-18 07:02:56', 'view', 'pengurus', '2', 'SELECT   id_pengurus, username, jabatan, photo FROM pengurus WHERE  pengurus.id_pengurus = ?  LIMIT 1', '66', '::1', 'pengurus/view/2', '[]', 'true', NULL),
(742, '2025-04-18 07:03:16', 'edit', 'pengurus', '2', 'UPDATE pengurus SET `username` = ?, `email` = ?, `password` = ?, `jabatan` = ?, `photo` = ? WHERE  pengurus.id_pengurus = ? ', '66', '::1', 'pengurus/edit/2/', '{\"username\":\"Fajri\",\"email\":\"pengurus2@gmail.com\",\"password\":\"$2y$10$Fdqw3INgChSP.yASV7fPvuyCQyqz0TbvHGFyGq8na4KVM1kggKLf.\",\"jabatan\":\"DKM\",\"photo\":\"\"}', 'true', NULL),
(743, '2025-04-18 07:03:25', 'edit', 'pengurus', '1', 'UPDATE pengurus SET `username` = ?, `email` = ?, `password` = ?, `jabatan` = ?, `photo` = ? WHERE  pengurus.id_pengurus = ? ', '66', '::1', 'pengurus/edit/1/', '{\"username\":\"Elang\",\"email\":\"pengurus@gmail.com\",\"password\":\"$2y$10$BY.g4ZkvjIJ3rmcMW5oHWuMO5gzWC6MvI\\/Uq9xN3Remd1g3BsFw7a\",\"jabatan\":\"Ketua Umum\",\"photo\":\"\"}', 'true', NULL),
(744, '2025-04-18 07:04:32', 'view', 'user', '66', 'SELECT   id_user, username, photo FROM user WHERE  user.id_user = ?  LIMIT 1', '66', '::1', 'user/view/66', '[]', 'true', NULL),
(745, '2025-04-18 07:04:38', 'view', 'user', '16', 'SELECT   id_user, username, photo FROM user WHERE  user.id_user = ?  LIMIT 1', '66', '::1', 'user/view/16', '[]', 'true', NULL),
(746, '2025-04-18 07:06:26', 'userlogout', 'user', NULL, NULL, '66', '::1', 'index/logout', '[]', 'true', NULL),
(747, '2025-04-18 07:07:10', 'add', 'user', '67', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `role`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"Mizuki\",\"email\":\"mizuki@gmail.com\",\"password\":\"$2y$10$\\/2jPQqs2o4vGOXVhOrG5quRhvHmnIiMi\\/chyhtFiijYpzYloPxl5y\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/rjs65yfmn90vbtu.jpg\",\"role\":\"3\"}', 'true', NULL),
(748, '2025-04-18 07:07:10', 'userlogin', 'user', '67', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '67', '::1', 'index/register', '{\"username\":\"Mizuki\",\"email\":\"mizuki@gmail.com\",\"password\":\"$2y$10$\\/2jPQqs2o4vGOXVhOrG5quRhvHmnIiMi\\/chyhtFiijYpzYloPxl5y\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/rjs65yfmn90vbtu.jpg\",\"role\":\"3\"}', 'true', NULL),
(749, '2025-04-18 07:07:35', 'emailchange', 'user', '67', 'UPDATE user SET `email` = ? WHERE  id_user = ? ', '67', '::1', 'account/change_email', '[]', 'true', NULL),
(750, '2025-04-18 07:07:42', 'emailchange', 'user', '67', 'UPDATE user SET `email` = ? WHERE  id_user = ? ', '67', '::1', 'account/change_email', '[]', 'true', NULL),
(751, '2025-04-18 07:09:05', 'view', 'user', '67', 'SELECT   id_user, username FROM user WHERE  user.id_user = ?  LIMIT 1', '67', '::1', 'user/view/67', '[]', 'true', NULL),
(752, '2025-04-18 07:09:09', 'view', 'user', '66', 'SELECT   id_user, username FROM user WHERE  user.id_user = ?  LIMIT 1', '67', '::1', 'user/view/66', '[]', 'true', NULL),
(753, '2025-04-18 07:09:11', 'view', 'user', '67', 'SELECT   id_user, username FROM user WHERE  user.id_user = ?  LIMIT 1', '67', '::1', 'user/view/67', '[]', 'true', NULL),
(754, '2025-04-18 07:09:14', 'view', 'user', '15', 'SELECT   id_user, username FROM user WHERE  user.id_user = ?  LIMIT 1', '67', '::1', 'user/view/15', '[]', 'true', NULL),
(755, '2025-04-18 07:09:37', 'view', 'user', '15', 'SELECT   id_user, username, photo FROM user WHERE  user.id_user = ?  LIMIT 1', '67', '::1', 'user/view/15', '[]', 'true', NULL),
(756, '2025-04-18 07:09:44', 'userlogout', 'user', NULL, NULL, '67', '::1', 'index/logout', '[]', 'true', NULL),
(757, '2025-04-18 07:09:50', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(758, '2025-04-18 07:15:57', 'add', 'inventaris', '23', 'INSERT INTO inventaris (`id_pengurus`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"id_pengurus\":\"1\",\"nama_barang\":\"Jam Dinding\",\"jumlah_barang\":\"1\",\"status_barang\":\"Bagus\",\"tanggal_masuk\":\"2025-04-18 07:15:44\"}', 'true', NULL),
(759, '2025-04-18 07:23:07', 'delete', 'user', '67', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/67/', '[]', 'true', NULL),
(760, '2025-04-18 07:23:09', 'delete', 'user', '66', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/66/', '[]', 'true', NULL),
(761, '2025-04-18 07:23:10', 'delete', 'user', '65', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/65/', '[]', 'true', NULL),
(762, '2025-04-18 07:23:21', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(763, '2025-04-18 07:23:34', 'add', 'user', '68', 'INSERT INTO user (`username`, `email`, `password`, `role`, `account_status`)  VALUES (?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"heeeh\",\"email\":\"141412414244@gmail.com\",\"password\":\"$2y$10$GWY2fMVnyW\\/evsDnhLCZwuT3Zs6Mcg.TMYnSdTwngupT80PP4GFNC\",\"role\":\"1\"}', 'true', NULL),
(764, '2025-04-18 07:26:20', 'view', 'user', '68', 'SELECT   id_user, username FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/68', '[]', 'true', NULL),
(765, '2025-04-18 07:26:23', 'view', 'user', '64', 'SELECT   id_user, username FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/64', '[]', 'true', NULL),
(766, '2025-04-18 07:26:30', 'view', 'user', '16', 'SELECT   id_user, username FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/16', '[]', 'true', NULL),
(767, '2025-04-18 07:26:40', 'view', 'user', '16', 'SELECT   id_user, username FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/16', '[]', 'true', NULL),
(768, '2025-04-18 07:26:44', 'view', 'user', '16', 'SELECT   id_user, username FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/16', '[]', 'true', NULL),
(769, '2025-04-18 07:26:47', 'view', 'user', '4', 'SELECT   id_user, username FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/4', '[]', 'true', NULL),
(770, '2025-04-18 07:27:00', 'view', 'user', '4', 'SELECT   id_user, username, photo FROM user WHERE  user.id_user = ?  LIMIT 1', '2', '::1', 'user/view/4', '[]', 'true', NULL),
(771, '2025-04-18 07:27:08', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(772, '2025-04-18 07:27:15', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '16', '::1', 'index/login/', '{\"username\":\"fajri\",\"password\":\"$2y$10$6BAnEkdfzFqQvwCYYe3INupxm5..PDuE3YG3xJKTKw8B519Wituxa\"}', 'true', NULL),
(773, '2025-04-18 07:27:26', 'add', 'absensi_kegiatan', '59', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '16', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"Fajri\",\"status\":\"Dispen\"}', 'true', NULL),
(774, '2025-04-18 07:27:56', 'delete', 'absensi_kegiatan', '59', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '16', '::1', 'absensi_kegiatan/delete/59/', '[]', 'true', NULL),
(775, '2025-04-18 07:28:02', 'add', 'absensi_kegiatan', '60', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '16', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"Fajri\",\"status\":\"Hadir\"}', 'true', NULL),
(776, '2025-04-18 07:29:33', 'userlogout', 'user', NULL, NULL, '16', '::1', 'index/logout', '[]', 'true', NULL),
(777, '2025-04-18 07:29:41', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(778, '2025-04-18 07:32:26', 'add', 'pengumuman', '22', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\"gdfgdfgd\",\"isi_pengumuman\":\"dgfgd\",\"tanggal_pengumuman\":\"2025-04-18 07:32:18\",\"tanggal_kegiatan\":\"2025-04-18 06:50:29\"}', 'true', NULL),
(779, '2025-04-18 07:32:30', 'add', 'pengumuman', '23', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`)  VALUES (?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\"gdfgdf\",\"isi_pengumuman\":\"gdfgdfgfdgdfg\",\"tanggal_pengumuman\":\"2025-04-18 07:32:28\"}', 'true', NULL),
(780, '2025-04-18 07:32:33', 'add', 'pengumuman', '24', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`)  VALUES (?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\"tjetrjt\",\"isi_pengumuman\":\"ejj\",\"tanggal_pengumuman\":\"2025-04-18 07:32:31\"}', 'true', NULL),
(781, '2025-04-18 07:32:36', 'add', 'pengumuman', '25', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`)  VALUES (?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\"jetjjtej\",\"isi_pengumuman\":\"jetjet\",\"tanggal_pengumuman\":\"2025-04-18 07:32:34\"}', 'true', NULL),
(782, '2025-04-18 07:32:50', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(783, '2025-04-18 07:39:44', 'delete', 'pengumuman', '25', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/25/', '[]', 'true', NULL),
(784, '2025-04-18 07:39:51', 'delete', 'pengumuman', '24', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/24/', '[]', 'true', NULL),
(785, '2025-04-18 07:39:52', 'delete', 'pengumuman', '23', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/23/', '[]', 'true', NULL),
(786, '2025-04-18 07:39:54', 'delete', 'pengumuman', '22', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/22/', '[]', 'true', NULL),
(787, '2025-04-18 07:41:19', 'edit', 'user', '68', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/68/', '{\"username\":\"hehe\",\"email\":\"141412414244@gmail.com\",\"password\":\"$2y$10$luYTJ0FwbqauANFvT4leV.zbV661uZdiONpFmmIMmq3K1HKXKN83u\",\"photo\":\"\",\"account_status\":\"Active\",\"role\":\"1\"}', 'true', NULL),
(788, '2025-04-18 07:41:22', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(789, '2025-04-18 07:41:33', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '68', '::1', 'index/login/', '{\"username\":\"hehe\",\"password\":\"$2y$10$luYTJ0FwbqauANFvT4leV.zbV661uZdiONpFmmIMmq3K1HKXKN83u\",\"rememberme\":\"true\"}', 'true', NULL),
(790, '2025-04-18 07:41:43', 'userlogout', 'user', NULL, NULL, '68', '::1', 'index/logout', '[]', 'true', NULL),
(791, '2025-04-18 07:41:50', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ZrGHQLPMjDtm63FwpythwupcDuxi1cLqJbtEJNRUNm.8bN0ng7fQq\"}', 'true', NULL),
(792, '2025-04-18 07:42:44', 'edit', 'user', '68', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/68/', '{\"username\":\"hehe\",\"email\":\"hehe@gmail.com\",\"password\":\"$2y$10$GWfssWYbdr0UVjPgbOAQ8uHH6fHi9acZ0Xbf6yQl6me03hK2evfDC\",\"photo\":\"\",\"account_status\":\"Active\",\"role\":\"2\"}', 'true', NULL),
(793, '2025-04-18 07:43:56', 'edit', 'user', '68', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/68/', '{\"username\":\"hehe\",\"email\":\"hehe@gmail.com\",\"password\":\"$2y$10$6GUfE2QI5.mAThxdVxR7hOzmCYofjUKor7aWhykKSF0xvcU81NwLy\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/ao5u_4lphmcg8e3.jpeg\",\"account_status\":\"Active\",\"role\":\"2\"}', 'true', NULL),
(794, '2025-04-18 07:44:04', 'delete', 'user', '64', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/64/', '[]', 'true', NULL),
(795, '2025-04-18 07:44:09', 'edit', 'user', '15', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/15/', '{\"username\":\"Dimas\",\"email\":\"dims3838383@gmail.com\",\"password\":\"$2y$10$nRUCUBN71fMDtosbGG6xuOamxr4Hk1CQgkF2x823gC.r8Jtiws\\/U2\",\"photo\":\"\",\"account_status\":\"Active\",\"role\":\"2\"}', 'true', NULL),
(796, '2025-04-18 07:44:34', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/2/', '{\"username\":\"admin\",\"email\":\"admins@gmail.com\",\"password\":\"$2y$10$kjXpHqi8wkBZ8CAYI2hoie0ewOABiQH4NRdqpS61rHKlxZjfvDoHi\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/mes3qkg6pwoyc19.png\",\"account_status\":\"Active\",\"role\":\"1\"}', 'true', NULL),
(797, '2025-04-18 07:45:12', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(798, '2025-04-18 07:45:40', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '16', '::1', 'index/login/', '{\"username\":\"fajri\",\"password\":\"$2y$10$6BAnEkdfzFqQvwCYYe3INupxm5..PDuE3YG3xJKTKw8B519Wituxa\"}', 'true', NULL),
(799, '2025-04-18 07:47:25', 'edit', 'user', '16', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ? WHERE  user.id_user = ? ', '16', '::1', 'account/edit//', '{\"username\":\"Fajri\",\"email\":\"fajri12@gmail.com\",\"password\":\"$2y$10$j2YnnFjAZWYnXmCgNSo.EOFmZN4iiSJFclALIpy\\/P8vwUJ7DRmE\\/u\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/1wldc3q2o9uzjxt.png\"}', 'true', NULL),
(800, '2025-04-18 07:50:37', 'userlogout', 'user', NULL, NULL, '16', '::1', 'index/logout', '[]', 'true', NULL),
(801, '2025-04-18 07:51:04', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"email\":\"admins@gmail.com\",\"password\":\"$2y$10$ahMd1r6WFZmX6jLgBQ0yXOVycHOIgEDsT1shFDu7YHvjtrm\\/st0BO\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/mes3qkg6pwoyc19.png\"}', 'true', NULL),
(802, '2025-04-18 07:51:12', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$ahMd1r6WFZmX6jLgBQ0yXOVycHOIgEDsT1shFDu7YHvjtrm\\/st0BO\"}', 'true', NULL),
(803, '2025-04-18 07:52:02', 'delete', 'dokumentasi', '10', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/10/', '[]', 'true', NULL),
(804, '2025-04-18 07:52:17', 'edit', 'dokumentasi', '9', 'UPDATE dokumentasi SET `nama_kegiatan` = ?, `foto` = ?, `deskripsi_dokumen` = ?, `waktu_upload` = ? WHERE  dokumentasi.id_dokumentasi = ? ', '2', '::1', 'dokumentasi/edit/9/', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.46_6c05d803.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.46_b986663c.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.45_365c9591.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.45_836c07af.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.45_688660f6.jpg\",\"deskripsi_dokumen\":\"yeah\",\"waktu_upload\":\"2025-02-23 12:51:11\"}', 'true', NULL),
(805, '2025-04-18 07:52:19', 'view', 'dokumentasi', '9', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/9', '[]', 'true', NULL),
(806, '2025-04-18 07:53:01', 'view', 'dokumentasi', '9', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/9', '[]', 'true', NULL),
(807, '2025-04-18 07:53:05', 'delete', 'dokumentasi', '9', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/9/', '[]', 'true', NULL),
(808, '2025-04-18 07:53:16', 'add', 'dokumentasi', '12', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.46_6c05d803.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.46_b986663c.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.45_365c9591.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.45_836c07af.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.45_688660f6.jpg\",\"deskripsi_dokumen\":\"test\",\"waktu_upload\":\"2025-04-18 07:53:08\"}', 'true', NULL),
(809, '2025-04-18 07:54:44', 'view', 'dokumentasi', '12', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/12', '[]', 'true', NULL),
(810, '2025-04-18 07:56:14', 'view', 'dokumentasi', '12', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/12', '[]', 'true', NULL),
(811, '2025-04-18 07:56:33', 'view', 'dokumentasi', '12', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/12', '[]', 'true', NULL),
(812, '2025-04-18 07:57:06', 'view', 'dokumentasi', '12', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/12', '[]', 'true', NULL),
(813, '2025-04-18 07:57:33', 'view', 'dokumentasi', '12', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/12', '[]', 'true', NULL),
(814, '2025-04-18 07:59:28', 'view', 'dokumentasi', '12', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/12', '[]', 'true', NULL),
(815, '2025-04-18 08:00:09', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"email\":\"admins@gmail.com\",\"password\":\"$2y$10$5iwbB8D\\/SlpCGCpelJ016.HOBOgd1ixsKfs8U6kyu9xAKKBZ2ji9C\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/li93bcqvptw1or6.jpeg\"}', 'true', NULL),
(816, '2025-04-18 08:14:34', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"email\":\"admins@gmail.com\",\"password\":\"$2y$10$NPvjTRnXWGbamhKxWzICVO56otvON4vMugy4byjmz31NsUsrjeNo.\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/li93bcqvptw1or6.jpeg\"}', 'true', NULL),
(817, '2025-04-18 08:14:43', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(818, '2025-04-18 08:14:48', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$NPvjTRnXWGbamhKxWzICVO56otvON4vMugy4byjmz31NsUsrjeNo.\"}', 'true', NULL),
(819, '2025-04-18 08:16:52', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(820, '2025-04-18 08:16:58', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$NPvjTRnXWGbamhKxWzICVO56otvON4vMugy4byjmz31NsUsrjeNo.\"}', 'true', NULL),
(821, '2025-04-18 10:41:39', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$NPvjTRnXWGbamhKxWzICVO56otvON4vMugy4byjmz31NsUsrjeNo.\"}', 'true', NULL),
(822, '2025-04-18 10:41:50', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"email\":\"admins@gmail.com\",\"password\":\"$2y$10$EZbz9y8oavfMa.K0EobIjOK6kzqWPU59C7fQiFSa4aLXp03IJ9zrq\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/li93bcqvptw1or6.jpeg\"}', 'true', NULL),
(823, '2025-04-18 10:41:53', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(824, '2025-04-18 10:41:58', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$EZbz9y8oavfMa.K0EobIjOK6kzqWPU59C7fQiFSa4aLXp03IJ9zrq\"}', 'true', NULL),
(825, '2025-04-21 18:30:05', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$EZbz9y8oavfMa.K0EobIjOK6kzqWPU59C7fQiFSa4aLXp03IJ9zrq\"}', 'true', NULL),
(826, '2025-04-21 18:42:26', 'edit', 'user', '68', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `role` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/68/', '{\"username\":\"hehe\",\"email\":\"hehe@gmail.com\",\"password\":\"$2y$10$p1gXd7pvO1gmWf\\/U8Z3I2uG4M7CKH6vtY1YUNFLFiZCIF2No\\/AZbu\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/ao5u_4lphmcg8e3.jpeg\",\"role\":\"Pengurus\"}', 'true', NULL),
(827, '2025-04-21 18:42:42', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `role` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/2/', '{\"username\":\"admin\",\"email\":\"admins@gmail.com\",\"password\":\"$2y$10$nfAKUr\\/cejlNiAxdzVggdObi2ogBMWKIT\\/4VjQc9NeQqiKlO.YYji\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/li93bcqvptw1or6.jpeg\",\"role\":\"Administrator\"}', 'true', NULL),
(828, '2025-04-21 18:42:43', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(829, '2025-04-21 18:43:33', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$nfAKUr\\/cejlNiAxdzVggdObi2ogBMWKIT\\/4VjQc9NeQqiKlO.YYji\"}', 'true', NULL),
(830, '2025-04-21 18:43:48', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `role` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/2/', '{\"username\":\"admin\",\"email\":\"admins@gmail.com\",\"password\":\"$2y$10$fasTH2VOEPibH8kOAvrxi.\\/SQsyj0IkG7H\\/zRbpZdLfJP0uUtheZ.\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/li93bcqvptw1or6.jpeg\",\"role\":\"Administrator\"}', 'true', NULL),
(831, '2025-04-21 18:44:40', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(832, '2025-04-21 18:45:02', 'add', 'user', '69', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `role`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$FmY9sXxMkpRbFCb8\\/ODKneBHbnV2aGeciqiOmEPyvKLGBx8yIgkfC\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/_bu932zteoy7d0v.jpeg\",\"role\":\"Pengurus\"}', 'true', NULL),
(833, '2025-04-21 18:45:07', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$fasTH2VOEPibH8kOAvrxi.\\/SQsyj0IkG7H\\/zRbpZdLfJP0uUtheZ.\"}', 'true', NULL),
(834, '2025-04-21 18:46:47', 'edit', 'user', '69', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/69/', '{\"username\":\"test\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$BZ6SubpyBKEYafjmpPAm6u5LNbkSM8jCV5w7Hy35Fwl2ftocZ6HsO\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/_bu932zteoy7d0v.jpeg\",\"account_status\":\"Active\",\"role\":\"Pengurus\"}', 'true', NULL),
(835, '2025-04-21 18:46:51', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(836, '2025-04-21 18:47:03', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$fasTH2VOEPibH8kOAvrxi.\\/SQsyj0IkG7H\\/zRbpZdLfJP0uUtheZ.\"}', 'true', NULL),
(837, '2025-04-26 05:52:18', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$fasTH2VOEPibH8kOAvrxi.\\/SQsyj0IkG7H\\/zRbpZdLfJP0uUtheZ.\"}', 'true', NULL),
(838, '2025-04-26 06:00:05', 'add', 'jabatan', '7', 'INSERT INTO jabatan (`nama_jabatan`)  VALUES (?)', '2', '::1', 'jabatan/add', '{\"nama_jabatan\":\"Anggota\"}', 'true', NULL),
(839, '2025-04-26 06:03:12', 'add', 'kas', '16', 'INSERT INTO kas (`username`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '2', '::1', 'kas/add', '{\"username\":\"admin\",\"jumlah_kas\":\"1000\",\"jenis_kas\":\"pengeluaran\"}', 'true', NULL),
(840, '2025-04-26 06:04:01', 'add', 'pengumuman', '15', 'INSERT INTO pengumuman (`judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`)  VALUES (?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"judul_pengumuman\":\"test\",\"isi_pengumuman\":\"test\",\"tanggal_pengumuman\":\"2025-04-26 12:00:00\"}', 'true', NULL),
(841, '2025-04-26 06:06:11', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(842, '2025-04-26 06:06:37', 'add', 'user', '70', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `role`, `jabatan`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test1\",\"email\":\"test1@gmail.com\",\"password\":\"$2y$10$oe3kefE0pvmRUA2uwNW7RO8yT53OFHCzpDgQuSJbbCqhS9MvDmIH2\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/8vtjh63bs_e1u2p.jpg\",\"role\":\"Pengurus\",\"jabatan\":\"Sekretaris\"}', 'true', NULL),
(843, '2025-04-26 06:06:37', 'userlogin', 'user', '70', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '70', '::1', 'index/register', '{\"username\":\"test1\",\"email\":\"test1@gmail.com\",\"password\":\"$2y$10$oe3kefE0pvmRUA2uwNW7RO8yT53OFHCzpDgQuSJbbCqhS9MvDmIH2\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/8vtjh63bs_e1u2p.jpg\",\"role\":\"Pengurus\",\"jabatan\":\"Sekretaris\"}', 'true', NULL),
(844, '2025-04-26 06:09:44', 'delete', 'inventaris', '23', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '70', '::1', 'inventaris/delete/23/', '[]', 'true', NULL),
(845, '2025-04-26 06:09:45', 'delete', 'inventaris', '22', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '70', '::1', 'inventaris/delete/22/', '[]', 'true', NULL),
(846, '2025-04-26 06:09:47', 'delete', 'inventaris', '21', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '70', '::1', 'inventaris/delete/21/', '[]', 'true', NULL),
(847, '2025-04-26 06:09:48', 'delete', 'inventaris', '20', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '70', '::1', 'inventaris/delete/20/', '[]', 'true', NULL),
(848, '2025-04-26 06:09:50', 'delete', 'inventaris', '19', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '70', '::1', 'inventaris/delete/19/', '[]', 'true', NULL),
(849, '2025-04-26 06:10:31', 'add', 'inventaris', '24', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '70', '::1', 'inventaris/add', '{\"nama_barang\":\"Kipas\",\"jumlah_barang\":\"10\",\"status_barang\":\"Bagus\",\"username\":\"test1\",\"tanggal_masuk\":\"2025-04-26 06:10:12\"}', 'true', NULL),
(850, '2025-04-26 06:18:17', 'add', 'pengumuman', '16', 'INSERT INTO pengumuman (`username`, `judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '70', '::1', 'pengumuman/add', '{\"username\":\"test1\",\"judul_pengumuman\":\"test\",\"isi_pengumuman\":\"test\",\"nama_kegiatan\":\"Maulid\",\"tanggal_pengumuman\":\"2025-04-26 06:18:10\",\"tanggal_kegiatan\":\"2025-04-18 06:50:29\"}', 'true', NULL),
(851, '2025-04-26 06:18:20', 'view', 'pengumuman', '16', 'SELECT   id_pengumuman, judul_pengumuman, isi_pengumuman, nama_kegiatan, tanggal_pengumuman, tanggal_kegiatan, username FROM pengumuman WHERE  pengumuman.id_pengumuman = ?  LIMIT 1', '70', '::1', 'pengumuman/view/16', '[]', 'true', NULL),
(852, '2025-04-26 06:19:09', 'view', 'pengumuman', '16', 'SELECT   id_pengumuman, judul_pengumuman, isi_pengumuman, nama_kegiatan, tanggal_pengumuman, tanggal_kegiatan, username FROM pengumuman WHERE  pengumuman.id_pengumuman = ?  LIMIT 1', '70', '::1', 'pengumuman/view/16', '[]', 'true', NULL),
(853, '2025-04-26 06:24:38', 'delete', 'dokumentasi', '12', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '70', '::1', 'dokumentasi/delete/12/', '[]', 'true', NULL),
(854, '2025-04-26 06:24:53', 'add', 'dokumentasi', '13', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `waktu_upload`, `username`)  VALUES (?, ?, ?, ?, ?)', '70', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/rohismanager23-Maret_Kaleng-Legend-Khong-Guan-Selalu-Jadi-Penanda-Hari-Lebaran_1280x720_ADI---Copy.jpg\",\"deskripsi_dokumen\":\"test\",\"waktu_upload\":\"2025-04-26 06:00:00\",\"username\":\"test1\"}', 'true', NULL),
(855, '2025-04-26 06:27:12', 'delete', 'inventaris', '24', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '70', '::1', 'inventaris/delete/24/', '[]', 'true', NULL),
(856, '2025-04-26 06:28:08', 'add', 'inventaris', '25', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '70', '::1', 'inventaris/add', '{\"nama_barang\":\"Sapu\",\"jumlah_barang\":\"9\",\"status_barang\":\"Bagus\",\"username\":\"test1\",\"tanggal_masuk\":\"2025-04-26 06:27:51\"}', 'true', NULL),
(857, '2025-04-26 06:29:22', 'view', 'kas', '16', 'SELECT   id_kas, jumlah_kas, jenis_kas, deskripsi, tanggal, username, total_kas FROM kas WHERE  kas.id_kas = ?  LIMIT 1', '70', '::1', 'kas/view/16', '[]', 'true', NULL),
(858, '2025-04-26 06:32:20', 'userlogout', 'user', NULL, NULL, '70', '::1', 'index/logout', '[]', 'true', NULL),
(859, '2025-04-26 06:33:04', 'add', 'user', '71', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `role`, `jabatan`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"andi\",\"email\":\"adni1223@gmail.com\",\"password\":\"$2y$10$\\/I9EwNjMa9I\\/mSsm3fzHduTiC0VeFpasXm9OarszQC0uD9EXeRZqu\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/q3h6ad5972e_ri4.jpg\",\"role\":\"User\",\"jabatan\":\"Anggota\"}', 'true', NULL),
(860, '2025-04-26 06:33:04', 'userlogin', 'user', '71', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '71', '::1', 'index/register', '{\"username\":\"andi\",\"email\":\"adni1223@gmail.com\",\"password\":\"$2y$10$\\/I9EwNjMa9I\\/mSsm3fzHduTiC0VeFpasXm9OarszQC0uD9EXeRZqu\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/q3h6ad5972e_ri4.jpg\",\"role\":\"User\",\"jabatan\":\"Anggota\"}', 'true', NULL),
(861, '2025-04-26 06:33:15', 'view', 'dokumentasi', '13', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload, username FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '71', '::1', 'dokumentasi/view/13', '[]', 'true', NULL),
(862, '2025-04-26 06:36:27', 'userlogout', 'user', NULL, NULL, '71', '::1', 'index/logout', '[]', 'true', NULL),
(863, '2025-04-26 06:36:32', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$fasTH2VOEPibH8kOAvrxi.\\/SQsyj0IkG7H\\/zRbpZdLfJP0uUtheZ.\"}', 'true', NULL),
(864, '2025-04-26 06:44:58', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(865, '2025-04-26 06:47:22', 'add', 'user', '72', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `role`, `jabatan`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"Elang \",\"email\":\"elang123@gmail.com\",\"password\":\"$2y$10$93Kibi45rENyvNOLp4YauuJFSTuVhNpDZTIQ6wDlLjLlm3S2h7o8C\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/mgreb4dixp52c_k.jpeg\",\"role\":\"Pengurus\",\"jabatan\":\"Ketua Umum\"}', 'true', NULL),
(866, '2025-04-26 06:47:22', 'userlogin', 'user', '72', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '72', '::1', 'index/register', '{\"username\":\"Elang \",\"email\":\"elang123@gmail.com\",\"password\":\"$2y$10$93Kibi45rENyvNOLp4YauuJFSTuVhNpDZTIQ6wDlLjLlm3S2h7o8C\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/mgreb4dixp52c_k.jpeg\",\"role\":\"Pengurus\",\"jabatan\":\"Ketua Umum\"}', 'true', NULL),
(867, '2025-04-26 06:48:22', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$fasTH2VOEPibH8kOAvrxi.\\/SQsyj0IkG7H\\/zRbpZdLfJP0uUtheZ.\"}', 'true', NULL),
(868, '2025-04-26 06:51:12', 'add', 'pengumuman', '17', 'INSERT INTO pengumuman (`username`, `judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`)  VALUES (?, ?, ?, ?)', '72', '::1', 'pengumuman/add', '{\"username\":\"Elang \",\"judul_pengumuman\":\"tests\",\"isi_pengumuman\":\"tsetsetstset\",\"tanggal_pengumuman\":\"2025-04-26 06:51:09\"}', 'true', NULL),
(869, '2025-04-26 06:51:17', 'add', 'pengumuman', '18', 'INSERT INTO pengumuman (`username`, `judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`)  VALUES (?, ?, ?, ?)', '72', '::1', 'pengumuman/add', '{\"username\":\"Elang \",\"judul_pengumuman\":\"tests\",\"isi_pengumuman\":\"tstests\",\"tanggal_pengumuman\":\"2025-04-26 06:51:13\"}', 'true', NULL),
(870, '2025-04-26 07:04:39', 'view', 'absensi_kegiatan', '60', 'SELECT   id_absensi, nama_kegiatan, username, waktu_absen, deskripsi, status FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi = ?  LIMIT 1', '72', '::1', 'absensi_kegiatan/view/60', '[]', 'true', NULL),
(871, '2025-04-26 07:07:51', 'add', 'kas', '17', 'INSERT INTO kas (`username`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '72', '::1', 'kas/add', '{\"username\":\"Elang \",\"jumlah_kas\":\"50000\",\"jenis_kas\":\"pemasukan\"}', 'true', NULL),
(872, '2025-04-26 07:15:58', 'add', 'absensi_kegiatan', '61', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`, `deskripsi`)  VALUES (?, ?, ?, ?)', '72', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"Elang \",\"status\":\"Alpha\",\"deskripsi\":\"test\"}', 'true', NULL),
(873, '2025-04-26 07:21:18', 'add', 'inventaris', '26', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '72', '::1', 'inventaris/add', '{\"nama_barang\":\"Kipas\",\"jumlah_barang\":\"7\",\"status_barang\":\"Baik\",\"username\":\"Elang \",\"tanggal_masuk\":\"2025-04-26 07:21:06\"}', 'true', NULL),
(874, '2025-04-26 07:34:43', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `jabatan` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"email\":\"admins@gmail.com\",\"password\":\"$2y$10$ecl0QlDxt7YE.EYMZaqNi.5IebLdmpE3WrARvPb2FKvFQvNYkdnq2\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/a_lo9szhbmegk67.jpg\",\"account_status\":\"Active\",\"jabatan\":\"Anggota\"}', 'true', NULL),
(875, '2025-04-26 07:35:17', 'edit', 'user', '2', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `jabatan` = ? WHERE  user.id_user = ? ', '2', '::1', 'account/edit//', '{\"username\":\"admin\",\"email\":\"admins@gmail.com\",\"password\":\"$2y$10$kx4ZbQcXboUP4ss1DvkfkO\\/PzM1Sp4bkrKyCvvHD\\/CcifRBedsUam\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/4jlfgzxvoq2d1mn.png\",\"account_status\":\"Active\",\"jabatan\":\"Anggota\"}', 'true', NULL),
(876, '2025-04-26 07:35:46', 'userlogout', 'user', NULL, NULL, '72', '::1', 'index/logout', '[]', 'true', NULL),
(877, '2025-04-26 07:36:48', 'add', 'user', '73', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `role`, `jabatan`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"dimmm\",\"email\":\"dimm@gmail.com\",\"password\":\"$2y$10$c.YRBzS6BSnTavcQAeM8T.BwQ7d0.PW7Esb\\/OlK4kBzlPGi0g.J3m\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/sjiwef2y58nvbpm.jpg\",\"role\":\"Pengurus\",\"jabatan\":\"Anggota\"}', 'true', NULL),
(878, '2025-04-26 07:36:48', 'userlogin', 'user', '73', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '73', '::1', 'index/register', '{\"username\":\"dimmm\",\"email\":\"dimm@gmail.com\",\"password\":\"$2y$10$c.YRBzS6BSnTavcQAeM8T.BwQ7d0.PW7Esb\\/OlK4kBzlPGi0g.J3m\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/sjiwef2y58nvbpm.jpg\",\"role\":\"Pengurus\",\"jabatan\":\"Anggota\"}', 'true', NULL),
(879, '2025-04-26 07:52:06', 'delete', 'inventaris', '25', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '73', '::1', 'inventaris/delete/25/', '[]', 'true', NULL),
(880, '2025-04-26 07:52:15', 'add', 'inventaris', '27', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '73', '::1', 'inventaris/add', '{\"nama_barang\":\"Sapu\",\"jumlah_barang\":\"9\",\"status_barang\":\"Rusak Berat\",\"username\":\"dimmm\",\"tanggal_masuk\":\"2025-04-26 07:52:08\"}', 'true', NULL),
(881, '2025-04-26 07:52:22', 'userlogout', 'user', NULL, NULL, '73', '::1', 'index/logout', '[]', 'true', NULL),
(882, '2025-04-26 07:52:29', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$kx4ZbQcXboUP4ss1DvkfkO\\/PzM1Sp4bkrKyCvvHD\\/CcifRBedsUam\"}', 'true', NULL),
(883, '2025-04-26 08:04:36', 'add', 'kas', '18', 'INSERT INTO kas (`username`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '2', '::1', 'kas/add', '{\"username\":\"admin\",\"jumlah_kas\":\"5000\",\"jenis_kas\":\"Pemasukan\"}', 'true', NULL),
(884, '2025-04-26 08:04:40', 'delete', 'kas', '18', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/18/', '[]', 'true', NULL),
(885, '2025-04-26 08:04:42', 'delete', 'kas', '17', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/17/', '[]', 'true', NULL),
(886, '2025-04-26 08:04:44', 'delete', 'kas', '16', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/16/', '[]', 'true', NULL),
(887, '2025-04-26 08:04:45', 'delete', 'kas', '15', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/15/', '[]', 'true', NULL),
(888, '2025-04-26 08:04:46', 'delete', 'kas', '13', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/13/', '[]', 'true', NULL),
(889, '2025-04-26 08:04:52', 'add', 'kas', '19', 'INSERT INTO kas (`username`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '2', '::1', 'kas/add', '{\"username\":\"admin\",\"jumlah_kas\":\"50000\",\"jenis_kas\":\"Pengeluaran\"}', 'true', NULL),
(890, '2025-04-26 08:07:49', 'delete', 'dokumentasi', '13', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/13/', '[]', 'true', NULL),
(891, '2025-04-26 08:08:11', 'add', 'dokumentasi', '14', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `waktu_upload`, `username`)  VALUES (?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 11.23.58_6658c643.jpg\",\"waktu_upload\":\"2025-04-26 08:07:50\",\"username\":\"admin\"}', 'true', NULL),
(892, '2025-04-26 08:12:04', 'add', 'kegiatan', '24', 'INSERT INTO kegiatan (`username`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"username\":\"admin\",\"nama_kegiatan\":\"yrdy\",\"lokasi_kegiatan\":\"ydryd\",\"deskripsi_kegiatan\":\"drydydr\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_kegiatan\":\"2025-04-26 08:11:58\"}', 'true', NULL),
(893, '2025-04-26 08:12:27', 'add', 'dokumentasi', '15', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `waktu_upload`, `username`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"yrdy\",\"foto\":\"uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.46_6c05d803.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.46_6c05d803.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.46_b986663c.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.45_365c9591.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.45_836c07af.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.45_688660f6.jpg\",\"deskripsi_dokumen\":\"test\",\"waktu_upload\":\"2025-04-26 08:12:06\",\"username\":\"admin\"}', 'true', NULL),
(894, '2025-04-26 08:12:52', 'edit', 'dokumentasi', '15', 'UPDATE dokumentasi SET `nama_kegiatan` = ?, `foto` = ?, `deskripsi_dokumen` = ?, `waktu_upload` = ?, `username` = ? WHERE  dokumentasi.id_dokumentasi = ? ', '2', '::1', 'dokumentasi/edit/15/', '{\"nama_kegiatan\":\"yrdy\",\"foto\":\"uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.46_6c05d803.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.46_6c05d803.jpg,uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.46_b986663c.jpg,uploads\\/files\\/rohismanag\",\"deskripsi_dokumen\":\"https:\\/\\/drive.google.com\\/drive\\/home?hl=ID\",\"waktu_upload\":\"2025-04-26 08:12:06\",\"username\":\"admin\"}', 'true', NULL),
(895, '2025-04-26 08:15:11', 'delete', 'dokumentasi', '14', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/14/', '[]', 'true', NULL),
(896, '2025-04-26 08:15:47', 'add', 'dokumentasi', '16', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `waktu_upload`, `username`, `link`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/rohismanagerBWA-256894-qris.png\",\"deskripsi_dokumen\":\"test\",\"waktu_upload\":\"2025-04-26 08:15:11\",\"username\":\"admin\",\"link\":\"https:\\/\\/drive.google.com\\/drive\\/home?hl=ID\"}', 'true', NULL),
(897, '2025-04-26 08:17:40', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$kx4ZbQcXboUP4ss1DvkfkO\\/PzM1Sp4bkrKyCvvHD\\/CcifRBedsUam\"}', 'true', NULL),
(898, '2025-04-26 08:17:44', 'view', 'dokumentasi', '16', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload, username, link FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/16', '[]', 'true', NULL),
(899, '2025-04-26 08:20:04', 'view', 'dokumentasi', '16', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload, username, link FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/16', '[]', 'true', NULL),
(900, '2025-04-26 08:20:56', 'view', 'dokumentasi', '16', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, waktu_upload, username, link FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/16', '[]', 'true', NULL),
(901, '2025-04-26 08:22:26', 'view', 'dokumentasi', '16', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, link, username, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/16', '[]', 'true', NULL),
(902, '2025-04-26 08:25:00', 'delete', 'dokumentasi', '15', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/15/', '[]', 'true', NULL),
(903, '2025-04-26 08:25:12', 'edit', 'dokumentasi', '16', 'UPDATE dokumentasi SET `nama_kegiatan` = ?, `foto` = ?, `deskripsi_dokumen` = ?, `link` = ?, `username` = ?, `waktu_upload` = ? WHERE  dokumentasi.id_dokumentasi = ? ', '2', '::1', 'dokumentasi/edit/16/', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/rohismanagerWhatsApp Image 2025-04-16 at 06.48.46_6c05d803.jpg\",\"deskripsi_dokumen\":\"test\",\"link\":\"https:\\/\\/drive.google.com\\/drive\\/home?hl=ID\",\"username\":\"admin\",\"waktu_upload\":\"2025-04-26 08:15:11\"}', 'true', NULL),
(904, '2025-04-26 08:25:58', 'add', 'dokumentasi', '17', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"yrdy\",\"foto\":\"uploads\\/files\\/Rohismanager - LATIHAN SOAL STS KLS  XI.doc\",\"deskripsi_dokumen\":\"test\",\"username\":\"admin\",\"waktu_upload\":\"2025-04-26 08:25:45\"}', 'true', NULL),
(905, '2025-04-26 08:26:07', 'view', 'dokumentasi', '17', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, link, username, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '2', '::1', 'dokumentasi/view/17', '[]', 'true', NULL),
(906, '2025-04-26 08:27:02', 'delete', 'dokumentasi', '17', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/17/', '[]', 'true', NULL),
(907, '2025-04-26 08:27:35', 'add', 'dokumentasi', '18', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"yrdy\",\"foto\":\"uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-16 at 06.48.46_6c05d803.jpg,uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-16 at 06.48.46_b986663c.jpg,uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-16 at 06.48.45_365c9591.jpg,uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-16 at 06.48.45_836c07af.jpg,uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-16 at 06.48.45_688660f6.jpg\",\"deskripsi_dokumen\":\"test\",\"username\":\"admin\",\"waktu_upload\":\"2025-04-26 08:27:02\"}', 'true', NULL),
(908, '2025-04-26 08:28:21', 'delete', 'dokumentasi', '16', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/16/', '[]', 'true', NULL),
(909, '2025-04-26 08:28:27', 'delete', 'dokumentasi', '18', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/18/', '[]', 'true', NULL);
INSERT INTO `app_logs` (`log_id`, `Timestamp`, `Action`, `TableName`, `RecordID`, `SqlQuery`, `UserID`, `ServerIP`, `RequestUrl`, `RequestData`, `RequestCompleted`, `RequestMsg`) VALUES
(910, '2025-04-26 08:28:54', 'add', 'dokumentasi', '19', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `link`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-16 at 06.48.46_6c05d803.jpg,uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-16 at 06.48.46_b986663c.jpg,uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-16 at 06.48.45_365c9591.jpg,uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-16 at 06.48.45_836c07af.jpg,uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-16 at 06.48.45_688660f6.jpg\",\"deskripsi_dokumen\":\"Dokumentasi Maulid\",\"link\":\"https:\\/\\/drive.google.com\\/drive\\/home?hl=ID\",\"username\":\"admin\",\"waktu_upload\":\"2025-04-26 08:28:32\"}', 'true', NULL),
(911, '2025-04-26 08:38:02', 'delete', 'inventaris', '27', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/27/', '[]', 'true', NULL),
(912, '2025-04-26 08:38:04', 'delete', 'inventaris', '26', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '2', '::1', 'inventaris/delete/26/', '[]', 'true', NULL),
(913, '2025-04-26 08:38:12', 'add', 'inventaris', '28', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"nama_barang\":\"Sapu\",\"jumlah_barang\":\"-1\",\"status_barang\":\"Baik\",\"username\":\"admin\",\"tanggal_masuk\":\"2025-04-26 08:38:06\"}', 'true', NULL),
(914, '2025-04-26 08:38:43', 'add', 'inventaris', '29', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"nama_barang\":\"Kipas\",\"jumlah_barang\":\"5\",\"status_barang\":\"Rusak Ringan\",\"username\":\"admin\",\"tanggal_masuk\":\"2025-04-26 08:38:33\"}', 'true', NULL),
(915, '2025-04-26 08:38:59', 'edit', 'inventaris', '28', 'UPDATE inventaris SET `nama_barang` = ?, `jumlah_barang` = ?, `status_barang` = ?, `username` = ?, `tanggal_masuk` = ? WHERE  inventaris.id_barang = ? ', '2', '::1', 'inventaris/edit/28/', '{\"nama_barang\":\"Sapu\",\"jumlah_barang\":\"2\",\"status_barang\":\"Baik\",\"username\":\"admin\",\"tanggal_masuk\":\"2025-04-26 08:38:06\"}', 'true', NULL),
(916, '2025-04-26 08:43:20', 'add', 'pengumuman', '19', 'INSERT INTO pengumuman (`username`, `judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`)  VALUES (?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"username\":\"admin\",\"judul_pengumuman\":\"szhs\",\"isi_pengumuman\":\"shsehseh\",\"tanggal_pengumuman\":\"2025-04-26 08:43:17\"}', 'true', NULL),
(917, '2025-04-26 08:43:40', 'add', 'pengumuman', '20', 'INSERT INTO pengumuman (`username`, `judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"username\":\"admin\",\"judul_pengumuman\":\"dhf\",\"isi_pengumuman\":\"hdfhdfhdfhdf\",\"nama_kegiatan\":\"Maulid\",\"tanggal_pengumuman\":\"2025-04-26 08:43:34\",\"tanggal_kegiatan\":\"2025-04-18 06:50:29\"}', 'true', NULL),
(918, '2025-04-26 08:43:52', 'delete', 'pengumuman', '20', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/20/', '[]', 'true', NULL),
(919, '2025-04-26 08:43:53', 'delete', 'pengumuman', '19', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/19/', '[]', 'true', NULL),
(920, '2025-04-26 08:43:55', 'delete', 'pengumuman', '18', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/18/', '[]', 'true', NULL),
(921, '2025-04-26 08:43:56', 'delete', 'pengumuman', '17', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/17/', '[]', 'true', NULL),
(922, '2025-04-26 08:43:57', 'delete', 'pengumuman', '16', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/16/', '[]', 'true', NULL),
(923, '2025-04-26 08:43:59', 'delete', 'pengumuman', '15', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/15/', '[]', 'true', NULL),
(924, '2025-04-26 08:44:10', 'add', 'pengumuman', '21', 'INSERT INTO pengumuman (`username`, `judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"username\":\"admin\",\"judul_pengumuman\":\"test\",\"isi_pengumuman\":\"test\",\"nama_kegiatan\":\"yrdy\",\"tanggal_pengumuman\":\"2025-04-26 08:44:04\",\"tanggal_kegiatan\":\"2025-04-26 08:11:58\"}', 'true', NULL),
(925, '2025-04-26 08:44:41', 'add', 'pengumuman', '22', 'INSERT INTO pengumuman (`username`, `judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"username\":\"admin\",\"judul_pengumuman\":\"test3\",\"isi_pengumuman\":\"test23\",\"nama_kegiatan\":\"Maulid\",\"tanggal_pengumuman\":\"2025-04-26 08:44:34\",\"tanggal_kegiatan\":\"2025-04-18 06:50:29\"}', 'true', NULL),
(926, '2025-04-26 08:44:48', 'add', 'pengumuman', '23', 'INSERT INTO pengumuman (`username`, `judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"username\":\"admin\",\"judul_pengumuman\":\"test3\",\"isi_pengumuman\":\"etstes\",\"nama_kegiatan\":\"Maulid\",\"tanggal_pengumuman\":\"2025-04-26 08:44:43\",\"tanggal_kegiatan\":\"2025-04-18 06:50:29\"}', 'true', NULL),
(927, '2025-04-26 08:46:42', 'edit', 'kas', '19', 'UPDATE kas SET `username` = ?, `jumlah_kas` = ?, `jenis_kas` = ?, `deskripsi` = ? WHERE  kas.id_kas = ? ', '2', '::1', 'kas/edit/19/', '{\"username\":\"admin\",\"jumlah_kas\":\"50000\",\"jenis_kas\":\"Pemasukan\",\"deskripsi\":\"\"}', 'true', NULL),
(928, '2025-04-26 08:46:54', 'edit', 'kas', '19', 'UPDATE kas SET `username` = ?, `jumlah_kas` = ?, `jenis_kas` = ?, `deskripsi` = ? WHERE  kas.id_kas = ? ', '2', '::1', 'kas/edit/19/', '{\"username\":\"admin\",\"jumlah_kas\":\"50000\",\"jenis_kas\":\"Pengeluaran\",\"deskripsi\":\"\"}', 'true', NULL),
(929, '2025-04-26 08:47:09', 'edit', 'kas', '19', 'UPDATE kas SET `username` = ?, `jumlah_kas` = ?, `jenis_kas` = ?, `deskripsi` = ? WHERE  kas.id_kas = ? ', '2', '::1', 'kas/edit/19/', '{\"username\":\"admin\",\"jumlah_kas\":\"50000\",\"jenis_kas\":\"Pemasukan\",\"deskripsi\":\"\"}', 'true', NULL),
(930, '2025-04-26 08:47:51', 'add', 'kas', '20', 'INSERT INTO kas (`username`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '2', '::1', 'kas/add', '{\"username\":\"admin\",\"jumlah_kas\":\"6000\",\"jenis_kas\":\"Pengeluaran\"}', 'true', NULL),
(931, '2025-04-26 08:56:36', 'add', 'dokumentasi', '20', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"yrdy\",\"foto\":\"uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-17 at 17.00.03_76adfc0c.jpg\",\"deskripsi_dokumen\":\"test\",\"username\":\"admin\",\"waktu_upload\":\"2025-04-26 08:56:28\"}', 'true', NULL),
(932, '2025-04-26 08:57:47', 'delete', 'kas', '20', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/20/', '[]', 'true', NULL),
(933, '2025-04-26 08:57:49', 'delete', 'kas', '19', 'DELETE FROM kas WHERE  kas.id_kas in ( ? ) ', '2', '::1', 'kas/delete/19/', '[]', 'true', NULL),
(934, '2025-04-26 09:01:46', 'add', 'inventaris', '30', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"nama_barang\":\"Vacuum Cleaner\",\"jumlah_barang\":\"01\",\"status_barang\":\"Baik\",\"username\":\"admin\",\"tanggal_masuk\":\"2025-04-26 09:01:31\"}', 'true', NULL),
(935, '2025-04-26 09:01:59', 'add', 'inventaris', '31', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"nama_barang\":\"Mikrofon\",\"jumlah_barang\":\"05\",\"status_barang\":\"Rusak Ringan\",\"username\":\"admin\",\"tanggal_masuk\":\"2025-04-26 09:01:46\"}', 'true', NULL),
(936, '2025-04-26 09:03:08', 'add', 'kas', '21', 'INSERT INTO kas (`username`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '2', '::1', 'kas/add', '{\"username\":\"admin\",\"jumlah_kas\":\"5000\",\"jenis_kas\":\"Pemasukan\"}', 'true', NULL),
(937, '2025-04-26 09:03:53', 'delete', 'absensi_kegiatan', '61', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/61/', '[]', 'true', NULL),
(938, '2025-04-26 09:03:55', 'delete', 'absensi_kegiatan', '60', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/60/', '[]', 'true', NULL),
(939, '2025-04-26 09:03:56', 'delete', 'absensi_kegiatan', '56', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/56/', '[]', 'true', NULL),
(940, '2025-04-26 09:04:00', 'add', 'absensi_kegiatan', '62', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '2', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"admin\",\"status\":\"Hadir\"}', 'true', NULL),
(941, '2025-04-26 09:04:15', 'delete', 'absensi_kegiatan', '62', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '2', '::1', 'absensi_kegiatan/delete/62/', '[]', 'true', NULL),
(942, '2025-04-26 09:05:55', 'add', 'inventaris', '32', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"nama_barang\":\"Ember\",\"jumlah_barang\":\"05\",\"status_barang\":\"Rusak Berat\",\"username\":\"admin\",\"tanggal_masuk\":\"2025-04-26 09:05:46\"}', 'true', NULL),
(943, '2025-04-26 09:13:34', 'delete', 'kegiatan', '24', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/24/', '[]', 'true', NULL),
(944, '2025-04-26 09:14:03', 'add', 'kegiatan', '25', 'INSERT INTO kegiatan (`username`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"username\":\"admin\",\"nama_kegiatan\":\"Kajian Rutin Jum&#39;at\",\"lokasi_kegiatan\":\"SMKN46 Jakarta\",\"deskripsi_kegiatan\":\"Kajian islami setelah sholat Jum&#39;at di masjid sekolah.\",\"kategori_kegiatan\":\"Kajian\",\"tanggal_kegiatan\":\"2025-04-26 09:13:34\"}', 'true', NULL),
(945, '2025-04-26 09:14:30', 'add', 'kegiatan', '26', 'INSERT INTO kegiatan (`username`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"username\":\"admin\",\"nama_kegiatan\":\"Latihan Pidato Dakwah\",\"lokasi_kegiatan\":\"SMKN46 Jakarta\",\"deskripsi_kegiatan\":\"\\tSesi latihan public speaking bertema dakwah untuk anggota Rohis.\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_kegiatan\":\"2025-04-26 09:14:03\"}', 'true', NULL),
(946, '2025-04-26 09:14:50', 'add', 'kegiatan', '27', 'INSERT INTO kegiatan (`username`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"username\":\"admin\",\"nama_kegiatan\":\"Bakti Sosial ke Panti Asuhan\",\"lokasi_kegiatan\":\"SMKN 46 Jakarta\",\"deskripsi_kegiatan\":\"Kegiatan sosial berbagi ke panti asuhan di kota.\",\"kategori_kegiatan\":\"Bakti Sosial\",\"tanggal_kegiatan\":\"2025-04-26 09:14:30\"}', 'true', NULL),
(947, '2025-04-26 09:15:10', 'add', 'kegiatan', '28', 'INSERT INTO kegiatan (`username`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"username\":\"admin\",\"nama_kegiatan\":\"Pesantren Kilat Ramadhan\",\"lokasi_kegiatan\":\"SMKN46 Jakarta\",\"deskripsi_kegiatan\":\"Kegiatan intensif keislaman selama Ramadhan.\",\"kategori_kegiatan\":\"Acara\",\"tanggal_kegiatan\":\"2025-04-26 09:14:50\"}', 'true', NULL),
(948, '2025-04-26 09:15:51', 'edit', 'kegiatan', '23', 'UPDATE kegiatan SET `username` = ?, `nama_kegiatan` = ?, `lokasi_kegiatan` = ?, `deskripsi_kegiatan` = ?, `kategori_kegiatan` = ?, `tanggal_kegiatan` = ? WHERE  kegiatan.id_kegiatan = ? ', '2', '::1', 'kegiatan/edit/23/', '{\"username\":\"admin\",\"nama_kegiatan\":\"Maulid\",\"lokasi_kegiatan\":\"SMKN46 Jakarta\",\"deskripsi_kegiatan\":\"Kegiatan maulid di sekolah\",\"kategori_kegiatan\":\"Acara\",\"tanggal_kegiatan\":\"2025-04-18 06:50:29\"}', 'true', NULL),
(949, '2025-04-26 09:16:13', 'add', 'kegiatan', '29', 'INSERT INTO kegiatan (`username`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'kegiatan/add', '{\"username\":\"admin\",\"nama_kegiatan\":\"test\",\"lokasi_kegiatan\":\"test\",\"deskripsi_kegiatan\":\"test\",\"kategori_kegiatan\":\"Meeting\",\"tanggal_kegiatan\":\"2025-04-26 09:16:05\"}', 'true', NULL),
(950, '2025-04-26 09:16:15', 'delete', 'kegiatan', '29', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '2', '::1', 'kegiatan/delete/29/', '[]', 'true', NULL),
(951, '2025-04-26 09:16:21', 'delete', 'pengumuman', '23', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/23/', '[]', 'true', NULL),
(952, '2025-04-26 09:16:22', 'delete', 'pengumuman', '22', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/22/', '[]', 'true', NULL),
(953, '2025-04-26 09:16:23', 'delete', 'pengumuman', '21', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '2', '::1', 'pengumuman/delete/21/', '[]', 'true', NULL),
(954, '2025-04-26 09:17:02', 'add', 'pengumuman', '24', 'INSERT INTO pengumuman (`username`, `judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"username\":\"admin\",\"judul_pengumuman\":\"Jadwal Kajian Rutin Jumat\",\"isi_pengumuman\":\"Assalamu&#39;alaikum, Kajian Rutin akan kembali diadakan setiap Jumat jam 13.00.\",\"nama_kegiatan\":\"Kajian Rutin Jum&#39;at\",\"tanggal_pengumuman\":\"2025-04-25 13:11:00\",\"tanggal_kegiatan\":\"2025-04-26 09:14:50\"}', 'true', NULL),
(955, '2025-04-26 09:17:31', 'add', 'pengumuman', '25', 'INSERT INTO pengumuman (`username`, `judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'pengumuman/add', '{\"username\":\"admin\",\"judul_pengumuman\":\"Pesantren Kilat Dimulai\",\"isi_pengumuman\":\"Pesantren Kilat akan dimulai 15 Maret. Pastikan membawa perlengkapan pribadi.\",\"nama_kegiatan\":\"Pesantren Kilat Ramadhan\",\"tanggal_pengumuman\":\"2025-04-26 09:17:10\",\"tanggal_kegiatan\":\"2025-04-26 09:14:03\"}', 'true', NULL),
(956, '2025-04-26 09:22:30', 'add', 'inventaris', '33', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'inventaris/add', '{\"nama_barang\":\"Karpet Masjid\",\"jumlah_barang\":\"03\",\"status_barang\":\"Baik\",\"username\":\"admin\",\"tanggal_masuk\":\"2025-04-26 09:22:24\"}', 'true', NULL),
(957, '2025-04-26 09:22:51', 'view', 'inventaris', '33', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk, username FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '2', '::1', 'inventaris/view/33', '[]', 'true', NULL),
(958, '2025-04-26 09:22:56', 'view', 'kegiatan', '28', 'SELECT   id_kegiatan, nama_kegiatan, lokasi_kegiatan, deskripsi_kegiatan, kategori_kegiatan, tanggal_kegiatan, username FROM kegiatan WHERE  kegiatan.id_kegiatan = ?  LIMIT 1', '2', '::1', 'kegiatan/view/28', '[]', 'true', NULL),
(959, '2025-04-26 09:23:16', 'view', 'kegiatan', '28', 'SELECT   id_kegiatan, nama_kegiatan, lokasi_kegiatan, deskripsi_kegiatan, kategori_kegiatan, tanggal_kegiatan, username FROM kegiatan WHERE  kegiatan.id_kegiatan = ?  LIMIT 1', '2', '::1', 'kegiatan/view/28', '[]', 'true', NULL),
(960, '2025-04-26 09:28:47', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(961, '2025-04-26 09:33:58', 'delete', 'user', '73', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/73/', '[]', 'true', NULL),
(962, '2025-04-26 09:34:00', 'delete', 'user', '71', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/71/', '[]', 'true', NULL),
(963, '2025-04-26 09:34:02', 'delete', 'user', '70', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/70/', '[]', 'true', NULL),
(964, '2025-04-26 09:34:04', 'delete', 'user', '69', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/69/', '[]', 'true', NULL),
(965, '2025-04-26 09:34:05', 'delete', 'user', '68', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/68/', '[]', 'true', NULL),
(966, '2025-04-26 09:34:10', 'delete', 'user', '15', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/15/', '[]', 'true', NULL),
(967, '2025-04-26 09:34:26', 'edit', 'user', '8', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `jabatan` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/8/', '{\"username\":\"pengurus\",\"email\":\"pengurus23@gmail.com\",\"password\":\"$2y$10$FlhCajsEKg4ZAYv2iOjLQ.6SLzDSnQm1r.UcQP61IzwFhc2jJjd5W\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/zvw5k76xidurc2l.png\",\"account_status\":\"Active\",\"jabatan\":\"Sekretaris\"}', 'true', NULL),
(968, '2025-04-26 09:35:16', 'edit', 'user', '16', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role` = ?, `jabatan` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/16/', '{\"username\":\"Fajri\",\"email\":\"fajri12@gmail.com\",\"password\":\"$2y$10$KG.zQxzd.xsJD2xC2hgfm.yKm68KNL7ewbAhPGKmZytgF.wlRYn\\/6\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/1wldc3q2o9uzjxt.png\",\"account_status\":\"Active\",\"role\":\"Pengurus\",\"jabatan\":\"Anggota\"}', 'true', NULL),
(969, '2025-04-26 09:35:30', 'edit', 'user', '8', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role` = ?, `jabatan` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/8/', '{\"username\":\"pengurus\",\"email\":\"pengurus23@gmail.com\",\"password\":\"$2y$10$Nqdup3Ojee8NiN9AaF3Zwu46qjn1.GYnRXf\\/ZqWZ3TUQtJm0xy28S\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/zvw5k76xidurc2l.png\",\"account_status\":\"Active\",\"role\":\"Pengurus\",\"jabatan\":\"Sekretaris\"}', 'true', NULL),
(970, '2025-04-26 09:35:42', 'edit', 'user', '4', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `account_status` = ?, `role` = ?, `jabatan` = ? WHERE  user.id_user = ? ', '2', '::1', 'user/edit/4/', '{\"username\":\"user\",\"email\":\"user@gmail.com\",\"password\":\"$2y$10$VKpB5d6RscBrOJO6NDrGSO1KvmVcGWcM1oBC1EzBsLRFiGCU1i43u\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/b7hcafz6yq4gts0.jpg\",\"account_status\":\"Active\",\"role\":\"User\",\"jabatan\":\"Anggota\"}', 'true', NULL),
(971, '2025-04-26 09:36:56', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '16', '::1', 'index/login/', '{\"username\":\"Fajri\",\"password\":\"$2y$10$KG.zQxzd.xsJD2xC2hgfm.yKm68KNL7ewbAhPGKmZytgF.wlRYn\\/6\"}', 'true', NULL),
(972, '2025-04-26 09:45:10', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(973, '2025-04-26 09:45:29', 'add', 'user', '74', 'INSERT INTO user (`username`, `email`, `password`, `photo`, `role`, `jabatan`, `account_status`)  VALUES (?, ?, ?, ?, ?, ?, ?)', NULL, '::1', 'index/register', '{\"username\":\"test\",\"email\":\"test2@gmail.com\",\"password\":\"$2y$10$NvMZJ\\/BMgsSTr5va5ErjLeZlXfsmgakiXlb.xv9Avz2tw\\/e02IafC\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/l8rk5u60o1v4_gf.jpg\",\"role\":\"User\",\"jabatan\":\"Anggota\"}', 'true', NULL),
(974, '2025-04-26 09:45:29', 'userlogin', 'user', '74', 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '74', '::1', 'index/register', '{\"username\":\"test\",\"email\":\"test2@gmail.com\",\"password\":\"$2y$10$NvMZJ\\/BMgsSTr5va5ErjLeZlXfsmgakiXlb.xv9Avz2tw\\/e02IafC\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/l8rk5u60o1v4_gf.jpg\",\"role\":\"User\",\"jabatan\":\"Anggota\"}', 'true', NULL),
(975, '2025-04-26 09:50:32', 'userlogout', 'user', NULL, NULL, '74', '::1', 'index/logout', '[]', 'true', NULL),
(976, '2025-04-26 09:50:38', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$kx4ZbQcXboUP4ss1DvkfkO\\/PzM1Sp4bkrKyCvvHD\\/CcifRBedsUam\"}', 'true', NULL),
(977, '2025-04-26 09:50:49', 'delete', 'user', '74', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/74/', '[]', 'true', NULL),
(978, '2025-04-26 09:52:43', 'delete', 'dokumentasi', '20', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/20/', '[]', 'true', NULL),
(979, '2025-04-26 09:53:50', 'add', 'dokumentasi', '21', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Bakti Sosial ke Panti Asuhan\",\"foto\":\"uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-17 at 17.00.03_76adfc0c.jpg\",\"deskripsi_dokumen\":\"test\",\"username\":\"admin\",\"waktu_upload\":\"2025-04-26 09:53:44\"}', 'true', NULL),
(980, '2025-04-26 09:53:54', 'delete', 'dokumentasi', '21', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/21/', '[]', 'true', NULL),
(981, '2025-04-26 09:54:15', 'delete', 'dokumentasi', '19', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/19/', '[]', 'true', NULL),
(982, '2025-04-26 09:54:23', 'add', 'dokumentasi', '22', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Kajian Rutin Jum&#39;at\",\"foto\":\"uploads\\/files\\/RohisManager - Artboard-1-3.webp\",\"deskripsi_dokumen\":\"test\",\"username\":\"admin\",\"waktu_upload\":\"2025-04-26 09:54:16\"}', 'true', NULL),
(983, '2025-04-26 09:54:29', 'delete', 'dokumentasi', '22', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/22/', '[]', 'true', NULL),
(984, '2025-04-26 09:56:05', 'add', 'dokumentasi', '23', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?, ?)', '2', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-17 at 17.00.03_76adfc0c.jpg\",\"deskripsi_dokumen\":\"test\",\"username\":\"admin\",\"waktu_upload\":\"2025-04-26 09:55:59\"}', 'true', NULL),
(985, '2025-04-26 09:56:27', 'add', 'user', '75', 'INSERT INTO user (`username`, `email`, `password`, `account_status`, `role`, `jabatan`)  VALUES (?, ?, ?, ?, ?, ?)', '2', '::1', 'user/add', '{\"username\":\"test\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$zVKfssX5A1W0sDDfIrj1hevy8GiD1oimNtEpm18\\/16feiHuGr0r2e\",\"account_status\":\"Active\",\"role\":\"Administrator\",\"jabatan\":\"Anggota\"}', 'true', NULL),
(986, '2025-04-26 09:56:33', 'delete', 'user', '75', 'DELETE FROM user WHERE  user.id_user in ( ? ) ', '2', '::1', 'user/delete/75/', '[]', 'true', NULL),
(987, '2025-04-26 09:59:13', 'delete', 'dokumentasi', '23', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '2', '::1', 'dokumentasi/delete/23/', '[]', 'true', NULL),
(988, '2025-04-26 09:59:32', 'add', 'absensi_kegiatan', '63', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '16', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Bakti Sosial ke Panti Asuhan\",\"username\":\"Fajri\",\"status\":\"Hadir\"}', 'true', NULL),
(989, '2025-04-26 10:00:25', 'add', 'absensi_kegiatan', '64', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '16', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Kajian Rutin Jum&#39;at\",\"username\":\"Fajri\",\"status\":\"Izin\"}', 'true', NULL),
(990, '2025-04-26 10:00:29', 'delete', 'absensi_kegiatan', '64', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '16', '::1', 'absensi_kegiatan/delete/64/', '[]', 'true', NULL),
(991, '2025-04-26 10:00:39', 'delete', 'absensi_kegiatan', '63', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '16', '::1', 'absensi_kegiatan/delete/63/', '[]', 'true', NULL),
(992, '2025-04-26 10:00:44', 'add', 'absensi_kegiatan', '65', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '16', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Pesantren Kilat Ramadhan\",\"username\":\"Fajri\",\"status\":\"Hadir\"}', 'true', NULL),
(993, '2025-04-26 10:01:27', 'userlogout', 'user', NULL, NULL, '16', '::1', 'index/logout', '[]', 'true', NULL),
(994, '2025-04-26 10:01:37', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '4', '::1', 'index/login/', '{\"username\":\"user\",\"password\":\"$2y$10$VKpB5d6RscBrOJO6NDrGSO1KvmVcGWcM1oBC1EzBsLRFiGCU1i43u\"}', 'true', NULL),
(995, '2025-04-26 10:04:55', 'add', 'absensi_kegiatan', '66', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '4', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Kajian Rutin Jum&#39;at\",\"username\":\"user\",\"status\":\"Izin\"}', 'true', NULL),
(996, '2025-04-26 10:10:22', 'view', 'user', '72', 'SELECT   id_user, username, role, jabatan FROM user WHERE  user.id_user = ?  LIMIT 1', '4', '::1', 'user/view/72', '[]', 'true', NULL),
(997, '2025-04-26 10:10:39', 'view', 'pengumuman', '25', 'SELECT   id_pengumuman, judul_pengumuman, isi_pengumuman, nama_kegiatan, tanggal_pengumuman, tanggal_kegiatan, username FROM pengumuman WHERE  pengumuman.id_pengumuman = ?  LIMIT 1', '4', '::1', 'pengumuman/view/25', '[]', 'true', NULL),
(998, '2025-04-26 10:13:24', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL),
(999, '2025-04-26 10:13:28', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '16', '::1', 'index/login/', '{\"username\":\"fajri\",\"password\":\"$2y$10$KG.zQxzd.xsJD2xC2hgfm.yKm68KNL7ewbAhPGKmZytgF.wlRYn\\/6\"}', 'true', NULL),
(1000, '2025-04-26 10:13:33', 'view', 'user', '72', 'SELECT   id_user, username, role, jabatan FROM user WHERE  user.id_user = ?  LIMIT 1', '16', '::1', 'user/view/72', '[]', 'true', NULL),
(1001, '2025-04-26 10:14:03', 'edit', 'user', '16', 'UPDATE user SET `username` = ?, `email` = ?, `password` = ?, `photo` = ?, `jabatan` = ? WHERE  user.id_user = ? ', '16', '::1', 'account/edit//', '{\"username\":\"Fajri\",\"email\":\"fajri12@gmail.com\",\"password\":\"$2y$10$gg23AJA.NKL4bBoh4STQgO4I5NmuIudUlINPdPY9TCzmmfONNnnSy\",\"photo\":\"http:\\/\\/localhost\\/rohismanager\\/uploads\\/files\\/1wldc3q2o9uzjxt.png\",\"jabatan\":\"DKM\"}', 'true', NULL),
(1002, '2025-04-26 10:27:13', 'userlogout', 'user', NULL, NULL, '4', '::1', 'index/logout', '[]', 'true', NULL),
(1003, '2025-04-26 10:27:19', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '16', '::1', 'index/login/', '{\"username\":\"fajri\",\"password\":\"$2y$10$gg23AJA.NKL4bBoh4STQgO4I5NmuIudUlINPdPY9TCzmmfONNnnSy\"}', 'true', NULL),
(1004, '2025-04-26 10:27:41', 'edit', 'pengumuman', '25', 'UPDATE pengumuman SET `username` = ?, `judul_pengumuman` = ?, `isi_pengumuman` = ?, `nama_kegiatan` = ?, `tanggal_pengumuman` = ?, `tanggal_kegiatan` = ? WHERE  pengumuman.id_pengumuman = ? ', '16', '::1', 'pengumuman/edit/25/', '{\"username\":\"admin\",\"judul_pengumuman\":\"Pesantren Kilat Dimulai\",\"isi_pengumuman\":\"Pesantren Kilat akan dimulai 15 Maret. Pastikan membawa perlengkapan pribadi.\",\"nama_kegiatan\":\"Pesantren Kilat Ramadhan\",\"tanggal_pengumuman\":\"2025-03-08 10:17:00\",\"tanggal_kegiatan\":\"2025-04-18 06:50:29\"}', 'true', NULL),
(1005, '2025-04-26 10:28:48', 'edit', 'kegiatan', '25', 'UPDATE kegiatan SET `username` = ?, `nama_kegiatan` = ?, `lokasi_kegiatan` = ?, `deskripsi_kegiatan` = ?, `kategori_kegiatan` = ?, `tanggal_kegiatan` = ? WHERE  kegiatan.id_kegiatan = ? ', '16', '::1', 'kegiatan/edit/25/', '{\"username\":\"admin\",\"nama_kegiatan\":\"Kajian Rutin Jumat\",\"lokasi_kegiatan\":\"SMKN46 Jakarta\",\"deskripsi_kegiatan\":\"Kajian islami setelah sholat Jum&#39;at di masjid sekolah.\",\"kategori_kegiatan\":\"Kajian\",\"tanggal_kegiatan\":\"2025-04-26 09:13:34\"}', 'true', NULL),
(1006, '2025-04-26 10:28:58', 'edit', 'kegiatan', '25', 'UPDATE kegiatan SET `username` = ?, `nama_kegiatan` = ?, `lokasi_kegiatan` = ?, `deskripsi_kegiatan` = ?, `kategori_kegiatan` = ?, `tanggal_kegiatan` = ? WHERE  kegiatan.id_kegiatan = ? ', '16', '::1', 'kegiatan/edit/25/', '{\"username\":\"admin\",\"nama_kegiatan\":\"Kajian Rutin Jum&#39;at\",\"lokasi_kegiatan\":\"SMKN46 Jakarta\",\"deskripsi_kegiatan\":\"Kajian islami setelah sholat Jum&#39;at di masjid sekolah.\",\"kategori_kegiatan\":\"Kajian\",\"tanggal_kegiatan\":\"2025-04-26 09:13:34\"}', 'true', NULL),
(1007, '2025-04-26 10:29:17', 'edit', 'kegiatan', '25', 'UPDATE kegiatan SET `username` = ?, `nama_kegiatan` = ?, `lokasi_kegiatan` = ?, `deskripsi_kegiatan` = ?, `kategori_kegiatan` = ?, `tanggal_kegiatan` = ? WHERE  kegiatan.id_kegiatan = ? ', '16', '::1', 'kegiatan/edit/25/', '{\"username\":\"admin\",\"nama_kegiatan\":\"Kajian Rutin Jumat\",\"lokasi_kegiatan\":\"SMKN46 Jakarta\",\"deskripsi_kegiatan\":\"Kajian islami setelah sholat Jum&#39;at di masjid sekolah.\",\"kategori_kegiatan\":\"Kajian\",\"tanggal_kegiatan\":\"2025-04-26 09:13:34\"}', 'true', NULL),
(1008, '2025-04-26 10:30:47', 'add', 'dokumentasi', '24', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Bakti Sosial ke Panti Asuhan\",\"foto\":\"uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-16 at 11.23.58_6658c643.jpg\",\"deskripsi_dokumen\":\"test\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 10:30:35\"}', 'true', NULL),
(1009, '2025-04-26 10:31:17', 'add', 'absensi_kegiatan', '67', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '16', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"Fajri\",\"status\":\"Izin\"}', 'true', NULL),
(1010, '2025-04-26 10:31:25', 'add', 'kas', '22', 'INSERT INTO kas (`username`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '16', '::1', 'kas/add', '{\"username\":\"Fajri\",\"jumlah_kas\":\"600000\",\"jenis_kas\":\"Pemasukan\"}', 'true', NULL),
(1011, '2025-04-26 10:31:37', 'delete', 'inventaris', '33', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '16', '::1', 'inventaris/delete/33/', '[]', 'true', NULL),
(1012, '2025-04-26 10:31:41', 'delete', 'inventaris', '32', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '16', '::1', 'inventaris/delete/32/', '[]', 'true', NULL),
(1013, '2025-04-26 10:31:43', 'delete', 'inventaris', '31', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '16', '::1', 'inventaris/delete/31/', '[]', 'true', NULL),
(1014, '2025-04-26 10:31:45', 'delete', 'inventaris', '30', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '16', '::1', 'inventaris/delete/30/', '[]', 'true', NULL),
(1015, '2025-04-26 10:31:47', 'delete', 'inventaris', '29', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '16', '::1', 'inventaris/delete/29/', '[]', 'true', NULL),
(1016, '2025-04-26 10:31:49', 'delete', 'inventaris', '28', 'DELETE FROM inventaris WHERE  inventaris.id_barang in ( ? ) ', '16', '::1', 'inventaris/delete/28/', '[]', 'true', NULL),
(1017, '2025-04-26 10:32:02', 'add', 'inventaris', '34', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '16', '::1', 'inventaris/add', '{\"nama_barang\":\"Sapu\",\"jumlah_barang\":\"4\",\"status_barang\":\"Baik\",\"username\":\"Fajri\",\"tanggal_masuk\":\"2025-04-26 10:31:49\"}', 'true', NULL),
(1018, '2025-04-26 10:32:16', 'add', 'inventaris', '35', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '16', '::1', 'inventaris/add', '{\"nama_barang\":\"Kipas\",\"jumlah_barang\":\"04\",\"status_barang\":\"Rusak Ringan\",\"username\":\"Fajri\",\"tanggal_masuk\":\"2025-04-26 10:32:02\"}', 'true', NULL),
(1019, '2025-04-26 10:32:23', 'add', 'inventaris', '36', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '16', '::1', 'inventaris/add', '{\"nama_barang\":\"Vacuum Cleaner\",\"jumlah_barang\":\"0\",\"status_barang\":\"Rusak Berat\",\"username\":\"Fajri\",\"tanggal_masuk\":\"2025-04-26 10:32:16\"}', 'true', NULL),
(1020, '2025-04-26 10:32:34', 'add', 'inventaris', '37', 'INSERT INTO inventaris (`nama_barang`, `jumlah_barang`, `status_barang`, `username`, `tanggal_masuk`)  VALUES (?, ?, ?, ?, ?)', '16', '::1', 'inventaris/add', '{\"nama_barang\":\"Pel Lantai\",\"jumlah_barang\":\"03\",\"status_barang\":\"Baik\",\"username\":\"Fajri\",\"tanggal_masuk\":\"2025-04-26 10:32:23\"}', 'true', NULL),
(1021, '2025-04-26 10:32:47', 'view', 'inventaris', '37', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk, username FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '16', '::1', 'inventaris/view/37', '[]', 'true', NULL),
(1022, '2025-04-26 10:32:56', 'view', 'inventaris', '37', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk, username FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '16', '::1', 'inventaris/view/37', '[]', 'true', NULL),
(1023, '2025-04-26 10:33:48', 'delete', 'pengumuman', '25', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '16', '::1', 'pengumuman/delete/25/', '[]', 'true', NULL),
(1024, '2025-04-26 10:33:54', 'edit', 'pengumuman', '24', 'UPDATE pengumuman SET `username` = ?, `judul_pengumuman` = ?, `isi_pengumuman` = ?, `nama_kegiatan` = ?, `tanggal_pengumuman` = ?, `tanggal_kegiatan` = ? WHERE  pengumuman.id_pengumuman = ? ', '16', '::1', 'pengumuman/edit/24/', '{\"username\":\"admin\",\"judul_pengumuman\":\"Jadwal Kajian Rutin Jumat\",\"isi_pengumuman\":\"Assalamu&#39;alaikum, Kajian Rutin akan kembali diadakan setiap Jumat jam 13.00.\",\"nama_kegiatan\":\"\",\"tanggal_pengumuman\":\"2025-04-25 13:11:00\",\"tanggal_kegiatan\":\"\"}', 'true', NULL),
(1025, '2025-04-26 10:35:04', 'edit', 'pengumuman', '14', 'UPDATE pengumuman SET `username` = ?, `judul_pengumuman` = ?, `isi_pengumuman` = ?, `nama_kegiatan` = ?, `tanggal_pengumuman` = ?, `tanggal_kegiatan` = ? WHERE  pengumuman.id_pengumuman = ? ', '16', '::1', 'pengumuman/edit/14/', '{\"username\":\"\",\"judul_pengumuman\":\" Latihan Persiapan Maulid\",\"isi_pengumuman\":\"&#34;Diharapkan seluruh siswa mengikuti latihan persiapan untuk acara Maulid yang akan diselenggarakan pada tanggal 25 Februari 2025. Kehadiran adalah wajib untuk semua anggota.&#34;\",\"nama_kegiatan\":\"Maulid\",\"tanggal_pengumuman\":\"2025-02-23 12:44:28\",\"tanggal_kegiatan\":\"\"}', 'true', NULL),
(1026, '2025-04-26 10:35:12', 'delete', 'pengumuman', '14', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '16', '::1', 'pengumuman/delete/14/', '[]', 'true', NULL),
(1027, '2025-04-26 10:35:23', 'add', 'pengumuman', '26', 'INSERT INTO pengumuman (`username`, `judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`)  VALUES (?, ?, ?, ?, ?)', '16', '::1', 'pengumuman/add', '{\"username\":\"Fajri\",\"judul_pengumuman\":\" Latihan Persiapan Maulid\",\"isi_pengumuman\":\"Diharapkan seluruh siswa mengikuti latihan persiapan untuk acara Maulid yang akan diselenggarakan pada tanggal 25 Februari 2025. Kehadiran adalah wajib untuk semua anggota.\",\"nama_kegiatan\":\"Maulid\",\"tanggal_pengumuman\":\"2025-04-26 10:35:12\"}', 'true', NULL),
(1028, '2025-04-26 10:35:34', 'edit', 'pengumuman', '24', 'UPDATE pengumuman SET `username` = ?, `judul_pengumuman` = ?, `isi_pengumuman` = ?, `nama_kegiatan` = ?, `tanggal_pengumuman` = ?, `tanggal_kegiatan` = ? WHERE  pengumuman.id_pengumuman = ? ', '16', '::1', 'pengumuman/edit/24/', '{\"username\":\"admin\",\"judul_pengumuman\":\"Jadwal Kajian Rutin Jumat\",\"isi_pengumuman\":\"Assalamu&#39;alaikum, Kajian Rutin akan kembali diadakan setiap Jumat jam 13.00.\",\"nama_kegiatan\":\"Kajian Rutin Jumat\",\"tanggal_pengumuman\":\"2025-04-25 13:11:00\",\"tanggal_kegiatan\":\"\"}', 'true', NULL),
(1029, '2025-04-26 10:36:24', 'edit', 'kegiatan', '28', 'UPDATE kegiatan SET `username` = ?, `nama_kegiatan` = ?, `lokasi_kegiatan` = ?, `deskripsi_kegiatan` = ?, `kategori_kegiatan` = ?, `tanggal_kegiatan` = ? WHERE  kegiatan.id_kegiatan = ? ', '16', '::1', 'kegiatan/edit/28/', '{\"username\":\"admin\",\"nama_kegiatan\":\"Pesantren Kilat Ramadhan\",\"lokasi_kegiatan\":\"SMKN46 Jakarta\",\"deskripsi_kegiatan\":\"Kegiatan intensif keislaman selama Ramadhan.\",\"kategori_kegiatan\":\"Acara\",\"tanggal_kegiatan\":\"2025-04-26 09:20:00\"}', 'true', NULL),
(1030, '2025-04-26 10:36:54', 'edit', 'kegiatan', '27', 'UPDATE kegiatan SET `username` = ?, `nama_kegiatan` = ?, `lokasi_kegiatan` = ?, `deskripsi_kegiatan` = ?, `kategori_kegiatan` = ?, `tanggal_kegiatan` = ? WHERE  kegiatan.id_kegiatan = ? ', '16', '::1', 'kegiatan/edit/27/', '{\"username\":\"admin\",\"nama_kegiatan\":\"Bakti Sosial ke Panti Asuhan\",\"lokasi_kegiatan\":\"SMKN 46 Jakarta\",\"deskripsi_kegiatan\":\"Kegiatan sosial berbagi ke panti asuhan di kota.\",\"kategori_kegiatan\":\"Bakti Sosial\",\"tanggal_kegiatan\":\"2025-04-26 09:25:00\"}', 'true', NULL),
(1031, '2025-04-26 10:37:31', 'edit', 'kegiatan', '26', 'UPDATE kegiatan SET `username` = ?, `nama_kegiatan` = ?, `lokasi_kegiatan` = ?, `deskripsi_kegiatan` = ?, `kategori_kegiatan` = ?, `tanggal_kegiatan` = ? WHERE  kegiatan.id_kegiatan = ? ', '16', '::1', 'kegiatan/edit/26/', '{\"username\":\"admin\",\"nama_kegiatan\":\"Latihan Pidato Dakwah\",\"lokasi_kegiatan\":\"SMKN46 Jakarta\",\"deskripsi_kegiatan\":\"\\tSesi latihan public speaking bertema dakwah untuk anggota Rohis.\",\"kategori_kegiatan\":\"Latihan\",\"tanggal_kegiatan\":\"2025-04-26 09:15:00\"}', 'true', NULL),
(1032, '2025-04-26 10:37:38', 'view', 'kegiatan', '28', 'SELECT   id_kegiatan, nama_kegiatan, lokasi_kegiatan, deskripsi_kegiatan, kategori_kegiatan, tanggal_kegiatan, username FROM kegiatan WHERE  kegiatan.id_kegiatan = ?  LIMIT 1', '16', '::1', 'kegiatan/view/28', '[]', 'true', NULL),
(1033, '2025-04-26 10:37:48', 'view', 'kegiatan', '27', 'SELECT   id_kegiatan, nama_kegiatan, lokasi_kegiatan, deskripsi_kegiatan, kategori_kegiatan, tanggal_kegiatan, username FROM kegiatan WHERE  kegiatan.id_kegiatan = ?  LIMIT 1', '16', '::1', 'kegiatan/view/27', '[]', 'true', NULL),
(1034, '2025-04-26 10:37:51', 'view', 'kegiatan', '26', 'SELECT   id_kegiatan, nama_kegiatan, lokasi_kegiatan, deskripsi_kegiatan, kategori_kegiatan, tanggal_kegiatan, username FROM kegiatan WHERE  kegiatan.id_kegiatan = ?  LIMIT 1', '16', '::1', 'kegiatan/view/26', '[]', 'true', NULL),
(1035, '2025-04-26 10:41:47', 'add', 'absensi_kegiatan', '68', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '16', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Bakti Sosial ke Panti Asuhan\",\"username\":\"Fajri\",\"status\":\"Hadir\"}', 'true', NULL),
(1036, '2025-04-26 10:42:04', 'add', 'absensi_kegiatan', '69', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '16', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Pesantren Kilat Ramadhan\",\"username\":\"Fajri\",\"status\":\"Sakit\"}', 'true', NULL),
(1037, '2025-04-26 10:43:23', 'userlogout', 'user', NULL, NULL, '16', '::1', 'index/logout', '[]', 'true', NULL),
(1038, '2025-04-26 10:43:29', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '4', '::1', 'index/login/', '{\"username\":\"user\",\"password\":\"$2y$10$VKpB5d6RscBrOJO6NDrGSO1KvmVcGWcM1oBC1EzBsLRFiGCU1i43u\"}', 'true', NULL),
(1039, '2025-04-26 10:45:03', 'add', 'absensi_kegiatan', '70', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '4', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Latihan Pidato Dakwah\",\"username\":\"user\",\"status\":\"Izin\"}', 'true', NULL),
(1040, '2025-04-26 10:47:23', 'view', 'inventaris', '37', 'SELECT   id_barang, nama_barang, jumlah_barang, status_barang, tanggal_masuk, username FROM inventaris WHERE  inventaris.id_barang = ?  LIMIT 1', '16', '::1', 'inventaris/view/37', '[]', 'true', NULL),
(1041, '2025-04-26 10:48:00', 'delete', 'absensi_kegiatan', '70', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '16', '::1', 'absensi_kegiatan/delete/70/', '[]', 'true', NULL),
(1042, '2025-04-26 10:48:02', 'delete', 'absensi_kegiatan', '69', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '16', '::1', 'absensi_kegiatan/delete/69/', '[]', 'true', NULL),
(1043, '2025-04-26 10:48:04', 'delete', 'absensi_kegiatan', '68', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '16', '::1', 'absensi_kegiatan/delete/68/', '[]', 'true', NULL),
(1044, '2025-04-26 10:48:05', 'delete', 'absensi_kegiatan', '67', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '16', '::1', 'absensi_kegiatan/delete/67/', '[]', 'true', NULL),
(1045, '2025-04-26 10:48:07', 'delete', 'absensi_kegiatan', '66', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '16', '::1', 'absensi_kegiatan/delete/66/', '[]', 'true', NULL),
(1046, '2025-04-26 10:48:09', 'delete', 'absensi_kegiatan', '65', 'DELETE FROM absensi_kegiatan WHERE  absensi_kegiatan.id_absensi in ( ? ) ', '16', '::1', 'absensi_kegiatan/delete/65/', '[]', 'true', NULL),
(1047, '2025-04-26 10:48:35', 'add', 'absensi_kegiatan', '71', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '16', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Bakti Sosial ke Panti Asuhan\",\"username\":\"Fajri\",\"status\":\"Hadir\"}', 'true', NULL),
(1048, '2025-04-26 10:48:57', 'add', 'absensi_kegiatan', '72', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '4', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Maulid\",\"username\":\"user\",\"status\":\"Izin\"}', 'true', NULL),
(1049, '2025-04-26 10:49:23', 'add', 'absensi_kegiatan', '73', 'INSERT INTO absensi_kegiatan (`nama_kegiatan`, `username`, `status`)  VALUES (?, ?, ?)', '16', '::1', 'absensi_kegiatan/add', '{\"nama_kegiatan\":\"Pesantren Kilat Ramadhan\",\"username\":\"Fajri\",\"status\":\"Hadir\"}', 'true', NULL),
(1050, '2025-04-26 10:49:42', 'add', 'dokumentasi', '25', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Latihan Pidato Dakwah\",\"foto\":\"uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-16 at 06.48.45_836c07af.jpg\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 10:49:29\"}', 'true', NULL),
(1051, '2025-04-26 10:49:51', 'add', 'kegiatan', '30', 'INSERT INTO kegiatan (`username`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `kategori_kegiatan`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '16', '::1', 'kegiatan/add', '{\"username\":\"Fajri\",\"nama_kegiatan\":\"test\",\"lokasi_kegiatan\":\"test\",\"deskripsi_kegiatan\":\"tset\",\"kategori_kegiatan\":\"Lomba\",\"tanggal_kegiatan\":\"2025-04-26 10:49:44\"}', 'true', NULL),
(1052, '2025-04-26 10:49:54', 'delete', 'kegiatan', '30', 'DELETE FROM kegiatan WHERE  kegiatan.id_kegiatan in ( ? ) ', '16', '::1', 'kegiatan/delete/30/', '[]', 'true', NULL),
(1053, '2025-04-26 10:50:01', 'add', 'pengumuman', '27', 'INSERT INTO pengumuman (`username`, `judul_pengumuman`, `isi_pengumuman`, `nama_kegiatan`, `tanggal_pengumuman`, `tanggal_kegiatan`)  VALUES (?, ?, ?, ?, ?, ?)', '16', '::1', 'pengumuman/add', '{\"username\":\"Fajri\",\"judul_pengumuman\":\"test\",\"isi_pengumuman\":\"test\",\"nama_kegiatan\":\"Kajian Rutin Jumat\",\"tanggal_pengumuman\":\"2025-04-26 10:49:55\",\"tanggal_kegiatan\":\"2025-04-26 09:13:34\"}', 'true', NULL),
(1054, '2025-04-26 10:50:03', 'delete', 'pengumuman', '27', 'DELETE FROM pengumuman WHERE  pengumuman.id_pengumuman in ( ? ) ', '16', '::1', 'pengumuman/delete/27/', '[]', 'true', NULL),
(1055, '2025-04-26 10:50:12', 'add', 'kas', '23', 'INSERT INTO kas (`username`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '16', '::1', 'kas/add', '{\"username\":\"Fajri\",\"jumlah_kas\":\"4000000\",\"jenis_kas\":\"Pemasukan\"}', 'true', NULL),
(1056, '2025-04-26 10:50:41', 'add', 'kas', '24', 'INSERT INTO kas (`username`, `jumlah_kas`, `jenis_kas`)  VALUES (?, ?, ?)', '16', '::1', 'kas/add', '{\"username\":\"Fajri\",\"jumlah_kas\":\"300000\",\"jenis_kas\":\"Pengeluaran\"}', 'true', NULL),
(1057, '2025-04-26 10:51:17', 'view', 'dokumentasi', '25', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, link, username, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '16', '::1', 'dokumentasi/view/25', '[]', 'true', NULL),
(1058, '2025-04-26 10:51:31', 'view', 'dokumentasi', '24', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, link, username, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '16', '::1', 'dokumentasi/view/24', '[]', 'true', NULL),
(1059, '2025-04-26 10:51:40', 'delete', 'dokumentasi', '24', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/24/', '[]', 'true', NULL),
(1060, '2025-04-26 10:52:00', 'delete', 'dokumentasi', '25', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/25/', '[]', 'true', NULL),
(1061, '2025-04-26 10:52:16', 'add', 'dokumentasi', '26', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-16 at 11.23.58_6658c643.jpg\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 10:52:00\"}', 'true', NULL),
(1062, '2025-04-26 10:52:20', 'view', 'dokumentasi', '26', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, link, username, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '16', '::1', 'dokumentasi/view/26', '[]', 'true', NULL),
(1063, '2025-04-26 10:54:39', 'add', 'dokumentasi', '27', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Latihan Pidato Dakwah\",\"foto\":\"uploads\\/files\\/RohisManager - WhatsApp Image 2023-11-15 at 11.37.18_82ba35f3.jpg,uploads\\/files\\/RohisManager - Poster Coto Makassar.png,uploads\\/files\\/RohisManager - Coto Makassar.png\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 10:54:11\"}', 'true', NULL),
(1064, '2025-04-26 10:56:11', 'view', 'dokumentasi', '27', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, link, username, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '16', '::1', 'dokumentasi/view/27', '[]', 'true', NULL),
(1065, '2025-04-26 10:57:17', 'add', 'dokumentasi', '28', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Kajian Rutin Jumat\",\"foto\":\"uploads\\/files\\/RohisManager - WhatsApp Image 2025-04-17 at 17.00.03_76adfc0c.jpg\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 10:57:02\"}', 'true', NULL),
(1066, '2025-04-26 10:57:53', 'add', 'dokumentasi', '29', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Bakti Sosial ke Panti Asuhan\",\"foto\":\"uploads\\/files\\/RohisManager - Tambahkan subjudul.png\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 10:57:45\"}', 'true', NULL),
(1067, '2025-04-26 10:58:09', 'add', 'dokumentasi', '30', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Pesantren Kilat Ramadhan\",\"foto\":\"uploads\\/files\\/RohisManager - Poster Coto Makassar.png\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 10:57:53\"}', 'true', NULL),
(1068, '2025-04-26 10:59:49', 'delete', 'dokumentasi', '30', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/30/', '[]', 'true', NULL);
INSERT INTO `app_logs` (`log_id`, `Timestamp`, `Action`, `TableName`, `RecordID`, `SqlQuery`, `UserID`, `ServerIP`, `RequestUrl`, `RequestData`, `RequestCompleted`, `RequestMsg`) VALUES
(1069, '2025-04-26 10:59:54', 'delete', 'dokumentasi', '29', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/29/', '[]', 'true', NULL),
(1070, '2025-04-26 10:59:57', 'delete', 'dokumentasi', '28', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/28/', '[]', 'true', NULL),
(1071, '2025-04-26 11:00:00', 'delete', 'dokumentasi', '27', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/27/', '[]', 'true', NULL),
(1072, '2025-04-26 11:00:02', 'delete', 'dokumentasi', '26', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/26/', '[]', 'true', NULL),
(1073, '2025-04-26 11:00:13', 'add', 'dokumentasi', '31', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/demo.png\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 11:00:02\"}', 'true', NULL),
(1074, '2025-04-26 11:01:29', 'delete', 'dokumentasi', '31', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/31/', '[]', 'true', NULL),
(1075, '2025-04-26 11:01:38', 'add', 'dokumentasi', '32', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Latihan Pidato Dakwah\",\"foto\":\"uploads\\/files\\/demo.png\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 11:01:29\"}', 'true', NULL),
(1076, '2025-04-26 11:01:47', 'delete', 'dokumentasi', '32', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/32/', '[]', 'true', NULL),
(1077, '2025-04-26 11:01:58', 'add', 'dokumentasi', '33', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/ColorShades.png\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 11:01:47\"}', 'true', NULL),
(1078, '2025-04-26 11:06:05', 'delete', 'dokumentasi', '33', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/33/', '[]', 'true', NULL),
(1079, '2025-04-26 11:09:55', 'add', 'dokumentasi', '34', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Latihan Pidato Dakwah\",\"foto\":\"uploads\\/files\\/Rohis - Tambahkan subjudul.png\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 11:09:47\"}', 'true', NULL),
(1080, '2025-04-26 11:10:50', 'delete', 'dokumentasi', '34', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/34/', '[]', 'true', NULL),
(1081, '2025-04-26 11:10:58', 'add', 'dokumentasi', '35', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Kajian Rutin Jumat\",\"foto\":\"uploads\\/files\\/Rohis - 23-Maret_Kaleng-Legend-Khong-Guan-Selalu-Jadi-Penanda-Hari-Lebaran_1280x720_ADI---Copy.jpg\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 11:10:50\"}', 'true', NULL),
(1082, '2025-04-26 11:11:49', 'add', 'dokumentasi', '36', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Bakti Sosial ke Panti Asuhan\",\"foto\":\"uploads\\/files\\/Rohis - WhatsApp Image 2025-04-17 at 17.00.03_76adfc0c.jpg\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 11:11:16\"}', 'true', NULL),
(1083, '2025-04-26 11:12:02', 'add', 'dokumentasi', '37', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Pesantren Kilat Ramadhan\",\"foto\":\"uploads\\/files\\/Rohis - WhatsApp Image 2025-04-16 at 06.48.46_b986663c.jpg\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 11:11:49\"}', 'true', NULL),
(1084, '2025-04-26 11:12:27', 'add', 'dokumentasi', '38', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/Rohis - WhatsApp Image 2025-02-23 at 22.28.33_5f50050f.jpg\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 11:12:16\"}', 'true', NULL),
(1085, '2025-04-26 11:12:32', 'delete', 'dokumentasi', '37', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/37/', '[]', 'true', NULL),
(1086, '2025-04-26 11:12:34', 'delete', 'dokumentasi', '38', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/38/', '[]', 'true', NULL),
(1087, '2025-04-26 11:12:35', 'delete', 'dokumentasi', '36', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/36/', '[]', 'true', NULL),
(1088, '2025-04-26 11:12:36', 'delete', 'dokumentasi', '35', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/35/', '[]', 'true', NULL),
(1089, '2025-04-26 11:12:44', 'add', 'dokumentasi', '39', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Maulid\",\"foto\":\"uploads\\/files\\/Rohis - demo.png\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 11:12:36\"}', 'true', NULL),
(1090, '2025-04-26 11:12:51', 'delete', 'dokumentasi', '39', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/39/', '[]', 'true', NULL),
(1091, '2025-04-26 11:13:04', 'add', 'dokumentasi', '40', 'INSERT INTO dokumentasi (`nama_kegiatan`, `foto`, `deskripsi_dokumen`, `username`, `waktu_upload`)  VALUES (?, ?, ?, ?, ?)', '16', '::1', 'dokumentasi/add', '{\"nama_kegiatan\":\"Kajian Rutin Jumat\",\"foto\":\"uploads\\/files\\/Rohis - WhatsApp Image 2025-02-23 at 22.28.33_5f50050f.jpg,uploads\\/files\\/Rohis - FireShot Capture 017 - Daftar-Tugas-Harian_app_Http_Controllers_TugasController.php at mai_ - [github.com].png,uploads\\/files\\/Rohis - demo.png,uploads\\/files\\/Rohis - FaviconDaftarTugas.png,uploads\\/files\\/Rohis - WhatsApp Image 2025-04-16 at 11.23.58_6658c643.jpg,uploads\\/files\\/Rohis - WhatsApp Image 2025-04-16 at 06.48.46_6c05d803.jpg,uploads\\/files\\/Rohis - WhatsApp Image 2025-04-16 at 06.48.46_b986663c.jpg,uploads\\/files\\/Rohis - WhatsApp Image 2025-04-16 at 06.48.45_365c9591.jpg,uploads\\/files\\/Rohis - WhatsApp Image 2025-04-16 at 06.48.45_836c07af.jpg,uploads\\/files\\/Rohis - WhatsApp Image 2025-04-16 at 06.48.45_688660f6.jpg\",\"deskripsi_dokumen\":\"test\",\"username\":\"Fajri\",\"waktu_upload\":\"2025-04-26 11:12:51\"}', 'true', NULL),
(1092, '2025-04-26 11:13:06', 'view', 'dokumentasi', '40', 'SELECT   id_dokumentasi, nama_kegiatan, foto, deskripsi_dokumen, link, username, waktu_upload FROM dokumentasi WHERE  dokumentasi.id_dokumentasi = ?  LIMIT 1', '16', '::1', 'dokumentasi/view/40', '[]', 'true', NULL),
(1093, '2025-04-26 11:13:49', 'delete', 'dokumentasi', '40', 'DELETE FROM dokumentasi WHERE  dokumentasi.id_dokumentasi in ( ? ) ', '16', '::1', 'dokumentasi/delete/40/', '[]', 'true', NULL),
(1094, '2025-04-26 11:14:45', 'userlogout', 'user', NULL, NULL, '16', '::1', 'index/logout', '[]', 'true', NULL),
(1095, '2025-04-26 11:17:14', 'userlogin', 'user', NULL, 'SELECT   * FROM user WHERE  username = ?  OR email = ?  LIMIT 1', '2', '::1', 'index/login/', '{\"username\":\"admin\",\"password\":\"$2y$10$kx4ZbQcXboUP4ss1DvkfkO\\/PzM1Sp4bkrKyCvvHD\\/CcifRBedsUam\"}', 'true', NULL),
(1096, '2025-04-26 11:17:48', 'userlogout', 'user', NULL, NULL, '2', '::1', 'index/logout', '[]', 'true', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`) VALUES
(1, 'Sapu'),
(2, 'Kipas'),
(3, 'Vacuum Cleaner'),
(4, 'Pel Lantai'),
(5, 'Ember'),
(6, 'Karpet Masjid'),
(7, 'Mimbar'),
(8, 'Mikrofon'),
(9, 'Speaker'),
(10, 'Lampu'),
(11, 'Al - Quran'),
(12, 'Jam Dinding'),
(13, 'Bedug');

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi`
--

CREATE TABLE `dokumentasi` (
  `id_dokumentasi` int(11) NOT NULL,
  `nama_kegiatan` varchar(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `deskripsi_dokumen` text NOT NULL,
  `waktu_upload` datetime NOT NULL,
  `username` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventaris`
--

CREATE TABLE `inventaris` (
  `id_barang` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jumlah_barang` int(11) DEFAULT NULL,
  `status_barang` varchar(255) DEFAULT NULL,
  `tanggal_masuk` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventaris`
--

INSERT INTO `inventaris` (`id_barang`, `username`, `nama_barang`, `jumlah_barang`, `status_barang`, `tanggal_masuk`) VALUES
(34, 'Fajri', 'Sapu', 4, 'Baik', '2025-04-26 10:31:49'),
(35, 'Fajri', 'Kipas', 4, 'Rusak Ringan', '2025-04-26 10:32:02'),
(36, 'Fajri', 'Vacuum Cleaner', 0, 'Rusak Berat', '2025-04-26 10:32:16'),
(37, 'Fajri', 'Pel Lantai', 3, 'Baik', '2025-04-26 10:32:23');

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
(6, 'SYIAR'),
(7, 'Anggota');

-- --------------------------------------------------------

--
-- Table structure for table `kas`
--

CREATE TABLE `kas` (
  `id_kas` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `jumlah_kas` varchar(255) NOT NULL,
  `jenis_kas` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_kas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kas`
--

INSERT INTO `kas` (`id_kas`, `username`, `jumlah_kas`, `jenis_kas`, `deskripsi`, `tanggal`, `total_kas`) VALUES
(21, 'admin', '5000', 'Pemasukan', '', '2025-04-26 07:03:08', 0),
(22, 'Fajri', '600000', 'Pemasukan', '', '2025-04-26 08:31:25', 0),
(23, 'Fajri', '4000000', 'Pemasukan', '', '2025-04-26 08:50:12', 0),
(24, 'Fajri', '300000', 'Pengeluaran', '', '2025-04-26 08:50:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `lokasi_kegiatan` varchar(255) NOT NULL,
  `deskripsi_kegiatan` text NOT NULL,
  `tanggal_kegiatan` datetime DEFAULT NULL,
  `kategori_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `username`, `nama_kegiatan`, `lokasi_kegiatan`, `deskripsi_kegiatan`, `tanggal_kegiatan`, `kategori_kegiatan`) VALUES
(23, 'admin', 'Maulid', 'SMKN46 Jakarta', 'Kegiatan maulid di sekolah', '2025-04-18 06:50:29', 'Acara'),
(25, 'admin', 'Kajian Rutin Jumat', 'SMKN46 Jakarta', 'Kajian islami setelah sholat Jum&#39;at di masjid sekolah.', '2025-04-26 09:13:34', 'Kajian'),
(26, 'admin', 'Latihan Pidato Dakwah', 'SMKN46 Jakarta', '	Sesi latihan public speaking bertema dakwah untuk anggota Rohis.', '2025-04-26 09:15:00', 'Latihan'),
(27, 'admin', 'Bakti Sosial ke Panti Asuhan', 'SMKN 46 Jakarta', 'Kegiatan sosial berbagi ke panti asuhan di kota.', '2025-04-26 09:25:00', 'Bakti Sosial'),
(28, 'admin', 'Pesantren Kilat Ramadhan', 'SMKN46 Jakarta', 'Kegiatan intensif keislaman selama Ramadhan.', '2025-04-26 09:20:00', 'Acara');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `judul_pengumuman` varchar(255) NOT NULL,
  `isi_pengumuman` text NOT NULL,
  `tanggal_pengumuman` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `nama_kegiatan`, `username`, `judul_pengumuman`, `isi_pengumuman`, `tanggal_pengumuman`) VALUES
(24, 'Kajian Rutin Jumat', 'admin', 'Jadwal Kajian Rutin Jumat', 'Assalamu&#39;alaikum, Kajian Rutin akan kembali diadakan setiap Jumat jam 13.00.', '2025-04-25 13:11:00'),
(26, 'Maulid', 'Fajri', ' Latihan Persiapan Maulid', 'Diharapkan seluruh siswa mengikuti latihan persiapan untuk acara Maulid yang akan diselenggarakan pada tanggal 25 Februari 2025. Kehadiran adalah wajib untuk semua anggota.', '2025-04-26 10:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role`) VALUES
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
(3972, 1, 'absensi_kegiatan', 'list', 0),
(3973, 1, 'absensi_kegiatan', 'view', 0),
(3974, 1, 'absensi_kegiatan', 'add', 0),
(3975, 1, 'absensi_kegiatan', 'edit', 0),
(3976, 1, 'absensi_kegiatan', 'editfield', 0),
(3977, 1, 'absensi_kegiatan', 'delete', 0),
(3978, 1, 'absensi_kegiatan', 'import_data', 0),
(3979, 1, 'app_logs', 'list', 0),
(3980, 1, 'dokumentasi', 'list', 0),
(3981, 1, 'dokumentasi', 'view', 0),
(3982, 1, 'dokumentasi', 'add', 0),
(3983, 1, 'dokumentasi', 'edit', 0),
(3984, 1, 'dokumentasi', 'editfield', 0),
(3985, 1, 'dokumentasi', 'delete', 0),
(3986, 1, 'dokumentasi', 'import_data', 0),
(3987, 1, 'inventaris', 'list', 0),
(3988, 1, 'inventaris', 'view', 0),
(3989, 1, 'inventaris', 'add', 0),
(3990, 1, 'inventaris', 'edit', 0),
(3991, 1, 'inventaris', 'editfield', 0),
(3992, 1, 'inventaris', 'delete', 0),
(3993, 1, 'inventaris', 'import_data', 0),
(3994, 1, 'jabatan', 'list', 0),
(3995, 1, 'jabatan', 'view', 0),
(3996, 1, 'jabatan', 'add', 0),
(3997, 1, 'jabatan', 'edit', 0),
(3998, 1, 'jabatan', 'editfield', 0),
(3999, 1, 'jabatan', 'delete', 0),
(4000, 1, 'jabatan', 'import_data', 0),
(4001, 1, 'kas', 'list', 0),
(4002, 1, 'kas', 'view', 0),
(4003, 1, 'kas', 'add', 0),
(4004, 1, 'kas', 'edit', 0),
(4005, 1, 'kas', 'editfield', 0),
(4006, 1, 'kas', 'delete', 0),
(4007, 1, 'kas', 'import_data', 0),
(4008, 1, 'kegiatan', 'list', 0),
(4009, 1, 'kegiatan', 'view', 0),
(4010, 1, 'kegiatan', 'add', 0),
(4011, 1, 'kegiatan', 'edit', 0),
(4012, 1, 'kegiatan', 'editfield', 0),
(4013, 1, 'kegiatan', 'delete', 0),
(4014, 1, 'kegiatan', 'import_data', 0),
(4015, 1, 'pengumuman', 'list', 0),
(4016, 1, 'pengumuman', 'view', 0),
(4017, 1, 'pengumuman', 'add', 0),
(4018, 1, 'pengumuman', 'edit', 0),
(4019, 1, 'pengumuman', 'editfield', 0),
(4020, 1, 'pengumuman', 'delete', 0),
(4021, 1, 'pengumuman', 'import_data', 0),
(4022, 1, 'pengurus', 'list', 0),
(4023, 1, 'pengurus', 'view', 0),
(4024, 1, 'pengurus', 'add', 0),
(4025, 1, 'pengurus', 'edit', 0),
(4026, 1, 'pengurus', 'editfield', 0),
(4027, 1, 'pengurus', 'delete', 0),
(4028, 1, 'pengurus', 'import_data', 0),
(4029, 1, 'roles', 'list', 0),
(4030, 1, 'user', 'list', 0),
(4031, 1, 'user', 'view', 0),
(4032, 1, 'user', 'add', 0),
(4033, 1, 'user', 'edit', 0),
(4034, 1, 'user', 'editfield', 0),
(4035, 1, 'user', 'delete', 0),
(4036, 1, 'user', 'import_data', 0),
(4037, 1, 'user', 'userregister', 0),
(4038, 1, 'user', 'accountedit', 0),
(4039, 1, 'user', 'accountview', 0),
(4040, 1, 'dokumentasi', 'list', 0),
(4041, 1, 'dokumentasi', 'view', 0),
(4042, 1, 'dokumentasi', 'add', 0),
(4043, 1, 'dokumentasi', 'edit', 0),
(4044, 1, 'dokumentasi', 'editfield', 0),
(4045, 1, 'dokumentasi', 'delete', 0),
(4046, 3, 'absensi_kegiatan', 'list', 0),
(4047, 3, 'absensi_kegiatan', 'view', 0),
(4048, 3, 'absensi_kegiatan', 'add', 0),
(4049, 3, 'absensi_kegiatan', 'edit', 0),
(4050, 3, 'absensi_kegiatan', 'editfield', 0),
(4051, 3, 'absensi_kegiatan', 'delete', 0),
(4052, 3, 'absensi_kegiatan', 'import_data', 0),
(4053, 3, 'dokumentasi', 'list', 0),
(4054, 3, 'dokumentasi', 'view', 0),
(4055, 3, 'dokumentasi', 'add', 0),
(4056, 3, 'dokumentasi', 'edit', 0),
(4057, 3, 'dokumentasi', 'editfield', 0),
(4058, 3, 'dokumentasi', 'delete', 0),
(4059, 3, 'dokumentasi', 'import_data', 0),
(4060, 3, 'inventaris', 'list', 0),
(4061, 3, 'inventaris', 'view', 0),
(4062, 3, 'inventaris', 'add', 0),
(4063, 3, 'inventaris', 'edit', 0),
(4064, 3, 'inventaris', 'editfield', 0),
(4065, 3, 'inventaris', 'delete', 0),
(4066, 3, 'inventaris', 'import_data', 0),
(4067, 3, 'jabatan', 'list', 0),
(4068, 3, 'jabatan', 'view', 0),
(4069, 3, 'jabatan', 'add', 0),
(4070, 3, 'jabatan', 'edit', 0),
(4071, 3, 'jabatan', 'editfield', 0),
(4072, 3, 'jabatan', 'delete', 0),
(4073, 3, 'jabatan', 'import_data', 0),
(4074, 3, 'kas', 'list', 0),
(4075, 3, 'kas', 'view', 0),
(4076, 3, 'kas', 'add', 0),
(4077, 3, 'kas', 'edit', 0),
(4078, 3, 'kas', 'editfield', 0),
(4079, 3, 'kas', 'delete', 0),
(4080, 3, 'kas', 'import_data', 0),
(4081, 3, 'kegiatan', 'list', 0),
(4082, 3, 'kegiatan', 'view', 0),
(4083, 3, 'kegiatan', 'add', 0),
(4084, 3, 'kegiatan', 'edit', 0),
(4085, 3, 'kegiatan', 'editfield', 0),
(4086, 3, 'kegiatan', 'delete', 0),
(4087, 3, 'kegiatan', 'import_data', 0),
(4088, 3, 'pengumuman', 'list', 0),
(4089, 3, 'pengumuman', 'view', 0),
(4090, 3, 'pengumuman', 'add', 0),
(4091, 3, 'pengumuman', 'edit', 0),
(4092, 3, 'pengumuman', 'editfield', 0),
(4093, 3, 'pengumuman', 'delete', 0),
(4094, 3, 'pengumuman', 'import_data', 0),
(4095, 3, 'pengurus', 'list', 0),
(4096, 3, 'pengurus', 'view', 0),
(4097, 3, 'user', 'list', 0),
(4098, 3, 'user', 'view', 0),
(4099, 3, 'user', 'accountview', 0),
(4100, 3, 'dokumentasi', 'list', 0),
(4101, 3, 'dokumentasi', 'view', 0),
(4102, 3, 'dokumentasi', 'add', 0),
(4103, 3, 'dokumentasi', 'edit', 0),
(4104, 3, 'dokumentasi', 'editfield', 0),
(4105, 3, 'dokumentasi', 'delete', 0),
(4106, 2, 'absensi_kegiatan', 'list', 0),
(4107, 2, 'absensi_kegiatan', 'view', 0),
(4108, 2, 'absensi_kegiatan', 'add', 0),
(4109, 2, 'dokumentasi', 'list', 0),
(4110, 2, 'dokumentasi', 'view', 0),
(4111, 2, 'inventaris', 'list', 0),
(4112, 2, 'inventaris', 'view', 0),
(4113, 2, 'kas', 'list', 0),
(4114, 2, 'kas', 'view', 0),
(4115, 2, 'kegiatan', 'list', 0),
(4116, 2, 'kegiatan', 'view', 0),
(4117, 2, 'pengumuman', 'list', 0),
(4118, 2, 'pengumuman', 'view', 0),
(4119, 2, 'pengurus', 'list', 0),
(4120, 2, 'pengurus', 'view', 0),
(4121, 2, 'user', 'list', 0),
(4122, 2, 'user', 'view', 0),
(4123, 2, 'user', 'accountedit', 0),
(4124, 2, 'user', 'accountview', 0),
(4125, 2, 'dokumentasi', 'list', 0),
(4126, 2, 'dokumentasi', 'view', 0);

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
  `role` varchar(255) DEFAULT 'User',
  `account_status` varchar(255) DEFAULT 'Active',
  `jabatan` varchar(255) NOT NULL DEFAULT 'Anggota'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `role`, `account_status`, `jabatan`) VALUES
(2, 'admin', 'admins@gmail.com', '$2y$10$kx4ZbQcXboUP4ss1DvkfkO/PzM1Sp4bkrKyCvvHD/CcifRBedsUam', 'http://localhost/rohismanager/uploads/files/4jlfgzxvoq2d1mn.png', '4b4c610b20df3a22f4f5a93ee948df9b', NULL, '2025-05-06 00:00:00', NULL, 'Administrator', 'Active', 'Anggota'),
(4, 'user', 'user@gmail.com', '$2y$10$VKpB5d6RscBrOJO6NDrGSO1KvmVcGWcM1oBC1EzBsLRFiGCU1i43u', 'http://localhost/rohismanager/uploads/files/b7hcafz6yq4gts0.jpg', NULL, NULL, '2025-05-06 00:00:00', NULL, 'User', 'Active', 'Anggota'),
(8, 'pengurus', 'pengurus23@gmail.com', '$2y$10$Nqdup3Ojee8NiN9AaF3Zwu46qjn1.GYnRXf/ZqWZ3TUQtJm0xy28S', 'http://localhost/rohismanager/uploads/files/zvw5k76xidurc2l.png', NULL, NULL, '2025-05-06 00:00:00', NULL, 'Pengurus', 'Active', 'Sekretaris'),
(16, 'Fajri', 'fajri12@gmail.com', '$2y$10$gg23AJA.NKL4bBoh4STQgO4I5NmuIudUlINPdPY9TCzmmfONNnnSy', 'http://localhost/rohismanager/uploads/files/1wldc3q2o9uzjxt.png', NULL, NULL, '2025-05-06 00:00:00', NULL, 'Pengurus', 'Active', 'DKM'),
(72, 'Elang ', 'elang123@gmail.com', '$2y$10$93Kibi45rENyvNOLp4YauuJFSTuVhNpDZTIQ6wDlLjLlm3S2h7o8C', 'http://localhost/rohismanager/uploads/files/mgreb4dixp52c_k.jpeg', NULL, NULL, '2025-04-27 06:50:19', '15c59b41077e6b493730af9ebcf64b54', 'Pengurus', 'Pending', 'Ketua Umum');

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
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi_kegiatan`
--
ALTER TABLE `absensi_kegiatan`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `app_logs`
--
ALTER TABLE `app_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1097;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  MODIFY `id_dokumentasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `inventaris`
--
ALTER TABLE `inventaris`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kas`
--
ALTER TABLE `kas`
  MODIFY `id_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4127;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
