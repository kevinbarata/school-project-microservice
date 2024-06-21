-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 05:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `study`
--

-- --------------------------------------------------------

--
-- Table structure for table `e_essay`
--

CREATE TABLE `e_essay` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `course` varchar(50) NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer` longtext DEFAULT NULL,
  `status` int(2) NOT NULL,
  `task_apply_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `task_completion_time` timestamp NULL DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `e_essay`
--

INSERT INTO `e_essay` (`id`, `teacher_id`, `student_id`, `course`, `question`, `answer`, `status`, `task_apply_time`, `task_completion_time`, `create_time`, `update_time`) VALUES
(1, 6, 6, 'Matematika', 'Jelaskan Pengertian Aljabar!', NULL, 1, '2024-06-21 02:59:06', NULL, '2024-06-21 02:59:06', '2024-06-21 02:59:06'),
(2, 6, 6, 'Bahasa Indonesia', 'Sebutkan 3 contoh lawan kata!', 'lambat-cepat, buruk-baik, lemah-lembut', 2, '2024-06-21 03:01:02', '2024-06-21 03:17:36', '2024-06-21 03:01:02', '2024-06-21 03:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `e_learning`
--

CREATE TABLE `e_learning` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `course` varchar(500) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `text` longtext NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `e_learning`
--

INSERT INTO `e_learning` (`id`, `teacher_id`, `course`, `subject`, `text`, `create_time`, `update_time`) VALUES
(1, 6, 'Matematika', 'Pengertian Aljabar', 'Apa itu Aljabar? Aljabar adalah salah satu bagian dari ilmu matematika terkait ilmu bilangan,geometri dan analisis penyelesaiannya dengan menggunakan atau mengandung huruf-huruf atau yang biasa kita sebut sebagai variabel. Aljabar berasal dari Bahasa arab yang artinya melengkapi sedangkan dalam Bahasa inggris Aljabar disebut Algebra. Muḥammad ibn Musa al-Khwarizmi adalah tokoh yang menemukan konsep aljabar di sekitar tahun 820 sehingga Muḥammad ibn Musa al-Khwarizmi dijuluki The Father of Algebra yang artinya bapak Aljabar.', '2024-06-21 00:46:20', '2024-06-21 00:46:20'),
(2, 6, 'Matematika', 'Bentuk Aljabar', 'Sebelum menyelesaikan permasalahan dengan menggunakan Aljabar, permasalahan harus diubah terlebih dahulu dalam bentuk aljabar.Hal ini dilakukan untuk mempermudah penyelesaian permasalahan. Bentuk aljabar terdiri atas suku,koefisien,konstanta, dan variabel yang nantinya dihubungkan dengan operasi penjumlahan,pengurangan,perkalian dan pembagian.', '2024-06-21 00:48:28', '2024-06-21 00:48:28'),
(3, 6, 'Matematika', 'Pengertian suku,koefisien,konstanta, dan variabel', '1. Variabel adalah lambing pengganti nilai yang belum diketahui. Variabel biasanya dilambangkan dengan huruf abjad.Variabel bisa juga dibentuk oleh dua huruf ataupun tiga huruf dan dituliskan dalam berbagai operasi hitung. Contohnya : Dalam bentuk aljabar 2x +7 Variabelnya adalah x 2. Koefisien merupakan angka yang biasanya mengiringi huruf atau variabel. Koefisien terletak didepan huruf. Contohnya : Dalam bentuk aljabar 2x +7 koefisiennya adalah 2 3. Konstanta, merupakan angka yang terdapat dalam persamaan dan berdiri sendiri. Tidak ada huruf atau variabel yang mengikuti di belakangnya. Contohnya : Dalam bentuk aljabar 2x +7 konstantanya adalah 7 4. Suku adalah bagian dari bentuk aljabar yang dipisahkan oleh operasi hitung,yaitu: a. Suku Sejenis adalah suku-suku dalam bentuk aljabar yang mempunyai variabel yang sama, sehingga dapat dijumlahkan atau dikurangkan. Contohnya : 2x dan 4x  b. Suku Tak Sejenis adalah suku-suku dalam bentuk aljabar yang mempunyai variabel yang berbeda. Contohnya : 2x dan 4y', '2024-06-21 00:50:43', '2024-06-21 00:50:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `e_essay`
--
ALTER TABLE `e_essay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e_learning`
--
ALTER TABLE `e_learning`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `e_essay`
--
ALTER TABLE `e_essay`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `e_learning`
--
ALTER TABLE `e_learning`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
