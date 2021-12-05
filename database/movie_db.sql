-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 05 Des 2021 pada 14.45
-- Versi server: 5.7.24
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `nama_genre` varchar(100) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `genre`
--

INSERT INTO `genre` (`id_genre`, `nama_genre`, `deleted_at`) VALUES
(1, 'Sci - Fi', NULL),
(2, 'Adventure', NULL),
(5, 'Martial Arts', NULL),
(6, 'Action', NULL),
(7, 'Horror Komedi', NULL),
(8, 'test', '2021-11-16 16:53:53'),
(9, 'Romance', NULL),
(10, 'Biografi', NULL),
(11, 'Cartoon', NULL),
(12, 'Komedi', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(11) NOT NULL,
  `nm_modul` varchar(255) DEFAULT NULL,
  `judul_modul` varchar(255) NOT NULL,
  `icon_modul` varchar(255) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nm_modul`, `judul_modul`, `icon_modul`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'genre_list', 'Movie Genre', 'list', NULL, '2021-12-04 04:26:25', '2021-12-04 04:26:25'),
(2, 'movie_list', 'Movie Data', 'film', NULL, '2021-12-04 08:51:59', '2021-12-04 08:51:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul_role`
--

CREATE TABLE `modul_role` (
  `id_modul` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `is_create` tinyint(4) DEFAULT NULL,
  `is_read` tinyint(4) DEFAULT NULL,
  `is_update` tinyint(4) DEFAULT NULL,
  `is_delete` tinyint(4) DEFAULT NULL,
  `is_save` tinyint(4) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul_role`
--

INSERT INTO `modul_role` (`id_modul`, `id_role`, `is_create`, `is_read`, `is_update`, `is_delete`, `is_save`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, NULL, '2021-12-04 05:24:24', '2021-12-04 05:24:24'),
(1, 2, 1, 1, 1, 0, 1, NULL, '2021-12-04 05:24:24', '2021-12-04 05:24:24'),
(2, 1, 1, 1, 1, 1, 1, NULL, '2021-12-04 08:52:46', '2021-12-04 08:52:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `movie`
--

CREATE TABLE `movie` (
  `id_movie` int(10) NOT NULL,
  `judul_movie` varchar(255) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `deskripsi` text,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `movie`
--

INSERT INTO `movie` (`id_movie`, `judul_movie`, `tahun`, `deskripsi`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Seperti Dendam Rindu Harus Dibayar Tuntas', 2021, 'Seperti Dendam, Rindu Harus Dibayar Tuntas bercerita tentang Ajo Kawir, seorang jagoan yang tak takut mati. Hasratnya yang besar untuk bertarung didorong oleh sebuah rahasia â€” ia impoten.', NULL, '2021-12-04 15:53:44', '2021-12-04 15:53:44'),
(2, 'Habibie &amp; Ainun 3', 2019, 'Film garapan Hanung Bramantyo ini mengisahkan mendiang Presiden Ketiga RI BJ Habibie dengan fokus kehidupan istrinya, Hasri Ainun Besari saat masa muda kepada cucu-cucunya. ... Dikisahkan sejak kecil Ainun sudah tak asing dengan dunia kesehatan karena ibunya adalah seorang bidan.', NULL, '2021-12-05 08:03:10', '2021-12-05 08:03:10'),
(3, 'Raya and the Last Dragon', 2021, 'Dahulu kala, di dunia fantasi Kumandra, manusia dan naga hidup bersama secara harmonis. Namun, ketika monster jahat yang dikenal sebagai Druun mengancam daratan, para naga mengorbankan diri mereka untuk menyelamatkan umat manusia. Sekarang, 500 tahun kemudian, monster yang sama telah kembali, dan seorang prajurit hadir untuk mencari naga terakhir dan menghentikan Druun untuk selamanya.', NULL, '2021-12-05 08:04:58', '2021-12-05 08:04:58'),
(4, 'Luca', 2021, 'Set in a beautiful seaside town on the Italian Riviera, the original animated feature is a coming-of-age story about one young boy experiencing an unforgettable summer filled with gelato, pasta and endless scooter rides. Luca shares these adventures with his newfound best friend, but all the fun is threatened by a deeply held secret: he is a sea monster from another world just below the water\'s surface.', NULL, '2021-12-05 08:06:22', '2021-12-05 08:06:22'),
(5, 'Gundala', 2019, 'Sancaka hidup di jalanan sejak ditinggal ayah dan ibunya. Menghadapi hidup yang keras, Sancaka belajar untuk bertahan hidup dengan tidak peduli dengan orang lain dan hanya mencoba untuk mendapatkan tempat yang aman bagi dirinya sendiri. Ketika situasi kota semakin tidak aman dan ketidakadilan merajalela di seluruh negeri, Sancaka harus buat keputusan yang berat, tetap hidup di zona amannya, atau keluar sebagai Gundala untuk membela orang-orang yang ditindas.', NULL, '2021-12-05 10:32:05', '2021-12-05 10:32:05'),
(6, 'The Raid 2', 2014, 'Rama, a policeman from Jakarta, goes undercover as Yuda, a ruthless prisoner, in order to to expose the corrupt police officers who have been colluding with the city\'s crime syndicates.', NULL, '2021-12-05 10:35:49', '2021-12-05 10:35:49'),
(7, 'Rudy Habibie', 2016, 'Sebuah kisah masa muda sang visioner: RUDY HABIBIE sebelum dia di kenal sebagai teknokrat dan presiden Republik Indonesia Ke-3: BJ. Habibie.', NULL, '2021-12-05 10:38:44', '2021-12-05 10:38:44'),
(8, 'Riki Rhino', 2020, 'Riki Rhino, film animasi karya anak bangsa ini mengangkat keberagaman flora dan fauna di Indonesia dengan satwa langkanya yang terancam punah. Riki, badak Sumatera muda bercula satu yang mengandalkan culanya untuk kehidupan sehari di hutan teratas Pulau Sumatera...', NULL, '2021-12-05 10:46:46', '2021-12-05 10:46:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `movie_genre`
--

CREATE TABLE `movie_genre` (
  `id_movie` int(10) NOT NULL,
  `id_genre` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `movie_genre`
--

INSERT INTO `movie_genre` (`id_movie`, `id_genre`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 6, NULL, '2021-12-04 15:53:44', '2021-12-04 15:53:44'),
(2, 9, NULL, '2021-12-05 08:03:10', '2021-12-05 08:03:10'),
(2, 10, NULL, '2021-12-05 08:03:10', '2021-12-05 08:03:10'),
(3, 2, NULL, '2021-12-05 08:04:58', '2021-12-05 08:04:58'),
(3, 11, NULL, '2021-12-05 08:04:58', '2021-12-05 08:04:58'),
(4, 11, NULL, '2021-12-05 08:06:22', '2021-12-05 08:06:22'),
(4, 12, NULL, '2021-12-05 08:06:22', '2021-12-05 08:06:22'),
(5, 6, NULL, '2021-12-05 10:32:05', '2021-12-05 10:32:05'),
(6, 6, NULL, '2021-12-05 10:35:49', '2021-12-05 10:35:49'),
(7, 9, NULL, '2021-12-05 10:38:44', '2021-12-05 10:38:44'),
(7, 10, NULL, '2021-12-05 10:38:44', '2021-12-05 10:38:44'),
(8, 2, NULL, '2021-12-05 10:46:46', '2021-12-05 10:46:46'),
(8, 11, NULL, '2021-12-05 10:46:46', '2021-12-05 10:46:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `nm_role` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id_role`, `nm_role`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, '2021-12-04 05:19:20', '2021-12-04 05:19:20'),
(2, 'Operator', NULL, '2021-12-04 05:19:20', '2021-12-04 05:19:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nm_user` varchar(255) DEFAULT NULL,
  `user_username` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nm_user`, `user_username`, `user_password`, `id_role`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 1, NULL, '2021-11-17 06:59:07', '2021-11-17 06:59:07'),
(2, 'Operator', 'operator', '827ccb0eea8a706c4c34a16891f84e7b', 2, NULL, '2021-12-04 07:48:16', '2021-12-04 07:48:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indeks untuk tabel `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indeks untuk tabel `modul_role`
--
ALTER TABLE `modul_role`
  ADD KEY `id_modul` (`id_modul`),
  ADD KEY `id_role` (`id_role`);

--
-- Indeks untuk tabel `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id_movie`);

--
-- Indeks untuk tabel `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD KEY `id_movie` (`id_movie`),
  ADD KEY `id_genre` (`id_genre`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `movie`
--
ALTER TABLE `movie`
  MODIFY `id_movie` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `modul_role`
--
ALTER TABLE `modul_role`
  ADD CONSTRAINT `modul_role_ibfk_1` FOREIGN KEY (`id_modul`) REFERENCES `modul` (`id_modul`) ON UPDATE CASCADE,
  ADD CONSTRAINT `modul_role_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`) ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id_movie`) ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_genre_ibfk_3` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
