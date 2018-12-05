-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2018 at 08:02 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportsnesia_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id` int(5) NOT NULL,
  `nama_perusahaan` varchar(25) NOT NULL,
  `nama_pemilik` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `identitas` text NOT NULL,
  `no_identitas` int(20) NOT NULL,
  `upload_identitas` varchar(300) NOT NULL,
  `kota` text NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id`, `nama_perusahaan`, `nama_pemilik`, `email`, `alamat`, `phone`, `identitas`, `no_identitas`, `upload_identitas`, `kota`, `password`) VALUES
(1, 'jgjkhjhkfjhgjhg', 'nbcjbvvjhv', 'sfsdfs@gmail.com', 'jhdjhadh', '564674566', 'KTP', 4354355, 'df', 'kemiri', 'fgfghfghfgh'),
(2, 'jgjkhjhkfjhgjhg', 'nbcjbvvjhv', '123@gmail.com', 'jhdjhadh', '564674566', 'KTP', 4354355, 'df', 'kemiri', '123'),
(4, 'sdfsdf', 'sdfsdf', '123@gmail.com', 'frsdfsd', '645456', 'fgdg', 0, 'gdfgd', '', '1234'),
(5, 'sdfsdf', 'sdfsdf', '123@gmail.com', 'frsdfsd', '645456', 'fgdg', 0, 'gdfgd', '', '1234'),
(6, 'sdfsdf', 'sdfsdf', '123@gmail.com', 'frsdfsd', '645456', 'fgdg', 0, 'gdfgd', '', '1234'),
(7, 'sdfsdf', 'sdfsdf', '123@gmail.com', 'frsdfsd', '645456', 'fgdg', 2147483647, 'gdfgd', 'adsads', '1234'),
(8, 'PT sportsnesia', 'luthfi', 'iluth21@gmail.com', 'jl. Flamboyan', '087785555977', 'KTP', 2147483647, 'belum', 'Sleman', '1234'),
(9, 'eqw', 'dfs', '1@gmail.com', 'kemiri', '0898787876', 'Passport', 2147483647, 'logo_amikom', 'sleman', '12345'),
(10, 'irfan', 'irfan', 'irfan@gmail.com', 'sleman', '0879869', 'KTP', 393090484, 'logo_amikom_full_color.png', 'Sleman', '123'),
(11, 'ilkhsfsdj', 'klsdf', '1@gmail.com', 'sfdfsf', '99080945', 'KTP', 980203487, 'logo_amikom_full_color.png', 'jkshfdk', '123'),
(12, 'sdfs', 'sfsd', 'sfsdfs@gmail.com', 'gfhf', '24353435', 'KTP', 4353453, '', 'eerte', '1234'),
(13, 'sdfs', 'sfsd', 'sfsdfs@gmail.com', 'gfhf', '24353435', 'KTP', 4353453, '', 'eerte', 'dsasdad'),
(14, 'jslkfsfs', 'sdkfsfjksf', '1@gmail.com', 'iladshsfdfs', '902754389`', 'KTP', 982342, 'logo_amikom_full_color.png', 'akdhafh', '123');

-- --------------------------------------------------------

--
-- Table structure for table `upload_venue`
--

CREATE TABLE `upload_venue` (
  `id` int(11) NOT NULL,
  `kategori` text NOT NULL,
  `nama_venue` varchar(15) NOT NULL,
  `harga_sewa` int(10) NOT NULL,
  `gambar_venue` varchar(300) NOT NULL,
  `jenis_lapangan` varchar(15) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_venue`
--

INSERT INTO `upload_venue` (`id`, `kategori`, `nama_venue`, `harga_sewa`, `gambar_venue`, `jenis_lapangan`, `deskripsi`) VALUES
(13, '', 'Telaga Futsal', 100000, 'futsal.jpg', 'Bukan Rumput', 'Telaga futsal rumput'),
(14, '', 'telaga 2', 200000, 'futsal.jpg', 'Rumput', 'Rumput'),
(15, '', 'telaga 3', 300000, 'futsal.jpg', 'Bukan Rumput', 'Bukan rumput'),
(16, 'Swimming', 'umbul', 5000, 'swim.jpg', 'Rumput', 'Rumput'),
(17, 'Badminton', 'marga jaya', 25000, 'badminton.jpg', 'Bukan Rumput', 'mester');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `phone`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '083111111111', '12345678'),
(2, 'test', 'test@gmail.com', '089999999', 'test'),
(3, 'iluth', 'iluth@gmail.com', '0899998989', 'iluth'),
(4, 'iluth', 'admin@gmail.com', '34564567457', '12345678'),
(5, 'iluth', 'iluth212@gmail.com', '0998989', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_venue`
--
ALTER TABLE `upload_venue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `upload_venue`
--
ALTER TABLE `upload_venue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
