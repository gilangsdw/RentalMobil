-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2020 pada 14.51
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2basic`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `car`
--

CREATE TABLE `car` (
  `code_car` int(11) NOT NULL,
  `name_car` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `color` varchar(30) NOT NULL,
  `entry` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `car`
--

INSERT INTO `car` (`code_car`, `name_car`, `price`, `color`, `entry`) VALUES
(12, 'Ayla', '300000', 'White', ''),
(19, 'Rubicon', '800000', 'Orangeee', ''),
(65, 'Honda Civic', '450000', 'Grey', ''),
(71, 'Xenia', '350000', 'Black', ''),
(90, 'Pajero Sport', '400000', 'whitee', 'adminroni'),
(98, 'Avanza', '400000', 'Red', 'admingilang'),
(466, 'Civic', '350000', 'Black', 'admin'),
(661, 'Agya', '300000', 'White', 'admin'),
(890, 'Tesla', '1000000', 'Dark Grey', 'gilang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL,
  `phonecode` varchar(10) NOT NULL,
  `president` varchar(20) NOT NULL,
  `capital` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `country`
--

INSERT INTO `country` (`code`, `name`, `population`, `phonecode`, `president`, `capital`) VALUES
('AU', 'Austria', 24016400, '43', 'Alexander Van der Be', ''),
('BR', 'Brazil', 212559417, '55', 'Jair Bolsonaro', ''),
('CA', 'Canada', 35985751, '1', 'Justin Trudeau', ''),
('CL', 'Chili', 2147483647, '56', 'Sebastián Piñera', 'kranji'),
('CN', 'China', 1375210000, '86', 'Xi Jinping', ''),
('DE', 'Germany', 81459000, '', '', ''),
('DK', 'Denmark', 2147483647, '19201', 'Putin', ''),
('FR', 'France', 64513242, '', '', ''),
('ft', 'erwrewrw', 234234, '243234234', 'adul', ''),
('GB', 'United Kingdom', 65097000, '', '', ''),
('ID', 'Indonesian', 910021023, '16120', 'Jokowi', ''),
('II', 'Indonesia dong', 1212, '2312310391', 'blablabla', ''),
('IN', 'India', 1285400000, '', '', ''),
('KK', 'ERWER', 4535345, '3524234234', 'gdfgdfgdf', 'dfgdfgdfg'),
('ML', 'Malaysia', 82191832, '11111', 'Upin Ipin', ''),
('po', 'kiki', 98797987, '779779', 'sdfsdfs', ''),
('yt', 'qweqwe', 234234, '234234234', 'misel', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `idemployee` int(3) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `posisi` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`idemployee`, `nama`, `alamat`, `posisi`, `agama`) VALUES
(143, 'Gilang', 'Bekasi', 'Junior Programmer', 'Islam'),
(217, 'Nadia', 'Jakarta', 'Programmer', 'Islam'),
(231, 'Jeannie', 'Bekasi Timur', 'Sekretarisss', 'Katolik'),
(655, 'Budi', 'Cimahi', 'Programmer', 'Islam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `car_code` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rental_order`
--

