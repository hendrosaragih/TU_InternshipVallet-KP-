-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2019 at 05:53 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vallet1`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_harga`
--

CREATE TABLE `daftar_harga` (
  `id_desain` int(25) NOT NULL,
  `jenis_desain` varchar(30) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `insentif` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_harga`
--

INSERT INTO `daftar_harga` (`id_desain`, `jenis_desain`, `satuan`, `harga`, `insentif`) VALUES
(1, 'Banner Aplikasi ', 'buah', '75000', '15000'),
(2, 'Brosur (2 fold)', 'fold', '75000', '15000'),
(3, 'Brosur (3 fold)', 'fold', '75000', '15000'),
(4, 'Buku Menu', 'lembar', '75000', '15000'),
(5, 'Cover Buku (Depan-Belakang)', 'paket', '120000', '24000'),
(6, 'Cover Majalah (Depan-Belakang)', 'paket', '120000', '24000'),
(7, 'CV', 'Lembar', '75000', '15000'),
(8, 'Desain Agenda/memo', 'buah', '50000', '10000'),
(9, 'Desain Amplop', 'buah', '50000', '10000'),
(10, 'Desain Artikel', 'buah', '75000', '15000'),
(11, 'Desain Brief', 'buah', '50000', '10000'),
(12, 'Desain Buku Tahunan', 'paket', '300000', '60000'),
(13, 'Desain Katalog', 'lembar', '75000', '15000'),
(14, 'Desain Pembatas Buku', 'Buah', '50000', '10000'),
(15, 'Desain Proposal', 'lembar', '75000', '15000'),
(16, 'Flyer', 'buah', '75000', '15000'),
(17, 'Infografis 2', 'lembar', '10000', '30000'),
(18, 'Invoice', 'buah', '50000', '10000'),
(19, 'Kalender', 'buah', '150000', '30000'),
(20, 'Kartu Nama', 'buah', '75000', '15000'),
(21, 'Kartu Resep', 'buah', '100000', '20000'),
(22, 'Kiriman FB', 'buah', '50000', '10000'),
(23, 'Kiriman IG', 'buah', '50000', '10000'),
(24, 'Kop Surat', 'buah', '75000', '15000'),
(25, 'Laporan Formal', 'lembar', '75000', '15000'),
(26, 'Layout Majalah', 'Halaman', '75000', '15000'),
(27, 'Logo', 'Paket', '300000', '60000'),
(28, 'Poster', 'buah', '75000', '15000'),
(29, 'PPT / Slide Presentasi', 'Slide', '50000', '10000'),
(30, 'Sampul FB', 'buah', '50000', '10000'),
(31, 'Sertifikat', 'buah', '75000', '15000'),
(32, 'Slider Website', 'buah', '100000', '75000'),
(33, 'Spanduk', 'buah', '75000', '15000'),
(34, 'Stiker', 'buah', '75000', '15000'),
(35, 'Story IG', 'buah', '50000', '10000'),
(36, 'Undangan Acara', 'buah', '75000', '15000'),
(37, 'Undangan Nikah', 'buah', '180000', '36000'),
(38, 'X-Banner / Roll Banner', 'Buah', '75000', '15000'),
(39, 'Bendera', '2', '100000', '5000'),
(40, 'Paper', 'buah', '20000', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `review` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(10) NOT NULL,
  `nama_perusahaan` varchar(20) NOT NULL,
  `email_perusahaan` varchar(20) NOT NULL,
  `kontak_perusahaan` varchar(20) NOT NULL,
  `jenis_pesanan` varchar(20) NOT NULL,
  `harga` int(100) NOT NULL,
  `kuantitas` int(100) NOT NULL,
  `detail_pesanan` varchar(255) NOT NULL,
  `gambar_pesanan` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `nama_perusahaan`, `email_perusahaan`, `kontak_perusahaan`, `jenis_pesanan`, `harga`, `kuantitas`, `detail_pesanan`, `gambar_pesanan`, `status`) VALUES
(1, 'vallet', 'vallet@gmail.com', '02212327', 'logo', 200000, 0, 'seperti logo tokopedia', '', ''),
(6, 'wahyu', 'wahyu@gmail.com', '022123123', 'logo', 200000, 0, 'sepresa', '', ''),
(7, 'wahyu', 'awddsa@gmail.com', '123123', 'dasxasx', 213213, 0, 'dsaccx', '', ''),
(8, 'wahyu', 'hendro@gmail.com', '08129912', 'logo', 20000, 0, 'logo', '', ''),
(9, 'Hendro Pratama', 'hendrosaragih17@gmai', '082126349080', '40000', 0, 0, 'Desain yang sesuai', '', ''),
(10, 'hends', 'hendrosaragih134@gma', '082126349080', '130000', 4, 0, 'Desain yang sesuai', '', ''),
(11, 'rhb', 'hendrosaragihef17@gm', '082126349080', '465764', 3, 0, 'Desain yang sesuai', '', ''),
(12, 'Hendro Pratama', 'hendrosafdgragih17@g', '082126349080', 'CV', 4, 4, 's', '', ''),
(13, 'sada', 'sad@mail.com', '1211313', 'Kartu Nama', -2, 12, 'Desain yang sesuai', '', ''),
(14, 'arya', 'arya@mail.com', '0822', 'Brosur (2 fold)', -2, 2, 's', '', ''),
(16, 'sdsadad', 'sadsad@mail.com', '1', 'CV', 2, 1, 'Desain yang sesuai', '', ''),
(18, 'arya', 'aryatest@mail.com', '08111', 'Banner Aplikasi', 1, 1, 'Desain yang sesuai', '', ''),
(20, 'sada', 'ari@mail.com', '12113141', 'Banner Aplikasi', -2, 2, 'Desain yang sesuai', '', ''),
(21, 'Hendro Pratama', 'sdjlajdslka17@gmail.', '082126349080', 'Banner Aplikasi', 2, 1, 'Desain yang sesuai', '', ''),
(22, 'Hendro Pratama', 'hendrosa17@gmail.com', '082126349080', 'Banner Aplikasi', 1212, 2, 'Desain yang sesuai', '', ''),
(23, 'sadsad', 'sads1a@mail.com', '1212', 'Desain Pembatas Buku', 2, 2, 'Desain yang sesuai', '', ''),
(24, 'sdada', 'sadsadasda@mail.com', '1213', 'Flyer', -2, 2, 'Desain yang sesuai', '', ''),
(25, 'Hendro Pratama', 'hendrosaragih11213@g', '082126349080', 'Banner Aplikasi', -2, 2, 'Desain yang sesuai', '', ''),
(26, 'Hendro Pratama', 'hendrosaragih11117@g', '082126349080', 'Banner Aplikasi', -2, 2, 'Desain yang sesuai', '', ''),
(27, 'Hendro Pratama', 'hendrosaragih1117@gm', '082126349080', 'Banner Aplikasi', -2, 2, 'Desain yang sesuai', '', ''),
(28, 'sdsadad', 'sadada17111@gmail.co', '082126349080', 'Banner Aplikasi', -2, 2, 'Desain yang sesuai', '', ''),
(29, 'Hendro Pratama', 'hendrosaragih11117@g', '082126349080', 'Banner Aplikasi', 0, 12, '2', '', ''),
(30, 'Hendro Pratama', 'hendrosaragih18@gmai', '082126349080', 'Flyer', -1, 2, 'Desain yang sesuai', '', ''),
(31, 'Hendro Pratama', 'hendrosaragih21@gmai', '082126349080', 'Banner Aplikasi', 2, 2, 'Desain yang sesuai', '', ''),
(32, 'Hendro Pratama', 'hendrosaragih37@gmai', '082126349080', 'Banner Aplikasi', -2, 3, 'Desain yang sesuai', '', ''),
(33, 'Hendro Pratama', 'hendrosaragih27@gmai', '082126349080', 'Banner Aplikasi', -1, 2, 'Desain yang sesuai', '', ''),
(34, 'Hendro Pratama', 'hendrosaragih17@gmai', '082126349080', 'Banner Aplikasi', 20000, 3, 'Yang bagus yaa', '', ''),
(35, 'Hendro Pratama', 'hendrosaragih17@gmai', '082126349080', 'Flyer', 123000, 1, 'OK', '', ''),
(36, 'Hendro Pratama', 'hendrosaragih17@gmai', '082126349080', 'Banner Aplikasi', 1, 12, 'Yang bagus yaa', '', ''),
(37, 'Hendro Pratama', 'hendrosaragih17@gmai', '082126349080', 'Desain Buku Tahunan', 2, 3, 'OK', '', ''),
(38, 'Hendro Pratama', 'hendrosaragih17@gmai', '082126349080', 'Desain Proposal', 2, 3, 'Yang bagus yaa', '', ''),
(39, 'Hendro Pratama', 'hendrosaragih17@gmai', '082126349080', 'Cover Majalah (Depan', 2, 2, '3', '', ''),
(40, 'Hendro Pratama', 'hendrosaragih17@gmai', '082126349080', 'CV', 50000, 2, 'Desain yang sesuai', '', ''),
(41, 'Hendro Pratama', 'hendrosaragih17@gmai', '082126349080', 'Cover Buku (Depan-Be', 2, 12, 'Desain yang sesuai', '', ''),
(42, 'Hendro Pratama', 'hendrosaragih17@gmai', '082126349080', 'Desain Pembatas Buku', 20000, 3, 'Desain yang sesuai', '', ''),
(43, 'Hendro Pratama', 'hendrosaragih17@gmai', '082126349080', 'Desain Amplop', 20000, 2, 'Yang bagus yaa', '', ''),
(44, 'Hendro Pratama', 'hendrosaragih17@gmai', '082126349080', 'Rp 50.000,-', 0, 4, 'Desain yang sesuai', '', ''),
(45, 'Hendro Pratama', 'hendrosaragih17@gmai', '0821', 'Rp 50.000,-', 0, 0, 'okok', '', ''),
(46, 'Hendro Pratama', 'hendrosaragih17@gmai', '082126349080', 'Rp 50.000,-', 0, 4, 'Desain yang sesuai', '', ''),
(47, 'Hendro Pratama', 'hendrosaragih37@gmai', '0835254236', 'Rp 75.000,-', 0, 0, 'dqjldq', '', ''),
(48, 'Hendro Pratama', 'hendrosaragih77@gmai', '0734672389', 'Rp 75.000,-', 0, 0, 'kwdjfgkwdf', '', ''),
(49, 'Hendro Pratama', 'hendrosaragih77@gmai', '0734672389', 'Rp 75.000,-', 0, 0, 'kwdjfgkwdf', '', ''),
(50, 'Hendro Pratama', 'hendrosaragih17@gmai', '0328762767', 'Rp 75.000,-', 0, 0, 'rgerfvg', '', ''),
(51, 'Hendro Pratama', 'hendrosaragih17@gmai', '0678678', 'Rp 75.000,-', 0, 0, 'jljhljh', '', ''),
(52, 'Hendro Pratama', 'hendrosaragih17@gmai', '078978', 'Rp 50.000,-', 0, 0, 'qefeqf', '', ''),
(53, 'Hendro Pratama', 'hendrosaragih17@gmai', '087987978', 'Rp 50.000,-', 0, 0, 'ukyuk', '', ''),
(54, 'efwef', 'hendrosaragih4@gmail', '0739323', 'Rp 75.000,-', 0, 0, 'wsdvsfv', '', ''),
(55, 'efwef', 'hendrosaragih4@gmail', '0739323', 'Rp 75.000,-', 0, 0, 'wsdvsfv', '', ''),
(56, 'efwef', 'hendrosaragih4@gmail', '0739323', 'Rp 75.000,-', 0, 0, 'wsdvsfv', '', ''),
(57, 'Hendro Pratama', 'hendrosaragih17@gmai', '08707078', 'Rp 75.000,-', 0, 0, 'gergreg', '', ''),
(58, 'Hendro Pratama', 'hendrosaragih17@gmai', '07687', 'Rp 75.000,-', 0, 0, 'fbsf', '', ''),
(59, 'Hendro Pratama', 'hendrosaragih17@gmai', '06896', 'Rp 75.000,-', 0, 0, 'wgwrgw', '', ''),
(60, 'dafwds', 'hendrosaragih17@gmai', '089877', 'Rp 75.000,-', 0, 0, 'dgnfnf', '', ''),
(61, 'gfsve', 'hendrosaragih17@gmai', '0822752424', 'Rp 75.000,-', 0, 0, 'ergreg', '', ''),
(62, 'Hendro Pratama', 'hendrosaragih17@gmai', '099744', 'Rp 75.000,-', 0, 0, 'ebebe', '', ''),
(63, 'Hendro Pratama', 'hendrosaragih17@gmai', '078797', 'Rp 75.000,-', 0, 0, 'qefew', '', ''),
(64, 'Hendro Pratama', 'hendrosaragih17@gmai', '0937249824', '75000', 75000, 0, 'fwfwf', '', ''),
(65, 'Hendro Pratama', 'hendrosaragih17@gmai', '08437634892', '50000', 50000, 0, 'hwdfhcs', '', ''),
(66, 'Hendro Pratama', 'hendrosaragih17@gmai', '08437634892', '50000', 50000, 0, 'hwdfhcs', '', ''),
(67, 'Hendro Pratama', 'hendrosaragih17@gmai', '0843763476', 'Rp.20000,-', 0, 0, 'okok', '', ''),
(68, 'Hendro Pratama', 'hendrosaragih17@gmai', '0843763476', 'Rp.20000,-', 0, 0, 'okok', '', ''),
(69, 'Hendro Sijabat', 'hendrosaragih72@gmai', '08345237823', 'Rp.10000,-', 0, 0, 'Warna biru', '', ''),
(70, 'Hendro Pratama', 'hendrosaragih72@gmai', '082652745624', 'Rp.10000,-', 0, 0, 'Biru', '', ''),
(71, 'Hendro Pratama', 'hendrosaragih17@gmai', '0863478354685', 'Rp.75,000,-', 0, 0, 'fhkerve', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `no_order` int(18) NOT NULL,
  `nama_pemesan` varchar(32) NOT NULL,
  `jenis_order` varchar(18) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `biaya` int(16) NOT NULL,
  `deadline` date NOT NULL,
  `desain` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `nip` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `newpassword` varchar(32) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `nip`, `image`, `password`, `newpassword`, `is_active`) VALUES
(1, 'I Putu Ari susila', 'A123', 'default.jpg', 'susila12', '', 1),
(2, 'Gerin Tobing', 'A234', 'default.jpg', 'gerin12', '', 1),
(3, 'Arief Chaerudin', 'AR0408', 'default.jpg', '12345678', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_harga`
--
ALTER TABLE `daftar_harga`
  ADD PRIMARY KEY (`id_desain`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`no_order`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_harga`
--
ALTER TABLE `daftar_harga`
  MODIFY `id_desain` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `no_order` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
