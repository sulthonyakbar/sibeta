-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 04:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sibeta`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryId`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Prestasi', NULL, NULL),
(2, 'Inovasi', NULL, NULL),
(3, 'Pendidikan', '2023-07-12 06:10:25', '2023-07-12 06:13:57'),
(5, 'Awards', '2023-07-12 06:11:59', '2023-07-12 06:11:59'),
(6, 'Event', '2023-07-12 06:12:43', '2023-07-12 06:12:43'),
(7, 'Hiburan', '2023-07-12 06:16:07', '2023-07-12 06:16:07'),
(8, 'Lifestyle', '2023-07-12 07:16:03', '2023-07-12 07:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_11_041424_create_categories_table', 1),
(6, '2023_07_11_041430_create_news_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsId` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsId`, `title`, `content`, `image`, `categoryId`, `userId`, `created_at`, `updated_at`) VALUES
(4, 'Menariknya Era Teknologi Modern: Tantangan dan Solusi untuk Sukses', 'Di era teknologi modern yang penuh dengan teknologi canggih, kehidupan kita telah mengalami transformasi luar biasa. Melansir data dari Badan Pusat Statistik Indonesia tahun 2020, Indonesia mencatat pertumbuhan pesat dalam penggunaan teknologi dan internet selama lima tahun terakhir. Bahkan, angka penggunaan internet di rumah tangga telah mencapai 78,18%, sementara pengguna telepon seluler meningkat hingga 62,84%.\r\n\r\nFenomena ini menggambarkan betapa besar minat masyarakat terhadap teknologi dalam kehidupan sehari-hari. Namun, di balik segala manfaatnya, teknologi juga menghadirkan tantangan yang menarik untuk diatasi.\r\n\r\n \r\n\r\nKeajaiban Teknologi Modern\r\n\r\nDi dalam berbagai aspek kehidupan, teknologi telah membawa kemudahan yang luar biasa. Misalnya, hadirnya robot dan mesin pembantu yang dapat membantu manusia dalam melakukan pekerjaan sehari-hari. Selain itu, dengan akses internet yang meluas, kita dapat mencari informasi dalam sekejap dan berkomunikasi dengan orang-orang di seluruh dunia tanpa hambatan jarak. Tak ketinggalan, sektor pendidikan juga telah mengalami revolusi dengan metode pembelajaran yang interaktif, efektif, dan menyenangkan berkat perkembangan teknologi.\r\n\r\n \r\n\r\nSedihnya Realitas Teknologi Modern\r\n\r\nNamun, di balik kehebatannya, teknologi juga dapat menyebabkan dampak yang menyedihkan. Contohnya adalah anak-anak yang sudah terbiasa menggunakan telepon seluler sejak dini, sehingga waktu berinteraksi mereka dengan dunia nyata menjadi terbatas. Hal ini berdampak pada kemampuan komunikasi mereka, paparan informasi yang tidak sesuai usia, dan masalah kesehatan yang mungkin timbul akibat penggunaan teknologi yang berlebihan.\r\n\r\nUntuk mengatasi hal ini, orang tua harus bijaksana dalam memanfaatkan teknologi. Anak-anak perlu diperkenalkan pada teknologi, namun bukan sebagai konsumsi utama dalam kehidupan sehari-hari. Orang tua dapat mengatur waktu penggunaan “screen time” bagi anak-anak mereka. Menurut Organisasi Kesehatan Dunia (WHO), anak usia 3-4 tahun sebaiknya tidak menggunakan ponsel seluler lebih dari satu jam, dan tentunya dengan pengawasan orang tua yang penuh. Gunakan ponsel seluler sebagai alat pembelajaran interaktif yang mengenalkan hal-hal penting kepada anak-anak sambil membentuk waktu berkualitas bersama mereka.\r\n\r\n \r\n\r\nTantangan Menyeramkan di Era Teknologi\r\n\r\nEra teknologi juga membawa tantangan menakutkan, seperti penipuan, cyberbullying, penyebaran konten ilegal, serangan malware akibat kelemahan keamanan pada aplikasi, ketimpangan digital antara mereka yang mahir dan memiliki akses teknologi dengan mereka yang tidak, perubahan signifikan dalam lapangan pekerjaan yang digantikan oleh mesin, dampak lingkungan dari limbah elektronik, dan pencurian data pribadi yang disebabkan oleh godaan keuntungan.\r\n\r\nNamun, tantangan-tantangan ini dapat diatasi dengan memastikan bahwa aplikasi dan sistem yang digunakan adalah terpercaya, aman, dan dapat dipertanggungjawabkan secara hukum. Penting juga untuk tidak sembarangan membagikan data pribadi kepada orang lain, waspada saat mengisi formulir, memverifikasi sumber informasi, dan hanya mengunduh aplikasi atau sistem dari sumber resmi. Selain itu, pastikan juga untuk selalu menggunakan versi terbaru dari aplikasi atau sistem agar berjalan dengan baik.\r\n\r\n \r\n\r\nSolusi dan Langkah Positif\r\n\r\nUntungnya, ada banyak hal yang dapat kita lakukan untuk mengatasi atau setidaknya mengurangi dampak negatif teknologi di era ini. Dengan membangun lingkungan sosial media yang baik, mempraktikkan sikap toleransi dan saling menghargai, serta menggunakan teknologi dengan bijak, kita dapat membentuk masyarakat pengguna teknologi yang baik dan berakhlak tinggi. Dalam menjelajahi dunia internet, penting untuk memilih dan memilah informasi mana yang layak dilihat dan mana yang tidak. Oleh karena itu, penggunaan sistem dan aplikasi yang tepat untuk kelompok usia tertentu sangat penting agar pengguna dapat menggunakan teknologi dengan bijaksana.\r\n\r\nMenghadapi tantangan di era teknologi modern tidaklah mudah, tetapi dengan kesadaran dan langkah-langkah yang tepat, kita dapat menjadikannya era yang penuh dengan keberhasilan dan kemajuan.', 'images/jO214E45lcnQsvzRhx6DXz7G3Zar6dsLEMbw3OTZ.jpg', 2, 1, '2023-07-12 00:19:38', '2023-07-12 07:15:30'),
(6, 'Cashless Society: Memanfaatkan Era Digital untuk Mahasiswa yang Bijak', 'Di era digital yang semakin maju ini, transformasi sistem informasi telah mengubah berbagai aspek kehidupan manusia, termasuk dalam hal sistem pembayaran. Pergeseran dari sistem pembayaran tunai ke sistem pembayaran tanpa uang tunai, yang dikenal sebagai “cashless society,” menjadi fenomena yang signifikan. Di dalam konteks ini, mahasiswa sebagai kelompok aktif dalam penggunaan teknologi turut terpengaruh oleh revolusi sistem informasi yang terjadi.\r\n\r\nNamun, untuk membuat artikel ini lebih menarik, mari kita jelajahi manfaat yang lebih mendalam yang diperoleh mahasiswa dalam mengadopsi cashless society serta bagaimana mereka dapat menghadapi risikonya.\r\n\r\nKemudahan dan kenyamanan menjadi salah satu keuntungan utama bagi mahasiswa dalam menggunakan sistem pembayaran digital. Mahasiswa tidak perlu lagi membawa uang tunai dalam jumlah besar yang rawan hilang atau dicuri. Dengan menggunakan metode pembayaran digital seperti e-wallet, mahasiswa dapat melakukan pembayaran dengan mudah di berbagai tempat, mulai dari kampus, tempat makan, hingga toko online. Menurut Otoritas Jasa Keuangan (OJK), cashless society memberikan kenyamanan dan fleksibilitas dalam melakukan transaksi, yang sangat berharga bagi mahasiswa yang memiliki mobilitas tinggi.\r\n\r\nTidak hanya itu, cashless society juga memberikan kesempatan bagi mahasiswa untuk mengelola keuangan mereka dengan lebih baik. Melalui penggunaan metode pembayaran digital, mahasiswa dapat melacak pengeluaran mereka dengan lebih terperinci dan memantau keuangan secara real-time. Hal ini membantu mereka dalam merencanakan anggaran, mengontrol pengeluaran, dan membangun kebiasaan keuangan yang sehat, sebagaimana yang disebutkan dalam artikel yang diterbitkan oleh Ajaib.co.id.\r\n\r\nIndonesia sendiri memiliki beberapa layanan e-wallet populer. GoPay, OVO, dan Dana merupakan contoh e-wallet yang banyak dipilih oleh masyarakat Indonesia, termasuk mahasiswa. Mahasiswa dapat memanfaatkan e-wallet ini untuk melakukan pembayaran di berbagai tempat, mulai dari toko-toko di sekitar kampus hingga tempat-tempat wisata. Tren penggunaan e-wallet di Indonesia, sebagaimana yang dilaporkan oleh iPrice Insights pada tahun 2020, memberikan gambaran tentang sejauh mana pengaruhnya terhadap kehidupan mahasiswa.\r\n\r\nSalah satu inovasi yang menarik dalam perjalanan menuju cashless society adalah QRIS (Quick Response Code Indonesian Standard). QRIS merupakan standar pembayaran berbasis kode QR yang dikembangkan oleh Bank Indonesia. QRIS memungkinkan transaksi pembayaran yang mudah dan cepat hanya dengan menggunakan ponsel pintar. Melalui QRIS, mahasiswa dapat membayar di berbagai tempat dengan menggunakan aplikasi e-wallet yang kompatibel dengan QRIS, seperti Gopay, OVO, Dana, dan LinkAja. Implementasi QRIS di Indonesia terus berkembang dan telah mendukung pertumbuhan ekonomi digital, seperti yang diungkapkan oleh situs resmi QRIS.\r\n\r\nMeskipun cashless society menawarkan banyak manfaat, perlu diakui bahwa terdapat beberapa perdebatan mengenai penggunaan sistem pembayaran ini. Berkeluarga.id dalam salah satu artikelnya membahas perbedaan antara pembayaran tunai dan non-tunai secara detail. Walaupun sistem pembayaran digital memberikan kemudahan dan kepraktisan, pengguna juga perlu waspada terhadap potensi risiko keamanan seperti kebocoran data atau penipuan online.\r\n\r\nDi dalam konteks ini, penting bagi mahasiswa untuk menggunakan sistem pembayaran digital dengan bijak dan hati-hati. Keterampilan literasi keuangan perlu diperkuat agar mereka dapat memahami dan mengelola risiko yang terkait dengan penggunaan pembayaran digital. Pendidikan mengenai manajemen keuangan, pengelolaan data pribadi, dan keamanan siber harus menjadi bagian penting dalam kurikulum pendidikan. Sebagaimana disebutkan dalam artikel dari CSEFB Journal, pemahaman yang kuat tentang literasi keuangan membantu mahasiswa dalam menjalani kehidupan di era cashless society dengan lebih baik.\r\n\r\nDengan adanya revolusi sistem informasi yang membawa masyarakat ke era cashless society, mahasiswa memiliki kesempatan untuk memanfaatkannya secara bijak. Mahasiswa dapat menggunakan teknologi untuk mempermudah dan meningkatkan efisiensi kegiatan sehari-hari mereka, termasuk dalam hal pembayaran. Namun, mereka juga perlu tetap waspada terhadap risiko keamanan dan terus meningkatkan pemahaman mereka tentang literasi keuangan.\r\n\r\nDi dalam menjalani kehidupan di era cashless society, mahasiswa memiliki kesempatan untuk terus belajar dan mengembangkan keterampilan yang relevan dengan dunia digital yang terus berkembang. Dengan memanfaatkan keuntungan dari peralihan ini, seperti kemudahan, kenyamanan, efisiensi, dan pengelolaan keuangan yang lebih baik, mahasiswa dapat menjadi generasi yang siap menghadapi tantangan masa depan dengan percaya diri.', 'images/gsUrOZJ2z7ZhFhustTg0vBwBP6bRMHaWDwudZC0p.jpg', 8, 1, '2023-07-12 00:27:47', '2023-07-12 07:16:33'),
(7, 'Intip Tips dan Trik Memilih Tempat Magang yang Tepat', 'Magang adalah salah satu langkah penting dalam membangun karier profesional. Selain menjadi pengalaman berharga untuk memperluas pengetahuan dan keterampilan selama kamu menempuh bangku perkuliahan, magang juga dapat menjadi pintu masuk untuk mendapatkan pekerjaan penuh waktu di masa depan. Oleh karena itu, penting bagi setiap calon magang untuk memilih tempat magang yang tepat.\r\n\r\nBerikut ini adalah beberapa tips dan trik untuk membantu kamu dalam memilih tempat magang yang ideal. Yuk cek di bawah ini:\r\n\r\nIdentifikasi Minat dan Tujuan Karier\r\nSebelum memulai proses mencari tempat magang, penting untuk mengidentifikasi minat dan tujuan karier yang kamu mau capai di masa depan nanti. Pertimbangkan bidang yang diminati dan tujuan jangka panjanmu. Dengan mengetahui minat dan tujuan tersebut, kamu akhirnya dapat fokus mencari tempat magang yang sesuai dengan kebutuhan dan aspirasimu.\r\n\r\n \r\n\r\nLakukan Riset tentang Perusahaan\r\nSebelum melamar magang, lakukan riset mendalam tentang perusahaan yang kamu minati. Cari tahu informasi tentang visi, misi, nilai-nilai, dan budaya kerja perusahaan. Mengetahui hal ini akan membantu kamu menentukan apakah perusahaan tersebut sesuai dengan nilai-nilai dan tujuan kamu.\r\n\r\n \r\n\r\nTinjau Program Magang yang Ditawarkan\r\nSetiap perusahaan memiliki program magang yang berbeda-beda. Tinjau dengan cermat program magang yang ditawarkan oleh perusahaan yang kamu minati. Perhatikan durasi magang, tugas dan tanggung jawab yang akan kamu emban, serta kesempatan untuk belajar dan berkembang. Pastikan program magang tersebut sesuai dengan kebutuhanmu.\r\n\r\n \r\n\r\nPertimbangkan Lokasi dan Aksesibilitas\r\nLokasi tempat magang juga merupakan faktor penting yang perlu dipertimbangkan. Pertimbangkan apakah kamu dapat dengan mudah mengakses tempat magang tersebut, apakah ada fasilitas transportasi yang memadai, dan apakah lingkungan sekitarnya sesuai dengan preferensi kamu. Lokasi yang nyaman dan mudah diakses akan memberikan pengalaman magang yang lebih baik.\r\n\r\n \r\n\r\nPerhatikan Kesempatan Jaringan dan Mentoring\r\nPilihlah tempat magang yang menawarkan kesempatan untuk memperluas jaringan profesional dan mendapatkan bimbingan dari mentor yang berpengalaman. Kesempatan untuk berinteraksi dengan para profesional di industri yang sama dapat memberikan wawasan berharga dan membantu membangun hubungan yang bermanfaat untuk masa depan karier kamu.\r\n\r\n \r\n\r\nEvaluasi Peluang Kerja di Masa Depan\r\nSelain mempertimbangkan pengalaman magang itu sendiri, penting juga untuk melihat peluang kerja di masa depan setelah selesai magang. Tinjau apakah perusahaan tersebut memiliki kebijakan perekrutan magang atau apakah magang tersebut dapat menjadi pintu masuk untuk mendapatkan pekerjaan penuh waktu di perusahaan tersebut. Memilih tempat magang yang menawarkan peluang kerja yang baik dapat memberikan manfaat jangka panjang.\r\n\r\nDi dalam memilih tempat magang, penting untuk mengambil waktu dan melalui proses pemilihan dengan cermat. Memilih tempat magang yang tepat dapat memberikan pengalaman yang berharga dan membantu membangun pondasi yang kuat untuk karier masa depan. Dengan mengikuti tips dan trik di atas, kamu dapat meningkatkan peluangmu untuk memilih tempat magang yang sesuai dengan minat, tujuan, dan aspirasimu.', 'images/cWNpypL4lvVM2qo2G7MZfi5LcR1KX2ESus6HfWAV.jpg', 3, 1, '2023-07-12 00:29:44', '2023-07-12 07:17:08'),
(13, 'Implementasi SOP Magang Kampus ITTelkom Surabaya Meningkatkan Kualitas Magang yang Efektif', 'Kampus Institut Teknologi Telkom Surabaya (ITTelkom Surabaya) menyelenggarakan acara Implementasi SOP Magang yang bertujuan untuk meningkatkan kualitas magang yang efektif. Acara ini diadakan pada tanggal 11 Juli 2023 di salah satu hotel di Surabaya, dan melibatkan mitra korporat untuk memberikan masukan dan pandangan mengenai standar SOP yang dikaitkan dengan program Kampus Merdeka-Belajar (MBKM).\r\n\r\nProgram magang merupakan salah satu komponen penting dalam pendidikan tinggi yang memberikan kesempatan kepada mahasiswa untuk mendapatkan pengalaman kerja praktis dan mengaplikasikan pengetahuan yang telah dipelajari di dalam kelas. Namun, implementasi magang yang efektif memerlukan standar operasional yang jelas dan konsisten untuk memastikan kualitas pengalaman magang yang bermanfaat bagi mahasiswa.\r\n\r\nKampus ITTelkom Surabaya memahami pentingnya kualitas magang yang baik dalam mempersiapkan mahasiswa untuk memasuki dunia kerja. Oleh karena itu, kami mengadakan acara Implementasi SOP Magang ini untuk mengundang mitra korporat yang berpengalaman dan memiliki pemahaman mendalam tentang kebutuhan industri.\r\n\r\nAcara ini akan menjadi forum kolaboratif di mana mitra korporat akan memberikan masukan, saran, dan pandangan mereka mengenai standar operasional yang terkait dengan program Kampus Merdeka-Belajar (MBKM).\r\n\r\nRektor ITTelkom Surabaya, Dr. Tri Arief Sardjono S.T., M.T., menjelaskan dalam sambutannya, “Di dalam program magang MBKM ini mahasiswa akan melakukan magang selama 6 bulan dimana ini harus dikonversikan dengan SKS di kampus. Maka perlu membentuk SOP yang memberikan pedoman yang jelas bagi mahasiswa dan perusahaan mitra dalam mengkonversikan magang 6 bulan dengan SKS di kampus. Perlu disusun SOP bagaimana pengelolaan yang baik untuk mengkonvensikan magang 6 bulan dengan SKS di kampus. Dengan adanya magang ini juga mahasiswa dapat merasakan pengalaman dan budaya bagaimana bekerja dan diberi kerja.”\r\n\r\nAcara Implementasi SOP Magang ini akan melibatkan perwakilan dari berbagai perusahaan mitra yang telah menjalin kerjasama dengan Kampus ITTelkom Surabaya dalam program magang. Diskusi dan rekomendasi yang dihasilkan dari acara ini akan menjadi dasar untuk menyusun standar operasional yang akan diterapkan dalam program magang di Kampus ITTelkom Surabaya.\r\n\r\nMitra yang hadir dalam acara ini antara lain: Telkom Divre 5, Telkom Akses, Telkom Surabaya Selatan, Telkomsel, Digital Cerdas Berbagi, Bank BSI, Telkom Sigma, Bank Mandiri, DWP, Berkat Cipta Logistik, Sevima, Ansa Solusi, PTPN 12, Biro Klasifikasi, Molindo, SIER, Sinergie Enterprise, Ternaknesia, RADnet, Ternakpark, dan Relawan TIK.\r\n\r\nKampus ITTelkom Surabaya berharap melalui acara ini, kolaborasi yang erat antara perguruan tinggi dan industri dapat terjalin dengan baik, sehingga mahasiswa dapat mengalami magang yang bermutu tinggi dan sesuai dengan kebutuhan industri. Hal ini diharapkan dapat menghasilkan lulusan yang siap dan berkualitas untuk menghadapi tantangan dunia kerja di masa depan.\r\n\r\nDr. Mohammad Yanuar Hariyawan S.T., M.T. selaku ketua acara menjelaskan, “Harapan kami melalui acara ini yakni terjalinnya kemitraan perguruan tinggi agar terjalin link and match, agar selaras antara kebutuhan industri dengan yang dapat dipersiapkan oleh perguruan tinggi. Serta perancangan program magang, Pengembangan produk atau solusi baru, penerapan teknologi proyek bersama, atau pengajaran tamu yang relevan dengan kebutuhan industri untuk memberikan pengalaman praktis yang berharga, dan mempersiapkan mahasiswa untuk memasuki dunia kerja.”\r\n\r\nSementara itu, informasi lebih lanjut terkait program magang dapat menghubungi bagian Career Development Center Kampus ITTelkom Surabaya.', 'images/xSFt5VH3oHuvFEQIcFMxHiBvJjDboT6iqyVKzOYS.jpg', 3, 1, '2023-07-12 07:07:48', '2023-07-12 07:15:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@itts.com', NULL, '$2y$10$5JBd8iTyNLlpYoZHP4VyT.hUEpnDE10O2Pm1Urw0JZtC9aeOPUQ5q', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsId`),
  ADD KEY `news_categoryid_foreign` (`categoryId`),
  ADD KEY `news_userid_foreign` (`userId`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`categoryId`),
  ADD CONSTRAINT `news_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