CREATE TABLE `rental_order` (
  `id` int(1) NOT NULL,
  `car` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `return_date` date NOT NULL,
  `actual_return_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `location` text NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rental_order`
--

INSERT INTO `rental_order` (`id`, `car`, `start_date`, `return_date`, `actual_return_date`, `location`, `name`) VALUES
(1, '65', '2020-10-16', '2020-10-16', '2020-10-16 11:31:52', 'Bekasii', 'Pachenko'),
(2, '65', '2020-10-16', '2020-10-16', NULL, 'jakarta', 'koko'),
(4, '19', '2020-10-04', '2020-10-09', NULL, 'Kartini', 'Gilang'),
(5, '65', '2020-09-29', '2020-10-29', NULL, 'ssasas', 'Hahah'),
(6, '90', '2020-02-12', '2020-03-12', '2020-10-16 13:50:03', 'Jakartah', 'Pachenko'),
(7, '12', '2020-02-09', '2020-03-09', '2020-10-17 10:53:21', 'bekasi', 'ahar'),
(8, '90', '2020-02-09', '2020-02-11', NULL, 'Cimahi', 'Nunu'),
(9, '90', '2020-10-16', '2020-10-17', '2020-10-17 10:52:47', 'Buah Batu', 'Eri'),
(10, '12', '2020-04-04', '2020-05-04', '2020-10-17 10:53:09', 'Perumnas 3', 'Yoga'),
(11, '98', '2020-09-09', '2020-09-09', NULL, 'Makasar', 'Roni'),
(12, '90', '2020-09-09', '2020-02-12', '2020-10-17 10:52:13', 'Bandung', 'Pak pras'),
(13, '98', '2020-09-08', '2020-09-09', '2020-10-17 10:52:30', 'Cimahi', 'Bang Dodi'),
(14, '90', '2020-12-09', '2020-12-10', '2020-10-17 10:32:04', 'Bantar Gebanggggg', 'Bang Bogel'),
(15, '98', '2020-02-01', '2020-02-05', '2020-10-17 10:31:05', 'Bekaseh', 'Bang Jago'),
(16, '71', '2020-09-09', '2020-09-10', '2020-10-17 10:25:28', 'Jakarta', 'Jeannie'),
(17, '71', '2020-02-01', '2020-02-04', NULL, 'Belitung', 'Nurjaman'),
(18, '19', '2020-02-03', '2020-02-05', '2020-10-17 10:25:08', 'Jaktimmmm', 'Pachenko'),
(19, '65', '2020-06-01', '2020-06-10', NULL, 'Tangcit', 'Eri Prayotno'),
(21, '12', '2020-02-08', '2020-02-13', NULL, 'Tambun Selatan', 'gilang'),
(22, '46', '2020-10-02', '2020-10-29', NULL, 'Bekasi timur', 'gilang'),
(23, '46', '2020-10-02', '2020-10-29', NULL, 'Bekasi timur', 'gilang'),
(24, '19', '2020-10-17', '2020-10-28', NULL, 'Bantar gebang', 'gilang'),
(25, '65', '2020-09-09', '2020-09-13', NULL, 'Bandung', 'nunu'),
(26, '12', '2020-09-04', '2020-09-10', NULL, 'buaran', 'gilang'),
(27, '90', '2020-10-22', '2020-10-29', NULL, 'Kranji', 'nunu'),
(28, '12', '2020-10-03', '2020-11-04', NULL, 'Kuningan', 'nunu'),
(29, '65', '2020-10-29', '2020-10-31', NULL, 'Jatinangor', 'gilang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `authKey` varchar(20) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `authKey`, `accessToken`, `level`) VALUES
(1, 'gilang', 'gilangsadewo71@gmail.com', 'gilang', '791c9c6f6107d6c2621f', '$2y$10$RgYk6ETIYcFxVTNGUzAQDuSz3DSN/z1aJ7D5BoiQA4pi/XlRI2p2C', ''),
(16, 'nunu', 'nunu@gmail.com', 'nunu', '29ee61aac4800e9c0dea', '$2y$10$xJ/pSKEopzPXkM0toLvRu.aSJ8mMsIaL0/HNh4Gbm6vuCJlamBaVi', ''),
(17, 'yoga', 'yoga@gmail.com', 'huhuhu', 'c91e9cee5e6e0192c269', '$2y$10$K7yAZ6Aq1pvcUT3PdHdaT.he2zgQqN2mQXrb.7mSgF0yGLOtQZ44u', ''),
(19, 'admin', 'adminadmin@gmail.com', 'admin', 'd9d7efb8bf709b11e45f', '$2y$10$scV9kEEmTjuqXGSZ9smYU.EP/3mhS/oTLxPrZLzd7Ju9LianBjpxi', 'admin'),
(20, 'eri', 'erieri@gmail.com', 'eri', 'ecaa67f54a3f97f32a69', '$2y$10$vL0d9ur1WPte2GxcbuDjgO6.9titup6b7Fwa.YJ0VulmNj13F.uua', ''),
(21, 'roni', 'roni@gmail.com', 'roni', '8819cce797e2c6ac63bb', '$2y$10$AXeR3As8YWDscedfXvORveSqkd6KyakG0PHYJ97l4I1rMVVjI/DZC', ''),
(22, 'koko', 'koko@gmail.com', 'koko', '4c5f157c3740b25af2f6', '$2y$10$Lg5K6/MfJWgHZoW3MDGA6eXzWMeD672Rs/dOeUSZ.OKPOLWjpLioq', ''),
(23, 'indri', 'indri@gmail.com', 'indri', 'f4f70eafe1a9cd8aa084', '$2y$10$lOMmtp3nb2tQN/WRaxwY9uivpJRJS48CeS.Rv0naZwtpL2/CHg2GC', 'user'),
(24, 'adminn', 'adminadminadmin@gmail.com', 'adminn', 'ac0b08bd441683b5c0c6', '$2y$10$NZKmdZfdKIZZ.FkUqF3oI.aoFKAf4whytfNNBVJB/x2kqhYOuamUG', 'admin'),
(25, 'admin3', 'admin3@gmail.com', 'admin3', '55adc0f6a46e957b029a', '$2y$10$F7rlZfdJ.Kpbunhtedj38OyoHZ9fifc42uObxdTaGU1wyXAHMTwnS', 'admin'),
(26, 'lulu', 'lulu@gmail.com', 'lulu', 'e7a471da61af21234a78', '$2y$10$RK48mEGo0ePTGtiQ3G.ELOweQPD.KTwU0eQugnolYWwvj.yyw1Aiy', 'user'),
(27, 'admingilang', 'admingilang@gmail.com', 'admingilang', 'd2c00bceb7a4a10181f8', '$2y$10$n0hFvM6Ipuo7MQ4sBJw3..0abfFq3pP55eOLqI7fVpPfbreUwH44y', 'admin'),
(28, 'micel', 'micelmarcel@gmail.com', 'micel', '6eb5575b8923a7441848', '$2y$10$mA7jR48kh/K2R9/6KV.CFegBwYMMsnJP1VTVcXFC1LfNoqpIM/mvi', 'user'),
(29, 'adminnunu', 'adminnunu@gmail.com', 'adminnunu', '5f67dde46c15047ae3b0', '$2y$10$VA0PxSu3cE2PRODlkJzLE.s.8oDtk.as1xd67D9HMKm740g0rR3TG', 'admin'),
(30, 'admineri', 'admineri@gmail.com', 'admineri', 'd703474c3d08517b546c', '$2y$10$VYkluCVtgCLHQ0M8Kt4UX./FcIBre2bIje3bgsp04OlHAM8YZl4pG', 'admin'),
(31, 'adminroni', 'adminroni@gmail.com', 'adminroni', '2aa4584dd773d130fbf1', '$2y$10$7A2JUegkoR6RqGHVX6RWGuSBN2ZaYeWwDvHVHzAwxk3/W6ueLQvky', 'admin'),
(32, 'adminudin', 'adminudin@gmail.com', 'adminudin', 'b66a714461e0fc812126', '$2y$10$ffsiG3QxIM5vnomD/mkDAuUVUErCnixk8s8WNrQedFgux/ZMq7dZq', 'admin'),
(33, 'adminbudi', 'adminbudi@gmail.com', 'adminbudi', '48c80d28563cd2b44753', '$2y$10$fPPkYtKaKMr5TEV6D1b/Ye9I/hupTl2a3Yn5Mte6BXcRRG77LScai', 'admin'),
(34, 'admingti', 'admingti@gmail.com', 'admingti', '5ba8963e282f1944857f', '$2y$10$EEQQUWTO7Zn2XNIgrtZ19eIRGX8KBYGN1uQ/l0bOhS2YfAmCQPMxS', 'admin'),
(35, 'admincicak', 'admincicak@gmail.com', 'admincicak', '2baac647f0d123a1ad39', '$2y$10$DpT0LDOCOMRqpFa7MsP4weMXleKodz.mdQ02FzJwnVOPjd3T9jGoW', 'admin'),
(36, 'laura', 'laura@gmail.com', 'laura', 'f3308366786dc53bef53', '$2y$10$wJrrLzPVg7V0s3F.DqMJq.r.YpoHhH5pOSIezRFwTcaa40VDobXsC', 'user'),
(37, 'julia', 'julialia@gmail.com', 'julia', '44d350052d51e9603c0d', '$2y$10$CjKre06DVPG0tKBZR.IFcuDAmEp4Wa1Pi6.JtXjWWgM1NmD5CApLO', 'user'),
(38, 'adminy', 'adminy@gmail.com', 'adminy', 'dffb923ab4ca708773ae', '$2y$10$W1emTvKcC8ggtPzQAAGZBuS0d4Kv0C7xzj.ScRZHMs59A4cNdQ3kS', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`code_car`);

--
-- Indeks untuk tabel `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`idemployee`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`car_code`);

--
-- Indeks untuk tabel `rental_order`
--
ALTER TABLE `rental_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `rental_order`
--
ALTER TABLE `rental_order`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
