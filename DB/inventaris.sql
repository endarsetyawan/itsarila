-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 03:49 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `kode_barang`, `nama`, `kategori`, `lokasi`, `merk`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'B0001', 'PC ENDAR', '1', '1', 'INTEL CORE I3 GEN 10', 'CASING PUTIH', '2022-09-28 08:36:15', '2022-09-28 08:36:15'),
(2, 'B0002', 'MONITOR', '1', '1', 'LG', '22 INCH', '2022-09-28 08:38:45', '2022-09-28 08:38:45'),
(3, 'B0003', 'PC ROFFI', '1', '1', 'INTEL CORE I3 GEN 3', 'BUTUH GANTI', '2022-09-28 09:20:57', '2022-09-28 09:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `downtimes`
--

CREATE TABLE `downtimes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pelapor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selesai` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `karyawans`
--

CREATE TABLE `karyawans` (
  `id` int(11) NOT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `nama_karyawan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmp_lahir` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `pendidikan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` enum('Islam','Kristen','Khatolik','Hindu','Budha') NOT NULL,
  `status_nikah` enum('Single','Menikah','Janda','Duda') NOT NULL,
  `no_hp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_karyawan` enum('Kontrak','Training','Tetap','Outsorching') NOT NULL,
  `tgl_masuk_kerja` date DEFAULT NULL,
  `tgl_keluar_kerja` date DEFAULT NULL,
  `bpjs_ketenagakerjaan` enum('Y','N') NOT NULL,
  `bpjs_kesehatan` enum('Y','N') NOT NULL,
  `tgl_purna` date DEFAULT NULL,
  `sik` varchar(50) DEFAULT NULL,
  `exp_sik` date DEFAULT NULL,
  `str` varchar(50) DEFAULT NULL,
  `exp_str` date DEFAULT NULL,
  `id_unit_kerja` int(11) NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `karyawans`
--

INSERT INTO `karyawans` (`id`, `nik`, `nama_karyawan`, `tmp_lahir`, `tgl_lahir`, `gender`, `pendidikan`, `agama`, `status_nikah`, `no_hp`, `status_karyawan`, `tgl_masuk_kerja`, `tgl_keluar_kerja`, `bpjs_ketenagakerjaan`, `bpjs_kesehatan`, `tgl_purna`, `sik`, `exp_sik`, `str`, `exp_str`, `id_unit_kerja`, `alamat`, `created_at`, `updated_at`) VALUES
(12, '3314056701770003', 'Galuh Handayani, AMK', 'Magetan', '1977-01-27', 'P', 'D3', 'Islam', 'Menikah', '082137905390', 'Tetap', '2002-01-09', NULL, 'Y', 'Y', NULL, '017/SIPP/II/2020', '2022-10-27', '1401522171355167', '2022-10-27', 1, 'PURWOREJO RT. 007 SAMBIREJO SAMBIREJO SRAGEN', '2019-01-28 03:12:08', '2020-04-15 02:44:42'),
(13, '3314051610880003', 'Gunasen,AMK', 'Sragen', '1988-10-16', 'L', 'D3', 'Islam', 'Single', '082225219394', 'Tetap', '2013-06-01', NULL, 'Y', 'Y', NULL, '254/SIK/X/2015', '2019-10-13', '1401512172155572', '2022-10-16', 1, 'Kebonloji rt. 03 Jambeyan Sambirejo Sragen', '2019-01-28 03:21:26', '2019-01-28 03:21:26'),
(14, '3314024609890003', 'MIKA EFINA LUSA, AMD.Keb', 'Sragen', '1989-09-06', 'P', 'D3', 'Islam', 'Menikah', '085728974469', 'Tetap', '2012-09-01', NULL, 'Y', 'Y', NULL, '265/SIKB/X/2015', '2020-10-01', '1402521140855548', '2019-09-06', 1, 'Gedongan Rt. 010/003 Gedongan plupuh Sragen', '2019-01-28 03:28:12', '2019-01-28 03:33:45'),
(15, '3314114909740001', 'CHRISTIN WIJAYANTI, AMK', 'Sragen', '1974-09-09', 'P', 'D3', 'Islam', 'Menikah', '081393665007', 'Tetap', '1997-02-01', NULL, 'Y', 'Y', NULL, '023/SIPP/II/2020', '2023-09-09', '1401522182237778', '2023-09-09', 1, 'PENGAN RT. 028 PURWOSUMAN SIDOHARJO SRAGEN', '2019-01-28 03:33:28', '2020-04-15 02:48:24'),
(16, '3314104908800002', 'Leny Fajar Suryaningrum, AMK', 'Sragen', '1980-08-09', 'P', 'D3', 'Islam', 'Menikah', '081329015129', 'Tetap', '2005-10-01', NULL, 'Y', 'Y', NULL, '043/SIPP/II/2020', '2022-08-09', '1401522172155424', '2022-08-09', 1, 'BAGAN RT. 001/RW. 001 NGLOROG SRAGEN', '2019-01-28 03:43:25', '2020-04-15 02:49:19'),
(17, '3314116808750008', 'Dwi Agustanti Hendrayani, AMK', 'Sragen', '1975-08-28', 'P', 'D3', 'Islam', 'Menikah', '085700051746', 'Tetap', '2004-01-01', NULL, 'Y', 'Y', NULL, '041/SIPP/II/2020', '2019-08-28', '1401522172156404', '2022-08-28', 1, 'Jetak Kalang Rt. 001/002 Jetak Sidoharjo Sragen', '2019-01-28 03:51:14', '2020-04-15 02:50:27'),
(18, '3314046211800002', 'Retno Komolowati, AMK', 'Sragen', '1980-11-22', 'L', 'D3', 'Islam', 'Menikah', '082326981237', 'Tetap', '2005-02-01', NULL, 'Y', 'Y', NULL, '032/SIPP/II/2020', '2022-11-22', '1401522172155557', '2022-11-22', 1, 'Dulang Asri Rt. 015 Wonokerjo Kedawung Sragen', '2019-01-28 04:21:24', '2020-04-15 02:51:13'),
(20, '3314065001810003', 'Kristina Endah Silamurni, AMK', 'Sragen', '1981-01-10', 'L', 'D3', 'Islam', 'Menikah', '089671706597', 'Tetap', '2016-12-01', NULL, 'Y', 'Y', NULL, '698/SIK/XII/2015', '2020-12-29', '1401521150917050', '2020-01-10', 1, 'Ngundaan Rt. 01/01 Glonggong Gondang', '2019-01-28 04:31:21', '2019-01-28 04:31:21'),
(21, '3314074406860004', 'Diana Trisnawati, AMK', 'Sragen', '1986-06-04', 'L', 'D3', 'Islam', 'Menikah', '083865043295', 'Tetap', '2012-04-01', NULL, 'Y', 'Y', NULL, '049/SIPP/II/2020', '2022-06-04', '1401522172155464', '2022-06-04', 1, 'barang Rt. 26 Banaran Sambungmacan Sragen', '2019-01-28 04:35:06', '2020-04-15 02:52:53'),
(22, '3521122706900002', 'Musyafik Kholis Amrullah, AMK', 'Ngawi', '1990-06-27', 'L', 'D3', 'Islam', 'Menikah', '085646193577', 'Tetap', '2016-06-01', NULL, 'Y', 'Y', NULL, '265/SIKP/VIII/2016', '2021-08-15', '1401512172156417', '2022-06-27', 1, 'Walikukun Wetan Rt. 05/05 Widodaren Ngawi', '2019-01-28 04:48:21', '2019-01-28 04:48:21'),
(23, '3314085202930001', 'Ismi Inayati, AMK', 'Sragen', '1993-02-12', 'L', 'D3', 'Islam', 'Menikah', '082143284735', 'Tetap', '2016-06-01', NULL, 'Y', 'Y', NULL, '262/SIK/VIII/2016', '2021-08-15', '1401521161181026', '2021-02-12', 1, 'Gabus Wetan Rt. 06/03 gabus Ngrampal Sragen', '2019-01-28 04:54:09', '2019-01-28 04:54:09'),
(24, '3314071104890001', 'Fuguh Santoso, AMK', 'Sragen', '1989-04-11', 'L', 'D3', 'Islam', 'Single', '085229933763', 'Tetap', '2016-10-01', NULL, 'Y', 'Y', NULL, '309/SIKP/XI/2016', '2021-11-03', '1401512172156411', '2022-04-11', 1, 'kiping Rt. 048 Banaran Kec. Sambungmacan Sragen', '2019-01-28 05:03:07', '2019-01-28 05:03:07'),
(25, '3314055909830034', 'Marsini, AMD.Keb', 'Sragen', '1983-09-19', 'P', 'D3', 'Islam', 'Menikah', '082242180882', 'Tetap', '2006-04-01', NULL, 'Y', 'Y', NULL, '256/SIKB/X/2015', '2020-10-01', '1402522171379662', '2022-09-19', 1, 'Ngablak Rt. 08 Jambanan Sambirejo Sragen', '2019-01-28 05:08:55', '2019-01-28 05:08:55'),
(27, '3314075503870004', 'Nur Rokhmah, AMD.Keb', 'Sragen', '1987-03-15', 'P', 'D3', 'Islam', 'Menikah', '081578330156', 'Tetap', '2007-12-01', NULL, 'Y', 'Y', NULL, '273/SIKB/X/2015', '2020-10-01', '1402522171379654', '2022-03-15', 1, 'Pangkle Rt. 029/Rw. 002 Sambungmacan Sambungmacan Sragen', '2019-01-28 05:51:54', '2019-01-28 05:51:54'),
(28, '3314096806740005', 'Martini, AMK', 'Sragen', '1974-06-28', 'P', 'D3', 'Islam', 'Menikah', '082136748060', 'Tetap', '1987-01-01', NULL, 'Y', 'Y', NULL, '281/SIK/X/2015', '2020-10-13', '1401522172155581', '2022-06-28', 38, 'Teguhan Rt. 04/03 Plumbungan Karangmalang Sragen', '2019-01-28 07:31:50', '2021-01-08 05:40:50'),
(29, '3521011802820002', 'Sunarto,AMK', 'Sragen', '1982-02-18', 'L', 'D3', 'Islam', 'Menikah', '081232359482', 'Tetap', '2012-09-01', NULL, 'Y', 'N', NULL, '035/SIPP/II/2020', '2023-01-18', '1401512182300979', '2023-01-18', 17, 'Tulakan  Kulon Rt. 03/IX Tulakan Sine Ngawi Jawa Timur', '2019-01-29 02:08:01', '2020-04-15 02:54:23'),
(30, '3314095202770009', 'Wiwik Setyoningsih, AMK', 'Sragen', '1972-02-12', 'P', 'D3', 'Islam', 'Menikah', '082225199963', 'Tetap', '2007-08-01', NULL, 'Y', 'Y', NULL, '276/SIK/X/2015', '2017-10-13', '1401522171464992', '2022-02-12', 21, 'Mbolorejo Rt. 11/03 Puro Karangmalang Sragen', '2019-01-29 02:10:59', '2019-01-29 02:10:59'),
(31, '3314047103890002', 'Erna Irawati, S.kep.Ns', 'Sragen', '1988-03-31', 'P', 'S1', 'Islam', 'Menikah', '082144490653', 'Tetap', '2016-04-01', NULL, 'Y', 'Y', NULL, '269/SIK/VIII/2016', '2021-08-10', '1401721161138739', '2021-03-31', 8, 'Sidorejo Rt. 22/7 Sragen Wetan Sragen', '2019-01-29 02:17:59', '2019-01-29 02:17:59'),
(33, '3310155401930001', 'Endang Suginingsih, Amd.Kep', 'Sragen', '1972-05-25', 'P', 'D3', 'Islam', 'Menikah', '081227182565', 'Tetap', '2009-04-01', NULL, 'Y', 'Y', NULL, '302/SIKP/X/2016', '2021-10-20', '1415521161103132', '2021-05-25', 18, 'Tawengan Rt. 23 Pilangsari ngrampal Sragen', '2019-01-29 02:29:36', '2019-01-29 02:29:36'),
(34, '3314172107900002', 'Aji Tri Wicaksono, Amd.Kep', 'Sragen', '1990-07-21', 'P', 'D3', 'Islam', 'Menikah', '082221223207', 'Training', '2014-09-01', NULL, 'Y', 'Y', NULL, '018/SIPP/II/2020', '2023-06-21', '1401512182328787', '2023-06-21', 1, 'Gonggongan Rt. 27 Bendo Sukodono Sragen', '2019-01-29 02:32:40', '2020-04-15 03:46:41'),
(35, '3314101001930006', 'Hasan Tri Arifin, Amd.Kep', 'Sragen', '1993-01-10', 'L', 'D3', 'Islam', 'Single', '085725335825', 'Tetap', '2017-01-01', NULL, 'Y', 'Y', NULL, '73/SIKP/III/2017', '2022-03-27', '1401511151025733', '2020-01-10', 18, 'Tawang Rt. 03/06 sine Sragen', '2019-01-29 02:36:16', '2019-01-29 02:36:16'),
(36, '1812010502920007', 'Candra Kurniawan, Amd.Kep', 'Candra Kencana', '1992-02-05', 'L', 'D3', 'Islam', 'Menikah', '081219382089', 'Tetap', '2017-01-01', NULL, 'Y', 'Y', NULL, '71/SIKP/III/2017', '2022-03-31', '1401512171464994', '2022-02-05', 1, 'Jl. Duwet No. 14 Karang asem Laweyan Surakarta', '2019-01-29 02:39:07', '2019-01-29 02:39:07'),
(37, '3314060311840001', 'Anang Novianto, Amd.Kep', 'Sragen', '1984-11-03', 'L', 'D3', 'Islam', 'Menikah', '081325742086', 'Tetap', '2012-09-01', NULL, 'Y', 'Y', NULL, '263/SIK/X/2015', '2020-10-13', '1401512182237814', '2023-11-03', 18, 'Sundo Asri Rt. 018/007 Banaran Sambungmacan Sragen', '2019-01-29 02:43:06', '2019-01-29 02:43:06'),
(38, '3314055812660002', 'Ratmini, Amd.Kep', 'Sragen', '1966-12-18', 'P', 'D3', 'Islam', 'Menikah', '08122644632', 'Tetap', '1993-01-01', NULL, 'Y', 'Y', NULL, '030/SIPP/II/2020', '2022-12-18', '1401522172155589', '2022-12-18', 1, 'Blimbing Rt. 16 Sambirejo Sragen', '2019-01-29 02:45:52', '2020-04-15 03:48:46'),
(40, '3314095604710005', 'Anik Setya Pratiwi, Amd.Kep', 'Sragen', '1971-04-16', 'P', 'D3', 'Islam', 'Menikah', '085725393004', 'Tetap', '1995-08-12', NULL, 'Y', 'Y', NULL, '044/SIPP/II/2020', '2022-04-16', '1401522171355165', '2022-04-16', 18, 'Plumbungan indah Rt. 30/08 Plumbungan Karangmalang Sragen', '2019-01-29 03:00:07', '2020-04-15 03:51:38'),
(41, '3314034510830006', 'Dyah Puji Hastuti, Amd. Keb', 'Sragen', '1983-10-05', 'P', 'D3', 'Islam', 'Menikah', '081228205578', 'Tetap', '2012-09-01', NULL, 'Y', 'Y', NULL, '267/SIKB/X/2015', '2020-10-01', '1402522171379669', '2022-10-05', 15, 'Krikilan Rt 09, Kel. Krikilan, Kec. Masaran, Kab. Sragen.', '2019-01-29 03:41:49', '2019-01-29 03:41:49'),
(42, '3313167105910002', 'Mayfan Orien Drastianasari, Amd. Keb', 'Karanganyar', '1991-05-31', 'P', 'D3', 'Islam', 'Menikah', '081378642096', 'Tetap', '2014-02-13', NULL, 'Y', 'Y', NULL, '263/SIKB/X/2015', '2020-02-01', '1402521140736199', '2019-05-31', 15, 'Driyan Rt 009 / Rw 002, Sidodadi, Masaran, Sragen', '2019-01-29 04:17:55', '2019-01-29 04:17:55'),
(43, '3314020609890003', 'Yeni Prasetyo,Amd.Kep', 'Sragen', '1989-09-06', 'P', 'D3', 'Islam', 'Menikah', '085647511777', 'Tetap', '2012-09-01', NULL, 'Y', 'Y', NULL, '055/SIPP/II/2020', '2019-09-06', '1401512172155459', '2022-09-06', 18, 'Bandung Rt. 12/03 Gentan Banaran Plupuh Sragen', '2019-01-29 04:45:18', '2020-04-15 03:52:59'),
(44, '331407410479006', 'Sri Murni, Amd.Kep', 'Karanganyar', '1979-04-01', 'P', 'D3', 'Islam', 'Menikah', '085728529550', 'Tetap', '2003-11-01', NULL, 'Y', 'Y', NULL, '031/SIPP/II/2020', '2022-04-01', '1401522171355170', '2022-04-01', 16, 'temu Ireng Rt. 03 Karanganyar Sambungmacan Sragen', '2019-01-29 04:54:46', '2020-04-15 04:04:19'),
(45, '3310155401930001', 'Endang Wahyuningsih, Amd. Keb', 'Klaten', '1993-01-14', 'P', 'D3', 'Islam', 'Menikah', '082242530987', 'Kontrak', '2018-01-01', NULL, 'Y', 'Y', NULL, '46/SIPB/V/2018', '2019-01-14', '1402521140846505', '2019-01-14', 15, 'Nglengkong Rt 002 / Rw 003, Ngreden, Wonosari', '2019-01-29 04:58:36', '2019-01-29 04:58:36'),
(46, '3314047003790002', 'Nuning Listyowati,Amd.Kep', 'Sragen', '1979-03-30', 'P', 'D3', 'Islam', 'Menikah', '081329493492', 'Tetap', '2006-09-01', NULL, 'Y', 'Y', NULL, '021/SIPP/II/2020', '2019-03-30', '1401522171355168', '2022-03-30', 16, 'Dulangasri rt. 15 Wonokerso Kedawung sragen', '2019-01-29 04:59:16', '2020-04-15 04:06:34'),
(47, '3314116808750008', 'Dewi Agustina Kusumaningrum, AMK', 'Sragen', '1987-08-08', 'P', 'D3', 'Islam', 'Menikah', '085642525057', 'Tetap', '2011-12-01', NULL, 'Y', 'Y', NULL, '024/SIPP/II/2020', '2022-08-08', '1401522172156408', '2022-08-08', 16, 'Mojomulyo Rt. 4/Rw. 9 Sragen', '2019-01-29 05:03:55', '2020-04-15 04:07:37'),
(49, '3314114607870005', 'Lilik SUgiyarti, Amd.Keb', 'Sragen', '1987-07-06', 'P', 'D3', 'Islam', 'Menikah', '085647589444', 'Tetap', '2016-06-01', NULL, 'Y', 'Y', NULL, '82/SIKB/VIII/2016', '2021-08-09', '1402521150913291', '2020-07-06', 16, 'Cermo rt. 08/02 Sribit Sidoharjo Sragen', '2019-01-29 05:11:32', '2019-01-29 05:11:32'),
(51, '3314094210850001', 'Tary Nurdiana,Amd.Keb', 'Sragen', '1985-10-02', 'P', 'D3', 'Islam', 'Menikah', '085646490008', 'Tetap', '2014-02-01', NULL, 'Y', 'Y', NULL, '286/SIKB/X/2015', '2020-10-01', '1402522171379671', '2022-10-02', 16, 'Kembangan rt. 14 Mojorejo Karangmalang Sragen', '2019-01-29 05:13:57', '2019-01-29 05:13:57'),
(52, '3314116806850001', 'Sawitri Lestari,Amd.Keb', 'Sragen', '1985-06-26', 'P', 'D3', 'Islam', 'Menikah', '082133372220', 'Tetap', '2009-04-01', NULL, 'Y', 'Y', NULL, '281/SIKB/X/2015', '2020-10-01', '1402522171379650', '2022-06-26', 16, 'Paingan Rt. 16/Rw. VII Purwosuman sidoharjo Sragen', '2019-01-29 05:17:00', '2019-01-29 05:17:00'),
(53, '3314104503810007', 'Parni, Amd.Keb', 'Sragen', '1981-03-05', 'P', 'D3', 'Islam', 'Menikah', '08528622254', 'Tetap', '2007-10-08', NULL, 'Y', 'Y', NULL, '284/SIKB/X/2015', '2020-10-01', '1402522171379647', '2022-03-05', 16, 'Junggrangan Rt. 022 Purwosuman Sidoharjo Sragen', '2019-01-29 05:20:15', '2019-01-29 05:20:15'),
(54, '3314206510900003', 'Mega Novitasari, Amd.Keb', 'Sragen', '1990-10-25', 'P', 'D3', 'Islam', 'Menikah', '082224052226', 'Tetap', '2012-06-01', NULL, 'Y', 'Y', NULL, '287/SIKB/X/2015', '2020-10-01', '1402521140855550', '2019-10-25', 16, 'Wedi Rt. 07/04 Mlale Jenar Sragen', '2019-01-29 05:24:53', '2019-01-29 05:24:53'),
(55, '3314105202930005', 'Ditan Parindarlaputi, Amd. Keb', 'Sragen', '1993-02-12', 'P', 'D3', 'Kristen', 'Single', '085695262626', 'Tetap', '2017-01-11', NULL, 'Y', 'Y', NULL, '170/SIPB/X/2017', '2020-02-12', '1502521151004537', '2020-02-12', 15, 'Jalan Diponegoro 438 Rt 05 / Rw 04, Mageru, Sragen', '2019-01-29 05:27:45', '2019-01-29 05:27:45'),
(56, '3310225208940001', 'Citra Dwi Putri Pertiwi, Amd. Keb', 'Klaten', '1994-08-12', 'P', 'D3', 'Islam', 'Single', '085725651810', 'Tetap', '2016-11-01', NULL, 'Y', 'Y', NULL, '169/SIPB/X/2017', '2021-08-12', '1402521161096879', '2021-08-12', 15, 'Drono Rt 002 / Rw 002, Drono, Ngawen, Klaten', '2019-01-29 05:37:06', '2019-01-29 05:37:06'),
(57, '3314044309880010', 'Septriana Pratiwi, Amd. Keb', 'Sragen', '1988-09-13', 'P', 'D3', 'Islam', 'Menikah', '082226559767', 'Tetap', '2011-03-01', NULL, 'Y', 'Y', NULL, '262/SIKB/X/2015', '2020-10-01', '1402521150916242', '2020-09-03', 1, 'Dulang Asri Rt 015, Wonokerso, Kedawung, Sragen', '2019-01-29 05:49:01', '2019-01-29 05:49:01'),
(60, '3314104412930003', 'Desti Endang Kartikasari, Amd. Keb', 'Sragen', '1993-12-04', 'P', 'D3', 'Islam', 'Menikah', '085702223252', 'Tetap', '2017-10-01', NULL, 'Y', 'Y', NULL, '175/SIPB/XI/2017', '2021-12-04', '1402521161135667', '2021-12-04', 15, 'Sidomulyo Rt 046 / Rw 013, Sragen Wetan, Sragen', '2019-01-29 07:19:10', '2019-01-29 07:19:10'),
(61, NULL, 'Eny Kusrini, Amd.Keb', 'Sragen', '1983-07-29', 'P', 'D3', 'Islam', 'Menikah', '081226209531', 'Tetap', '2005-12-01', NULL, 'Y', 'Y', NULL, '282/SIKB/X/2015', '2020-10-01', '1402522171379659', '2022-07-29', 26, 'Pengkok Rt. 15 Pengkok Kedawung Sragen', '2019-01-29 07:24:20', '2019-01-29 07:24:20'),
(63, NULL, 'Dina Ika Trisnawati, AMd.Keb', 'Sragen', '1985-08-12', 'P', 'D3', 'Kristen', 'Single', '081393837084', 'Tetap', '2009-08-01', NULL, 'Y', 'Y', NULL, '85/SIPB/IV/2020', '2018-08-12', '1402522171379663', '2022-08-12', 26, 'Jetis Mojosari Rt. 05/01 Sragen Kulon Sragen', '2019-01-29 07:26:36', '2021-01-26 06:24:34'),
(64, NULL, 'Dewi Sulistyowati, Amd.Keb', 'Karanganyar', '1985-05-06', 'P', 'D3', 'Islam', 'Menikah', '085217745067', 'Training', '2012-11-01', NULL, 'Y', 'Y', NULL, '87/SIPB/IV/2020', '2022-05-06', '1402522171379651', '2022-05-06', 16, 'Miri Rt. 08 Celep Kedawung  Sragen', '2019-01-29 07:29:25', '2020-04-30 03:27:12'),
(65, NULL, 'Kuswatun Hasanah, Amd.Kep', 'Sragen', '1993-11-27', 'P', 'D3', 'Islam', 'Menikah', '082226550304', 'Kontrak', '2017-05-03', NULL, 'Y', 'Y', NULL, '198/SIPP/X/2017', '2020-11-27', '1201521151046440', '2020-11-27', 16, 'Wonomulyo Rt. 22 Sambirejo Sambirejo Sragen', '2019-01-29 07:31:19', '2019-01-29 07:31:19'),
(66, NULL, 'Catur Wulan Handayani, AMd.Keb', 'Sragen', '1979-01-15', 'P', 'D3', 'Islam', 'Menikah', '081326150867', 'Tetap', '2004-07-01', NULL, 'Y', 'Y', NULL, '72/SIPB/IV/2020', '2022-01-15', '1402522171379649', '2022-01-15', 16, 'Mojokerto Rt. 15/V Mojokerto Kedawung Sragen', '2019-01-29 07:33:20', '2020-04-30 03:28:26'),
(67, '3314035911870001', 'Aris Setyowati, Amd. Keb', 'Sragen', '1987-11-19', 'P', 'D3', 'Islam', 'Menikah', '081329275489', 'Tetap', '2010-09-01', NULL, 'Y', 'Y', NULL, '471/SIKB/XI/2015', '2020-11-20', '1402522171379668', '2022-11-19', 1, 'Margo Asri Rt 036 / Rw 009 Puro, Karangmalang, Sragen', '2019-01-30 00:52:59', '2019-01-30 00:52:59'),
(68, '3314105609790002', 'Dwi Setyorini, Amd.Keb', 'Sragen', '1979-09-16', 'P', 'D3', 'Khatolik', 'Menikah', '08225219844', 'Tetap', '2011-03-01', NULL, 'Y', 'Y', NULL, '77/SIPB/IV/2020', '2022-09-16', '1402522171379661', '2022-09-16', 15, 'Jetak Rt 006, Duyungan, Sidoharjo, Sragen', '2019-01-30 01:01:04', '2020-04-30 03:29:09'),
(69, '3314044706870001', 'Siti Hanifah, Amd. Keb', 'Sragen', '1987-06-07', 'P', 'D3', 'Islam', 'Menikah', '081511842069', 'Tetap', '2013-05-01', NULL, 'Y', 'Y', NULL, '279/SIKB/X/2015', '2020-10-01', '1402522171379658', '2022-06-07', 15, 'Perum Permata Asri Blok B No.5 Rt 029 Pilangsari, Ngrampal, Sragen', '2019-01-30 01:07:33', '2019-01-30 01:07:33'),
(70, '3314095912920004', 'Pradhita Luthfianasari, Amd. Keb', 'Sragen', '1992-12-19', 'P', 'D3', 'Islam', 'Single', '085800323111', 'Tetap', '2015-05-01', NULL, 'Y', 'Y', NULL, '270/SIKB/X/2015', '2020-10-01', '1402521151046987', '2020-12-19', 15, 'Margo Asri Rt 026 / Rw 008 Puro, Karangmalang, Sragen', '2019-01-30 01:27:48', '2019-01-30 01:27:48'),
(71, '3314077003930001', 'Suprihatin, Amd.Keb', 'Sragen', '1993-03-30', 'P', 'D3', 'Islam', 'Menikah', '085328102056', 'Tetap', '2016-03-01', NULL, 'Y', 'Y', NULL, '80/SIKB/VIII/2016', '2021-08-09', '1402521150898919', '2020-03-30', 25, 'Kerep Rt 003 / Rw 002, Cemeng, Sambungmacan, Sragen', '2019-01-30 01:34:09', '2019-01-30 01:34:09'),
(72, NULL, 'Ambar Dwi Hastutik , Amd.Keb', 'Sragen', '1982-04-09', 'L', 'D3', 'Islam', 'Menikah', '085628884929', 'Tetap', '2009-03-01', NULL, 'Y', 'Y', NULL, '88/SIPB/IV/2020', '2022-04-09', '1402522171379653', '2022-04-09', 16, 'Mageru Rt. 02/01 Plumbungan Karangmalang Sragen', '2019-01-30 01:38:16', '2020-04-30 03:30:18'),
(73, '3314075008920001', 'Anik Sartini, Amd. Keb', 'Sragen', '1992-08-20', 'P', 'D3', 'Islam', 'Menikah', '081226959514', 'Tetap', '2013-05-01', NULL, 'Y', 'Y', NULL, '269/SIKB/X/2015', '2017-08-20', '1402522171379670', '2022-08-20', 25, 'Bakungan Rt 011, Kaliwedi, Gondang, Sragen', '2019-01-30 01:38:28', '2019-01-30 01:38:28'),
(74, NULL, 'Putri Susiandini, Amd.Kep', 'Sragen', '1992-08-13', 'P', 'D3', 'Islam', 'Single', '085218810753', 'Kontrak', '2018-08-01', NULL, 'Y', 'Y', NULL, '293/SIPP/IX/2018', '2021-08-13', '1401521161181053', '2021-08-13', 16, 'Ngablak Rt. 01/02 Sine, Sragen Sragen', '2019-01-30 01:41:57', '2019-01-30 01:41:57'),
(75, '3314105303830009', 'Sri Wahyuni, Amd. Keb', 'Sragen', '1983-03-13', 'P', 'D3', 'Islam', 'Menikah', '081329182559', 'Tetap', '2007-07-30', NULL, 'Y', 'Y', NULL, '73/SIPB/IV/2020', '2023-03-13', '1402522182370246', '2023-03-13', 1, 'Kenatan Rt 007 / Rw 003, Karanganyar, Sambungmacan, Sragen', '2019-01-30 01:42:57', '2020-04-30 03:35:10'),
(76, NULL, 'Dyah Christiyana, Amd.Kep', 'Karanganyar', '1994-08-27', 'P', 'D3', 'Islam', 'Menikah', '085225273494', 'Kontrak', '2018-07-01', NULL, 'Y', 'Y', NULL, '290/SIPP/IX/2018', '2022-08-27', '1401211172025999', '2022-08-27', 16, 'Ganten Rt. 02/Rw. 01 Ganten Kerjo Karanganyar', '2019-01-30 01:44:11', '2019-01-30 01:44:11'),
(78, NULL, 'Palupi Esmu Sayekti, Amd. Keb', 'Boyolali', '1989-05-09', 'P', 'D3', 'Islam', 'Menikah', '08112630903', 'Tetap', '2011-12-01', NULL, 'Y', 'Y', NULL, '70/SIPB/IV/2020', '2022-05-09', '1402522171379665', '2022-05-09', 25, 'Karangbendo Rt 15 / Rw 05, Kroyo, Karangmalang, Sragen', '2019-01-30 01:48:27', '2020-04-30 03:36:59'),
(79, NULL, 'Elisa Rahmawati, Amd.Kep', 'Karanganyar', '1994-07-13', 'P', 'D3', 'Islam', 'Single', '085974654144', 'Kontrak', '2017-06-01', NULL, 'Y', 'Y', NULL, '292/SIPP/IX/2018', '2022-07-13', '1401521172025916', '2022-07-13', 16, 'Suruh Kalong Rt. 06/Rw. 07 Pandeyan Tasikmadu Karanganyar', '2019-01-30 01:53:20', '2019-01-30 01:53:20'),
(80, '3313065106910001', 'Aning Setyowati, Amd.Keb', 'Karanganyar', '1991-06-11', 'P', 'D3', 'Islam', 'Menikah', '08112569456', 'Tetap', '2015-01-11', NULL, 'Y', 'Y', NULL, '57/SIPB/IV/2020', '2022-06-11', '1402522171379664', '2022-06-11', 1, 'Tunggul Rt 11, Gondang, Sragen', '2019-01-30 01:54:08', '2020-04-30 03:38:30'),
(81, NULL, 'Sari Nur Hartanti, Amd.Kep', 'Semaraang', '1993-06-12', 'P', 'D3', 'Islam', 'Menikah', '082139766157', 'Kontrak', '2018-06-01', NULL, 'Y', 'Y', NULL, '291/SIPP/IX/2018', '2022-06-12', '1401521151025991', '2020-06-12', 16, 'Taman Asri Rt. 034/Rw. 014 Kroyo Karangmalang Sragen', '2019-01-30 01:55:33', '2019-01-30 01:55:33'),
(82, '3311116505840001', 'Lenny Hendiyawati, Amd. Keb', 'Sragen', '1984-05-25', 'P', 'D3', 'Islam', 'Menikah', '085229999544', 'Tetap', '2007-10-08', NULL, 'Y', 'Y', NULL, '65/SIPB/IV/2020', '2022-05-25', '1402522171379657', '2022-05-25', 25, 'Betikan Rt 001 / Rw 006, Wironanggan, Gatak, Sukoharjo', '2019-01-30 02:04:05', '2020-04-30 03:41:59'),
(83, NULL, 'Eko Wuryanti, Amd. Keb', 'Sragen', '1973-01-15', 'P', 'D3', 'Islam', 'Menikah', '082136616978', 'Tetap', '2002-02-01', NULL, 'Y', 'Y', NULL, '68/SIPB/IV/2020', '2022-01-15', '1402522171379648', '2022-01-15', 25, 'Popongan Rt 20 / Rw 06, Klandungan, Ngrampal, Sragen', '2019-01-30 02:14:56', '2020-04-30 03:43:08'),
(84, NULL, 'Triwi Apianingsih, Amd.AK', 'Karanganyar', '1989-04-27', 'P', 'D3', 'Islam', 'Menikah', '081225113119', 'Tetap', '2013-07-01', NULL, 'Y', 'Y', NULL, '019/SIP-ATLM/IX/2016', '2021-09-01', '1414522171337725', '2022-04-27', 7, 'Keruhan Rt. 002/Rw. 007 Karangrejo Kerjo Karanganyar', '2019-01-30 02:18:36', '2019-01-30 02:18:36'),
(85, NULL, 'Nur Fiantini Desi Susilowati, AMd.AK', 'Karanganyar', '1993-12-02', 'P', 'D3', 'Islam', 'Single', '082322992121', 'Tetap', '2014-06-01', NULL, 'Y', 'Y', NULL, '05/SIP-ATLM/II/2017', '2022-02-09', '1414521161190102', '2021-12-01', 7, 'Kedungringin Rt. 06/ Rw. 02 Waru Kebakkramat Karanganyar', '2019-01-30 02:21:27', '2019-01-30 02:21:27'),
(86, NULL, 'Dyan Putri Raharjati,Amd.AK', 'Sragen', '1991-05-05', 'P', 'D3', 'Islam', 'Menikah', '085640342433', 'Kontrak', '2017-02-01', NULL, 'Y', 'Y', NULL, '058/SIK-AK/VI/2015', '2020-06-24', '1414522171337726', '2022-05-05', 7, 'Jetak Kidul Rt. 002 Jetak Sidoharjo Sragen', '2019-01-30 02:24:43', '2019-01-30 02:24:43'),
(87, '3314106706860004', 'Alfi Nurohmah, Amd.Keb', 'Sragen', '1986-06-27', 'P', 'D3', 'Islam', 'Menikah', '085640839313', 'Tetap', '2012-09-01', NULL, 'Y', 'Y', NULL, '271/SIKB/X/2015', '2020-10-01', '1402521140855547', NULL, 25, 'Ringin Anom Rt 02 / Rw 18, Sragen Kulon, Sragen', '2019-01-30 02:29:55', '2019-01-30 02:29:55'),
(88, NULL, 'Ngatmi,Am.AK', 'Sragen', '1973-12-01', 'P', 'D3', 'Islam', 'Menikah', '082132384615', 'Tetap', '2011-05-01', NULL, 'Y', 'Y', NULL, '019/SIK-AK/III/2015', '2020-03-04', '1414522171337729', '2022-12-01', 7, 'Klinge Rt. 24/9 Ngringging Sambungmacan Sragen', '2019-01-30 02:41:37', '2019-01-30 02:41:37'),
(89, '3311056507940001', 'Dewi Puspitasari, Amd. Keb', 'Sukoharjo', '1994-07-25', 'P', 'D3', 'Islam', 'Single', '087735000089', 'Tetap', '2017-10-01', NULL, 'Y', 'Y', NULL, '176/SIPB/XI/2017', '2021-07-25', '1402521161096650', '2021-07-25', 25, 'Dukuh Karangjoho Rt 03 / Rw 03, Daleman, Nguter, Sukoharjo', '2019-01-30 02:42:42', '2019-01-30 02:42:42'),
(90, '3314096801940001', 'Eka Rima Pertiwi, Amd. Keb', 'Sragen', '1994-01-28', 'P', 'D3', 'Islam', 'Menikah', '082142447339', 'Tetap', '2017-10-01', NULL, 'Y', 'Y', NULL, '178/SIPB/XI/2017', '2021-01-28', '1402521161251605', '2021-01-28', 25, 'Margo Asri Rt 33 / Rw 09, Puro, Karangmalang, Sragen', '2019-01-30 02:56:35', '2019-01-30 02:56:35'),
(91, NULL, 'Indasah,Amd.AK', 'Sragen', '1970-12-10', 'P', 'D3', 'Islam', 'Menikah', '08139364558', 'Tetap', '2000-01-01', NULL, 'Y', 'Y', NULL, '020/SIK-AK/III/2015', '2020-03-04', '1414522171337720', '2022-12-10', 7, 'Gerdu Rt. 04 Pilangsari Ngrampal Sragen', '2019-01-30 02:57:45', '2019-01-30 02:57:45'),
(92, NULL, 'Sukamti, Amd.AK', 'Sragen', '1972-12-17', 'P', 'D3', 'Islam', 'Menikah', '082138886572', 'Tetap', '1994-01-12', NULL, 'Y', 'Y', NULL, '018/SIK-AK/III/2018', '2020-03-04', '1414522171353659', '2022-12-17', 7, 'Asem Rejo Rt. 1/8 Karangtengah Sragen', '2019-01-30 02:59:48', '2019-01-30 02:59:48'),
(93, NULL, 'Iva Triharyani,Amd.AK', 'Kebumen', '1983-08-31', 'P', 'D3', 'Islam', 'Menikah', '08112905754', 'Tetap', '2013-01-01', NULL, 'Y', 'Y', NULL, '017/SIK-AK/III/2015', '2020-03-04', '1414522171337718', '2022-08-31', 7, 'Jln. Kalimantan No. 01 Krapyak Rt. 31/Rw. 10 Sragen wetan Sragen', '2019-01-30 03:02:31', '2019-01-30 03:02:31'),
(94, NULL, 'Mulyati, AmAK', 'Sragen', '1972-08-18', 'P', 'D3', 'Islam', 'Menikah', '08562847247', 'Tetap', '1993-10-01', NULL, 'Y', 'Y', NULL, '036/SIK-AK/III/2015', '2020-03-25', '1414521182254931', '2023-08-18', 7, 'teguhan Rt. 5A/II,  Plumbungan Karangmalang Sragen', '2019-01-30 03:04:57', '2019-01-30 03:04:57'),
(96, '3314096103870004', 'Dwi Maryati, Amd. Kep', 'Sragen', '1987-03-21', 'P', 'D3', 'Islam', 'Menikah', '082135027587', 'Tetap', '2012-04-01', NULL, 'Y', 'Y', NULL, '287/SIK/X/2015', '2020-10-13', '1401522171354464', '2022-03-21', 20, 'Garit Rt 006, Sambirejo, Sragen', '2019-01-30 03:40:40', '2019-01-30 03:40:40'),
(97, NULL, 'Danik Setyowati', 'Sragen', '1981-12-07', 'P', 'SMK', 'Islam', 'Menikah', '08122628868', 'Tetap', '2004-12-01', NULL, 'Y', 'Y', NULL, '08/SIKTTK/II/2014', '2019-02-11', '19811207/STRTTK_332000/26074', '2020-12-31', 9, 'Widoro Asrama Yonif 408 Rt. 040/012 Sragen Wetan Sragen', '2019-01-30 03:42:24', '2019-01-30 03:42:24'),
(98, '3314105602810005', 'Dewi Purbowati, Amd. Kep', 'Sragen', '1980-02-16', 'P', 'D3', 'Khatolik', 'Menikah', '082220279081', 'Tetap', '2003-12-01', NULL, 'Y', 'Y', NULL, '292/SIK/X/2015', '2020-10-13', '1401522171355169', '2022-02-16', 20, 'Jl. Kartini No.39A Mageru Rt 02 / Rw 01, Sragen Tengah, Sragen', '2019-01-30 03:50:01', '2019-01-30 03:50:01'),
(99, NULL, 'Rita Vayani', 'Sragen', '1975-11-29', 'P', 'SMK', 'Islam', 'Menikah', '082327419200', 'Tetap', '2000-05-01', NULL, 'Y', 'Y', NULL, '07/SIKTTK/II/2014', '2019-02-11', '19751129/STRTTK_331995/26122', '2020-12-31', 9, 'Seblabur Rt. 025 Blimbing Sambirejo Sragen', '2019-01-30 03:55:56', '2019-01-30 03:55:56'),
(100, NULL, 'Kelik Sulis Suhermin', 'Sragen', '1982-02-14', 'P', 'SMK', 'Islam', 'Menikah', '085702505555', 'Tetap', '2001-11-01', NULL, 'Y', 'Y', NULL, '09/SIKTTK/II/2014', '2019-02-11', '19820214/STRTTK_332001826104', '2020-12-31', 1, 'teguhan Rt. 5B /II plumbungan karangmalang Sragen', '2019-01-30 03:59:22', '2019-01-30 03:59:22'),
(101, NULL, 'Heni Widihastuti', 'sragen', '1991-11-15', 'P', 'SMK', 'Islam', 'Menikah', '085647566003', 'Tetap', '2010-04-01', NULL, 'Y', 'Y', NULL, '02/SIKTTK/II/2014', '2019-02-11', '19911115/STRTTK_332008/26095', '2020-12-31', 9, 'TAman Asri Rt. 31 Kroyo karangmalang Sragen', '2019-01-30 04:04:40', '2019-01-30 04:04:40'),
(102, NULL, 'Hety Wulnadari, Am.F', 'Sragen', '1984-09-15', 'P', 'D3', 'Islam', 'Menikah', '082226128482', 'Tetap', '2014-01-01', NULL, 'Y', 'Y', NULL, '106/SIPTTK/VIII/2021', '2026-09-15', '19840915/STRTTK_332005/24985', '2026-09-15', 9, 'Margo Asri 032/009 Puro Karangmalang Sragen', '2019-01-30 04:06:59', '2021-08-30 03:19:15'),
(103, NULL, 'Wahyu Ratna Widyastuti, Am.F', 'Semaraang', '1990-08-09', 'P', 'D3', 'Islam', 'Menikah', '082226399913', 'Tetap', '2014-12-31', NULL, 'Y', 'Y', NULL, '014/SIKTTK/VI/2015', '2020-06-17', '19900809/STRTTK-332013/213239', '2018-08-09', 9, 'Asrama Yonif 408 Widoro Sragen wetan Sragen', '2019-01-30 04:09:32', '2019-01-30 04:09:32'),
(104, NULL, 'Ega Tri Yulian, Am.F', 'Lampung', '1987-07-05', 'P', 'D3', 'Islam', 'Menikah', '081325420289', 'Tetap', '2013-04-01', NULL, 'Y', 'Y', NULL, '99/SIPTTK/VIII/2021', '2026-07-05', '19870705/STRTTK_33/2009/206084', '2026-07-05', 9, 'Jl. Duku Rt. 03/ Rw. VI Mojo Kulon Sragen', '2019-01-30 04:13:37', '2021-08-30 01:47:02'),
(105, NULL, 'Nur Izah,AM.F', 'Sragen', '1983-10-08', 'P', 'D3', 'Islam', 'Menikah', '082136980063', 'Tetap', '2013-07-16', NULL, 'Y', 'Y', NULL, '105/SIPTTK/VIII/2021', '2026-10-08', '19831008/STRTTK_33/2005/207831', '2026-10-08', 9, 'Margo Mulyo Rt. 040/001 Puro Karangmalang sragen', '2019-01-30 04:15:40', '2021-08-30 01:24:39'),
(106, NULL, 'Eri Afriyani, Am.F', 'Ngawi', '1992-06-14', 'P', 'D3', 'Islam', 'Menikah', '082220760688', 'Tetap', '2015-03-01', NULL, 'Y', 'Y', NULL, '016/SIKTTK/VI/2015', '2020-06-17', '19920614/STRTTK_33/2014/215988', '2019-06-14', 9, 'Pakah Rt. 03/04 Mantingan Ngawi', '2019-01-30 04:18:10', '2019-01-30 04:18:10'),
(107, NULL, 'Septy Nur Pratiwi, Am.F', 'Sragen', '1993-09-28', 'P', 'SMK', 'Islam', 'Menikah', '082242840533', 'Tetap', '2015-03-01', NULL, 'Y', 'Y', NULL, '015/SIKTTK/VI/2015', '2020-06-17', '19930928/STRTTK_33/2014216016', '2019-09-28', 9, 'Pedakan Rt. 04/Rw. 02 Bener Ngrampal sragen', '2019-01-30 04:20:12', '2019-01-30 04:20:12'),
(108, '3313156308830001', 'Dyah Ayu Widyaningrum, Amd. Kep', 'Karanganyar', '1983-08-23', 'P', 'D3', 'Islam', 'Menikah', '085702488824', 'Tetap', '2011-01-01', NULL, 'Y', 'Y', NULL, '290/SIK/X/2015', '2020-10-13', '1401522172155467', '2022-08-23', 1, 'Cerbonan Rt 003 / Rw 002, Karanganyar', '2019-01-30 04:22:35', '2019-01-30 04:22:35'),
(109, NULL, 'Rosyta VElayanti,S.Farm,.Apt', 'Sragen', '1992-02-16', 'P', 'S1', 'Islam', 'Menikah', '085642472200', 'Kontrak', '2017-09-01', NULL, 'Y', 'Y', NULL, '3314/SIPA/II/44/XI/2017', '2022-02-16', '1992/0216/STRA-UAD/2017/249078', '2022-02-16', 1, 'Puro Asri Rt. 28/Rw. 07 Puro Karangmalang Sragen', '2019-01-30 04:29:17', '2019-01-30 04:29:17'),
(110, NULL, 'Warsini', 'Sragen', '1975-10-11', 'P', 'SMK', 'Islam', 'Menikah', '081329558458', 'Tetap', '2002-05-20', NULL, 'Y', 'Y', NULL, '04/SIKTTK/II/2014', '2019-02-11', '19750911/STRTTK_331994/26151', '2020-12-31', 9, 'Gerompolan Rt. 17/ Rw. VI Jambanan Sidoharjo sragen', '2019-01-30 04:36:21', '2019-01-30 04:36:21'),
(111, NULL, 'Mita Ayu Ambarsari,S.Farm,.Apt', 'Putussibau', '1992-01-10', 'P', 'S1', 'Islam', 'Menikah', '082226731030', 'Tetap', '2016-03-01', NULL, 'Y', 'Y', NULL, '3314/SIPA/I/05/I/2019', '2024-01-10', '19920110/STRA-UMS/2014/237592', '2024-01-10', 9, 'Jetak Rt. 04/02 duyungan Sidoharjo sragen', '2019-01-30 04:46:08', '2019-01-30 04:46:08'),
(112, NULL, 'Sri Yantini, S.Farm,.Apt', 'Sragen', '1976-12-15', 'P', 'S1', 'Islam', 'Menikah', '081575940594', 'Tetap', '2005-04-01', NULL, 'Y', 'Y', NULL, '3314/SIPA/I/20/II/2017', '2022-02-09', '19761215/STRA-UGM/2004/25828', '2021-12-15', 9, 'Kampung Baru Rt. 02 Bendungan Kedawung Sragen', '2019-01-30 04:49:34', '2019-01-30 04:49:34'),
(113, NULL, 'Puspita Nur Hapsari,S.Farm.Apt', 'Sragen', '1992-07-16', 'P', 'S1', 'Islam', 'Menikah', '085727440965', 'Tetap', '2017-02-01', NULL, 'Y', 'Y', NULL, '3314/SIPA/II/20/VI/2017', '2020-06-16', '19920706/STRA-UMS/2015/241443', '2020-07-06', 9, 'Tunjungan Rt. 01/Rw. 01 Bedoro Sambungmacan Sragen', '2019-01-30 04:52:24', '2019-01-30 04:52:24'),
(114, NULL, 'Tutik Supatmi', 'Sragen', '1976-02-28', 'P', 'SMK', 'Islam', 'Menikah', '081225473307', 'Tetap', '1995-01-01', NULL, 'Y', 'Y', NULL, '06/SIKTTK/II/2014', '2019-02-11', '19760228/STRTTK_331994/26147', '2020-12-31', 9, 'Tangkil Rt. 02/VII sragen', '2019-01-30 04:56:36', '2019-01-30 04:56:36'),
(115, NULL, 'Nopi Pahalawati,Amd.Farm', 'Ngawi', '1996-11-21', 'P', 'D3', 'Islam', 'Single', '081586542094', 'Kontrak', '2018-08-01', NULL, 'Y', 'Y', NULL, '35/SIPTTK/X/2018', '2023-11-21', '19961121/STRTTK_33/2017/229191', '2023-11-21', 1, 'PULE RT.2/2 MANTINGAN NGAWI', '2019-01-30 04:59:36', '2019-01-30 04:59:36'),
(117, NULL, 'Atikka Sari,Amd.Farm', 'Sragen', '1995-07-14', 'P', 'D3', 'Islam', 'Menikah', '085867475463', 'Kontrak', '2018-07-01', NULL, 'Y', 'Y', NULL, '09/SIPTTK/VI/2018', '2023-07-14', '19950714/STRTTK_33/2017/229382', '2023-07-14', 9, 'JUNGGRANGAN RT.022/000 PURWOSUMAN SIDOHARJO', '2019-01-30 05:03:32', '2019-01-30 05:03:32'),
(118, '3314044507791298', 'Muryani, Amd. Kep', 'Sragen', '1979-07-05', 'P', 'D3', 'Islam', 'Menikah', '085803607779', 'Tetap', '2010-12-01', NULL, 'Y', 'Y', NULL, '285/SIK/X/2015', '2020-10-13', '1401522172155582', '2022-07-05', 20, 'Gandil Rt 08, Bendungan, Kedawung, Sragen', '2019-01-30 05:35:11', '2019-01-30 05:35:11'),
(119, '3313054606800002', 'Noviana Enny Rahmawati, Amd.Kep', 'Karanganyar', '1980-06-06', 'P', 'D3', 'Islam', 'Menikah', '082225717944', 'Tetap', '2014-06-01', NULL, 'Y', 'Y', NULL, '275/SIK/2015', '2020-10-13', '1401522172156406', '2022-06-06', 20, 'Krobokan Rt 03 / Rw 09, Matesih, Karanganyar, Sragen', '2019-01-30 05:43:44', '2019-01-30 05:43:44'),
(120, '3314095805810043', 'Sri Rokayati, Amd. Kep', 'Sleman', '1981-05-18', 'P', 'D3', 'Islam', 'Menikah', '082138964299', 'Tetap', '2005-01-06', NULL, 'Y', 'Y', NULL, '051/SIPP/II/2020', '2022-05-18', '1401522171355166', '2022-05-18', 20, 'Plumbungan Indah Rt 32 / Rw 008, Plumbungan Indah, Karangmalang, Sragen', '2019-01-31 01:07:30', '2020-04-15 04:09:30'),
(121, '3314104809860005', 'Ernawati, Amd. Kep', 'Sragen', '1986-09-08', 'P', 'D3', 'Islam', 'Menikah', '081225169502', 'Tetap', '2013-04-01', NULL, 'Y', 'Y', NULL, '277/SIK/X/2015', '2020-10-13', '1401522182328796', '2023-09-08', 20, 'Asmil Yonif 408 Rt 06 / Rw 16, Sragen Kulon, Sragen', '2019-01-31 01:17:58', '2019-01-31 01:17:58'),
(122, '3314085802870001', 'Felita Ardiatmi,SST,.FT', 'tEMANGGUNG', '1987-02-18', 'P', 'D4', 'Islam', 'Menikah', '082293581288', 'Tetap', '2013-06-01', NULL, 'Y', 'Y', NULL, '16/SIPF/X/2018', '2023-02-18', '1403622181547377', '2023-02-18', 10, 'Paldaplang Kebonromo Rt. 02/01 Ngrampal Sragen', '2019-01-31 01:26:01', '2019-01-31 01:26:01'),
(123, '3314036602820001', 'Febry Lasanti,.SST', 'Purwakarta', '1992-02-26', 'P', 'D3', 'Islam', 'Single', '085233726230', 'Tetap', '2015-12-01', NULL, 'Y', 'Y', NULL, '022/SIPF/X/2016', '2021-10-10', '1403621150967867', '2020-02-26', 10, 'Kauman Rt. 09/ Rw. 03 Masaran Sragen', '2019-01-31 01:29:50', '2019-01-31 01:29:50'),
(124, '3215255909790002', 'Setyaningsih', 'Sragen', '1979-09-19', 'P', 'D3', 'Islam', 'Menikah', '085879754949', 'Tetap', '2013-06-01', NULL, 'Y', 'Y', NULL, '255/SIK/X/2015', '2020-10-13', '1401521161250539', '2021-09-19', 20, 'Putatan Rt 05 / Rw 02, Kroyo, Karangmalang, Sragen', '2019-01-31 01:30:12', '2019-01-31 01:30:12'),
(125, '3314194705820004', 'Kurnia Ebtanawati,Am.F', 'Sragen', '1982-05-07', 'P', 'D3', 'Khatolik', 'Menikah', '081325760733', 'Tetap', '2012-07-15', NULL, 'Y', 'Y', NULL, '09/SIPF/X/2015', '2020-10-13', '1403521150913415', '2020-05-07', 10, 'Widodo Rt. 17 Dukuh Tangen Sragen', '2019-01-31 01:32:18', '2019-01-31 01:32:18'),
(126, '3313144210910001', 'Tri Lestari,AMd.F', 'Karanganyar', '1991-10-02', 'P', 'D3', 'Islam', 'Single', '081216514039', 'Tetap', '2014-10-01', NULL, 'Y', 'Y', NULL, '17/SIPF/X/2018', '2022-10-02', '1403522172183805', '2022-10-02', 10, 'Gronong Rt. 02/ Rw. 03 Pulosari Kebakkramat Karanganyar', '2019-01-31 01:34:29', '2019-01-31 01:34:29'),
(127, '3314104610830006', 'Sri Supartini, Amd. Kep', 'Sragen', '1983-10-06', 'P', 'D3', 'Islam', 'Menikah', '085702488824', 'Tetap', '0013-04-12', NULL, 'Y', 'Y', NULL, '286/SIK/X/2015', '2020-10-13', '1401522172155442', '2022-10-06', 20, 'Nglorog Rt 001 / Rw 005, Nglorog, Sragen', '2019-01-31 01:35:39', '2019-01-31 01:35:39'),
(128, '3314105811940002', 'Nur Laili Dyah Novitasari,Str,Ft', 'Sragen', '1994-11-18', 'P', 'D4', 'Islam', 'Single', '085293716863', 'Kontrak', '2018-05-01', NULL, 'Y', 'Y', NULL, '09/SIPF/VII/2018', '2021-11-18', '1403621162016815', '2021-11-18', 10, 'Kedungupit Rt. 09/03 Kedungupit Sragen Sragen', '2019-01-31 01:37:07', '2019-01-31 01:37:07'),
(129, '3314106711850003', 'Tri Wahyuni, Amd. Kep', 'Sragen', '1985-11-27', 'P', 'D3', 'Islam', 'Menikah', '085725003030', 'Tetap', '2012-04-01', NULL, 'Y', 'Y', NULL, '272/SIK/X/2015', '2020-10-13', '1401522172155561', '2022-11-27', 1, 'Ngrandu Rt 02 / Rw 02, Nglorog, Sragen', '2019-01-31 01:40:33', '2019-01-31 01:40:33'),
(130, '3314061307930002', 'Dhoni Setiawan, Amd.Rad', 'Sragen', '1993-07-13', 'L', 'D3', 'Islam', 'Single', '085642237543', 'Tetap', '2016-11-01', NULL, 'Y', 'Y', NULL, '006/SIKR/XI/2016', '2021-11-23', '1407511161128978', '2021-07-13', 32, 'Ngunda\'an Rt. 001/Rw. 001 Glonggong Gondang Sragen', '2019-01-31 01:42:19', '2019-01-31 01:42:19'),
(131, '3314030104920008', 'Amiruddin Abdul Aziz.Amd.Rad', 'Sragen', '1992-04-01', 'L', 'D3', 'Islam', 'Menikah', '01122991158', 'Tetap', '2014-09-01', NULL, 'Y', 'Y', NULL, '020/SIK/XII/2014', '2019-12-09', '1507511140776276', '2019-04-01', 32, 'Kr bendo Krikilan Masaran Sragen', '2019-01-31 01:44:49', '2019-01-31 01:44:49'),
(133, '1607045702950004', 'Nurul Pravita Sari, AMd.Rad', 'Senda Mukti Banyuasin', '1995-02-17', 'P', 'D3', 'Islam', 'Menikah', '08112952261', 'Kontrak', '2017-07-01', NULL, 'Y', 'Y', NULL, '01/SIPR/II/2018', '2021-02-17', '1507521161133330', '2021-02-17', 32, 'Ngampunan rt. 21/Rw. 05 Kebonromo Ngrampal Sragen', '2019-01-31 01:46:57', '2019-01-31 01:46:57'),
(134, '3314096611820001', 'Menik Purwanti, Amd. Kep', 'Sragen', '1982-11-26', 'P', 'D3', 'Islam', 'Menikah', '082243686661', 'Tetap', '2017-03-01', NULL, 'Y', 'Y', NULL, '264/SIKP/VIII/2016', '2021-08-15', '1401522182328797', '2023-11-26', 20, 'Pilangrejo Rt 013 / Rw 004, Puro, Karangmalang, Sragen', '2019-01-31 01:51:51', '2019-01-31 01:51:51'),
(136, '3314095201950002', 'Dewi Ari Wijayanti, Amd.Kep', 'Sragen', '1995-01-12', 'P', 'D3', 'Islam', 'Single', '082242919441', 'Tetap', '2016-06-01', NULL, 'Y', 'Y', NULL, '272/SIKP/VIII/2016', '2021-08-15', '1401521161181014', '2021-01-12', 20, 'Kedung Cabe Rt 22 / Rw 006, Kedungwaduk, Karangmalang, Sragen', '2019-01-31 01:59:59', '2019-01-31 01:59:59'),
(137, '3314044103920003', 'Hanayu Marita Sari, Amd. Kep', 'Sragen', '1992-03-01', 'P', 'D3', 'Islam', 'Menikah', '081282454484', 'Tetap', '2016-10-01', NULL, 'Y', 'Y', NULL, '16/SIKP/II/2017', '2022-02-01', '1401521150967348', '2020-03-01', 20, 'Karang Rt 21 / Rw 007, Mojokerto, Kedawung, Sragen', '2019-01-31 02:04:17', '2019-01-31 02:04:17'),
(139, '3314084411950001', 'Siti Kustanti, AMd.RMIK', 'Sragen', '1995-11-04', 'P', 'D3', 'Islam', 'Single', '089671298344', 'Kontrak', '2018-04-01', NULL, 'Y', 'Y', NULL, '06/SIPRM/V/2018', '2022-11-04', '1410521172162239', '2022-11-04', 14, 'Brengkalan rt. 25 Gabus Ngrampal Sragen', '2019-01-31 02:08:31', '2019-01-31 02:08:31'),
(140, '3313055311940001', 'Karsini, Amd.RMIK', 'Karanganyar', '1994-11-13', 'P', 'D3', 'Islam', 'Single', '08130551291', 'Kontrak', '2018-01-01', NULL, 'Y', 'Y', NULL, '03/SIPRM/III/2018', '2020-11-13', '1410521162013700', '2021-11-13', 14, 'Bacak Rt. 01/011 Pablengan Matesih Karanganyar', '2019-01-31 02:10:22', '2019-01-31 02:10:22'),
(143, NULL, 'Riski Ika Sari,Amd.RMIK', 'Karanganyar', '1996-04-09', 'P', 'D3', 'Islam', 'Single', '082226142115', 'Training', '2018-09-01', NULL, 'Y', 'Y', NULL, '38/SIPRM/X/2018', '2022-04-09', '1410521172160296', '2022-04-09', 14, 'Sumber Rt. 01/01 Singopadu Sidoharjo Sragen JAwaTengah', '2019-01-31 02:16:13', '2019-01-31 02:16:13'),
(144, '3314124408880001', 'Eka Muji Lestari, Amd. Kep', 'Sragen', '1988-08-04', 'P', 'D3', 'Islam', 'Menikah', '0818622383', 'Tetap', '2013-11-01', NULL, 'Y', 'Y', NULL, '293/SIK/X/2015', '2020-10-13', '1401522182328798', '2023-08-04', 1, 'Bangle Rt 13 Tanon, Sragen', '2019-01-31 02:18:44', '2019-01-31 02:18:44'),
(145, NULL, 'Asih Winarni, AMd.RMIK', 'Sragen', '1987-10-22', 'P', 'D3', 'Islam', 'Menikah', '081392833138', 'Tetap', '2013-03-01', NULL, 'Y', 'Y', NULL, '08/SIKRM/XI/2015', '2020-11-20', '1410521120017228', '2017-10-22', 14, 'Japoh Rt. 09/03 Japoh Jenar sragen', '2019-01-31 02:19:36', '2019-01-31 02:19:36'),
(146, NULL, 'Ririn Martha Yutikasarry,Amd.RMIK', 'Sragen', '1993-03-11', 'P', 'D3', 'Islam', 'Menikah', '082133339980', 'Tetap', '2015-09-01', NULL, 'Y', 'Y', NULL, '06/SIKRM/XI/2015', '2020-11-29', '1410521150917986', '2020-03-11', 14, 'Jatisumo Rt. 12/01 Sambungmacan Sragen', '2019-01-31 02:21:18', '2019-01-31 02:21:18'),
(147, NULL, 'Liesa Rusitawati,Amd.RMIK', 'Karanganyar', '1993-01-24', 'P', 'D3', 'Islam', 'Menikah', '082149032691', 'Tetap', '2015-04-01', NULL, 'Y', 'Y', NULL, '13/SIKRM/XI/2015', '2020-11-20', '1410521151061529', '2020-01-24', 14, 'Dawung Rt. 03/01 Kemiri Kebakkramat karanganyar', '2019-01-31 02:23:24', '2019-01-31 02:23:24'),
(148, NULL, 'Yuliana Marliani, Amd.RMIK', 'Ngawi', '1990-10-20', 'P', 'D3', 'Islam', 'Single', '081359102954', 'Tetap', '2014-09-01', NULL, 'Y', 'Y', NULL, '09/SIKRM/XI/2015', '2020-11-20', '1510521150907211', '2020-10-20', 14, 'Banaran Rt. 01/03 Sriwedari Karanganyar Ngawi', '2019-01-31 02:42:21', '2019-01-31 02:42:21'),
(149, NULL, 'Danik Dewi Lestari,Amd.RMIK', 'Sragen', '1991-07-02', 'P', 'D3', 'Islam', 'Menikah', '082242669122', 'Tetap', '2016-06-01', NULL, 'Y', 'Y', NULL, '24/SIKRM/X/2016', '2021-10-12', '1410521150917868', '2020-02-07', 14, 'Klimput Rt. 04/01 Plosokerep Karangmalang Sragen', '2019-01-31 02:45:31', '2019-01-31 02:45:31'),
(150, NULL, 'Dwi Indah Lestari,Amd.RMIK', 'Sragen', '1990-03-24', 'P', 'D3', 'Islam', 'Menikah', '081326802980', 'Tetap', '2013-03-01', NULL, 'Y', 'Y', NULL, '15/SIKRM/XI/2015', '2020-11-20', '1410521120640612', '2017-03-24', 14, 'Bringinan Rt. 17/IV Tempelrejo Mondokan Sragen', '2019-01-31 02:48:48', '2019-01-31 02:48:48'),
(151, NULL, 'Titin Wardani, Amd.RMIK', 'Sragen', '1983-09-12', 'P', 'D3', 'Islam', 'Menikah', '085747528706', 'Tetap', '2010-03-01', NULL, 'Y', 'Y', NULL, '12/SIKRM/XI/2015', '2020-11-20', '1410522182281707', '2023-09-12', 1, 'Gandil Rt. 35/16 Mojorejo karangmalang sragen', '2019-01-31 02:51:21', '2019-01-31 02:51:21'),
(153, '3314096112740002', 'Nanik Dwi Hastuti, Amd. Kep', 'Sragen', '1974-12-21', 'P', 'D3', 'Islam', 'Menikah', '085223591207', 'Tetap', '2012-12-01', NULL, 'Y', 'Y', NULL, '297/SIK/X/2015', '2020-10-13', '1401522171468180', '2023-12-21', 23, 'Gandil Rt 35 / Rw 16, Mojorejo, Karangmalang, Sragen', '2019-01-31 03:42:55', '2019-01-31 03:42:55'),
(154, '3521125108950006', 'Aditya Ayu Merdhikawati, Amd. Kep', 'Ngawi', '1995-08-11', 'P', 'D3', 'Islam', 'Single', '085740243112', 'Tetap', '2018-08-01', NULL, 'Y', 'Y', NULL, '307/SIPP/IX/2018', '2022-08-11', '1401521172041871', '2022-08-11', 23, 'Karangbanyu Rt 03 / Rw 03, Karangbanyu, Widodaren, Ngawi', '2019-01-31 03:46:49', '2019-01-31 03:46:49'),
(155, '3314082406900006', 'Arivin Dwi Prasetyawan, Amd. Kep', 'Sragen', '1990-06-24', 'L', 'D3', 'Islam', 'Menikah', '082225219846', 'Tetap', '2017-06-10', NULL, 'Y', 'Y', NULL, '303/SIPP/IX/2018', '2023-06-24', '1401512182328805', '2023-06-24', 23, 'Klandungan Rt 09 / Rw 05, Klandungan, Ngrampal, Sragen', '2019-01-31 03:53:45', '2019-01-31 03:53:45'),
(158, '3520173110910001', 'Nanang Awaludhin, Amd. Kep', 'Sragen', '1991-10-31', 'L', 'D3', 'Islam', 'Menikah', '085642235302', 'Tetap', '2013-05-01', NULL, 'Y', 'Y', NULL, '248/SIK/X/2015', '2020-10-13', '1401511120536085', '2017-10-31', 23, 'Ngiwen Rt 03 / Rw 01, Purworejo, Nguntorodadi, Magetan', '2019-01-31 05:12:47', '2019-01-31 05:12:47'),
(160, '3314083009800001', 'Sutrisno, Amd. Kep', 'Sragen', '1980-09-30', 'P', 'D3', 'Islam', 'Menikah', '082135484300', 'Tetap', '2016-02-01', NULL, 'Y', 'Y', NULL, '271/SIKP/VIII/2016', '2021-08-15', '1401512182237776', '2023-09-30', 23, 'Karangudi Rt 13 / Rw 05, Ngrampal, Sragen', '2019-01-31 06:15:06', '2019-01-31 06:15:06'),
(161, '3314085012920001', 'Nurul Qotimah, Amd. Kep', 'Sragen', '1992-12-10', 'P', 'D3', 'Islam', 'Single', '081229375413', 'Kontrak', '2018-06-01', NULL, 'Y', 'Y', NULL, '305/SIPP/IX/2018', '2020-09-10', '1401521151025407', '2020-12-10', 23, 'Warek Rt 23, Ngarum, Ngrampal, Sragen', '2019-02-01 04:56:06', '2020-02-21 04:55:52'),
(164, '3314095007950007', 'Linda Rismawati,Amd.Kep', 'Sragen', '1995-07-10', 'P', 'D3', 'Islam', 'Single', '082134349609', 'Kontrak', '2018-07-01', NULL, 'Y', 'Y', NULL, '355/SIPP/X/2018', '2022-07-10', '1401521172091799', '2022-07-10', 23, 'Putatan Rt. 008/Rw. 002 Kroyo Karangmalang Sragen', '2019-02-01 06:11:24', '2019-02-01 06:11:24'),
(165, NULL, 'Nanang Nur Cahyono, AMd.Kep', 'Surabaya', '1993-05-18', 'L', 'D3', 'Islam', 'Single', '089673490046', 'Kontrak', '2017-07-10', NULL, 'Y', 'Y', NULL, '200/SIPP/X/2017', '2021-05-18', '1401511161181029', '2021-05-18', 23, 'Murong Rt. 17/04 Kebonromom Ngrampal Sragen', '2019-02-01 06:15:13', '2019-02-01 06:15:13'),
(166, NULL, 'Novita Candra Ningrum,Amd.Kep', 'Sukoharjo', '1992-11-03', 'P', 'D3', 'Islam', 'Menikah', '082233800497', 'Tetap', '2016-06-01', NULL, 'Y', 'Y', NULL, '268/SIKP/VIII/2016', '2021-08-15', '1401521161250535', '2021-11-03', 23, 'Pecing Rt. 01/14 Sragen Tengah Sragen', '2019-02-01 06:18:32', '2019-02-26 00:41:33'),
(167, NULL, 'Dyan Kusuma Wardana,AMd.Kep', 'Ngawi', '1990-06-03', 'L', 'D3', 'Islam', 'Menikah', '085233561111', 'Tetap', '2015-11-01', NULL, 'Y', 'Y', NULL, '544/SIK/XI/2015', '2020-11-20', '1401521161264913', '2021-06-03', 23, 'grenteng Rt. 01/02 kauman Widodaren Ngawi', '2019-02-01 06:22:25', '2019-02-01 06:22:25'),
(168, NULL, 'Didik Nur Hidayat.Amd.Kep', 'Sragen', '1990-07-27', 'L', 'D3', 'Islam', 'Single', '08562999828', 'Tetap', '2015-10-01', NULL, 'Y', 'Y', NULL, '245/SIK/X/2015', '2020-10-13', '1401511150967338', '2020-07-27', 23, 'Maron Rt. 22/X Bandung Ngrampal Sragen', '2019-02-02 01:43:47', '2019-02-02 01:43:47'),
(170, NULL, 'Siti Nuraini, Amd.Kep', 'Blora', '1983-11-09', 'P', 'D3', 'Islam', 'Menikah', '085702486068', 'Tetap', '2010-11-01', NULL, 'Y', 'Y', NULL, '302/SIKP/X/2016', '2021-10-13', '140152217215557', '2022-11-09', 23, 'Bangun rejo Rt. 01 blimbing Sambirejo Sragen', '2019-02-02 02:05:36', '2019-02-02 02:05:36'),
(171, NULL, 'Andhi Wisnu Brata, Amd.Kep', 'Sragen', '1982-11-16', 'L', 'D3', 'Islam', 'Single', '085743007974', 'Tetap', '2013-04-01', NULL, 'Y', 'Y', NULL, '253/SIK/X/2015', '2020-10-13', '1401512172155528', '2022-11-16', 23, 'Taman Sari Rt. 41A/15 Jl.Hassanudin No. 1 kroyo Karangmalang Sragen', '2019-02-02 02:07:37', '2019-02-02 02:07:37'),
(172, NULL, 'Nanang Awaludhin,AMd.Kep', 'Sragen', '1991-10-31', 'P', 'D3', 'Islam', 'Menikah', '085600329206', 'Tetap', '2013-05-01', NULL, 'Y', 'Y', NULL, '248/SIK/X/2015', '2020-10-13', '1401512182351654', '1991-10-31', 23, 'Ngiwen rt. 3/I Purworejo Nguntoronadi magetan', '2019-02-02 02:13:34', '2019-02-02 02:13:34'),
(173, NULL, 'Dhian Ali Baskoro,Amd.Kep', 'Gresik', '1991-06-12', 'L', 'D3', 'Islam', 'Menikah', '081216509458', 'Tetap', '2014-09-01', NULL, 'Y', 'Y', NULL, '291/SIK/X/2015', '2020-10-13', '1401511150967337', '2020-06-12', 23, 'Gawanan rt.04/03 Colomadu Karanganyar', '2019-02-02 02:15:40', '2019-02-02 02:15:40'),
(174, NULL, 'Vika Nurul Ariyani, Amd.Kep', 'Klaten', '1990-05-08', 'P', 'D3', 'Islam', 'Menikah', '081231661418', 'Tetap', '2013-06-01', NULL, 'Y', 'Y', NULL, '247/SIK/X/2015', '2020-10-13', '1401521150917107', '2020-05-08', 23, 'Ngablak Rt. 01/02 Sine Sragen Sragen', '2019-02-02 02:18:51', '2019-02-02 02:18:51'),
(176, NULL, 'Noor Vitta Ex Dwi Maret,Amd.Kep', 'Sragen', '1989-03-12', 'L', 'D3', 'Islam', 'Menikah', '082113326453', 'Tetap', '2015-10-01', NULL, 'Y', 'Y', NULL, '542/SIK/XI/2015', '2020-11-20', '1401512182328800', '2023-03-12', 23, 'Sidoharjo rt. Plosorejo Gondang Sragen', '2019-02-02 02:26:20', '2019-02-02 02:26:20'),
(178, '3314096809910002', 'Laras Putri Damayanti, Amd. Kep', 'Sragen', '1991-09-28', 'P', 'D3', 'Islam', 'Menikah', '085725319757', 'Tetap', '2017-08-01', NULL, 'Y', 'Y', NULL, '194/SIPP/IX/2017', '1991-09-28', '1401522172155454', '2022-07-31', 6, 'Taman Asri Rt 31 / 14, Kroyo, Karagmalang, Sragen', '2019-02-02 02:45:57', '2019-02-02 02:45:57'),
(180, '3314127107860003', 'Anik Wulandari, Amd. Kep', 'Klaten', '1986-07-31', 'P', 'D3', 'Islam', 'Menikah', '085800079520', 'Tetap', '2011-10-01', NULL, 'Y', 'Y', NULL, '261/SIK/X/2015', '2020-10-13', '1401522172155454', '2022-07-31', 6, 'Pilangan Rt 20, Kecik, Tanon, Sragen', '2019-02-02 03:05:39', '2019-02-02 03:05:39'),
(181, '3521134706910001', 'Chandra Astutik, Amd. Kep', 'Nganjuk', '1991-06-07', 'P', 'D3', 'Islam', 'Menikah', '081215232800', 'Tetap', '2013-12-01', NULL, 'Y', 'Y', NULL, '260/SIK/X/2015', '2020-02-13', '1401522172156412', '2022-06-07', 6, 'Sekarrejo Rt 01 / Rw 01, Jati Mulya, Mantingan, Ngawi', '2019-02-02 03:21:44', '2019-02-02 03:21:44'),
(182, '3314095012830007', 'Sri Martini, Amd. Kep', 'Sragen', '1983-12-10', 'P', 'D3', 'Islam', 'Menikah', '081391145397', 'Tetap', '2013-04-01', NULL, 'Y', 'Y', NULL, '296/SIK/X/2015', '2020-10-13', '1401522171355171', '2022-12-10', 6, 'Ngembat Rt 21 / Rw 10, Mojorejo, Karangmalang, Sragen', '2019-02-02 03:31:03', '2019-02-02 03:31:03'),
(183, '3314094512930001', 'Dyah Fajarini, Amd. Kep', 'Sragen', '1993-12-05', 'P', 'D3', 'Islam', 'Menikah', '085713890708', 'Tetap', '2016-07-01', NULL, 'Y', 'Y', NULL, '264/SIK/X/2015', '2020-10-13', '1401521150967340', '2020-12-05', 1, 'Gandil Rt 35 / Rw 16, Mojorejo, Karangmalang, Sragen', '2019-02-02 03:42:45', '2019-02-02 03:42:45'),
(184, '3314025310930001', 'Dewi Oktikasari, Amd. Kep', 'Sragen', '1993-10-13', 'P', 'D3', 'Islam', 'Single', '085643127105', 'Tetap', '2016-11-11', NULL, 'Y', 'Y', NULL, '337/SIKP/XI/2016', '2021-11-23', '1401521150975460', '2020-10-13', 6, 'Dk. Ngemplak Rt 008 / Rw 004, Plupuh, Sragen', '2019-02-02 06:54:50', '2019-02-04 00:52:06'),
(185, '3521135712940001', 'Syanur Putri Rachmawati, Amd. Kep', 'Karanganyar', '1994-12-17', 'P', 'D3', 'Islam', 'Single', '085736292940', 'Tetap', '2017-01-01', NULL, 'Y', 'Y', NULL, '65/SIKP/III/2017', '2022-03-23', '1401521161140004', '2021-12-17', 6, 'Ngrancang Rt 003 / Rw 008, Mantingan, Ngawi', '2019-02-04 01:12:46', '2019-02-04 01:12:46'),
(186, '331410510695003', 'Rovi Fibhyanisfha, Amd. Kep', 'Sragen', '1995-06-11', 'P', 'D3', 'Islam', 'Single', '085878540406', 'Kontrak', '2018-08-01', NULL, 'Y', 'Y', NULL, '-', NULL, '1401521172025972', '2022-06-11', 6, 'Tugu Rt 002 / Rw 012, Tangkil, Sragen', '2019-02-04 01:31:16', '2019-02-04 01:31:16'),
(187, '0', 'Anik Tri Hastuti, Amd. Kep', 'Sragen', '1989-04-20', 'P', 'D3', 'Islam', 'Menikah', '081215159920', 'Tetap', '2011-01-01', NULL, 'Y', 'Y', NULL, '280/SIKB/X/2015', '2020-10-01', '1402522171379655', '2022-04-20', 6, 'Grompolan Rt 16 , Jambanan, Sidoharjo, Sragen', '2019-02-04 02:02:31', '2019-02-04 02:02:31');
INSERT INTO `karyawans` (`id`, `nik`, `nama_karyawan`, `tmp_lahir`, `tgl_lahir`, `gender`, `pendidikan`, `agama`, `status_nikah`, `no_hp`, `status_karyawan`, `tgl_masuk_kerja`, `tgl_keluar_kerja`, `bpjs_ketenagakerjaan`, `bpjs_kesehatan`, `tgl_purna`, `sik`, `exp_sik`, `str`, `exp_str`, `id_unit_kerja`, `alamat`, `created_at`, `updated_at`) VALUES
(188, '3314084407930001', 'Yulia Veronika, Amd.Keb', 'Sragen', '1993-07-04', 'P', 'D3', 'Islam', 'Single', '082242492546', 'Tetap', '2016-10-31', NULL, 'Y', 'Y', NULL, '125/SIKB/XI/2016', '2021-11-23', '1402521150898977', '2020-07-04', 1, 'Gonggang Rt 008 / Rw 003, Karangudi, Ngrampal, Sragen', '2019-02-04 02:16:09', '2019-02-04 02:16:09'),
(189, '3314104212830008', 'Nuning Ratnawati, Amd. Keb', 'Sragen', '1983-12-02', 'P', 'D3', 'Islam', 'Menikah', '085102088784', 'Tetap', '2007-11-08', NULL, 'Y', 'Y', NULL, '274/SIKB/X/2015', '2020-10-01', '1402522171379666', '2022-12-02', 1, 'Perum Tegalsari Asri Blok E No.9 Rt 08 / Rw 16, Sragen Kulon, Sragen', '2019-02-04 02:27:41', '2019-02-04 02:27:41'),
(190, '3314106610840009', 'Tutik Widiyanti, AMKg', 'Jepara', '1984-10-26', 'P', 'D3', 'Islam', 'Single', '085781933626', 'Tetap', '2009-09-01', NULL, 'Y', 'Y', NULL, '024/SIKPG/II/2015', '2020-03-02', '015/SR/DPC.PPGI.KAB.SRAGEN/XI/2017', NULL, 6, 'Ringinanom Rt 03 / Rw 18, Sragen Kulon, Sragen', '2019-02-04 02:40:07', '2019-02-04 02:40:07'),
(191, '3314095207820010', 'drg. Evelina Yuliani, MPH.,MH', 'Sragen', '1982-07-12', 'P', 'S1', 'Islam', 'Menikah', '0811285066', 'Tetap', '2012-01-01', NULL, 'Y', 'Y', NULL, '3314.57221/DG/I/449.1/21/X/2017', '2021-10-19', '3422100317089119', '2023-05-26', 1, 'Taman Asri Rt 35 / Rw 14, Kroyo, Karangmalang, Sragen', '2019-02-04 03:22:40', '2021-04-14 04:47:03'),
(192, NULL, 'drg. Agatha Ristyawati', 'Klaten', '1987-08-19', 'P', 'S1', 'Kristen', 'Menikah', '081802792460', 'Tetap', '2017-05-09', NULL, 'Y', 'Y', NULL, '3314.57221/DG/I/449.1/14/V/2017', '2022-08-19', '3422100216126115', '2022-08-19', 1, 'Jl. Ganesha VI No.5 Rt 050 / Rw 005, Muja Muju, Umbulharjo, Daerah Istimewa Yogyakarta', '2019-02-04 03:36:07', '2019-02-04 03:37:37'),
(193, '3314095105880002', 'drg. Sholichah Supartiningsih', 'Sragen', '1988-05-11', 'P', 'S1', 'Islam', 'Menikah', '085229601636', 'Tetap', '2016-06-13', NULL, 'Y', 'Y', NULL, '3314.57211/DGU/01/449.1/04/VI/2016', '2021-06-13', '3422100115167704', '2020-10-28', 1, 'Margo Asri Rt 42, Puro, Karangmalang, Sragen', '2019-02-04 03:57:14', '2019-02-04 03:57:14'),
(194, '3404071209820024', 'dr. Didi Adrianto Anwar, SpOrt', 'Kotamobagu', '1982-09-12', 'L', 'S2', 'Islam', 'Menikah', '081328051693', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57281/DGS/01/449.1/001/VII/2015', '2020-07-29', '3412201315096749', '2020-05-12', 1, 'Perumahan MBS NPo.26 Condongcatur, Depok, Sleman', '2019-02-04 04:03:25', '2019-02-04 04:03:25'),
(195, '3314091902780005', 'dr. Rio Adriarsa, SpOg', 'Sragen', '1987-02-19', 'L', 'S1', 'Islam', 'Menikah', '08112631896', 'Tetap', '2013-06-26', NULL, 'Y', 'Y', NULL, '3314.57221/DS/I/449.1/7/II/2018', '2024-02-19', '3311301418047780', '2024-02-19', 1, 'Tamanasri Rt 35, Kroyo, Karangmalang, Sragen', '2019-02-04 04:20:39', '2019-02-04 04:20:39'),
(197, NULL, 'Bambang Hastafib Sugiri', 'Wonogiri', '1065-03-19', 'L', 'SMA', 'Islam', 'Menikah', '085729172231', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'Ringinanom Rt. 01/01 sragen Kulon Sragen', '2019-02-04 04:36:04', '2019-02-04 04:36:04'),
(198, '3314095202800008', 'dr. Rachmawati Dewi, SpOG', 'Klaten', '1980-02-12', 'P', 'S1', 'Islam', 'Menikah', '08122755704', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57221/DS/I/449.1/12/XI/2016', '2021-11-29', '3321301316047789', '2022-02-12', 1, 'Taman Asri Rt 035 / Rw 014, Kroyo, Karangmalang, Sragen', '2019-02-04 04:38:45', '2019-02-04 04:38:45'),
(199, NULL, 'B. wahyu Kuncoro', 'Sragen', '1976-11-07', 'L', 'SMA', 'Khatolik', 'Menikah', '085290492214', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'Ringinanom Rt. 001/Rw. 018 Sragen Kulon Sragen', '2019-02-04 04:39:39', '2019-02-04 04:39:39'),
(200, NULL, 'Rusdianto', 'Sragen', '1985-07-21', 'L', 'SMA', 'Islam', 'Menikah', '085336143872', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'Perum Bumi Tegal Besar Blok di/37 Kaliwates Jember', '2019-02-04 04:42:29', '2019-02-04 04:42:29'),
(201, NULL, 'Sri Suyamto', 'Sragen', '1978-05-23', 'L', 'SMA', 'Islam', 'Menikah', '085229304843', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'Taman asri Rt. 35/14 Kroyo Karangmalang Sragen', '2019-02-04 04:47:37', '2019-02-04 04:47:37'),
(202, NULL, 'Pranowo Wibowo', 'Wonogiri', '1967-04-03', 'L', 'SMA', 'Islam', 'Menikah', '082137699044', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Ringin Anom I/18 Jl. Gatot Subroto No. 24 Sragen', '2019-02-04 04:49:23', '2019-02-04 04:49:23'),
(203, '3314102304790004', 'dr. Predty Setyo Suratno, SpOG', 'Sragen', '1979-04-23', 'L', 'S1', 'Islam', 'Menikah', '082220951231', 'Tetap', '2014-11-12', NULL, 'Y', 'Y', NULL, '3314.57221/D.Spes/03/449.1/023/XI/2014', '2019-11-12', '3311301314003215', '2019-06-30', 1, 'Banjar Asri Jl. Perintis Kemerdekaan No.19 , Sragen', '2019-02-04 04:53:13', '2019-02-04 04:54:04'),
(204, NULL, 'Joko Marsono', 'sragen', '1975-04-19', 'L', 'SMA', 'Islam', 'Menikah', '085327113311', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'Taman Asri Rt. 34/14 Kroyo Sragen', '2019-02-04 04:54:51', '2019-02-04 04:54:51'),
(205, NULL, 'Agus Dian Yuniarso', 'Sragen', '1992-06-12', 'L', 'SMA', 'Islam', 'Single', '085642755399', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'Jln Sadewo No 2 Mojosari Rt. 02/01 Sragen Kulon Sragen', '2019-02-04 04:56:56', '2019-02-04 04:56:56'),
(206, NULL, 'Urip Setyo Widodo', 'semarang', '1983-03-01', 'L', 'SMA', 'Islam', 'Menikah', '085229810197', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'Lemahbang Rt. 002/001 Karanganyar sambungmacan sragen', '2019-02-04 04:58:20', '2019-02-04 04:58:20'),
(207, NULL, 'Widya lelagunawan Prasetyo', 'Sragen', '1981-02-15', 'L', 'SMA', 'Islam', 'Menikah', '081270167267', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'jl. Sumtra No. 13B Rt. 26/08 Kauman Sragen Wetan', '2019-02-04 05:17:28', '2019-02-04 05:17:28'),
(208, '3404126708750004', 'dr. Corina Lisa, MSc, SpA', 'Sragen', '1975-08-27', 'P', 'S2', 'Islam', 'Menikah', '081328826971', 'Tetap', '2011-05-04', NULL, 'Y', 'Y', NULL, '3314.57211/DS/I/449.1/016/V/2016', '2021-05-04', '3421201216119565', '2021-08-27', 1, 'Lorin Residence Gonilan Kartosuro Sukoharjo', '2019-02-04 05:18:28', '2019-02-04 05:18:28'),
(209, NULL, 'Sutrisno', 'Sragen', '1979-10-08', 'L', 'SMA', 'Islam', 'Menikah', '081229389995', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'Bangunsari Rt. 014/plosorej Gondang Sragen', '2019-02-04 05:20:15', '2019-02-04 05:20:15'),
(210, NULL, 'Murdiyanto', 'Sragen', '1963-09-17', 'L', 'SMA', 'Islam', 'Menikah', '085327527491', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'Jl. Sadewa No. 2 Rt. 2/I Jetis Mojo sari Sragen', '2019-02-04 05:21:44', '2019-02-04 05:21:44'),
(211, NULL, 'Titis Andi Setiawan', 'Sragen', '1990-12-25', 'L', 'SMA', 'Islam', 'Menikah', '082220893939', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'Sembungan Rt. 18/Rw. 06 Taraman Sidoharjo Sragen', '2019-02-04 05:24:16', '2019-02-04 05:24:16'),
(212, NULL, 'Budi Santosa', 'Sragen', '1986-06-20', 'L', 'SMA', 'Islam', 'Menikah', '082329477808', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Plasan Rt. 03/01 Singapadu Sidoharjo Sragen', '2019-02-04 05:26:35', '2019-02-04 05:26:35'),
(213, NULL, 'Rusdiyanto', 'Sragen', '1974-09-26', 'L', 'SMA', 'Islam', 'Menikah', '081329561116', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'Taman Asri Rt. 35/XIV Kroyo Karangmalang Sragen', '2019-02-04 05:28:59', '2019-06-24 05:42:55'),
(214, '3313110111460001', 'dr. Oriono Rahardjo, SpA', 'Malang', '1946-11-01', 'L', 'S1', 'Islam', 'Menikah', '082226485929', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3313110111460001', '2021-11-01', '3311201316016352', '2021-11-01', 1, 'Jl. Raya Jurug Km.5 No.30 Rt 04 / Rw 02, Ngringo, Jaten, Karanganyar', '2019-02-04 05:30:56', '2019-02-04 05:30:56'),
(215, NULL, 'Subroto Budiarto', 'Sragen', '1977-01-14', 'L', 'SMA', 'Islam', 'Menikah', '085642415409', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'Perum Permata Asri A23 Rt. 29 Pilangsari Ngrampal Sragen', '2019-02-04 05:31:43', '2019-02-04 05:31:43'),
(216, '3313110111460001', 'dr. Pursito, SpA', 'Sukoharjo', '1959-06-27', 'L', 'S1', 'Khatolik', 'Menikah', '08164277368', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57221/D.Spes/03/449.1/019/IX/2014', '2019-09-17', '3411201215022371', '2020-04-08', 1, 'Jl. Hos Cokroaminoto No.22 Sragen Manggis, Sragen', '2019-02-04 05:36:33', '2019-02-04 05:36:33'),
(217, NULL, 'Etik Wulan Ekawati', 'Sragen', '1999-01-11', 'P', 'SMA', 'Islam', 'Single', '081336470197', 'Kontrak', '2018-01-01', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 35, 'Ringinanom Rt. 006/018 Sragen Kulon Sragen', '2019-02-04 06:13:20', '2019-02-04 06:13:20'),
(218, NULL, 'Dedek Widiyanti, SE', 'Sragen', '1993-06-27', 'P', 'S1', 'Islam', 'Menikah', '085725633042', 'Tetap', '2017-01-01', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 8, 'Kembangan Rt. 13/06 Mojorejo Karangmalang Sragen', '2019-02-04 06:18:04', '2019-02-04 06:18:04'),
(219, NULL, 'Doddy Aryanto', 'Jakarta', '1973-04-17', 'L', 'SMA', 'Islam', 'Menikah', '083171111733', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Krapyak No. 10 Rt. 29 / Rw. IX Sragen 57214', '2019-02-04 06:38:28', '2019-02-04 06:38:28'),
(220, '3314102006470002', 'dr. H. Widiatmodjo, SpA', 'Yogyakarta', '1947-06-20', 'L', 'S1', 'Islam', 'Menikah', '081329017397', 'Tetap', '2010-06-10', NULL, 'Y', 'Y', NULL, '3314.57211/DS/03/449.1/45/VI/2015', '2020-06-05', '3411201316014390', '2022-06-20', 1, 'Jl. Sumatra No.10 Rt 25 / Rw 08, Kauman, Sragen Wetan', '2019-02-04 06:42:17', '2019-02-04 06:42:17'),
(221, '331311201175002', 'dr. Nova Aryanto Wijoyo, SpA, M.Kes', 'Surakarta', '1975-11-20', 'L', 'S2', 'Islam', 'Single', '081393800201', 'Tetap', '2016-08-18', NULL, 'Y', 'Y', NULL, '3314.57211/DS/I/449.1/0037/VIII/2016', '2021-08-18', '3311201215016281', '2020-02-03', 1, 'Jl. Raya Jurug Km.5 No.30 Ngringo Rt 04 / Rw 02, Jaten, Karanganyar', '2019-02-04 06:59:14', '2019-02-04 06:59:14'),
(222, '3314105209780001', 'dr. Ari Dwi Ratna Kusumaningrum, M.Sc.,Sp.A', 'Sragen', '1978-09-12', 'P', 'S2', 'Islam', 'Menikah', '085647023238', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57221/DS/III/449.1/9/III/2018', '1978-09-12', '342121317016241', '2022-09-12', 1, 'Sragen Dok Rt 20 / Rw 07, Sragen Wetan, Sragen', '2019-02-04 07:14:12', '2019-02-04 07:14:12'),
(223, NULL, 'Marsetyo Dwi Widyatmoko,SKM', 'Ngawi', '1991-10-29', 'L', 'S1', 'Islam', 'Menikah', '081231318934', 'Kontrak', '2017-01-09', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 30, 'Bulak rejo Rt. 05/02 Sumbersari sine Ngawi', '2019-02-06 01:26:10', '2019-02-06 01:26:10'),
(224, '3314105007790001', 'Etik Puji Lestari, SKM', 'Sragen', '1979-07-01', 'P', 'S1', 'Islam', 'Menikah', '081578410098', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '07/SIKTS/X/2016', '2021-10-26', '1412521171505446', '2022-07-10', 29, 'Jl. Durian No. 39 Mojo Kulon Rt. 01/Rw. 07 Sragen kulon Sragen', '2019-02-06 01:28:54', '2019-02-06 01:28:54'),
(225, '3314115608770021', 'dr. Agus Susilonigsih, MSc, SpPD, FINASIM', 'Sragen', '1977-08-16', 'P', 'S2', 'Islam', 'Menikah', '081328291714', 'Tetap', '2014-02-12', NULL, 'Y', 'Y', NULL, '3314.57221/D.Spes/01/449.1/0002/II/2014', '2023-08-16', '3421401317047200', '2023-08-16', 1, 'Jl. Dewi Sartika No. 79, Wonokarto, Wonogiri', '2019-02-06 01:36:58', '2019-02-06 01:43:26'),
(226, '3314095806730000', 'dr. Nurul Aini, MSc, SpPD, FINASIM', 'Nganjuk', '1973-06-18', 'P', 'S2', 'Islam', 'Menikah', '081273200747', 'Tetap', '2012-10-10', NULL, 'Y', 'Y', NULL, '3314.57221/DS/II/449.1/35/VIII/2017', NULL, '3421401317010006', NULL, 1, 'Candi Asri Rt 036 / Rw 009, Plumbungan, Karangmalang, Sragen', '2019-02-06 01:42:48', '2019-02-06 01:42:48'),
(229, '3313141303830003', 'dr. Bayu Basuki Wijaya, SpPD, MKes', 'Surakarta', '1983-03-13', 'L', 'S2', 'Islam', 'Menikah', '085229178000', 'Tetap', '2016-06-20', NULL, 'Y', 'Y', NULL, '3314.57211./DS/III/449.1/0027/VI/2016', '2021-06-20', '3311401318091347', '2024-03-13', 1, 'Pawesan Gedangan Rt 01 / Rw 02, Kemiri, Kebakkramat, Karanganyar', '2019-02-06 01:51:48', '2019-02-06 01:51:48'),
(230, '3372022604690005', 'dr. Wibagso Prianto Boedi Setiawan, SpB', 'Jember', '1969-04-26', 'L', 'S1', 'Islam', 'Menikah', '081229777772', 'Tetap', '2013-01-09', NULL, 'Y', 'Y', NULL, '3314.57221/DS/I/449.1/2/I/2018', '2020-10-07', '3311101215094858', '2020-10-07', 1, 'Sutogunan Rt 04 / Rw 04, Tipes, Serengan, Surakarta', '2019-02-06 02:02:02', '2019-02-06 02:02:02'),
(231, '3314096210540001', 'dr. Sam Permanawati, SpS', 'Yogyakarta', '1954-10-22', 'P', 'S1', 'Islam', 'Menikah', '08122601712', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57221/DS/III/449.1/53/VIII/2021', '2026-10-22', '3421605421016403', '2026-10-22', 1, 'Jl. Hasanudin No. 5A Purwoasri, Sragen', '2019-02-06 02:06:27', '2021-08-30 01:28:56'),
(232, '3402165202810002', 'dr. A\'ad Rahmawati Nori\'in, SpS', 'Blora', '1981-02-12', 'P', 'S1', 'Islam', 'Menikah', '081325197581', 'Tetap', '2014-12-01', NULL, 'Y', 'Y', NULL, '3314.57221/DS/I/449.1/07/I/2017', NULL, '3421605316005059', '2022-02-12', 1, 'Candi Baru Rt 35 / Rw 02, Plumbungan, Karangmalang, Sragen', '2019-02-06 02:11:11', '2019-02-06 02:11:11'),
(233, '3372051706720007', 'dr. Prasetyo Budi Dewanto, MSc, SpRad', 'Denpasar', '1972-06-17', 'L', 'S2', 'Islam', 'Menikah', '0816675365', 'Tetap', '2016-12-02', NULL, 'Y', 'Y', NULL, '3314.57221/D/Spes/03/449.1/030/XII/2014', '2019-12-02', '3411503314087852', '2019-02-23', 1, 'Jl. Melati XII / D 469, Perum Fajar Indah Solo', '2019-02-06 02:18:48', '2019-02-06 02:18:48'),
(234, NULL, 'Tulus Hardani, SH', 'Klaten', '1972-05-01', 'L', 'S1', 'Islam', 'Menikah', '081329697090', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 37, 'gronong Rt. 02/01 Sidodadi Masaran Sragen', '2019-02-06 02:28:04', '2019-02-06 02:28:52'),
(235, '3314091602820006', 'dr. Andi Ris Firmansyah, SpAn, M.Kes', 'Karangampel', '1982-02-16', 'L', 'S2', 'Islam', 'Menikah', '081328833228', 'Tetap', '2015-03-10', NULL, 'Y', 'Y', NULL, '33144.57221/DS/02/449.1/0022/III/2015', '2020-03-10', '3311501214097992', '2019-10-09', 1, 'Candi Baru Rt 35 / Rw 02, Plumbungan, Karangmalang, Sragen', '2019-02-06 02:31:10', '2019-02-06 02:31:10'),
(236, NULL, 'Danang Nosale', 'Sragen', '1982-11-16', 'L', 'SMK', 'Islam', 'Menikah', '082225603373', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 3, 'Jln . Jendral Sudirman No. 5 Rt. 01 Rw. 01 Ngepringan Karangtengah Sragen', '2019-02-06 02:35:11', '2019-02-06 02:35:11'),
(238, '3402160202770003', 'dr. Hanifa Agung Kurniawan, SpAn, MKes', 'Sragen', '1977-02-02', 'L', 'S2', 'Islam', 'Menikah', '08122803503', 'Tetap', '2009-12-02', NULL, 'Y', 'Y', NULL, '3314.57222/DS/03/449.1/48/VI/2015', '2020-06-23', '3411501215105129', '2020-01-29', 1, 'Candi Baru, Plumbungan, Karangmalang, Sragen', '2019-02-06 02:43:12', '2019-02-06 02:43:12'),
(239, '3372045806830009', 'dr. Miratri Winny Risadini, SpKK', 'Magelang', '1983-06-18', 'P', 'S1', 'Islam', 'Menikah', '085200045577', 'Tetap', '2015-02-17', NULL, 'Y', 'Y', NULL, '33144.57211/DS/02/449.1/0017/II/2015', '2020-02-17', '3421602314090028', '2019-12-02', 1, 'Kepatihan Kulon No.252 Rt 01 / Rw 01, Jebres, Surakarta', '2019-02-06 02:49:53', '2019-02-06 02:50:34'),
(240, '3372052002670007', 'dr. Edy Purwanto, MSi-Med, SpPK', 'Sukoharjo', '1967-02-20', 'L', 'S2', 'Islam', 'Menikah', '081325578573', 'Tetap', '2015-08-29', NULL, 'Y', 'Y', NULL, '3314.57211/DS/II/449.1/0039/VIII/2016', '2021-08-29', '3311502316079407', '2022-02-20', 1, 'Jl. Cermai No. 2 Bibis Wetan Rt 06 / Rw 19, Gilingan, Banjarsari, Surakarta', '2019-02-06 03:12:23', '2019-02-06 03:15:09'),
(241, NULL, 'Aditiya Pria Sanjaya', 'Sragen', '1991-10-22', 'L', 'SMK', 'Islam', 'Menikah', '085879776644', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 17, 'Puro Rt. 04/01 Karangmalang Sragen', '2019-02-06 03:14:13', '2019-02-06 03:14:13'),
(242, NULL, 'Agus Sukamto', 'Sragen', '1977-09-13', 'L', 'SMK', 'Kristen', 'Menikah', '085647272886', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 17, 'Kedawung   Kedawung Sragen', '2019-02-06 03:19:53', '2019-02-06 03:19:53'),
(243, NULL, 'Mira Damayanti', 'Wonogiri', '1995-05-28', 'P', 'SMK', 'Islam', 'Single', '085702260425', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 17, 'Pudak Rt. 03/05 Wuryantoro Wonogiri', '2019-02-06 03:21:09', '2019-02-06 03:21:09'),
(244, NULL, 'Uus Ayu Putri Amanah', 'sragen', '1998-06-27', 'P', 'SMK', 'Islam', 'Single', '085700055956', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 17, 'Jl. ronggo Warsito sidorejo Sragen Wetan', '2019-02-06 03:24:30', '2019-02-06 03:24:30'),
(245, '3314091604470001', 'dr. Puwadi, SpTHT-KL, MKes', 'Sukoharjo', '1947-04-16', 'P', 'S2', 'Islam', 'Menikah', '0811284485', 'Tetap', '2011-08-10', NULL, 'Y', 'Y', NULL, '3314.57221/DS/I/449.1/37/VIII/2017', '2023-04-16', '3411606317016389', '2023-04-16', 1, 'Taman Asri Rt 35 / Rw 14, Kroyo, Karangmalang, Sragen', '2019-02-06 03:25:05', '2019-02-06 03:25:05'),
(246, NULL, 'Darmayanti Retnoningsih', 'sragen', '1994-06-28', 'P', 'SMK', 'Islam', 'Single', '081378474200', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 17, 'Mojo Kulon Rt. 03/07 Sragen kulon Sragen', '2019-02-06 03:25:47', '2019-02-06 03:25:47'),
(248, '3314105112770005', 'dr. Leni Yusanti, Msc, SpTHT-KL', 'Kuningan', '1977-12-11', 'P', 'S2', 'Islam', 'Menikah', '081217519730', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57211/D.Spes/03/449.1/022/XI/2014', '2023-12-11', '3421606318003209', '2023-12-11', 1, 'Banjar Asri Rt 03 / Rw 10, Nglorog, Sragen', '2019-02-06 03:31:06', '2019-02-06 03:31:06'),
(249, '3213110503790001', 'dr. Andry Haryanto, SpU', 'Subang', '1979-03-05', 'L', 'S1', 'Islam', 'Menikah', '081268060265', 'Tetap', '2015-12-29', NULL, 'Y', 'Y', NULL, '3314/57211/DS/02/449.168/XII/2015', '2020-09-29', '3111106315031729', '2020-09-30', 1, 'Masaran Kulon Rt 06 / Rw 02 A, Desa Jati, Masaran, Sragen', '2019-02-06 03:40:30', '2019-02-06 03:41:45'),
(250, '3314104607770011', 'dr. Ana YulianI, SpKJ, MKes', 'Pekalongan', '1977-07-06', 'P', 'S2', 'Islam', 'Menikah', '082134165455', 'Tetap', '2017-08-25', NULL, 'Y', 'Y', NULL, '3314.57221/DS/III/449.1/41/VIII/2017', '2021-07-06', '3321601316072815', '2021-07-06', 1, 'Taman Sari Rt 41 / Rw 05, Kroyo, Karangmalang, Sragen', '2019-02-06 03:59:39', '2019-02-06 03:59:39'),
(251, '3311076810780003', 'dr. Diah Hayustiningsih, SpTHT-KL', 'Yogyakarta', '1978-10-28', 'P', 'S1', 'Islam', 'Menikah', '085227992404', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314/57221/DS/III/449.1/22/VII/2018', '2020-11-09', '3321606315055910', '2020-11-09', 1, 'Kayuapak  Rt 01 / Rw 04, Kayuapak Polokarto, Sukoharjo', '2019-02-06 04:20:35', '2019-02-06 04:20:35'),
(253, '3314095105880002', 'drg. Solichah Supartiningsih', 'Sragen', '1988-05-11', 'P', 'S1', 'Islam', 'Menikah', '0', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '\'3314.57221/DG/I/449.1/23/IX/2020', '2026-05-11', '3422100220167704', '2026-05-11', 1, 'Margo Asri Rt 42, Puro, Karangmalang, Sragen', '2019-02-06 04:54:35', '2021-01-13 02:26:31'),
(254, '3372054910790002', 'dr. Sahilah Ermawati, SpM', 'Cilacap', '1979-10-09', 'P', 'S1', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57221/DS/III/449.1/163/XI/2017', '2022-10-09', '3321603317056628', '2022-10-09', 1, 'Jl. Bone Timur III No.34C Rt 01 / Rw 02, Banyuanyar, Banjarsari, Surakarta', '2019-02-06 06:42:53', '2019-02-06 06:43:12'),
(255, '-', 'dr. A. Rakhman Wijaya, SpKFR', 'Sidoharjo', '1975-09-12', 'L', 'S1', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57221/DS/II/449.1/45/IX/2018', '2022-09-12', '35116083160037165', NULL, 1, 'Sekawan Molek II D / 11 BCF Rt 21 / 02 Pucanganom, Sidoharjo', '2019-02-07 01:28:38', '2019-02-07 01:28:38'),
(256, '-', 'dr. Hendra Cahya Kumara, SpOT', 'Surakarta', '1985-04-14', 'L', 'S1', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57221/DS/II/449.1/11/XI/2016', '2021-11-29', '3311103216110338', '2022-04-14', 1, 'Jl. Agrika No. 99 Jati, Jaten, Karanganyar', '2019-02-07 01:37:21', '2019-02-07 01:37:21'),
(257, '3314092907750004', 'dr. Widayanto, SpP, M.Kes', 'Sragen', '1975-07-29', 'L', 'S2', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57221/DS/III/449.1/156/X/2017', '2021-07-29', '3311604316016404', NULL, 1, 'Jimbung Rt 17 / Rw 04, Guworejo, Karangmalang, Sragen', '2019-02-07 01:40:26', '2019-02-07 01:40:26'),
(258, '3314086605860003', 'dr. Meirina Fatmasari', 'Sragen', '1986-05-26', 'P', 'S1', 'Islam', 'Menikah', '085725279551', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57211/DU/II/449.1/032/03/2016', '2021-10-19', '3321100218130490', '2023-05-26', 1, 'Dk. Benersari Rt 27 Bener, Ngrampal, Sragen', '2019-02-07 01:45:10', '2019-02-07 01:45:10'),
(259, '3314045601910004', 'dr. Teksis Irena Hendrayati', 'Sragen', '1991-01-16', 'P', 'S1', 'Islam', 'Menikah', '085646883549', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57214.DU/III/449.1/018/2016', '2021-10-20', '3521100116160931', '2022-01-16', 1, 'Dk. Kauman Rt 003 Bendungan, Kedawung, Sragen', '2019-02-07 01:49:04', '2019-02-07 01:49:04'),
(260, '3314072605660002', 'dr. Slamet Wibowo', 'Sragen', '1966-05-26', 'L', 'S1', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57211/DU/I/449.1/007/I/2016', '2021-01-12', '3311100316017124', '2022-05-26', 1, 'Jatisumo Rt 11, Desa Sambungmacan, Sragen', '2019-02-07 01:52:24', '2019-02-07 01:52:24'),
(261, '3313146510870001', 'dr. Feri Seksi Ambarwati', 'Karanganyar', '1987-10-25', 'P', 'S1', 'Islam', 'Menikah', '081228404393', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '33144.57221/DU/01/449.1/026/III/2015', '2020-03-27', '3321100217130487', '2022-10-25', 1, 'Kebak Rt 02 / Rw 03, Kebakkramat, Karanganyar', '2019-02-07 02:00:48', '2019-02-07 02:00:48'),
(262, '33142619860003', 'dr. Iin Dwi Yuliarti, MKes', 'Madiun', '1971-07-02', 'P', 'S2', 'Islam', 'Menikah', '081393136077', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '33144.57211/DU/0I/449.1/002/I/2016', '2021-01-04', '3421100316021257', '2022-07-02', 1, 'Kroyo Rt 04 / Rw01, Kroyo, Karangmalang, Sragen', '2019-02-07 02:06:38', '2019-02-07 02:06:38'),
(263, '3314106705870001', 'dr. Ninditya Nugroho', 'Sragen', '1987-05-27', 'P', 'S1', 'Islam', 'Menikah', '082133585731', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57221/DU/01/449.1/005/III/2013', '2023-05-27', '3321100218137454', '2023-05-27', 1, 'Ringinanom Rt 03 / Rw 18, Sragen Kulon, Sragen', '2019-02-07 02:12:57', '2019-02-07 02:12:57'),
(264, '3314094803830004', 'dr. Bayu Ariani Chandrasari', 'Kudus', '1983-03-08', 'P', 'S1', 'Islam', 'Menikah', '08995921887', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57221/DU/I/449.1/55/V/2017', '2020-05-04', '3321100215112077', '2020-07-06', 1, 'Kriyo Rt 004 / Rw 001, Karangmalang, Sragen', '2019-02-07 02:30:07', '2019-02-07 02:30:07'),
(265, '3314094412490000', 'dr. Sudjiyati Purwadi', 'Salatiga', '1949-12-04', 'P', 'S1', 'Islam', 'Menikah', '0811265094', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57211.DU/I/449.1/020/X/2016', '2021-10-25', '3421100316016346', '2021-12-04', 1, 'Taman Asri Rt 35 / Rw 14, Karangmalang, Sragen', '2019-02-07 02:38:12', '2019-02-07 02:38:12'),
(266, '3314065907830002', 'dr. Ika Fatmasari', 'Sragen', '1983-07-19', 'P', 'S1', 'Islam', 'Menikah', '082211605353', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '3314.57221/DU/I/449.1/17/III/2018', '2021-07-19', '3521100216117681', '2021-07-19', 1, 'Gondang Tani Rt 20, Gondang, Sragen', '2019-02-07 02:58:48', '2019-02-07 02:58:48'),
(267, '3314105204770002', 'dr. Diany Apriasanti', 'Samarinda', '1977-04-12', 'P', 'S1', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '33144.57221/DU/01/449.1/0037/VI/2014', '2019-06-24', '3321100214104439', '2019-11-06', 1, 'Jl. Sumatra No. 10 Kauman Rt 25 / Rw 08, Sragen', '2019-02-07 03:09:57', '2019-02-07 03:09:57'),
(268, '3314104101660026', 'Sukarni', 'Gunung Kidul', '1966-01-01', 'P', 'SMP', 'Islam', 'Menikah', '085702326660', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Sidomulyo Rt 046 / Rw 013, Sragen Wetan', '2019-02-07 04:11:46', '2019-02-07 04:11:46'),
(269, '-', 'Sulastri', 'Sragen', '1960-12-31', 'P', 'SMP', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Putatan Rt 05 / Rw 02, Karangmalang, Sragen', '2019-02-07 04:24:54', '2019-02-07 04:24:54'),
(270, '3314056105880001', 'Umi Maesaroh', 'Sragen', '1988-05-21', 'P', 'SMA', 'Islam', 'Menikah', '085326312748', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Klebaan Rt 20, Mojokerto, Kedawung, Sragen', '2019-02-07 04:30:54', '2019-02-07 04:30:54'),
(271, '3314085705940001', 'Erna Yuliana', 'Tangerang', '1994-07-17', 'P', 'SMA', 'Islam', 'Menikah', '085702305156', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Dk. Karangrejo Rt 20, Bener, Ngrampal, Sragen', '2019-02-07 04:36:25', '2019-02-07 04:36:25'),
(272, '3314085704910002', 'Enik Ariyati', 'Sragen', '1991-04-17', 'P', 'SMK', 'Islam', 'Menikah', '081226713395', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Jetis Rt 16, Bandung, Ngrampal, Sragen', '2019-02-07 04:41:26', '2019-02-07 04:41:26'),
(273, '3314055206890001', 'Fitri Nurwanti', 'Sragen', '1989-06-12', 'P', 'SMA', 'Islam', 'Menikah', '085229187164', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Tlogojati Rt 019, Plosorejo, Gondang, Sragen', '2019-02-07 05:34:30', '2019-02-07 05:34:30'),
(274, '3314094810810003', 'Gunarni', 'Sragen', '1981-10-08', 'P', 'SMA', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Jimbung Rt 017 / Rw 004, Guworejo, Karangmalang, Sragen', '2019-02-07 05:54:35', '2019-02-07 05:54:35'),
(276, '3314045907800005', 'Suyatni', 'Sragen', '1980-07-19', 'P', 'SMA', 'Islam', 'Menikah', '085283714779', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Ngablak Rt 12 / Rw 04, Kroyo, Karangmalang, Sragen', '2019-02-07 06:10:56', '2019-02-07 06:10:56'),
(277, '3314105806680001', 'Dwi Djafarini', 'Jakarta', '1968-06-18', 'P', 'SMA', 'Islam', 'Menikah', '082242323132', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Mageru Rt 001 / Rw 001, Sragen Tengah, Sragen', '2019-02-07 06:19:04', '2019-02-07 06:19:04'),
(278, '3314105706840003', 'Winarsih', 'Sragen', '1984-06-17', 'P', 'SMA', 'Islam', 'Menikah', '085325365859', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Sidomulyo Rt 046 / Rw 013, Sragen Wetan, Sragen', '2019-02-07 06:25:03', '2019-02-07 06:25:03'),
(279, '3314085709780002', 'Suyani, AMG', 'Sragen', '1978-09-17', 'P', 'D3', 'Islam', 'Menikah', '082314018884', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Karangrejo Rt 20, Bener, Ngrampal, Sragen', '2019-02-07 06:28:32', '2019-02-07 06:28:32'),
(280, '-', 'Harni Widyasti', 'Semarang', '1978-05-11', 'P', 'SMK', 'Islam', 'Menikah', '085290926961', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Grasak Rt 038 , Gondang, Sragen', '2019-02-07 06:33:10', '2019-02-07 06:33:10'),
(281, '-', 'Triwati Andari', 'Sragen', '1966-01-01', 'P', 'SMK', 'Islam', 'Menikah', '085728161289', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Plosorejo, Guworejo, Karangmalang, Sragen', '2019-02-07 06:40:26', '2019-02-07 06:40:26'),
(282, '3314095001910004', 'Eko Puji Astuti', 'Sragen', '1991-01-10', 'P', 'SMA', 'Islam', 'Menikah', '085524694508', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Gumantar Rt 007 / Rw 004, Pelemgadung, Karangmalang, Sragen', '2019-02-07 06:45:33', '2019-02-07 06:45:33'),
(283, '3314035502870001', 'Muji Rahayu, AMG', 'Sragen', '1987-02-15', 'P', 'D3', 'Islam', 'Menikah', '081390065044', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Sidodadi Rt 012 / Rw 003, Sidodadi, Masaran, Sragen', '2019-02-07 06:50:55', '2019-02-07 06:50:55'),
(284, '3314116001660003', 'Sri Wardyanti', 'Klaten', '1966-01-20', 'P', 'SMP', 'Islam', 'Menikah', '081328640110', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Nglebak Rt 013 / Rw 002, Sidoharjo,Sidoharjo, Sragen', '2019-02-08 01:49:01', '2019-02-08 01:49:01'),
(285, '-', 'Daryanti', 'Sragen', '1977-01-09', 'P', 'SMP', 'Islam', 'Menikah', '082134665390', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Sidorejo Rt 24 / Rw 07, Sragen Wetan, Sragen', '2019-02-08 01:56:33', '2019-02-08 01:56:33'),
(286, '3314105602670003', 'Lilik Wuryani', 'Sragen', '1967-02-16', 'P', 'SMP', 'Islam', 'Menikah', '081339909889', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Teguhan Rt 002 / Rw 001, Sragen Wetan, Sragen', '2019-02-08 02:02:23', '2019-02-08 02:02:23'),
(287, '3314104601970003', 'Sativa Nadya Putri', 'Sragen', '1997-01-06', 'P', 'SMK', 'Islam', 'Menikah', '089674440223', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Mageru Rt 002 / Rw 003, Sragen Tengah, Sragen', '2019-02-08 02:06:05', '2019-02-08 02:40:30'),
(288, '3314106303730010', 'Saniyati', 'Sragen', '1973-03-23', 'P', 'SMA', 'Islam', 'Menikah', '085328739125', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Kerisan Rt 002 / Rw 004, Karang Tengah, Sragen', '2019-02-08 02:50:47', '2019-02-08 02:50:47'),
(289, '-', 'Rubiyati', 'Sragen', '1981-01-28', 'P', 'SMA', 'Islam', 'Menikah', '085867830630', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Ngablak Rt 13 / Rw 04, Kroyo, Karangmalang, Sragen', '2019-02-08 03:01:59', '2021-01-08 05:31:39'),
(290, '-', 'Narsi', 'Sragen', '1969-06-04', 'P', 'SMA', 'Islam', 'Menikah', '089656292096', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Sogo Rt 11 / V, Bandung, Ngrampal, Sragen', '2019-02-08 03:13:06', '2019-02-08 03:13:06'),
(291, '3314105608790003', 'Sujiyati', 'Sragen', '1979-08-16', 'P', 'SMA', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 19, 'Sidorejo Rt 024 / Rw 007, Sragen Wetan, Sragen', '2019-02-08 03:19:24', '2019-02-08 03:19:24'),
(292, '3314104301760004', 'Tuminah', 'Kebumen', '1978-01-03', 'P', 'SMA', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 27, 'Sidorejo Rt 23 / Rw 07, Sragen Wetan, Sragen', '2019-02-08 03:39:31', '2019-02-08 03:39:31'),
(293, '-', 'Windarmi', 'Sragen', '1972-10-02', 'P', 'SMA', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 27, 'Karang bendo Rt 18, Masaran, Sragen', '2019-02-08 03:53:02', '2019-02-08 03:53:02'),
(294, '-', 'Suwarti', 'Sragen', '1969-08-13', 'P', 'SD', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 27, 'Banyon Rt 16, Kroyo, Karangmalang, Sragen', '2019-02-08 03:59:04', '2019-02-08 03:59:04'),
(295, NULL, 'Ratih Febriana P', 'Sragen', '1998-02-17', 'P', 'SMA', 'Islam', 'Single', '085647470248', 'Kontrak', '2017-12-01', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 14, 'Ngledok Rt. 03/X Sragen Tengah Sragen', '2019-02-12 02:03:46', '2019-02-12 02:03:46'),
(296, '3314086212770003', 'Nurul AbIdah,Amd.Kep', 'Sragen', '1977-12-22', 'P', 'D3', 'Islam', 'Menikah', '085192527926', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '296/SIPP/IX/2018', '2022-12-22', '1401522172156405', '2022-12-22', 20, 'Bagan Rt. 002/001 Nglorog Sragen Sragen', '2019-02-12 02:21:58', '2019-02-12 02:23:28'),
(297, '3314105112880003', 'Dina Setiyana, Amd.Kep', 'sragen', '1988-12-11', 'P', 'D4', 'Islam', 'Menikah', '085647112445', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '294/SIK/X/2015', '2020-10-13', '1401522182328799', '2023-12-11', 22, 'Pelemgadung Rt. 015/006 Pelemgadung Karangmalang sragen', '2019-02-12 02:37:49', '2019-02-12 02:39:01'),
(298, '3314096805910003', 'Pratiwi, Amd. Kep', 'Sragen', '1991-05-28', 'P', 'D3', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '1401522182288005', NULL, 16, 'Bangunrejo Rt 13 / Rw 04, Saradan, Karangmalang, Sragen', '2019-02-12 02:48:10', '2019-02-12 02:48:10'),
(300, '3314104507910001', 'Ratna Muktiyasari, S.Tr.Keb', 'Sragen', '1991-07-05', 'P', 'D4', 'Islam', 'Menikah', '082136687700', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '272/SIKB/X/2015', '2020-10-01', '1402521140848988', '2019-07-05', 40, 'Jalan Wahid Hasyim No 79 Rt. 03/Rw. 19 Kewungsari Sragen Jawa Tengah', '2019-02-16 02:29:56', '2021-02-12 07:17:38'),
(301, NULL, 'Sugianto', 'Sragen', '1969-10-16', 'P', 'D3', 'Islam', 'Menikah', '08156703815', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 9, 'Tangkil Rt. 02/VII Tangkil Sragen', '2019-02-19 05:24:02', '2019-02-19 05:24:02'),
(302, NULL, 'Siwi handrini', 'Karanganyar', '1998-10-17', 'P', 'SMK', 'Islam', 'Single', '085700576593', 'Kontrak', '2018-01-01', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 9, 'Jetis Wetan Rt. 6/3 Jetis Jaten Karanganyar', '2019-02-19 05:43:44', '2019-02-19 05:43:44'),
(303, '-', 'Aris Dwiyanto, Amd. Kep', 'Ngawi', '1986-09-06', 'L', 'D3', 'Islam', 'Single', '-', 'Tetap', '2012-04-01', NULL, 'Y', 'Y', NULL, '257/SIK/X/2015', '2020-10-13', '1401512182328795', '2020-09-06', 1, 'Bejen Rt 03 / Rw 03, Pandan, Sine, Ngawi', '2019-02-26 01:25:45', '2019-02-26 01:26:32'),
(304, '3521136512920001', 'Purnawan, Amd. Kep', 'Ngawi', '1992-12-25', 'P', 'D3', 'Islam', 'Single', '-', 'Tetap', '2016-10-01', NULL, 'Y', 'Y', NULL, '308/SIKP/XI/2016', '2021-11-03', '1401521150967205', '2020-12-25', 22, 'Dk. Jarak Rt 012 / Rw 002, Kec. Mantingan, Ngawi', '2019-02-26 01:30:41', '2019-02-26 01:30:41'),
(305, '-', 'Purnawan, Amd. Kep', 'Sragen', '1990-03-01', 'L', 'D3', 'Islam', 'Single', '-', 'Training', '2013-05-01', NULL, 'Y', 'Y', NULL, '283/SIK/X/2015', '2020-10-13', '1401512171465169', '2022-03-01', 1, 'Butuh Rt 14 / Rw 06, Karangudi, Ngrampal, Sragen', '2019-02-26 01:34:00', '2019-02-26 01:34:00'),
(306, '3314070111900002', 'Rohnmadi Aji Santoso, Amd. Kep', 'Bima', '1990-11-01', 'L', 'D3', 'Islam', 'Single', '-', 'Tetap', '2016-06-01', NULL, 'Y', 'Y', NULL, '267/SIKP/VIII/2016', '2021-08-15', '1401511150967365', '2020-11-01', 22, 'Tunjungan Rt 05 / Rw 01, Bedoro, Sambungmacan, Sragen', '2019-02-26 01:38:09', '2019-02-26 01:38:09'),
(307, NULL, 'Hendrati, Amd', 'Sragen', '1994-10-18', 'P', 'D3', 'Kristen', 'Single', '085647436301', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 28, 'Ngonderan Rt. 03/01 Plumbon Sambungmacan Sragen', '2019-03-02 02:23:38', '2019-03-02 02:25:01'),
(308, NULL, 'Kukuh Riben Untari, S.Ak', 'Sragen', '1992-02-18', 'P', 'S1', 'Islam', 'Menikah', '085728618440', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 28, 'Nguter Rt. 13/05 Karangudi Ngrampal Sragen', '2019-03-02 02:27:53', '2019-03-02 02:27:53'),
(309, NULL, 'Endah Tri Untari, SE', 'Sragen', '1978-09-09', 'P', 'S1', 'Islam', 'Menikah', '081567839592', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 28, 'Puro Rt. 03/01 Karangmalang Sragen', '2019-03-02 02:35:42', '2019-03-02 02:35:42'),
(310, NULL, 'Astri Ismulat,Amd', 'Sragen', '1987-10-16', 'P', 'D3', 'Islam', 'Menikah', '087835425455', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 28, 'Mojomulyo Rt. 01/09 Kel. Sragen Kulon Kec. Sragen Kab. Sragen', '2019-03-02 02:38:15', '2019-03-02 02:38:15'),
(311, NULL, 'Siti Choirul Maryati, S.Ak', 'Sragen', '1984-08-12', 'P', 'S1', 'Islam', 'Menikah', '085866818884', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 28, 'Mojomulyo Rt. 02/08 Sragen kulon Sragen', '2019-03-02 02:42:49', '2019-03-02 02:42:49'),
(312, NULL, 'Dwi Indrianti, Amd', 'Sragen', '1978-09-30', 'P', 'D3', 'Islam', 'Menikah', '085647272726', 'Tetap', NULL, NULL, 'N', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Kedung Rancang Rt. 03/01 Bener Ngrampal Sragen', '2019-03-02 02:47:46', '2019-03-02 02:47:46'),
(313, NULL, 'Ratna Kumala Sari', 'Sragen', '1994-04-26', 'P', 'SMA', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 28, 'Tangkil Rt. 002 Sragen Sragen', '2019-03-02 02:51:43', '2019-03-02 02:51:43'),
(315, '3314084301950003', 'Sari Asih', 'Poso', '1995-01-03', 'P', 'SMA', 'Islam', 'Menikah', '-', 'Tetap', '2013-06-01', NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 6, 'Brengkalan Rt 25, Gabus, Ngrampal, Sragen', '2019-04-01 02:05:05', '2019-04-01 02:05:05'),
(316, '3310247007950001', 'Andreana Ayu Triasary', 'Sragen', '1995-07-30', 'P', 'D3', 'Islam', 'Single', '085776670967', 'Kontrak', '2018-01-01', NULL, 'Y', 'Y', NULL, '54/SIPB/II/2019', '2022-07-30', '1402521172184026', '2022-07-30', 15, 'Morangan Barat Rt 04 / Rw 02, Karanganom, Klaten Utara, Klaten', '2019-08-19 06:44:48', '2019-08-19 06:44:48'),
(317, '3521111705910001', 'Anung Yekti Nugroho', 'Ngawi', '1991-05-17', 'L', 'D3', 'Islam', 'Menikah', '085608544121', 'Kontrak', '2014-06-01', NULL, 'Y', 'Y', NULL, '250/SIK/X/2015', '2020-10-13', '1401512172155450', '2022-05-17', 1, 'Katikan Rt. 04/02 Katikan Kedung Galar, Ngawi', '2019-09-28 04:05:20', '2019-09-28 04:05:20'),
(318, '-', 'Fauziah Nisa Addin, Amd.RMIK', 'Sragen', '1997-12-01', 'P', 'D3', 'Islam', 'Menikah', '085728503165', 'Kontrak', '2019-06-01', NULL, 'Y', 'N', NULL, '36/SIPRM/VII/2019', '2023-01-14', '1410521182367067', '2027-01-14', 31, 'Pengkok Rt. 05/ Kedawung Kedawung Sragen', '2019-09-28 04:10:00', '2019-09-28 04:10:00'),
(319, '308/SIKP/XI/2016', 'Atik Dian Purwanti', 'Ngawi', '1992-12-02', 'P', 'D3', 'Islam', 'Single', '085733837350', 'Kontrak', '2017-10-01', NULL, 'Y', 'Y', NULL, '308/SIKP/XI/2016', '2020-12-25', '1401521150967205', '2020-12-25', 22, 'Jarak Rt.12/ Rw.02, Kedung harjo, Mantingan, Ngawi', '2019-10-02 04:22:36', '2019-10-02 04:22:36'),
(320, '3314102711920002', 'Evan Aziz Sebastian', 'Sragen', '1992-11-27', 'L', 'SMK', 'Islam', 'Menikah', '08562822259', 'Kontrak', '2018-10-28', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 30, 'Widoro RT37/RW11, Sragen Wetan', '2019-11-19 06:09:19', '2019-11-19 06:09:19'),
(321, '3314090408920004', 'Endar Setyawan', 'Sragen', '1992-08-04', 'L', 'S1', 'Islam', 'Single', '088225372450', 'Kontrak', '2019-08-26', NULL, 'N', 'Y', NULL, NULL, NULL, NULL, NULL, 3, 'Mageru Kidul RT03/RW01, Plumbungan, Karangmalang, Sragen', '2019-12-07 07:37:39', '2019-12-07 07:37:39'),
(322, '3314081010880008', 'Mardiyono', 'Sragen', '1988-10-10', 'L', 'D3', 'Islam', 'Single', '085700230778', 'Kontrak', NULL, NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, 1, 'Made Kulon Rt. 024 Gabus Ngrampal Sragen', '2020-02-19 02:19:20', '2020-02-19 02:19:20'),
(323, NULL, 'dr. Ellyna Aisha Sari', 'Tembagapura', '1992-08-26', 'P', 'S1', 'Islam', 'Menikah', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '3314.57221/DU/III/449.1/110/XI/2018', '2023-08-26', '3421100118180290', '2023-08-26', 1, 'Karang Tangkilan Rt. 05/23 Sidoarum Kec.Godean Kab. Sleman', '2020-02-22 02:13:57', '2020-02-22 02:13:57'),
(324, NULL, 'dr. Elyza Putri Novitasari', 'Sragen', '1992-11-09', 'P', 'S1', 'Islam', 'Menikah', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '3314.57221/DU/II/449.1/109/XI/2018', '2023-11-09', '3321100118176917', '2023-11-09', 1, 'Jambukulon Rt. 01/09 Jambukulon Kec.Ceper Kab. Klaten', '2020-02-22 02:27:45', '2020-02-22 02:27:45'),
(325, NULL, 'Gizma Ega Saputra', 'Sragen', '1997-06-15', 'L', 'SMA', 'Islam', 'Single', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 1, 'Mojo Kulon Rt. 01/07 Sragen', '2020-02-22 03:04:13', '2020-02-22 03:04:13'),
(327, NULL, 'Lina Chandra Sari', 'Sragen', '1996-05-31', 'P', 'S1', 'Islam', 'Single', '081329369536', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 35, 'Nglaban Rt 07, Mojokerto, Kedawung, Sragen', '2020-02-22 03:15:32', '2020-02-22 03:15:32'),
(328, NULL, 'Menik Puji Hastuti', 'Sragen', '1993-08-07', 'P', 'D3', 'Islam', 'Single', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 1, 'Mojomulyo Rt. 03/Rw. 10 Sragen Kulon Sragen', '2020-02-22 03:30:53', '2020-02-22 03:30:53'),
(329, NULL, 'Dian Rudiantoro', 'Sragen', '1992-11-16', 'L', 'SMA', 'Islam', 'Menikah', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 14, 'Gembol Rt. 06 Jambeyan Sambirejo Sragen', '2020-02-22 03:33:16', '2020-02-22 03:33:16'),
(330, NULL, 'Ivan Yuda Kusuma', 'Sragen', '1995-07-06', 'L', 'SMA', 'Islam', 'Single', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 14, 'Sembungan Taraman Sidoharjo Sragen', '2020-02-22 03:36:43', '2020-02-22 03:36:43'),
(332, NULL, 'Sita Agustina', 'Sragen', '1998-08-27', 'P', 'SMA', 'Islam', 'Single', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 1, 'Ringinanom Rt. 06/18 Sragen Kulon Sragen', '2020-02-22 03:46:25', '2020-02-22 03:46:25'),
(333, NULL, 'Ita Purnamasari', 'Sragen', '1990-05-01', 'P', 'SMA', 'Islam', 'Menikah', '-', 'Tetap', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', '2021-08-21', 19, 'Gondang Panjen Rt. 012/ Jono Tanon', '2020-02-22 04:20:26', '2020-02-22 04:20:26'),
(335, NULL, 'Eri Kurnianto', 'Sragen', '1992-01-21', 'L', 'SMA', 'Islam', 'Menikah', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 1, 'Jasem Rt 15 / Rw 04, Duyungan, Sidoharjo, Sragen', '2020-02-22 04:28:34', '2020-02-22 04:28:34'),
(336, NULL, 'Galih Rakasiwi', 'Sragen', '1992-07-31', 'P', 'SMA', 'Islam', 'Single', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 19, 'Ngablak Rt. 13/04 Kroyo Karangmalang Sragen', '2020-02-22 04:30:48', '2020-02-22 04:30:48'),
(337, NULL, 'Richa Yulistiana', 'Sragen', '1990-07-31', 'P', 'SMA', 'Islam', 'Single', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 19, 'Jl. Delima No. 46 Rt.01/07 Sragen Kulon Sragen', '2020-02-22 04:41:25', '2020-02-22 04:41:25'),
(338, NULL, 'Ikke Suci Saputri', 'Sragen', '1995-02-07', 'P', 'SMA', 'Islam', 'Single', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 19, 'Mageru Tengah Rt. 01/01 Sragen Tengah Sragen', '2020-02-22 04:43:10', '2020-02-22 04:43:10'),
(339, NULL, 'Rita Handayani', 'Bogor', '1992-02-07', 'P', 'SMA', 'Islam', 'Menikah', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 19, 'Mageru Kidul Rt. 03/01 Plumbungan Karangmalang Sragen', '2020-02-22 04:44:24', '2020-02-22 04:44:24'),
(340, '3521012604950001', 'Rio Aprianto', 'Ngawi', '1998-04-24', 'L', 'SMA', 'Islam', 'Single', '-', 'Kontrak', '2019-01-01', NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 1, 'Krajan Rt. 005/002 Ketanggung SIne Kab. Ngawi', '2020-02-24 03:04:27', '2020-02-24 03:36:41'),
(341, '3314092611970001', 'Ignatius Bandung Robi Kusjarwanto', 'Sragen', '1997-11-26', 'L', 'SMA', 'Islam', 'Single', '-', 'Kontrak', '2020-01-01', NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 1, 'Margoasri Rt. 027/008 Puro Karangmalang Sragen', '2020-02-24 03:33:37', '2020-02-24 03:33:37'),
(342, '3314095407930001', 'ani suraningsih', 'Sragen', '1993-07-14', 'P', 'SMA', 'Islam', 'Menikah', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 17, 'Pucung Rt. 020/006 Jurangjero Karangmalang Sragen', '2020-02-24 03:40:05', '2020-02-24 03:40:05'),
(343, '3314101212950004', 'divo Devandyari', 'Sragen', '1996-12-12', 'L', 'SMK', 'Islam', 'Single', '-', 'Kontrak', '2019-11-01', NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 30, 'Banjar Asri Rt. 003/010NGlorog Sragen Sragen', '2020-02-24 03:51:23', '2020-02-24 03:51:23'),
(344, '3314040908960004', 'Suhardi', 'SRagen', '1996-08-09', 'L', 'SMK', 'Islam', 'Single', '-', 'Kontrak', '2019-01-11', NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 1, 'Banaran RT. 022/ Jenggrik Kedawung Sragen', '2020-02-24 03:53:54', '2020-02-24 03:53:54'),
(345, '3315051010990002', 'Tomi sigit Saputra', 'Grobogan', '1999-10-10', 'L', 'SMK', 'Islam', 'Single', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 17, 'Dusun Tegaljeruk Rt. 002/001 Rambat Geyer Grobogan', '2020-02-24 03:58:49', '2020-02-24 03:58:49'),
(347, '3314107107920003', 'Galih Raka Siwi', 'Sragen', '1992-07-31', 'P', 'SMA', 'Islam', 'Single', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 19, 'Ngablak Rt. 013/004 Kroyo Karangmalang Sragen', '2020-02-24 04:54:40', '2020-02-24 04:54:40'),
(348, '3314107006900001', 'Rika Yulistyana', 'Sragen', '1990-06-30', 'P', 'SMK', 'Islam', 'Menikah', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 19, 'Jl. Delima No 46 Rt. 001/007 SRagen Kulon Sragen', '2020-02-24 04:56:58', '2020-02-24 04:56:58'),
(349, '3314104301940002', 'Atika Kusumawardani, S.Tr, Ft', 'Sragen', '1994-01-03', 'P', 'D4', 'Islam', 'Menikah', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '11/SIPF/VII/2019', '2022-01-03', '1403621172158580', '2022-01-03', 1, 'Klitik Rt 02 / Rw 03, Kelurahan Karangtengah, Kecamatan Sragen, Kabupaten Sragen', '2020-04-14 03:15:32', '2020-04-14 03:15:32'),
(350, '3314095708960004', 'Melati Imanisari, Amd.FT', 'Sragen', '1994-08-17', 'P', 'D3', 'Islam', 'Menikah', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '12/SIPF/VII/2019', '2022-08-17', '1403521172158680', '2022-08-17', 10, 'Taman Asri Rt 35 / Rw 14, Kelurahan Kroyo, Kecamatan Karangmalang, Kabupaten Sragen', '2020-04-14 03:18:09', '2020-04-14 03:18:09'),
(351, '3314115105940001', 'Mahayu Kartika Ningrum, Amd.TW', 'Sragen', '1995-05-11', 'P', 'D3', 'Islam', 'Menikah', '-', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '-', NULL, '1406521161128726', '2021-05-11', 1, 'Banjar Rt 003, Purwosuman, Sidoharjo, Sragen', '2020-04-14 03:54:35', '2020-04-14 03:54:35'),
(352, '3314092609740004', 'Risdiyanto', 'sragen', '1974-09-26', 'L', 'SMA', 'Islam', 'Menikah', '-', 'Tetap', '1996-12-01', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 11, 'Taman Asri Rt. 035/014 Kroyo Karangmalang Sragen', '2020-07-21 02:51:52', '2020-07-21 02:51:52'),
(353, '3314096707960006', 'Monicha Dewi Ratnasari, Amd.Kep', 'Sragen', '1996-06-27', 'P', 'D3', 'Islam', 'Single', '085725045997', 'Kontrak', '2019-06-01', NULL, 'N', 'N', NULL, '471/SIPP/VIII/2019', '2023-07-27', '1401521182253306', '2023-07-27', 1, 'Plumbungan Rt. 10/04 Plumbungan Karangmalang Sragen', '2020-07-29 01:23:59', '2020-07-29 01:23:59'),
(354, '3314106306930002', 'Mentring Nurul Hidayah, Amd.Kep', 'Sragen', '1993-06-23', 'P', 'S1', 'Islam', 'Menikah', '082220263364', 'Kontrak', '2019-06-01', NULL, 'N', 'N', NULL, NULL, NULL, NULL, NULL, 23, 'Ngeluk Rt. 05/02 Kedungupit Sragen', '2020-07-29 01:28:57', '2020-07-29 01:28:57'),
(355, '3314066503970001', 'Diah Wulandari, Amd.Kep', 'Sragen', '1997-03-25', 'P', 'D3', 'Islam', 'Single', '-', 'Kontrak', '2019-06-01', NULL, 'N', 'N', NULL, '473/SIPP/VIII/2019', '2023-04-14', '1401521182288212', '2023-04-14', 23, 'Nglonggong Rt. 18/04 Glonggong Gondang Kab. Sragen', '2020-07-30 01:19:34', '2020-07-30 01:19:34'),
(356, '3314066703960004', 'Mardhias Alvy Nurria, Amd.Kep', 'Sragen', '1996-03-27', 'P', 'D3', 'Islam', 'Single', '-', 'Kontrak', '2019-06-01', NULL, 'N', 'N', NULL, '474/SIPP/VIII/2019', '2023-03-27', '1401521182288198', '2023-03-27', 23, 'Ngundaan Rt. 04/01 Glonggong Gondang Sragen', '2020-07-30 01:22:14', '2020-07-30 01:22:14'),
(357, '3310215211960001', 'Cely Diah Novita Sari,Amd.Kep', 'Klaten', '1996-11-12', 'P', 'D3', 'Islam', 'Single', '-', 'Kontrak', '2019-06-01', NULL, 'N', 'N', NULL, '475/SIPP/VIII/2019', '2023-11-12', '1401521182288182', '2023-11-12', 23, 'Kadipolo rt. 15/09 Keputran Kemalang Sragen', '2020-07-30 01:28:29', '2020-07-30 01:28:29'),
(360, '3314075102940001', 'Suci Jumarningrum,Amd.Kep', 'Sragen', '1994-02-11', 'P', 'D3', 'Islam', 'Single', '-', 'Kontrak', '2019-06-01', NULL, 'N', 'N', NULL, '472/SIPP/VIII/2019', '2022-02-11', '1401521172041862', '2022-02-11', 1, 'Banyurip Rt. 10/03 Banyurip Sambungmacan kab. Sragen', '2020-07-30 01:57:17', '2020-07-30 01:57:17'),
(361, '3314105403950002', 'Fifit Muzharoah, Amd.Kep', 'Sragen', '1994-03-14', 'P', 'D3', 'Islam', 'Menikah', '-', 'Kontrak', NULL, NULL, 'N', 'N', NULL, '059/SIPP/II/2019', '2021-03-14', '1401521161181019', '2021-03-14', 6, 'Karangasem Rt. 01/05 Karangtengah Sragen Sragen', '2020-07-30 02:01:19', '2020-07-30 02:01:19'),
(362, '3314105908960004', 'Dina Rika Permatasari, Amd.Kep', 'Sragen', '1995-08-19', 'P', 'D3', 'Islam', 'Single', '-', 'Kontrak', NULL, NULL, 'N', 'N', NULL, '058/SIPP/II/2019', '2023-08-19', '1401521182210253', '2023-08-19', 6, 'Tangkil Rt. 01/07 Tangkil Sragen Sragen', '2020-07-30 02:03:40', '2020-07-30 02:03:40'),
(363, '3314066906950001', 'Nurul Anggraini', 'Sragen', '1995-06-29', 'P', 'D3', 'Islam', 'Single', '085640475486', 'Kontrak', '2019-06-01', NULL, 'N', 'N', NULL, '35/SIPRM/VII/2019', '2022-06-28', '1410521172110299', '2022-06-28', 14, 'Sedah  Rt. 10/02 Glonggong Gondang Sragen', '2020-08-07 01:38:59', '2020-08-07 01:38:59'),
(364, '3313145906960003', 'Lestiana Verawati', 'Karanganyar', '1996-06-19', 'P', 'D3', 'Islam', 'Single', '085642044093', 'Kontrak', '2019-06-01', NULL, 'Y', 'Y', NULL, '34/SIPRM/VII/2019', '2023-06-19', '1410521182367076', '2023-06-19', 14, 'Jengglong Rt. 06/12 Waru Kebak kramat Karanganyar', '2020-08-07 01:42:14', '2020-08-07 01:42:14'),
(365, '3313146904960001', 'Dewi Puspitasari', 'Karanganyar', '1996-04-29', 'P', 'D3', 'Islam', 'Single', '083862025228', 'Kontrak', '2019-06-01', NULL, 'Y', 'Y', NULL, '38/SIPRM/VIII/2019', '2023-04-29', '1410521182367241', '2023-04-29', 31, 'Karangkidul RT. 07/02 Pulosari Kebakkramat Karanganyar', '2020-08-07 01:48:45', '2020-08-07 01:48:45'),
(366, '3404124212960003', 'dr. Anugerahaning Salsabila', 'Lumajang', '1996-12-02', 'P', 'S1', 'Islam', 'Menikah', '0', 'Tetap', '2021-08-23', NULL, 'N', 'N', NULL, '3314.57221/DU/I/449.1/77/VIII/2021', '2025-12-02', '3421100121226699', '2025-12-02', 1, 'Perum Gentan Asri No. 27 Bulusan Rt. 01/39 Sardonoharjo Ngaglik Sleman', '2021-08-30 01:27:50', '2021-08-30 01:27:50');
INSERT INTO `karyawans` (`id`, `nik`, `nama_karyawan`, `tmp_lahir`, `tgl_lahir`, `gender`, `pendidikan`, `agama`, `status_nikah`, `no_hp`, `status_karyawan`, `tgl_masuk_kerja`, `tgl_keluar_kerja`, `bpjs_ketenagakerjaan`, `bpjs_kesehatan`, `tgl_purna`, `sik`, `exp_sik`, `str`, `exp_str`, `id_unit_kerja`, `alamat`, `created_at`, `updated_at`) VALUES
(367, '3521136011970002', 'Novandia Justica Ragil Fortuna,A.Md.Kes (Rad)', 'Ngawi', '1997-11-20', 'P', 'D3', 'Islam', 'Single', '0', 'Kontrak', '2021-05-01', NULL, 'Y', 'Y', NULL, '16/SIPR/VIII/2021', '2024-11-20', '160752119-3103476', '2024-11-13', 1, 'Kedungharjo Rt. 03/01 Kedungharjo MAntingan Ngawi', '2021-08-30 01:44:00', '2021-08-30 01:44:00'),
(368, '3313155204940001', 'Tri Any Sukaningsih,A.Md.Farm', 'Karanganyar', '1994-04-12', 'P', 'S1', 'Islam', 'Menikah', '0', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, '97/SIPTTK/VIII/2021', '2026-04-12', '19940412/STRTTk_33/2015/223023', '2026-04-12', 9, 'Kalitelu Rt. 01/12 Pereng Mojogedang Karanganyar', '2021-08-30 03:28:51', '2021-08-30 03:28:51'),
(369, '3314116103960004', 'Eky Asri Pratiwi', 'Sragen', '1996-03-21', 'P', 'D3', 'Islam', 'Single', '0', 'Kontrak', '2021-06-01', NULL, 'Y', 'Y', NULL, '23/SIP-ATLM/VIII/2021', '2022-03-21', '1414521172159255', '2022-03-21', 1, 'Taraman Rt. 04/01 Taraman Sidoharjo Sragen', '2021-08-30 03:33:11', '2021-08-30 03:33:11'),
(370, NULL, 'Isnaini Facilia Putri', 'Sragen', '1997-11-03', 'P', 'D3', 'Islam', 'Single', '0', 'Kontrak', '2021-06-01', NULL, 'Y', 'Y', NULL, '22/SIP-ATLM/VIII/2021', '2025-11-03', '1414521203227679', '2025-11-03', 7, 'Sari Rt. 05/02 Pringanom Masaran Sragen', '2021-08-30 03:41:40', '2021-08-30 03:41:40'),
(371, NULL, 'Claudia Shabet Lailasari', 'Sragen', '1994-06-14', 'P', 'S1', 'Islam', 'Single', '0', 'Kontrak', '2020-06-01', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Tangkil Rt. 001/008 Tangkil Sragen Sragen', '2021-09-25 01:47:24', '2021-09-25 01:47:24'),
(372, NULL, 'Maulina Nur Hidayah', 'Ciamis', '1995-08-09', 'P', 'S1', 'Islam', 'Single', '0', 'Kontrak', '2021-05-01', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 35, 'Jl. Singosari No. 30 Rt.37/15 Taman Sari Kroyo Karangmalang Sragen', '2021-09-25 01:49:45', '2021-09-25 01:49:45'),
(373, NULL, 'Atika Eka Yuliani', 'Sragen', '1985-07-02', 'P', 'S1', 'Islam', 'Menikah', '08', 'Kontrak', '2021-06-01', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 35, 'Taman Asri Rt. 035/014 Kroyo Karangmalang Sragen', '2021-09-25 01:52:44', '2021-09-25 01:52:44'),
(374, '331410471294003', 'Dewi Lestari, S.Akun', 'Sragen', '1994-12-07', 'P', 'S1', 'Islam', 'Single', '-', 'Kontrak', '2022-01-01', NULL, 'Y', 'Y', NULL, '-', NULL, '-', NULL, 1, 'Bulaksari RT.03/08, Nglorog, Sragen', '2022-03-19 03:49:14', '2022-03-19 03:49:14'),
(375, '3314185209970001', 'Nurhalimah,Amd.RMIK', 'Sragen', '1997-09-12', 'P', 'D3', 'Islam', 'Single', '082225884825', 'Kontrak', '2019-07-01', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 14, 'Tanggan RT. 021/004 Tanggan Gesi Sragen', '2022-06-24 02:16:12', '2022-06-24 02:16:12'),
(376, '3314094803970009', 'Nurul Fajri', 'Sragen', '1997-03-11', 'P', 'SMK', 'Islam', 'Single', '085786731129', 'Kontrak', '2019-01-01', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Pucung Rt 020 / Rw 006, Jurangjero, Karangmalang, Sragen', '2022-06-24 04:10:32', '2022-06-24 04:10:32'),
(377, '3314114508960001', 'Dyah Ayu Maulida, SE', 'Sragen', '1996-08-05', 'P', 'S1', 'Islam', 'Single', '1', 'Kontrak', NULL, NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, 1, 'Mojorejo Rt. 10 Singopadu Sidoharjo Sragen', '2022-09-08 02:13:04', '2022-09-08 02:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'KOMPUTER', 'PERANGKAT KOMPUTER', '2022-09-28 08:33:56', '2022-09-28 08:33:56'),
(2, 'JARINGAN', 'JARINGAN', '2022-09-28 08:34:03', '2022-09-28 08:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(50, '2014_10_12_000000_create_users_table', 1),
(51, '2014_10_12_100000_create_password_resets_table', 1),
(52, '2019_08_19_000000_create_failed_jobs_table', 1),
(53, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(54, '2022_09_22_052055_create_barangs_table', 1),
(55, '2022_09_22_052203_create_kategoris_table', 1),
(56, '2022_09_22_052221_create_units_table', 1),
(57, '2022_12_12_164149_create_suhukelembapans_table', 1),
(58, '2022_12_14_144453_create_downtimes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suhukelembapan`
--

CREATE TABLE `suhukelembapan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `suhu` double NOT NULL,
  `kelembapan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suhukelembapan`
--

INSERT INTO `suhukelembapan` (`id`, `suhu`, `kelembapan`, `created_at`, `updated_at`) VALUES
(1, 23, 53, '2022-10-04 13:15:05', '2022-10-04 13:15:05'),
(2, 22, 51, '2022-10-05 13:15:05', '2022-10-05 13:15:05'),
(3, 22, 51, '2022-10-06 13:15:05', '2022-10-06 13:15:05'),
(4, 23, 52, '2022-10-07 13:15:05', '2022-10-07 13:15:05'),
(5, 21, 53, '2022-10-10 13:15:05', '2022-10-10 13:15:05'),
(6, 21, 52, '2022-10-11 13:15:05', '2022-10-11 13:15:05'),
(7, 23, 52, '2022-10-12 13:15:05', '2022-10-12 13:15:05'),
(8, 23, 52, '2022-10-13 13:15:05', '2022-10-13 13:15:05'),
(9, 21, 52, '2022-10-14 13:15:05', '2022-10-14 13:15:05'),
(10, 22, 52, '2022-10-15 13:15:05', '2022-10-15 13:15:05'),
(11, 22, 51, '2022-10-17 13:15:05', '2022-10-17 13:15:05'),
(12, 22, 51, '2022-10-18 13:15:05', '2022-10-18 13:15:05'),
(13, 23, 52, '2022-10-19 13:15:05', '2022-10-19 13:15:05'),
(14, 21, 51, '2022-10-20 13:15:05', '2022-10-20 13:15:05'),
(15, 22, 53, '2022-10-21 13:15:05', '2022-10-21 13:15:05'),
(16, 21, 52, '2022-10-24 13:15:05', '2022-10-24 13:15:05'),
(17, 23, 52, '2022-10-25 13:15:05', '2022-10-25 13:15:05'),
(18, 23, 52, '2022-10-26 13:15:05', '2022-10-26 13:15:05'),
(19, 21, 52, '2022-10-27 13:15:05', '2022-10-27 13:15:05'),
(20, 22, 52, '2022-10-28 13:15:05', '2022-10-28 13:15:05'),
(21, 22, 51, '2022-10-29 13:15:05', '2022-10-29 13:15:05'),
(22, 21, 51, '2022-10-31 13:15:05', '2022-10-31 13:15:05'),
(23, 22, 52, '2022-11-01 13:15:05', '2022-11-01 13:15:05'),
(24, 21, 53, '2022-11-02 13:15:05', '2022-11-02 13:15:05'),
(25, 23, 52, '2022-11-03 13:15:05', '2022-11-03 13:15:05'),
(26, 23, 52, '2022-11-04 13:15:05', '2022-11-04 13:15:05'),
(27, 21, 52, '2022-11-05 13:15:05', '2022-11-05 13:15:05'),
(28, 22, 52, '2022-11-07 13:15:05', '2022-11-07 13:15:05'),
(29, 22, 52, '2022-11-08 13:15:05', '2022-11-08 13:15:05'),
(30, 21, 51, '2022-11-09 13:15:05', '2022-11-09 13:15:05'),
(31, 23, 51, '2022-11-10 13:15:05', '2022-11-10 13:15:05'),
(32, 21, 52, '2022-11-11 13:15:04', '2022-11-11 13:15:04'),
(33, 22, 51, '2022-11-12 13:15:05', '2022-11-12 13:15:05'),
(34, 22, 53, '2022-11-14 13:15:05', '2022-11-14 13:15:05'),
(35, 22, 52, '2022-11-15 13:15:05', '2022-11-15 13:15:05'),
(36, 23, 52, '2022-11-16 13:15:05', '2022-11-16 13:15:05'),
(37, 21, 52, '2022-11-17 13:15:05', '2022-11-17 13:15:05'),
(38, 22, 51, '2022-11-18 13:15:05', '2022-11-18 13:15:05'),
(39, 21, 51, '2022-11-19 13:15:05', '2022-11-19 13:15:05'),
(40, 23, 52, '2022-11-21 13:15:05', '2022-11-21 13:15:05'),
(41, 22, 51, '2022-11-22 13:15:05', '2022-11-22 13:15:05'),
(42, 22, 53, '2022-11-23 13:15:05', '2022-11-23 13:15:05'),
(43, 23, 52, '2022-11-24 13:15:05', '2022-11-24 13:15:05'),
(44, 21, 52, '2022-11-25 13:15:05', '2022-11-25 13:15:05'),
(45, 21, 52, '2022-11-26 13:15:05', '2022-11-26 13:15:05'),
(46, 23, 52, '2022-11-28 13:15:05', '2022-11-28 13:15:05'),
(47, 23, 52, '2022-11-29 13:15:05', '2022-11-29 13:15:05'),
(48, 21, 51, '2022-11-30 13:15:05', '2022-11-30 13:15:05'),
(49, 22, 51, '2022-12-01 13:15:05', '2022-12-01 13:15:05'),
(50, 22, 52, '2022-12-02 13:15:05', '2022-12-02 13:15:05'),
(51, 23, 53, '2022-12-03 13:15:05', '2022-12-03 13:15:05'),
(52, 21, 52, '2022-12-05 13:15:05', '2022-12-05 13:15:05'),
(53, 22, 51, '2022-12-06 13:15:05', '2022-12-06 13:15:05'),
(54, 22, 52, '2022-12-07 13:15:05', '2022-12-07 13:15:05'),
(55, 21, 51, '2022-12-08 13:15:05', '2022-12-08 13:15:05'),
(56, 23, 53, '2022-12-09 13:15:05', '2022-12-09 13:15:05'),
(57, 21, 52, '2022-12-10 13:15:05', '2022-12-10 13:15:05'),
(58, 22, 52, '2022-12-12 13:15:05', '2022-12-12 13:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `suhukelembapans`
--

CREATE TABLE `suhukelembapans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `suhu` double NOT NULL,
  `kelembapan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `nama`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'IT', 'TEKNOLOGI INFORMASI', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(2, 'ADMIN', 'ADMIN', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(3, 'RM', 'RM', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(4, 'IPSRS', 'IPSRS', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(5, 'BPJS', 'BPJS', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(6, 'MANAJER UMUM & KEUANGAN', 'MANAJER UMUM & KEUANGAN', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(7, 'DIREKTUR', 'DIREKTUR', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(8, 'FISIO', 'FISIO', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(9, 'VK', 'VK', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(10, 'LABORATORIUM', 'LABORATORIUM', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(11, 'RADIOLOGI', 'RADIOLOGI', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(12, 'CSSD', 'CSSD', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(13, 'KASIR RI', 'KASIR RI', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(14, 'BPJS DEPAN', 'BPJS DEPAN', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(15, 'KASIR RJ', 'KASIR RJ', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(16, 'POLIKLINIK', 'POLIKLINIK', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(17, 'PENDAFTARAN RJ', 'PENDAFTARAN RJ', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(18, 'APOTEK', 'APOTEK', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(19, 'GUDANG APOTEK', 'GUDANG APOTEK', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(20, 'PENDAFTARAN RI', 'PENDAFTARAN RI', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(21, 'IGD', 'IGD', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(22, 'SERVER', 'SERVER', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(23, 'IBS', 'IBS', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(24, 'ICU', 'ICU', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(25, 'BANGSAL ANAK UTARA', 'BANGSAL ANAK UTARA', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(26, 'BANGSAL ANAK SELATAN', 'BANGSAL ANAK SELATAN', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(27, 'PPI', 'PPI', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(28, 'MANAJER KEPERAWATAN', 'MANAJER KEPERAWATAN', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(29, 'BANGSAL DEWASA', 'BANGSAL DEWASA', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(30, 'FLAMBOYAN', 'FLAMBOYAN', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(31, 'PERINA', 'PERINA', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(32, 'PERINA (SAKURA)', 'PERINA (SAKURA)', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(33, 'KEBIDANAN', 'KEBIDANAN', '2022-09-28 07:33:05', '2022-09-28 07:33:05'),
(168, 'nama', 'keterangan', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Endar Setyawan', 'itsarilahusada@gmail.com', NULL, '$2y$10$wnusSCa5bdB8nfVZWbi1jue/PQmrJyX5G6BxvJ6JPE5MIqXHjuzjG', NULL, '2022-09-28 08:31:34', '2022-09-28 08:31:34'),
(2, 'Endar Setyawan', 'endar@gmail.com', NULL, '$2y$10$kloakPVzOLorONdzfCfPm.vyj9hVTBjFFAM0khM5uJiGsr9cQHs2K', NULL, '2022-12-12 09:23:20', '2022-12-12 09:23:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downtimes`
--
ALTER TABLE `downtimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `karyawans`
--
ALTER TABLE `karyawans`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id_fk_unit_kerja` (`id_unit_kerja`) USING BTREE;

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `suhukelembapan`
--
ALTER TABLE `suhukelembapan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suhukelembapans`
--
ALTER TABLE `suhukelembapans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `downtimes`
--
ALTER TABLE `downtimes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karyawans`
--
ALTER TABLE `karyawans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=378;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suhukelembapan`
--
ALTER TABLE `suhukelembapan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `suhukelembapans`
--
ALTER TABLE `suhukelembapans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `karyawans`
--
ALTER TABLE `karyawans`
  ADD CONSTRAINT `id_fk_unit_kerja` FOREIGN KEY (`id_unit_kerja`) REFERENCES `unit_kerjas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
