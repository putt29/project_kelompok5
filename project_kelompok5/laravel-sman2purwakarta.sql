-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jul 2024 pada 07.18
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-sman2purwakarta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `judul`, `slug`, `image`, `desc`, `created_at`, `updated_at`) VALUES
(2, 'SMANDA Berbagi', 'smanda-berbagi', '1721407106.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<span style=\"color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px;\">SMANDA berbagi merupakan kegiatan rutin yang dilakukan oleh SMAN 2 Purwakarta yang dilaksanakan setiap hari jumat. Pada kegiatan ini, peserta didik diminta untuk membawa makanan dan kemudian dikumpulkan, dan dibagikan kepada masyarakat dilingkungan sekolah SMAN 2 Purwakarta</span>\n', '2024-07-19 09:36:52', '2024-07-19 21:38:32'),
(3, 'Gemes / Gerakan Memungut Sampah', 'games-gerakan-memungut-sampah', '1721407451.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<span style=\"color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px;\">Menjaga lingkungan sekolah merupakan tanggung jawab bersama. Salah satu kegiatan dalam menjaga lingkungan sekolah adalah dengan melakukan gerakan memungut sampah. Gerakan Memungut Sampah ini diinisiasi oleh Dinas Pendidikan Jawa Barat melalui Cabang Dinas Pendidikan (Cadisdik) Wilayah IV Jawa Barat. Diharapkan peserta didik dapat menghargai lingkungan dan dapat diimplementasikan pada lingkungan rumah masing-masing.</span>\n', '2024-07-19 09:44:11', '2024-07-19 21:38:03'),
(4, 'Panen Karya Kelas X', 'panen-karya-kelas-x', '1721407540.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<span style=\"color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px;\">SMAN 2 Purwakarta melaksanakan panen karya, dengan tema \" Gaya Hidup Berkelanjutan\", acara ini dilaksanakan oleh kelas X, XI dan XII. Kelas X melaksanakan kampanye bertemakan lingkungan hidup, kelas XI melaksankan Ecoprint, dan Kelas XII melaksanakan Live cooking masakan nusantara.</span>\n', '2024-07-19 09:45:40', '2024-07-19 21:37:12'),
(5, 'Akasi Donor Darah Bersama PMI Purwakarta', 'aksi-donor-darah', '1721407626.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<span style=\"color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px;\">Sma Negeri 2 Purwakarta, menyelenggarakan aksi donor darah bersama PMI Purwakarta. Aksi ini diikuti oleh para Guru, Staff TU, serts tak lupa peserta didik SMAN 2 PURWAKARTA.</span>\n', '2024-07-19 09:47:06', '2024-07-19 21:36:37'),
(6, 'Pelepasan Mahasiswa P3K UPI SMAN 2 Purwakarta', 'pelepasan-mahasiswa-p3k-upi-sman-2', '1721408045.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<p>Purwakarta melaksanakan pelepasan mahasiswa UPI yang telah melaksanakan PPL dari bulan Oktober 2023</p>\n', '2024-07-19 09:54:05', '2024-07-19 21:35:49'),
(7, 'Exgreet SMAN 2 Purwakarta', 'exgreet-sman-2-purwakarta', '1721408125.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<p>OSIS SMAN 2 Purwakarta menyelenggarakan pekan olahraga antar kelas, kegiatan ini diberi nama EXGREET</p>\n', '2024-07-19 09:55:25', '2024-07-19 21:35:14'),
(8, 'Workshop Peningkatan Kompetensi Guru', 'workshop-peningkatan-kompetensi-guru', '1721408404.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<h1 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; font-size: 32px; font-family: Roboto, sans-serif; font-weight: 600; line-height: 1.1; color: rgb(1, 30, 64);\"><span style=\"color: rgb(128, 128, 128); font-size: 12px; text-align: justify; background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight);\">SMAN 2 Purwakarta mengadakan In House Training (IHT) yang merupakan agenda rutin setiap memulai semester yang baru. IHT adalah pelatihan internal sekolah untuk meningkatkan kompetensi Pendidik dan Tenaga Pendidik.</span><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Kegiatan ini sangat diperlukan untuk diberikan kepada pendidik dan tenaga kependidikan sebagai bagian pendidikan berkelanjutan. Hal ini pun sangat dibutuhkan untuk menjaga kualitas proses belajar mengajar dalam mengimplementasikan Kurikulum Merdeka serta untuk memaksimalkan kompetensi Guru melalui Platform Merdeka Mengajar (PMM)</p><h1 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; font-size: 32px; font-family: Roboto, sans-serif; font-weight: 600; line-height: 1.1; color: rgb(1, 30, 64);\"><span style=\"color: rgb(128, 128, 128); font-size: 12px; text-align: justify; background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight);\"><br></span><br></h1></h1>\n', '2024-07-19 10:00:04', '2024-07-19 21:34:46'),
(9, 'Penyaluran Donasi Bencana Alam Tegal Waru', 'penyaluran-donasi-bencana-alam-tegal-waru', '1721408517.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<h1 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; font-size: 32px; font-family: Roboto, sans-serif; font-weight: 600; line-height: 1.1; color: rgb(1, 30, 64);\"><span style=\"color: rgb(128, 128, 128); font-size: 12px; text-align: justify; background-color: var(--bs-card-bg); font-weight: var(--bs-body-font-weight);\">Keluarga besar SMAN 2 Purwakarta melakukan gerakan Aksi Solidaritas SMANDA PEDULI dengan menggalang donasi dan menyalurkan hasil donasi dalam bentuk sembako untuk para korban bencana alam tanah longsor yang terjadi di Tegalwaru Purwakarta.</span><br></h1>\n', '2024-07-19 10:01:57', '2024-07-19 21:33:47'),
(10, 'Sosialisasi Penjurusan Kelas X', 'sosialisasi-penjurusan-kelas-x', '1721408587.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">SMAN 2 Purwakarta melaksanakan sosialisasi program sekolah yang dihadiri oleh orang tua peserta didik kelas X. Kegitan ini bertujuan untuk memperkenalkan orang tua kepada lingkungan sekolah, program pembelajaran peserta didik kelas X di semester genap yang berbasis kurikulum merdeka, serta membangun silaturrahmi pendidikan yang kuat antara sekolah dan orang tua peserta didik.<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Salah satu informasi yang disosialisasikan kepada orang tua peserta didik kelas X yaitu mengenai persiapan pemilihan jurusan untuk fase F, informasi mata pelajaran pilihan yang ada di SMAN 2 Purwakarta dan juga mengenai korelasi mata pelajaran pilihan dengan program studi di jenjang selanjutnya.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Hal tersebut menjadi penting untuk disosialisasikan, diketahui dan dipahami oleh orang tua peserta didik sehingga semua informasi yang telah disampaikan ini diharapkan dapat membantu orang tua merasa lebih akrab dengan lingkungan sekolah dan meningkatkan kepercayaan mereka terhadap institusi pendidikan di SMAN 2 Purwakarta.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Dengan adanya kegiatan sosialisasi program sekolah ini kami semua berharap dapat menciptakan lingkungan pendidikan yang inklusif dan saling mendukung, di mana orang tua dan sekolah bekerja bersama-sama untuk mencapai kesuksesan peserta didik SMAN 2 Purwakarta.</p></p>\n', '2024-07-19 10:03:07', '2024-07-19 21:32:46'),
(11, 'Exploring Renewable Energy: Studium General at Sman 2 Purwakarta', 'exploring-renewable-energy-studium-general-at-sman-2-purwakarta', '1721408675.jpg', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px;\">Purwakarta, Indonesia - Dalam upaya untuk memperluas pemahaman siswa terhadap isu-isu energi terbarukan, Sekolah Menengah Atas Negeri 2 Purwakarta menyelenggarakan sebuah Studium General yang bertema \"Eksplorasi Energi Terbarukan.\" Acara ini merupakan langkah signifikan dalam mengajarkan siswa tentang pentingnya beralih ke sumber daya energi yang ramah lingkungan dan berkelanjutan.<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px;\">Studium General adalah forum diskusi terbuka yang dirancang untuk memperkenalkan siswa pada berbagai topik dengan melibatkan para ahli di bidangnya. Pada kesempatan ini, siswa Sman 2 Purwakarta khususnya kelas X memiliki kesempatan untuk mendalami pengetahuan mereka tentang energi terbarukan dengan bimbingan dari seorang narasumber yang sangat berkompeten.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px;\">Narasumber utama acara ini adalah Bapak Dr. Cuk Supriyadi Ali Nandar, Kepala Pusat Riset Konversi dan Konservasi Energi Badan Riset dan Inovasi Nasional (BRIN). Dr. Cuk Supriyadi Ali Nandar adalah seorang ahli di bidang energi dan memiliki pengalaman luas dalam penelitian dan pengembangan solusi energi terbarukan.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px;\">Pada sesi pembukaan, Dr. Cuk Supriyadi Ali Nandar memulai presentasinya dengan memberikan gambaran umum tentang situasi energi global saat ini. Ia membahas tantangan utama yang dihadapi dunia dalam hal pemenuhan kebutuhan energi, sumber daya energi yang terbatas, dan dampak negatif penggunaan bahan bakar fosil terhadap lingkungan.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px;\">Selanjutnya, Dr. Cuk Supriyadi Ali Nandar memperkenalkan konsep energi terbarukan dan berbagai jenisnya, seperti energi surya, angin, hidro, dan biomassa. Ia menjelaskan bagaimana sumber daya ini dapat diandalkan dalam jangka panjang tanpa merusak lingkungan, sejalan dengan upaya global untuk mengurangi emisi gas rumah kaca.</p></p>\n', '2024-07-19 10:04:35', '2024-07-19 10:04:35'),
(12, 'Menciptakan Masa Depan Hijau Dengan Proyek P5 Energi Terbarukan', 'menciptakan-masa-depan-hijau-dengan-proyek-p5-energi-terbarukan', '1721408776.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">SMAN 2 Purwakarta: Menciptakan Masa Depan Hijau dengan Proyek P5 Energi Terbarukan<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Sekolah Menengah Atas Negeri (SMAN) 2 Purwakarta telah menjadi pusat perhatian dengan langkah maju mereka dalam mengadopsi teknologi terbarukan untuk memenuhi kebutuhan energi mereka. Melalui proyek P5 (Panen Karya Kelas Dunia), sekolah ini telah merancang dan mengimplementasikan solusi energi terbarukan yang inovatif untuk menciptakan masa depan yang lebih hijau dan berkelanjuta</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Mengenali Kebutuhan Energi yang Berkelanjutan</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Dengan meningkatnya kesadaran akan pentingnya menjaga lingkungan dan beralih ke sumber energi terbarukan, SMAN 2 Purwakarta mengambil langkah proaktif untuk menjadi bagian dari solusi. Mereka menyadari bahwa pendidikan tentang energi terbarukan tidak hanya tentang belajar di dalam kelas, tetapi juga tentang menerapkannya dalam kehidupan sehari-hari.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Proyek P5: Mengubah Sekolah menjadi Model Energi Hijau</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Proyek P5 di SMAN 2 Purwakarta difokuskan pada implementasi teknologi terbarukan di lingkungan sekolah. Salah satu langkah terpenting dalam proyek ini adalah pemanfaatan energi surya. Panel surya dipasang di atap gedung sekolah untuk menghasilkan listrik yang ramah lingkungan. Langkah ini tidak hanya mengurangi ketergantungan pada sumber energi fosil, tetapi juga memberikan pelajaran praktis kepada siswa tentang pentingnya energi terbarukan dalam kehidupan sehari-hari.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">### Menciptakan Kesadaran Lingkungan di Kalangan Siswa</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Selain mengurangi jejak karbon sekolah, proyek P5 juga bertujuan untuk mengedukasi siswa tentang pentingnya energi terbarukan dan perlunya pelestarian lingkungan. Melalui program-program edukasi dan kegiatan-kegiatan sosial, siswa diajak untuk menjadi agen perubahan dalam menjaga lingkungan hidup.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Mendorong Inovasi dan Kreativitas</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Proyek P5 di SMAN 2 Purwakarta juga memberikan kesempatan bagi siswa untuk mengembangkan kreativitas dan inovasi mereka. Mereka didorong untuk berpartisipasi dalam proyek-proyek penelitian dan pengembangan teknologi terbarukan, sehingga menciptakan generasi yang terampil dalam menghadapi tantangan energi masa depan.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Menuju Masa Depan yang Lebih Hijau</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Dengan proyek P5 ini, SMAN 2 Purwakarta telah membuktikan bahwa sekolah dapat menjadi agen perubahan dalam mendorong penggunaan energi terbarukan dan pelestarian lingkungan. Langkah-langkah ini tidak hanya menciptakan lingkungan belajar yang lebih hijau, tetapi juga membekali siswa dengan pengetahuan dan keterampilan yang diperlukan untuk menghadapi tantangan energi di masa depan.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Dengan semangat inovasi dan kesadaran lingkungan yang terus tumbuh, SMAN 2 Purwakarta memberikan contoh yang inspiratif bagi sekolah-sekolah lain di seluruh negeri untuk mengikuti jejak mereka dalam menciptakan masa depan yang lebih hijau dan berkelanjutan.</p><p></p><p></p></p>\n', '2024-07-19 10:06:16', '2024-07-19 22:15:06'),
(13, 'Bazar Prakarya Dan Kewirausahaan SMAN 2 Purwakarta', 'bazar-prakarya-dan-kewirausahaan-sman-2-purwakarta-menyajikan-ragam', '1721408860.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Bazar Prakarya dan Kewirausahaan SMAN 2 Purwakarta: Menyajikan Ragam Makanan Internasional<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Kesibukan dan semangat kreatifitas memenuhi lorong-lorong SMAN 2 Purwakarta saat sekolah menggelar acara Bazar Prakarya dan Kewirausahaan. Acara tahunan yang ditunggu-tunggu ini memberikan kesempatan bagi siswa untuk mengekspresikan bakat mereka dalam bidang kewirausahaan dengan menyajikan makanan insternasional yang lezat dan menarik.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Merayakan Keragaman Budaya Melalui Makanan</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Bazar Prakarya dan Kewirausahaan kali ini menampilkan makanan dari berbagai belahan dunia, mencerminkan keragaman budaya yang ada di lingkungan sekolah. Dari hidangan klasik hingga kreasi modern, pengunjung diajak untuk menjelajahi cita rasa dari berbagai negara tanpa meninggalkan area sekolah.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Kreasi Makanan Kreatif dari Siswa</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Siswa SMAN 2 Purwakarta menunjukkan keterampilan dan kreativitas mereka dalam menyajikan makanan internasional. Mulai dari sushi Jepang yang disajikan dengan twist lokal, hingga burger Amerika dengan tambahan bumbu Indonesia, setiap hidangan memancarkan sentuhan unik dari para pembuatnya.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Peluang Kewirausahaan bagi Siswa</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Bazar ini bukan hanya tentang mencicipi makanan lezat, tetapi juga tentang memberikan kesempatan bagi siswa untuk belajar tentang kewirausahaan. Siswa yang berpartisipasi dalam acara ini tidak hanya mengelola stan mereka sendiri, tetapi juga belajar tentang manajemen bisnis, pemasaran, dan kerja tim.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Menyatukan Komunitas Sekolah</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Bazar Prakarya dan Kewirausahaan menjadi momentum yang sempurna untuk menyatukan komunitas sekolah. Siswa, guru, dan orangtua berkumpul untuk menikmati makanan, berbelanja, dan mendukung usaha kreatif siswa.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Mendorong Inovasi dan Kreasi</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Acara ini tidak hanya menginspirasi siswa untuk menjadi kreatif dalam memasak, tetapi juga mendorong mereka untuk berpikir di luar kotak dalam menjalankan bisnis. Dengan menciptakan dan menjual makanan insternasional, siswa belajar tentang keanekaragaman budaya, kepemimpinan, dan keterampilan berwirausaha yang berharga.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Membawa Inspirasi untuk Masa Depan</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Bazar Prakarya dan Kewirausahaan SMAN 2 Purwakarta bukan hanya sekadar acara tahunan, tetapi juga wadah untuk melahirkan pemimpin masa depan dan pengusaha muda yang inovatif. Melalui bakat dan kreativitas siswa, sekolah ini terus memupuk semangat kewirausahaan dan merayakan keberagaman budaya dalam lingkungan pendidikan mereka.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: none; color: rgb(128, 128, 128); font-family: Roboto, sans-serif; font-size: 12px; text-align: justify;\">Dengan keberhasilan acara ini, SMAN 2 Purwakarta telah membuktikan bahwa melalui inovasi dan kerja keras, siswa dapat mengubah ide menjadi kenyataan dan menciptakan peluang untuk masa depan yang cerah.</p><p></p><p></p></p>\n', '2024-07-19 10:07:40', '2024-07-19 22:14:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_11_160204_create_blogs_table', 1),
(5, '2024_07_13_095256_create_videos_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1roWu6sYhPO3Y9N7zNcOXdET4cSEKfHmMu2eh3Na', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2g2Y3VhWTFyVkZoQ0p6WkJSbVlIWlBvY1IwWTJBemkySjdJdWdvOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721449049),
('2dJSotemIQGnhzaqFtL4QZoAyIZkSAVO6T4HxN9F', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1dwekhYODNtekkyRnBJaDNnTTJ4cHNzaFlsbWJTTUl5eEF3aTVxcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721448763),
('2tDuHJxVianEPP8DLmxMf7ClgIh4oKXka2Iv0egw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3V1M2MwZTI2alkzdUNOMlh2UlcxUG92TE56OTJjRWlQdml0MUV6VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721447026),
('2WsE94NJMtyri6FD5hRrB1jvSjDYnX9N1vKxTWGR', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM01PZDRranhONUJtSUNyNmowSXJRdzJ6Vk9IbGJHNk96bmlNcmdDZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721452100),
('45BTbDXOK1XBfKJayR4SXHjtyCNFUpVHmfEqdf5J', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzQ0WXVQZktNZmU1RGRGQVdKYXAwcWdqVXdZeDJaQzRhR2FmNFpqWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721449696),
('4TwEhxBbHRKVZA2dbkmfzqpArbOdTftOAE26VcKC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDNwdkdDc1dHRDlZcXJuVk8xUDdhTTI4dW1TV1V2bG9VdmRZMmphTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721452012),
('8PFkY9yU723yMauDUhOl30t6bNSX0LuxUYSS0Mdb', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblBueDh2T2FrVVpjaDltUlp5bmhiSFJDNE9aTnh3Z0RmbklRcTVsSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721451915),
('aGlr5hfv2x5bgqdtAjAmNbcCpWxl8qpm8p4cfo8t', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNk9RNmFIVWFCZk9xMnAyT1dzQUg5Z2J0Wm1BaVBNQk0zSW83b2hxcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721452032),
('BaXdLSC6JenNn5fpmdsiC3DAkePQD11uzyZasxnq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFUyRE9kWmNsd1VOclRJRUd0cFhFUVkyT2psaUE0Z1hiZ2NuSXdUayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721449121),
('BnPBpZbzLs3SBJn7m1RxciVB7E2FBVl0VoTvC4pq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1hwVVhmR2hzRmNuUlIwTGd1bU1idzR3UmZPSlJxUDgxald5bUY2aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721451143),
('DFjsufBuTLBYyY7VL4KC0hBESU3X5ZvxIGyK7goo', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzF0VWFHUHFkRDdFUEtLc013eHBPa1B5T1cwVDlySzkwamVKQ3RBUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721447252),
('doDSRDJEy9mbhmVEHHfC6lLdH631wUgsKaztoQ2h', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTdhdGUyc3huZGtRbHM5OEVwa2VTdXg1Yml1czEwTkVjeFRzVThMTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721448472),
('giwxFSjhcrLkJokqyUf4GV4NoOpuWGaWXtHXOwWA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3J3eE9GeUV3bVhic3NRam5MSTFXTlpQY0lpOVV1NFFOeUdxTW9rWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9rZWdpYXRhbiI7fX0=', 1721452698),
('HHnDEspi5dNQsR17XlnmM7KvSS9AlVmG8TSAM5Ph', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDdFNklkclJpNWRTazZ4b0pXR0ppT1RvbW9GZU9YdlA5QUpEU2dFSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721448917),
('hlwkGHMaBADCwBQiu1OohjB3p1l99nXHoAXMiMRD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVG9JYkNYcVhyVGZYSEZydHNzUXhiWVFCME5wM0NSSHhFYlN6d0VDcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721451614),
('HQVSIjMGK8qEaOYlzf2sBknt6swOW17DgfoE8vHy', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDlXdWhRMWxrZUxweHNEWEE1aXNaZGd3WjdkN1BxMm1DeWp3b01SSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721451352),
('ic1P9U7IDGHGGBTds3ERZBbWjFMvi2ircSM5Ktyv', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUgwdlRFZzlwdU9MWFN2eVNUTkRPaDI3U3FqZlRwTm9UM0duOEp3MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721451550),
('jVyqB0M9ktXtQf7eIgNdAr9rMYelZXqD7dsxgGdg', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFE4bGQ0SUw4RFhjcWZMYkVFNWZIblI1MVB5NHVGZUI3ajhrY25rayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721447162),
('kZEBQeMAyTSflALrypVApxt33aVqmQYJe12GA2w9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEcwWjRPbXVVQkRUMnZNbndraWF4dG5rUEhIYk5aZEtSNDY2SGRNeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721450512),
('l8Y1DJmlNbPwYVJovDUjryXjsWw4VlKuKnycEp0p', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazF5aDF0RVNUdGNQdnh5djNNQjdPdE1lUGN3djJqRjZ0N3pEbzBmbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721449148),
('miVERU7oBw3e9UTqCcgU4k7YqeqsYcEl5aOajvNh', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibW1iUkFTR3UwWldsVUZnRTZDYXdRUEdGa1FDNldaYmtFcW1KdGlVTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721451888),
('MoYU3gM1ueXLWsxTCD3pLk2ZG0tyB9WYHbWQfahZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDhFdWVkVUdzd0VMQTRVWEJrSmdjeEpLNmxnNDhaWXR0c1dLVlBMNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721448578),
('MvHhZsMzZWOzxc0yrORq9MOyx5h3WQriwe2dUd2I', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjlERm03Z0hWUWY0QW1Lc3NvcHVkdHhyWEE1WkpBNHNSVG9qQWdlcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721450577),
('NNeanh0RuNzEu81OL1lyLdFYsu5LxjcnePuCNWvT', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWxrQ1RVc1ZLSFh6eHlPRzJxOWQzeVk3ZXQwRWF1dHdPRTRiRUxnRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721449222),
('NOIMb6t2VgDvbiFIYl4ZnHC6MzCFBuhzZQO19G4j', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDZwTmllR3oyYXNwSGVYNTQ3WmVqUzNEYjJHQldoWE1YUW54RWRQTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721450429),
('on5lF9ByB4KMIu4rLhMo8i1t3g3JpIKsfhB1HkGE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGtvblV5V1JhQ04xMWFvYlVDQVdvWjRrMUlPZTkxUHdqMElLdk5IcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721448664),
('qvdO0ISOAycVz5eJ9rnQxKS3HZyavTUISDxmOgyx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnM5YjVjeUx1NkNjRkV6cUI4dTZ6Wkh5dTVEVnZlMEpacWEyczRQZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721447290),
('RBoK76ohKONUqDxMXtXu48hm1XJkPbX3zzEoYdkA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3U3R2lBeG5vVWNHZVlTVzBoSWx1UmpVRVhlSjFkWWtRc1BSaEhFRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721451253),
('sLuoV89g250Q3FHeZLPUxXWd78aYcmRdT4c6nUIZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0ljdU51NUZrVUo2c1hoMDFtZUVqdnRTWXN2RmhKaTVNelZBbHNaTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721449319),
('So0aY1A5tOWe1AmY92JgCNfWlPQnJlAy1zj9g0QX', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHF3ZW5GRmNIaXRFTGdMOGNLM3ExMWJxQ3h1SjVzR2xzeEg3cDRWaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721451805),
('UCkZOVAD0h9VwsX3EhRnX5xEQdd2kCGnPCzcQ4yW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1d6NEgxMjhza2RPcm9UZGRqeE51RGJ0U1hyR1BVZzZsTkFEN2U2TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721449671),
('VmGJim1wpP8CsGqCvU21ZkmF4NJTC9BsBr1XWqdm', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTR4b0FweXA2UVBvaEdPQk9YUzlwRjgwam1EbGM1Vnl5WmdyMUhGViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721450538),
('VRqEc097piFmGLg9s93MAEteIDIENnaSH0N8NF3T', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTF5NHR2Y1FINFFtUTZtRUNMbml3YnEwdk91QlNRVURvVFNaaHI5cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721449625),
('w2eRrXUJdYIVeAvnAXOPdxmh0ZvBLeIJT7IROPHq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEZreGFjUlFSVElPVXdaaGJEc0k1Mm8xYThaYVpkeEN0d3h4QzMxaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721446107),
('wWK20hY0x52RCFufqM9Tq3vvKN0yuYqc0PhgNroF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnM1Umc5Rjl4TWwxbG0yaDlEVEV5bGtaaThwS3FKY0xJQWVXYnJuVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721452090),
('XDQrs63WC2cL1Sqpr5kDRsF4UnbWbwIUUoA6lioC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGE1MGFPRWtob2ZjbllxZWc0dzdzbTd2VWx6MzlLRmk3R2FSZEUxSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721448632),
('Y4jiyIvLBOFxRWpr13IhXwM4R59VdpLdnO33nBTi', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkdmcEZSWUFhOU5XV1lSc0pUaUo4c2VOOXI3Z3kyczczNVhmS2IwVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721451829),
('ZBu1fpuSRWsLdDnEtz9U2Xb5yvrN9mhyW8UJsheK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUg5M0J4MEEyZ25jbUZZVkZKdHhHamhhN2h3WjFETm54YXFZdUx3RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721448344);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kelompok-5', 'admi5@gmail.com', NULL, '$2y$12$g1/KjkfLlV/chk6OGhASweI/I9ug4mYeSOZlJ5H.Hi42vLWa4Ojqu', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `youtube_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `videos`
--

INSERT INTO `videos` (`id`, `judul`, `youtube_code`, `created_at`, `updated_at`) VALUES
(1, 'TARI KREASI_Anastasya Andrianie putri_SMAN 2 Purwakarta_Kabupaten Purwakarta_Jawa Barat', 'T2wHEIMNJ5o', '2024-07-19 09:05:22', '2024-07-19 09:05:22'),
(2, 'Festival Film Purwakarta \"Adab\" SMAN 2 Purwakarta', 'kifQvuDS3O4', '2024-07-19 09:06:49', '2024-07-19 09:06:49'),
(6, 'Piala Gubernur Pelajar Juara - Tari Tradisional - SMAN 2 PURWAKARTA', 'VABHIkZgUBQ', '2024-07-19 09:10:05', '2024-07-19 09:10:05'),
(9, 'PIALA GUBERNUR PELAJAR JUARA - PASKIBRA - SMAN 2 PURWAKARTA', 'w9HuA12qhx0', '2024-07-19 09:14:43', '2024-07-19 09:15:04'),
(10, 'PIALA GUBERNUR PELAJAR JUARA - MODELLING - SMAN 2 PURWAKARTA', 'Q2_FvVCpIXA', '2024-07-19 09:16:58', '2024-07-19 09:16:58'),
(11, 'earning Experience - SMA NEGERI 2 PURWAKARTA', 'aU8V4JVcFxU', '2024-07-19 09:18:06', '2024-07-19 09:18:06'),
(12, 'SMANDA RELIGI', 'Gw_m2Ni3Fao', '2024-07-19 09:19:23', '2024-07-19 09:19:23'),
(13, 'SMAN 2 - TEATER', 'wQ71TJ5P-ZM', '2024-07-19 09:20:30', '2024-07-19 09:20:30'),
(14, 'Home Group SMAN 2 PURWAKARTA', 'XtfzvtEt1ok', '2024-07-19 09:21:31', '2024-07-19 09:21:31'),
(15, 'SMANDA LITERASI', 'czOxHOhqo1Q', '2024-07-19 09:22:29', '2024-07-19 09:22:29'),
(16, 'SMAN 2 PURWAKARTA - QUILLEN', 'ik5nwxxocwY', '2024-07-19 09:23:33', '2024-07-19 09:23:33'),
(18, 'Ikrar Netralitas ASN SMAN 2 PURWAKARTA', 'eYqulFMCINs', '2024-07-19 09:26:22', '2024-07-19 09:26:22'),
(19, 'UPACARA HUT RI Ke 78', '60sI8xZSGMA', '2024-07-19 09:28:10', '2024-07-19 09:28:10'),
(20, 'KRIYA_Puspa Atikan Madani_SMAN 2 Purwakarta_Kabupaten Purwakarta_Jawa Barat', 'XWnslpFzglY', '2024-07-19 09:29:16', '2024-07-19 09:29:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
