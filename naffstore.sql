-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2020 at 12:11 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naffstore`
--
CREATE DATABASE IF NOT EXISTS `naffstore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `naffstore`;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `harga` varchar(200) NOT NULL,
  `berat` varchar(200) DEFAULT NULL,
  `isi` varchar(200) DEFAULT NULL,
  `keterangan` longtext DEFAULT NULL,
  `dibuat` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah` datetime DEFAULT NULL,
  `kategori` varchar(128) NOT NULL DEFAULT 'Frozen Food'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`, `berat`, `isi`, `keterangan`, `dibuat`, `diubah`, `kategori`) VALUES
(101, 'Shrimp Roll isi Full Pack isi 30', '85000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(102, 'Kimbo Sosis Sapi Ori Mini BW isi 10', '30000', '', '', '', '2020-07-02 16:07:19', NULL, 'Sosis'),
(103, 'Tasaji Roti Maryam Ori', '16000', '', '', '', '2020-07-02 16:07:19', NULL, 'Roti Maryam'),
(104, 'Dimsum Pack isi 8', '20000', '', '', '', '2020-07-02 16:07:19', NULL, 'Dimsum'),
(105, 'Bakso Sapi AB Warisan 319 isi 10', '8500', '', '', '', '2020-07-02 16:07:19', NULL, 'Bakso & Tahu Bakso'),
(106, 'Athien Otak Otak Super', '7000', '', '', '', '2020-07-02 16:07:19', NULL, 'Otak Otak'),
(107, 'Ayoma Rolade Ayam 225 Gr', '12000', '', '', '', '2020-07-02 16:07:19', NULL, 'Rolade'),
(108, 'Ayoma Rolade Sapi 225 Gr', '13000', '', '', '', '2020-07-02 16:07:19', NULL, 'Rolade'),
(109, 'Bakso Sapi SB Kebon Jeruk isi 25', '29000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bakso & Tahu Bakso'),
(110, 'Bakso Sapi SB Kebon Jeruk isi 50', '56000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bakso & Tahu Bakso'),
(111, 'Bakso Sapi One Suke isi 10', '8000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bakso & Tahu Bakso'),
(112, 'Belfoods Ceria Nugget 250gr', '22000', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget'),
(113, 'Belfoods Nugget Ayam 170gr', '10000', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget'),
(114, 'Belfoods Nugget Koin 250gr', '15000', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget'),
(115, 'Belfoods Nugget Stick 250 Gr', '15000', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget'),
(116, 'Belfoods Nugget Stick 500 Gr', '29500', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget'),
(117, 'Belfoods Golden Fillet 250 Gr', '28500', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget'),
(118, 'Belfoods Golden Fillet 500 Gr', '56500', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget'),
(119, 'Belfoods Kentang Shoestring 500 Gr', '19000', '', '', '', '2020-07-02 16:07:19', NULL, 'Kentang Goreng'),
(120, 'Belfoods Kentang Shoestring 200 Gr', '10000', '', '', '', '2020-07-02 16:07:19', NULL, 'Kentang Goreng'),
(121, 'Belfoods Sosis Ayam 200 Gr', '10000', '', '', '', '2020-07-02 16:07:19', NULL, 'Sosis'),
(122, 'Belfoods Baso Ayam isi 50', '16000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bakso & Tahu Bakso'),
(123, 'Belfoods Baso Ayam Mini isi 100', '15000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bakso & Tahu Bakso'),
(124, 'Belfoods Uenak Nugget Ayam S 250 Gr', '12000', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget'),
(125, 'Belfoods Nugget Ayam S 500 Gr', '20500', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget'),
(126, 'Belfoods Uenak Sosis Ayam 500 Gr', '18000', '', '', '', '2020-07-02 16:07:19', NULL, 'Sosis'),
(127, 'Belfoods Uenak Sosis Ayam 375 Gr isi 15', '15000', '', '', '', '2020-07-02 16:07:19', NULL, 'Sosis'),
(128, 'Bumbu Bamboe Hainan', '8000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bumbu'),
(129, 'Bumbu Bamboe Nasi Goreng', '6000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bumbu'),
(130, 'Bumbu Bamboe Nasi Goreng Pedas', '6000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bumbu'),
(131, 'Bumbu Bamboe Rawon', '6000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bumbu'),
(132, 'Bumbu Bamboe Rendang', '6000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bumbu'),
(133, 'Bumbu Bamboo Tom Yum', '8000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bumbu'),
(134, 'Cedea Crab Stick 250 gr', '14000', '', '', '', '2020-07-02 16:07:19', NULL, 'Seafood Cedea'),
(135, 'Cedea Fish Roll 250 Gr', '14000', '', '', '', '2020-07-02 16:07:19', NULL, 'Seafood Cedea'),
(136, 'Cedea Steamboat 300 gr', '23000', '', '', '', '2020-07-02 16:07:19', NULL, 'Seafood Cedea'),
(137, 'Champ Sosis Ayam 375 Gr', '16000', '', '', '', '2020-07-02 16:07:19', NULL, 'Sosis'),
(138, 'Ciki Wiki Nugget 250 Gr', '14000', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget'),
(139, 'Delmonte Sambel Hot 1 Kg', '19500', '', '', '', '2020-07-02 16:07:19', NULL, 'Saos & Mayonaise'),
(140, 'Delmonte Saos Tomat 1 Kg', '15000', '', '', '', '2020-07-02 16:07:19', NULL, 'Saos & Mayonaise'),
(141, 'Diva Donat Kentang', '19000', '', '', '', '2020-07-02 16:07:19', NULL, 'Donat, Roti, Bakpao'),
(142, 'Diva Roti Goreng Ayam Sayur isi 10', '20000', '', '', '', '2020-07-02 16:07:19', NULL, 'Donat, Roti, Bakpao'),
(143, 'Diva Roti Goreng Coklat', '20000', '', '', '', '2020-07-02 16:07:19', NULL, 'Donat, Roti, Bakpao'),
(144, 'Diva Roti Goreng Coklat Keju', '21000', '', '', '', '2020-07-02 16:07:19', NULL, 'Donat, Roti, Bakpao'),
(145, 'Diva Roti Goreng Jasuke', '23000', '', '', '', '2020-07-02 16:07:19', NULL, 'Donat, Roti, Bakpao'),
(146, 'Diva Roti Goreng Pisang Coklat', '21000', '', '', '', '2020-07-02 16:07:19', NULL, 'Donat, Roti, Bakpao'),
(147, 'Diva Roti Goreng Sosis', '23000', '', '', '', '2020-07-02 16:07:19', NULL, 'Donat, Roti, Bakpao'),
(148, 'Rujak Cireng Brecxelle', '13000', '', '', '', '2020-07-02 16:07:19', NULL, 'Cireng'),
(149, 'Donat Makmur', '14000', '', '', '', '2020-07-02 16:07:19', NULL, 'Donat, Roti, Bakpao'),
(150, 'Ebi Furai FullPack isi 12', '27000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(151, 'Ebi Furai isi 6', '14000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(152, 'Euro Gourmet Saos Keju', '21000', '', '', '', '2020-07-02 16:07:19', NULL, 'Saos & Mayonaise'),
(153, 'Hemato Nugget 250 Gr', '10000', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget'),
(154, 'Hemato Nugget Ayam 500 Gr', '17000', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget'),
(155, 'Hemato Sosis Ayam 375 Gr', '13000', '', '', '', '2020-07-02 16:07:19', NULL, 'Sosis'),
(156, 'Hemato Sosis Sapi 375 Gr', '13000', '', '', '', '2020-07-02 16:07:19', NULL, 'Sosis'),
(157, 'Kipao Mini 430 Gr isi 25', '16000', '', '', '', '2020-07-02 16:07:19', NULL, 'Donat, Roti, Bakpao'),
(158, 'La Fonte Saos Bolognese', '19000', '', '', '', '2020-07-02 16:07:19', NULL, 'Saos & Mayonaise'),
(159, 'Maestro Light Mayonaise', '28000', '', '', '', '2020-07-02 16:07:19', NULL, 'Saos & Mayonaise'),
(160, 'Maestro Thousand Island 1kg', '27000', '', '', '', '2020-07-02 16:07:19', NULL, 'Saos & Mayonaise'),
(161, 'Minaku Kaki Naga 500 Gr', '16500', '', '', '', '2020-07-02 16:07:19', NULL, 'Kaki Naga'),
(162, 'Mydibel Kentang Shoestring 1 kg', '25000', '', '', '', '2020-07-02 16:07:19', NULL, 'Kentang Goreng'),
(163, 'Beef Teriyaki 5 porsi', '85000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(164, 'Chicken Katsu isi 4', '65000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(165, 'Chicken Teriyaki 5 porsi', '60000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(166, 'Crab Roll isi 15', '110000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(167, 'Crab Roll Isi 5', '40000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(168, 'Premium Dimsum ayam isi 10', '35000', '', '', '', '2020-07-02 16:07:19', NULL, 'Dimsum'),
(169, 'Premium Dimsum Ayam Isi 20', '70000', '', '', '', '2020-07-02 16:07:19', NULL, 'Dimsum'),
(170, 'Premium Dimsum Ayam Udang Isi 20', '70000', '', '', '', '2020-07-02 16:07:19', NULL, 'Dimsum'),
(171, 'Premium Dimsum Udang Isi 20', '70000', '', '', '', '2020-07-02 16:07:19', NULL, 'Dimsum'),
(172, 'Premium Ebi Furai Full Pack', '45000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(173, 'Egg Chicken Roll Full Pack', '85000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(174, 'Egg Chicken Roll Isi 3', '35000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(175, 'Shrimp Roll Isi 10', '30000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(176, 'Spicy Chicken Full Pack Isi 30', '85000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(177, 'Spicy Chicken Isi 10', '30000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(178, 'Tori No Teba isi 10', '110000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(179, 'Toni No Teba Isi 2', '23000', '', '', '', '2020-07-02 16:07:19', NULL, 'bento frozen'),
(180, 'Champ Nugget 250 Gr', '17000', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget'),
(181, 'Prochiz Keju Cheddar 170 Gr', '17000', '', '', '', '2020-07-02 16:07:19', NULL, 'Keju'),
(182, 'Rujak Cireng LBA', '13500', '', '', '', '2020-07-02 16:07:19', NULL, 'Cireng'),
(183, 'Silky Puding', '16000', '', '', '', '2020-07-02 16:07:19', NULL, 'Puding'),
(184, 'Silky Puding', '16000', '', '', '', '2020-07-02 16:07:19', NULL, 'Puding'),
(185, 'Silky Puding', '16000', '', '', '', '2020-07-02 16:07:19', NULL, 'Puding'),
(186, 'Silky Puding', '16000', '', '', '', '2020-07-02 16:07:19', NULL, 'Puding'),
(187, 'Tahu Bakso Dua Saudara isi 10', '11000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bakso & Tahu Bakso'),
(188, 'Tahu Bakso Dua Saudara isi 10', '11000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bakso & Tahu Bakso'),
(189, 'Tasaji Roti Maryam Keju 400 gr', '23000', '', '', '', '2020-07-02 16:07:19', NULL, 'Roti Maryam'),
(190, 'Teman Laut Bakso Ikan', '19000', '', '', '', '2020-07-02 16:07:19', NULL, 'Umum'),
(191, 'Diamond UHT Chocolate 1 L', '16000', '', '', '', '2020-07-02 16:07:19', NULL, 'Susu'),
(192, 'Diamond Biggy Chocolate Puding', '3000', '', '', '', '2020-07-02 16:07:19', NULL, 'Puding'),
(193, 'Diamond Biggy Manggo Puding', '3000', '', '', '', '2020-07-02 16:07:19', NULL, 'Puding'),
(194, 'Cedea Steamboat 500 gr', '36000', '', '', '', '2020-07-02 16:07:19', NULL, 'Seafood Cedea'),
(195, 'Hemato Sosis Ayam Kombinasi', '13000', '', '', '', '2020-07-02 16:07:19', NULL, 'Sosis'),
(196, 'Cedea Fish Dumpling Cheese 200 gr', '12500', '', '', '', '2020-07-02 16:07:19', NULL, 'Seafood Cedea'),
(197, 'Cedea Chikuwa 250 gr', '16000', '', '', '', '2020-07-02 16:07:19', NULL, 'Seafood Cedea'),
(198, 'Kimbo Sosis Sapi Lada Hitam Mini BW isi 10', '30000', '', '', '', '2020-07-02 16:07:19', NULL, 'Sosis'),
(199, 'Kimbo Sosis Sapi Keju mini BW isi 10', '30000', '', '', '', '2020-07-02 16:07:19', NULL, 'Sosis'),
(200, 'Prima Agung Saos Barbeque 250 gr', '13000', '', '', '', '2020-07-02 16:07:19', NULL, 'Saos & Mayonaise'),
(201, 'Prima Agung Mayonais 250 gr', '13000', '', '', '', '2020-07-02 16:07:19', NULL, 'Saos & Mayonaise'),
(202, 'Bakso SB Warisan 319 Isi 50', '29000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bakso & Tahu Bakso'),
(203, 'Cedea Dumpling Chicken 500 gr', '28000', '', '', '', '2020-07-02 16:07:19', NULL, 'Seafood Cedea'),
(204, 'Diva Risol Isi 10', '25000', '', '', '', '2020-07-02 16:07:19', NULL, 'Donat, Roti, Bakpao'),
(205, 'Lemon Sereh Selasin', '7000', '', '', '', '2020-07-02 16:07:19', NULL, 'Minuman'),
(206, 'Maestro Thousand Island 180 gr', '8500', '', '', '', '2020-07-02 16:07:19', NULL, 'Saos & Mayonaise'),
(207, 'Delmonte Saos Barbeque 250 gr', '8500', '', '', '', '2020-07-02 16:07:19', NULL, 'Saos & Mayonaise'),
(208, 'Delmonte Saus Extra Hot Sachet isi 24', '7000', '', '', '', '2020-07-02 16:07:19', NULL, 'Saos & Mayonaise'),
(209, 'Delmonte Saos Tomat sachet isi 24', '7000', '', '', '', '2020-07-02 16:07:19', NULL, 'Saos & Mayonaise'),
(210, 'Bernardi Roti Burger Wijen Isi 6', '13000', '', '', '', '2020-07-02 16:07:19', NULL, 'Donat, Roti, Bakpao'),
(211, 'Belfoods Baso Ayam 100 gr', '10000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bakso & Tahu Bakso'),
(212, 'Roti Maryam Catering', '0', '', '', '', '2020-07-02 16:07:19', NULL, 'Roti Maryam'),
(213, 'Roti Cane/Mariyam Polos Isi 20', '19000', '', '', '', '2020-07-02 16:07:19', NULL, 'Roti Maryam'),
(214, 'Hemato Daging Burger Isi 10', '10000', '', '', '', '2020-07-02 16:07:19', NULL, 'Daging Burger, Kebab'),
(215, 'Catering Tortila Isi 20', '20000', '', '', '', '2020-07-02 16:07:19', NULL, 'Donat, Roti, Bakpao'),
(216, 'Catering Tortila Sedang', '25000', '', '', '', '2020-07-02 16:07:19', NULL, 'Donat, Roti, Bakpao'),
(217, 'Burger Yona', '36000', '', '', '', '2020-07-02 16:07:19', NULL, 'Daging Burger, Kebab'),
(218, 'Daging Kebab Iris 250 gr', '34000', '', '', '', '2020-07-02 16:07:19', NULL, 'Daging Burger, Kebab'),
(219, 'Diamond UHT Full Cream 1 L', '16000', '', '', '', '2020-07-02 16:07:19', NULL, 'Susu'),
(220, 'ladaku', '1000', '', '', '', '2020-07-02 16:07:19', NULL, 'Bumbu'),
(221, 'Paket Belfoods 1', '28000', '', '', '', '2020-07-02 16:07:19', NULL, 'Nugget');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
