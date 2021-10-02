-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 09:49 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmcrowdy_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(65) DEFAULT NULL,
  `short_description` varchar(255) NOT NULL,
  `description_komoditas` text NOT NULL,
  `description_prospek` text DEFAULT NULL,
  `description_risiko` text DEFAULT NULL,
  `description_kelompok_tani` text DEFAULT NULL,
  `goal_amount` int(15) NOT NULL,
  `min_pembayaran` int(15) DEFAULT NULL,
  `current_amount` int(15) NOT NULL,
  `perks` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `backer_count` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `user_id`, `name`, `address`, `short_description`, `description_komoditas`, `description_prospek`, `description_risiko`, `description_kelompok_tani`, `goal_amount`, `min_pembayaran`, `current_amount`, `perks`, `slug`, `backer_count`, `created_at`, `updated_at`) VALUES
(1, 32, 'Pertanian Porang Organik Desa Cipayung', 'Bogor, Jawa Barat', 'Tanaman porang bisa digunakan untuk bahan tepung alternatif karena kaya akan glukomanan.', 'Vanili merupakan tanaman yang buahnya bernilai ekonomi tinggi dan dapat digunakan sebagai bahan campuran makanan dan minuman. Vanili banyak digunakan sebagai bahan pembantu industri makanan dan pewangi obat-obatan, (flavour and fragrance ingredients). Sehingga, kebutuhannya cukup tinggi di pasaran.', 'Vanili merupakan salah satu komoditas ekspor rempah yang penting bagi peningkatan devisa negara. Permintaannya yang tinggi dan harga jual yang sangat tinggi di pasar lokal maupun internasional, juga salah satu faktor yang membuat vanili  menjadi menarik untuk dibudidayakan.', 'Dalam budidaya vanili, kondisi lingkungan sangat menentukan sehingga dibutuhkan perlakuan yang khusus serta tepat agar resiko dapat ditekan. Daerah yang sesuai untuk budidaya vanili harus berada pada ketinggian 1-700 mdpl, bulan kering 2-4 bulan, temperatur 23-26 C, dan kelembaban 50-75%. Hama utama Vanili adalah bekicot dan ulat. Sedangkan untuk penyakit seringkali dijumpai Fusarium sp. dan Trichoderma sp. Baik untuk hama dan penyakit, pencegahan dan penanggulangan dini selalu dilakukan secara berkala.', 'Kelompok Tani JVM adalah kelompok tani yang sudah berdiri sejak tahun 2015. Kelompok tani ini memiliki lahan dengan luas total 2 hektar berlokasi di Jawa Tengah. Selama ini, mereka melakukan pembudidayaan vanili dengan modal sendiri. Namun sekarang bersama TaniFund, mereka berharap usaha pembudidayaan vanili mereka bisa berkembang dan dapat meningkatkan kesejahteraan masyarakat setempat dengan menyediakan peluang pekerjaan. Didasari dengan pertimbangan rekam jejak yang baik serta pengalaman budidaya kelompok tani ini, maka TaniFund tertarik untuk menjalin kerjasama dengan mereka.', 70000000, 100000, 70000000, 'Dapat goodiebag cantik,Dapat keuntungan 10%,menjadi bagian dari perubahan', 'campaign-satu', '6', '2021-07-31 07:47:30', '2021-09-21 20:17:43'),
(44, 32, 'Budidaya Aneka Sayuran Bogor - 3', 'Bogor, Jawa Barat', 'Sayuran merupakan sumber vitamin dan mineral terutama karoten, Vit A, Vit C, zat besi dan fosfor', 'Sayuran merupakan sumber vitamin dan mineral terutama karoten, Vit A, Vit C, zat besi dan fosfor. Sebagian vitamin, mineral yang terkandung dalam sayuran berperan sebagai antioksidan. Beberapa sayuran dapat dikonsumsi mentah tanpa dimasak terlebih dahulu sementara yang lainnya dapat dimasak dengan cara dikukus, direbus dan ditumis.', 'Sayuran merupakan komoditas hortikultura, selain memiliki nilai ekonomi yang cukup besar, ternyata juga memiliki potensi yang tinggi dalam pemenuhan gizi di dalam tubuh. Tanaman sayur yang mengandung berbagai zat gizi ini tidak hanya dapat digunakan sebagai konsumsi pangan sehari-hari, tetapi juga bagi pengobatan tradisional (herbal healing) dengan bahan-bahan alami. Seiring meningkatnya kesejahteraan, masyarakat semakin peduli terhadap faktor kesehatan, yakni dengan mengkonsumsi makanan sehat dan bermutu maka permintaan sayuran pun menjadi lebih tinggi sehingga pasarnya luas.b', 'Cuaca ekstrim yang sering berubah – ubah seperti sering turun hujan yang sangat lebat akan menyebabkan daerah penanaman terserang banjir, selain itu jika terjadi cuaca yang sangat panas maka akan menyebabkan kekeringan yang sangat parah.c', 'Kelompok Tani DH merupakan kelompok tani yang berada di daerah Jawa Barat. Kelompok tani ini sudah berdiri sejak tahun 2016 dengan 5 orang anggota kelompok. Kelompok tani ini sudah berpengalaman dalam melakukan budidaya aneka sayuran selama 5 tahun. Berdasarkan pengalaman kelompok tani ini maka TaniFund tertarik untuk melakukan kerja sama.d', 897000000, 100000, 607000000, 'Saham 10% dari hasil panen,menjadi mitra', 'budidaya-aneka-sayuran-bogor-2-32', '4', '2021-08-20 20:19:53', '2021-09-20 20:21:30'),
(45, 52, 'Budidaya Ikan Nila Subang - 3 ', 'Subang, Jawa Barat', 'Ikan air tawar yang banyak dikonsumsi masyarakat Indonesia.', 'Ikan nila dengan nama Latin Oreochromis niloticus merupakan ikan air tawar yang banyak dikonsumsi masyarakat Indonesia. Ikan nila mempunyai tubuh memanjang dan ramping, sisik ikan nila relatif besar, matanya menonjol dan besar dengan tepi berwarna putih. Ikan nila mempunyai lima buah sirip yang berada di punggung, dada, perut, anus, dan ekor. Ikan nila toleran terhadap perbedaan lingkungan sangat tinggi, dapat hidup pada salinitas 0-29 permil; suhu 14-38 °C; pH 5 — 11.', 'Ikan nila dikenal dengan pertumbuhannya yang sangat cepat, yakni hanya membutuhkan waktu 4 hingga 6 bulan untuk pembesarannya hingga memenuhi ukuran standar untuk dikonsumsi. Ikan nila dianggap cukup kuat terhadap gangguan penyakit yang biasa dialami oleh jenis ikan lainnya, sehingga perawatannya mudah dan biayanya murah, namun hasilnya relatif menguntungkan.', 'Bobot ikan yang tidak ideal dikarenakan ada kemungkinan pakan yang diberikan tidak mengandung protein yang cukup. Maka dari itu Dalam pemberian pakan, harus diperhitungkan juga sample saat menentukan berat badan ikan, yaitu sebagai patokan ketika pakan diberikan. ', 'MN 37 adalah pelaku budidaya yang memiliki expertise dan pengetahuan mendalam di bidang perikanan yang berlokasi di wilayah Subang, Jawa Barat. Kelompok ternak yang diketuai oleh Bapak Jaja Subagja beranggotakan 4 orang. Berdiri sejak 3 tahun yang lalu kelompok ternak ini memiliki lahan sekiar 1 Ha. Didukung oleh kinerja dan pengalaman budidaya para peternak yang baik mendasari Tanifund untuk bisa membantu memberikan pendanaan kepada kelompok ternak tersebut.', 412400000, 100000, 412400000, 'saham penghasilan 10%, menjadi mitra tambang ikan kami', 'budidaya-ikan-nila-subang-3-52', '2', '2021-08-21 14:28:26', '2021-09-20 20:21:43'),
(46, 52, 'Budidaya Jamur Tiram Kuningan 1', 'Kuningan, Jawa Barat', 'Jamur tiram merupakan bahan makanan bernutrisi yang kaya akan vitamin dan mineral, rendah karbohidrat, lemak, dan protein.', 'Jamur tiram atau dengan nama latin Pleurotus ostreatus merupakan salah satu kelompok jamur yang sudah banyak dikenal karena bentuk dan ukuran tubuh buahnya yang sangat familiar di masyarakat. Ciri-ciri umum tubuh buah berwarna putih hingga krem dan tudungnya berbentuk setengah lingkaran mirip cangkang yang bagian tengahnya agak cekung. Jamur tiram sering dikenal dengan sebutan King Oyster Mushroom dan merupakan salah satu jenis jamur yang dapat dimakan (edible) serta memiliki rasa yang cukup khas. Jamur tiram tumbuh optimal pada kayu lapuk yang tersebar di dataran rendah sampai lereng pegunungan atau kawasan yang memiliki ketinggian antara 600 m-800 m diatas permukaan laut. Miselium dan tubuh buahnya tumbuh dan berkembang baik pada suhu yang lembab berkisar pada 26-30 °C.', 'Jamur tiram (Pleurotus ostreatus) merupakan bahan makanan bernutrisi yang kaya akan vitamin dan mineral, rendah karbohidrat, lemak, dan protein. Jamur tiram juga memiliki berbagai manfaat yaitu sebagai makanan, menurunkan kolesterol, sebagai anti bakterial dan anti tumor. Dilihat dari kandungan gizi yang terdapat dalam jamur tiram maka bahan ini termasuk aman untuk dikonsumsi.', 'Serangan serangga atau lalat terhadap jamur sangat besar. Permasalahan hama penyakit dapat teratasi dengan menjaga kebersihan tempat, penggunaan pestisida atau feromon (cairan hormon perangkap hama). Selain itu, tempat tumbuh jamur selalu terjaga kelembabannya. Pasalnya, untuk menunjang tumbuhnya badan jamur, dibutuhkan kelembaban yang tinggi.', 'Kelompok Tani AM merupakan kelompok tani yang berada di daerah Jawa Barat. Kelompok tani ini sudah berdiri sejak tahun 2017 dengan 5 orang anggota kelompok. Kelompok tani yang sudah berpengalaman dalam melakukan budidaya jamur tiram ini melakukan budidaya di atas lahan seluas 0.2 Ha. Berdasarkan pengalaman kelompok tani ini maka TaniFund tertarik untuk melakukan kerja sama.', 420700000, 100000, 132000000, 'Hasil panen 20%,Pemilik saham 10%', 'budidaya-jamur-tiram-kuningan-1-52', '3', '2021-08-21 20:00:16', '2021-09-20 20:22:02'),
(47, 32, 'Budidaya Pembesaran Ikan Mas dan Ikan Nila Bandung Barat 1', 'Bandung, Jawa Barat', 'kan mas merupakan ikan air tawar yang mempunyai nilai ekonomis. ', 'Ikan nila dan ikan mas adalah salah satu jenis ikan yang paling terkenal di Indonesia. Ikan mas merupakan ikan air tawar yang mempunyai nilai ekonomis. Ikan mas memiliki badan berbentuk memanjang dan sedikit pipih ke samping dan mulutnya terletak di ujung tengah, memiliki dua pasang sungut serta warna badan yang sangat beragam. Sedangkan ikan nila mempunyai tubuh memanjang dan ramping, sisik ikan nila relatif besar, matanya menonjol dan besar dengan tepi berwarna putih.', 'kan mas dan ikan nila layak dibudidayakan karena tingginya minat di pasar. Permintaan ini biasanya tidak datang dari rumah tangga saja tapi banyak dijadikan sebagai menu utama pada berbagai hidangan rumah makan. Keberadaan ikan nila dan ikan mas mampu menyuplai kebutuhan protein hewani masyarakat secara luas karena harganya yang relatif terjangkau. Jika dikelola oleh pelaku budidaya yang memiliki pengetahuan mendalam terkait nila, budidaya ikan nila menguntungkan. \r\n ', 'Bobot ikan yang tidak ideal dikarenakan ada kemungkinan pakan yang diberikan tidak mengandung protein yang cukup. Maka dari itu Dalam pemberian pakan, harus diperhitungkan juga sample saat menentukan berat badan ikan, yaitu sebagai patokan ketika pakan diberikan.\r\n ', 'Kelompok Ternak IKM merupakan kelompok ternak yang berada di daerah Jawa Barat. Kelompok ternak ini sudah berdiri sejak tahun 2016 dengan 5 orang anggota kelompok. Kelompok ternak ini sudah berpengalaman dalam melakukan budidaya ikan mas dan ikan nila selama 5 tahun. Berdasarkan pengalaman kelompok ternak ini maka TaniFund tertarik untuk melakukan kerja sama.', 174800000, 120000, 100000000, 'Hasil Keuntungan 10%,Min Kontribusi Rp 100k', 'budidaya-pembesaran-ikan-mas-dan-ikan-nila-bandung-barat-1-32', '1', '2021-08-21 20:15:45', '2021-09-20 20:22:18'),
(48, 55, 'Budidaya Ayam Petelur Bandung', 'Bandung, Jawa Barat', 'Ayam petelur kaya akan nutrisi penting yang dibutuhkan oleh tubuh ', 'Ayam petelur merupakan ayam yang sengaja dibudidayakan untuk diambil telurnya. Komoditas yang dihasilkan oleh ayam petelur kaya akan nutrisi penting yang dibutuhkan oleh tubuh seperti protein, vitamin A, D, E dan B, fosfor dan zinc. Ayam ras petelur terbagi menjadi dua jenis yaitu petelur medium dan petelur ringan. ', 'Telur merupakan bahan pokok yang hampir setiap harinya dicari oleh industri makanan dan untuk konsumsi rumah tangga yang termasuk murah. Melihat tingginya permintaan telur ayam yang tinggi setiap harinya tidak heran jika usaha budidaya telur ini sangat menjanjikan keuntungannya.', 'Memelihara ayam petelur bukanlah hal yang mudah. Banyak hal yang harus dipelajari tentang ayam sebelum melakukan budidaya ayam petelur karena ayam bisa stres dan mengganggu produktivitasnya dalam menghasilkan telur yang bagus. Maka dari itu TaniFund juga melakukan pendampingan ketika budidaya dilakukan.', 'Kelompok Ternak BA adalah pelaku budidaya yang memiliki keahlian dan pengetahuan mendalam di bidang ternak ayam petelur di daerah Lebakwangi, Jawa Barat. Kelompok ternak ini sudah berpengalaman sejak tahun 2015 dalam budidaya ayam petelur. Rekam jejak yang baik didukung besarnya permintaan pasar untuk ayam petelur berkualitas membuat TaniFund terdorong untuk menjalin kerjasama dengan Kelompok Ternak BA.', 1717800000, 100000, 616000000, 'Saham 10% untuk pendanaan lebih dari 50%,Mendapatkan diskon 20%', 'budidaya-ayam-petelur-bandung-2-55', '4', '2021-09-09 11:41:11', '2021-09-20 20:22:32'),
(49, 59, 'Budidaya Buncis Kenya Pangalengan - 2 ', 'Pangalengan, Jawa Barat', 'Buncis merupakan tanaman sayuran yang termasuk ke dalam kelompok sejenis polong-polongan dengan kandungan yang kaya dengan protein.', 'Buncis merupakan tanaman sayuran yang termasuk ke dalam kelompok sejenis polong-polongan dengan kandungan yang kaya dengan protein. Buncis kenya berbeda dengan buncis lainnya karena biji buncis kenya berwarna hitam dan berasal dari Amerika Selatan dan tengah. Berdasarkan data Food and Agriculture Organization (FAO), tiga negara produsen utama buncis adalah Tiongkok, Indonesia dan India dimana Tiongkok memproduksi 60% buncis di dunia.', 'Buncis kenya dari segi budidaya merupakan tanaman sayuran yang sangat mudah proses budidayanya karena tingkat kegagalan dalam melakukan budidaya buncis kenya sangat rendah dan masa panennya tergolong cepat sekitar 45 hari. Peluang melakukan budidaya buncis kenya sangat besar untuk memenuhi permintaan di pasar lokal maupun pasar international.', 'Buncis kenya rentan untuk terserang hama seperti ulat pemakan daun, sedangkan penyakit yang biasa menyerang buncis kenya adalah bercak hitam pada daun. Selain hama dan penyakit, hal penting lainnya adalah curah hujan. Jika curah hujan terlalu banyak akan menyebabkan hasil panen kurang maksimal.\r\n\r\n(Sumber: pertanian.go.id)', 'Kelompok Tani T merupakan salah satu kelompok tani yang berada di daerah Pangalengan, Bandung. Kelompok tani yang diketuai oleh Bapak Dani Ramdani ini sudah memiliki pengalaman 3 tahun dalam membudidayakan komoditas buncis kenya. Didasari dengan pertimbangan rekam jejak akan pengalaman dan kualitas panen yang dihasilkan oleh kelompok tani T, TaniFund tertarik untuk menjalin kerjasama dengan mereka.', 63900000, 100000, 63900000, 'Sistem bagi hasil, Jangka Pengembalian Bulanan', 'budidaya-buncis-kenya-pangalengan-2-59', '2', '2021-09-15 19:05:34', '2021-09-20 20:22:47'),
(50, 33, 'Budidaya Melon Inthanon Pasuruan - 2 ', 'Pasuruan, Jawa Timur', 'Melon inthanon adalah atau golden emerald adalah jenis melon yang tergolong langka di indonesia.', 'Melon Inthanon berasal dari Thailand memiliki ciri yang khas, yaitu kulit golden dengan net yang cantik dan daging buah berwarna hijau yang segar dan menarik. Tekstur daging buahnya lembut dan renyah. Melon inthanon adalah atau golden emerald adalah jenis melon yang tergolong langka di indonesia.', 'Karena tekstur daging renyah dan cita rasa manis budidaya melon inthanon merupakan salah satu usaha tani yang menjanjikan keuntungan, namun membutuhkan pengetahuan, ketelitian dan ketekunan. Dari banyak jenis melon, sebagian masyarakat memilih membudidayakan jenis melon inthanon dibanding varietas tanaman melon berbuah hijau. Hal ini disebabkan oleh minat pasarnya yang besar dan harga jual 2x lipat dari harga melon hijau, sehingga tidak heran bila petani lebih memilih peluang bisnis budidaya melon inthanon untuk mendatangkan keuntungan.', 'Jika musim hujan, organisme pengganggu tanaman melon lebih banyak berupa penyakit. Sedikitnya ada 8 jenis penyakit yang kerap meresahkan para petani. Yaitu kresek (embun bulu), embun tepung, layu fusarium, layu bakteri, bercak daun alternaria, busuk buah, busuk daun, dan rebah kecambah (semai).', 'Kelompok Tani MB merupakan kelompok tani yang berada di daerah Jawa Timur. Kelompok tani ini sudah berdiri sejak tahun 2015 dengan 6 orang anggota kelompok. Kelompok tani ini sudah berpengalaman dalam melakukan budidaya buah melon inthanon selama 6 tahun dan melakukan budidaya di atas lahan seluas 2 Ha. Selain melakukan budidaya melon inthanon, kelompok tani ini juga melakukan budidaya melon rangipo. Berdasarkan pengalaman kelompok tani ini maka TaniFund tertarik untuk melakukan kerja sama.', 328700000, 100000, 105000000, 'Jangka Pengembalian Bulanan, Bunga 10%', 'budidaya-melon-inthanon-pasuruan-2-33', '2', '2021-09-15 19:13:29', '2021-09-20 20:23:03'),
(51, 56, 'Budidaya Tomat Beef Hidroponik Pasuruan - 3 ', 'Pasuruan, Jawa Timur', 'Tomat Beef sangat serbaguna untuk dijadikan berbagai macam masakan, terutama untuk dijadikan pelengkap sandwich atau dimakan mentah begitu saja.', 'Tomat beef adalah tomat berukuran paling besar di antara jenis tomat lainnya. Jenis ini, sangat besar dan kaya akan daging. Walaupun dia besar, tomat jenis ini rendah kadar air dan biji. Hal itu membuat tomat beef berbeda jika dibandingkan dengan semua jenis tomat yang lainnya. Tomat Beef sangat serbaguna untuk dijadikan berbagai macam masakan, terutama untuk dijadikan pelengkap sandwich atau dimakan mentah begitu saja. Tomat Beef memiliki tekstur yang padat dan rasa yang lezat. Terlebih lagi, tomat beef kaya akan nutrisi. ', 'Budidaya tomat beef sangat menarik dan menguntungkan karena selain memerlukan penanganan khusus dalam perawatan dan proses panen, permintaan atas tomat beef relatif cukup tinggi dan berkesinambungan dimana harga jualnya sangat menguntungkan dan stabil. Salah satu lokasi yang cocok untuk budidaya tomat adalah di wilayah Pengalengan. ', 'Sering kali ketika musim kemarau panjang, kita mencoba menyiram tomat secara berlebihan. Padahal, hal ini dapat menyebabkan daging buah dalam tomat menahan air dan membengkak lebih cepat daripada bagian luar tomat yang bisa meregang.\r\n\r\n', 'Kelompok Tani WF merupakan kelompok tani yang berada di Pasuruan, Jawa Timur. Didirikan pada tahun 2009, kelompok tani ini memiliki 10 jumlah orang anggota yang telah berpengalaman dalam membudidayakan tanaman tomat beef. Karena sudah berpengalaman dalam melakukan budidaya tomat beef dengan cukup lama maka TaniFund tertarik untuk melakukan kerja sama dengan kelompok tani ini.', 897600000, 200000, 25000000, 'Pengembalian Bulanan, Bunga 10%', 'budidaya-tomat-beef-hidroponik-pasuruan-3-56', '1', '2021-09-18 20:10:03', '2021-09-20 20:23:13'),
(52, 32, 'Budidaya Pisang Mas Kirana Cianjur - 2 ', 'Cianjur, Jawa Barat', 'Pisang mas kirana merupakan salah satu varietas terbaik dari jenis pisang yang ada di Indonesia.', 'Pisang mas kirana merupakan salah satu varietas terbaik dari jenis pisang yang ada di Indonesia. Buah pisang mas kirana diakui sebagai salah satu varietas unggul yang telah disahkan berdasarkan surat keputusan Menteri Pertanian No. 516/Kpts/SR.120/12/2005, tanggal 26 Desember 2005 dan telah mendapat sertifikasi. Karakteristik dari pisang mas kirana terlihat dari warna batang yang berwaran merah kecoklatan, jumlah anakan 2-3 anakan per-rumpun, ukuran buah kecil dan berwarna kuning bersih.', 'Peluang pasar pisang mas kirana terbilang sangat terbuka lebar dan dapat menembus pasar asing seperti China. Pisang mas kirana dibudidayakan secara komersil dan memiliki banyak peminat di pasaran. Keunggulan pisang mas kirana juga dari segi harga terbilang sangat kompetitif dan mampu bersaing di pasaran lokal maupun mancanegara. Maka dari itu jenis pisang ini berpotensi besar untuk bisa dibudidayakan secara serius.', 'Budidaya pisang mas kirana dibutuhkan perlakuan secara khusus agar risiko dapat diminimalisir. Secara umum tanaman pisang mas kirana dapat terkena hama seperti penggerek bonggol, kudis, dan larva penggulung daun. Sedangkan penyakit yang dapat menghinggapi tanaman ini adalah fusarium, phytoptora dan botritis. Akan tetapi hama dan penyakit tersebut dapat ditanggulangi dengan penanggulangan sejak dini.', 'Kelompok Tani BT merupakan kelompok tani yang mengembangkan budidaya pisang mas kirana di daerah Cianjur, Jawa Barat. Kelompok tani ini memiliki anggota sebanyak 5 orang dan sudah didirikan sejak tahun 2015. Didasari oleh pertimbangan rekam jejak yang baik dalam budidaya komoditas ini, TaniFund tertarik untuk menjalin kerja sama dengan Kelompok Tani BT.', 1125900000, 100000, 134000000, 'Jangka Pengembalian Bulanan', 'budidaya-pisang-mas-kirana-cianjur-2-32', '3', '2021-09-20 15:22:44', '2021-09-20 20:23:29'),
(53, 56, 'Batang\'s Patchouli Cultivation - 4', 'Batang, Jawa Tengah', 'Nilam adalah salah satu tanaman yang sering ditemui di daerah Asia dan memiliki banyak manfaat.', 'Nilam adalah salah satu tanaman yang sering ditemui di daerah Asia dan memiliki banyak manfaat. Nama lain dari Nilam adalah Pogostemon cablin. Di Indonesia, tumbuhan nilam dimanfaatkan daunnya karena tanaman ini menghasilkan minyak atsiri (essential oil) yang banyak diminati masyarakat Indonesia sehingga bisa dimanfaatkan untuk pembuatan minyak wangi. Tidak hanya untuk wewangian saja tapi nilam juga dimanfaatkan untuk dunia kesehatan. Daun nilam dapat direbus dan dapat dikonsumsi air rebusannya untuk mengobati berbagai penyakit.\n ', 'Dengan permintaan pasar yang tinggi harga jual minyak nilam juga ikut meningkat membuat beberapa kalangan masyarakat mau mencoba menjalankan budidaya tanaman ini. Budidaya yang cukup mudah juga menjadi faktor mendukung untuk melakukan budidaya tanaman ini. Tingginya permintaan minyak nilam di pasar dunia dan harga minyak nilam yang tergolong tinggi mendorong industri penyulingan minyak nilam juga berkembang pesat dan mendongkrak permintaan daun nilam kering di Indonesia.', 'Kendala yang biasanya terjadi pada tanaman nilam adalah hama tanaman seperti ulat gulung daun yang hidup di dalam gulungan daun muda nilam dan tumbuhan nilam terkadang bisa terjangkit penyakit seperti budok atau hoprosep yang disebabkan oleh serangan dari virus dengan gejala umum daun nilam berubah menjadi keriting dan berubah warna menjadi abu-abu dan rontok. ', 'Kelompok Tani NM2 merupakan kelompok tani yang berada di Batang, Jawa Tengah. Didirikan sejak tahun 2015, kelompok tani ini terdiri dari 5 orang anggota yang telah berpengalaman dalam melakukan budidaya nilam. Kelompok Tani yang diketuai oleh Bapak Abdul Majid ini memiliki lahan seluas 10 hektar. Berdasarkan pengalaman kelompok tani ini dalam melakukan budidaya nilam, maka TaniFund tertarik untuk melakukan kerja sama.', 1918500000, 100000, 0, 'Pengembalian Bulanan, Bunga 10%', 'batangs-patchouli-cultivation-4-56', '0', '2021-09-20 20:43:56', '2021-09-20 20:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_images`
--

CREATE TABLE `campaign_images` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `is_primary` tinyint(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaign_images`
--

INSERT INTO `campaign_images` (`id`, `campaign_id`, `file_name`, `is_primary`, `created_at`, `updated_at`) VALUES
(61, 2, 'images/2-qamma-farm-L6T_mq0bwwA-unsplash.jpg', 1, '2021-08-18 18:01:54.544922', '2021-08-18 18:01:54.544922'),
(62, 31, 'images/2-qamma-farm-L6T_mq0bwwA-unsplash.jpg', 1, '2021-08-18 18:02:05.299328', '2021-08-18 18:02:05.299328'),
(63, 35, 'images/1-qamma-farm-UfGEUNbnh_8-unsplash.jpg', 1, '2021-08-18 18:02:15.855369', '2021-08-18 18:02:15.855369'),
(64, 36, 'images/32-qamma-farm-DFSc_C9Recw-unsplash.jpg', 1, '2021-08-18 18:02:25.504446', '2021-08-18 18:02:25.504446'),
(65, 37, 'images/32-qamma-farm-UfGEUNbnh_8-unsplash.jpg', 1, '2021-08-18 18:02:36.035929', '2021-08-18 18:02:36.035929'),
(67, 44, 'images/32-gambap buah sayur.webp', 1, '2021-08-20 20:21:07.356357', '2021-08-20 20:21:07.356357'),
(68, 45, 'images/52-ikan.webp', 1, '2021-08-21 14:29:39.541996', '2021-08-21 14:29:39.541996'),
(69, 46, 'images/52-jamur.jpg', 1, '2021-08-21 20:02:14.611548', '2021-08-21 20:02:14.611548'),
(70, 47, 'images/32-ikan-mas.webp', 1, '2021-08-21 20:17:59.655128', '2021-08-21 20:17:59.655128'),
(71, 1, 'images/32-porang.jpg', 1, '2021-08-30 12:43:50.714968', '2021-09-30 19:50:07.470580'),
(72, 1, 'images/32-porang2.jpg', 0, '2021-08-30 12:46:34.395716', '2021-09-30 19:50:07.470580'),
(73, 48, 'images/55-ayam.webp', 1, '2021-09-09 11:41:47.840754', '2021-09-09 11:41:47.840754'),
(74, 49, 'images/59-100921030502-image.jpg', 1, '2021-09-15 19:06:08.171766', '2021-09-15 19:06:08.171766'),
(75, 50, 'images/33-310821111532-image.jpg', 1, '2021-09-15 19:17:06.578528', '2021-09-15 19:17:06.578528'),
(76, 51, 'images/56-tomat.webp', 1, '2021-09-18 20:10:15.758235', '2021-09-18 20:10:15.758235'),
(77, 52, 'images/32-pisang.webp', 1, '2021-09-20 15:23:00.009593', '2021-09-20 15:23:00.009593'),
(78, 53, 'images/56-batang.jpg', 1, '2021-09-20 20:44:15.686410', '2021-09-20 20:44:15.686410');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `amount` int(20) NOT NULL,
  `status` varchar(15) NOT NULL,
  `code` varchar(30) DEFAULT NULL,
  `payment_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `campaign_id`, `user_id`, `amount`, `status`, `code`, `payment_url`, `created_at`, `updated_at`) VALUES
(49, 45, 32, 80000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/30381ac6-5124-49bd-8ed8-2f2510a3d295', '2021-08-21 07:55:44', '2021-08-21 14:55:44.974597'),
(50, 45, 1, 332400000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/6a7632b0-7b36-4fd7-a4b1-e38e7e005c2c', '2021-08-21 07:59:40', '2021-08-21 14:59:41.405145'),
(51, 44, 52, 50000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/3e7d9097-70a8-4cd7-a8f8-19d036903177', '2021-08-21 08:35:29', '2021-08-21 15:35:30.182670'),
(52, 44, 1, 47000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/23c70322-b27f-4322-bb3a-426fb4fe7fbd', '2021-08-21 08:42:10', '2021-08-21 15:42:10.488162'),
(54, 1, 52, 20000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/8358cb67-71f6-4cea-a563-75e89818f254', '2021-08-21 08:46:32', '2021-08-21 15:46:32.329837'),
(58, 47, 55, 100000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/9bac0327-eb8e-48ac-b99b-1fd0d3f64f6b', '2021-09-12 08:12:55', '2021-09-12 15:12:55.505122'),
(59, 48, 32, 257000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/0c114194-e33d-4c6c-ad30-2969334a32f9', '2021-09-12 08:19:17', '2021-09-12 15:19:18.047490'),
(60, 46, 32, 115000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/134fa4a9-f141-42d0-ab20-3d559dff774a', '2021-09-12 08:21:12', '2021-09-12 15:21:12.520073'),
(61, 48, 59, 234000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/9eb19d70-fdbf-44b0-b9ee-e0b4f60985db', '2021-09-12 09:57:06', '2021-09-12 16:57:07.622987'),
(62, 48, 59, 20000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/91773ab6-2744-4412-ad6c-a079b3cbe25a', '2021-09-12 10:44:26', '2021-09-12 17:44:28.034779'),
(65, 48, 34, 105000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/1a755412-7ec8-41b0-9a31-18e11c023a39', '2021-09-13 12:20:39', '2021-09-13 19:20:40.259665'),
(66, 46, 55, 15000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/d525921c-55c0-4ea7-aeaa-048206ca2867', '2021-09-13 12:31:37', '2021-09-13 19:31:38.451705'),
(67, 44, 52, 10000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/22cbc3d0-4fd0-4b31-bf9d-5653a7c3c7ee', '2021-09-14 11:33:15', '2021-09-14 18:33:17.349261'),
(70, 49, 33, 10000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/50219538-7866-4571-a9f2-b38208442504', '2021-09-15 13:27:40', '2021-09-15 20:27:40.394118'),
(82, 49, 32, 53900000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/627df9f9-801a-447c-975b-5c9e61738024', '2021-09-18 11:29:00', '2021-09-18 18:29:01.285049'),
(88, 52, 106, 20000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/925d8279-4ade-4683-9c48-42217e195fc2', '2021-09-23 12:28:11', '2021-09-23 19:28:12.283672'),
(90, 46, 32, 2000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/93489a32-0aa8-456b-b86b-7a55bd678ce1', '2021-10-01 10:16:43', '2021-10-01 17:16:43.912208'),
(91, 50, 114, 5000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/c3c02626-dcb5-47ff-ab0a-79cf8039a9fc', '2021-10-01 11:17:28', '2021-10-01 18:17:28.672519'),
(92, 50, 114, 100000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/3e587a1f-34de-4fcd-af83-1e4a84e19aa2', '2021-10-01 11:25:03', '2021-10-01 18:25:03.559563'),
(93, 51, 33, 25000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/ed469770-bd19-4e0c-af91-6fe68387b5b6', '2021-10-01 13:13:21', '2021-10-01 20:13:22.000632'),
(94, 52, 33, 14000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/238dc4ba-60cd-4c9b-932e-d3c20e58e244', '2021-10-01 13:19:38', '2021-10-01 20:19:39.169811'),
(95, 52, 33, 100000000, 'paid', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/853b0267-fb52-4ad1-8afc-444936dd996f', '2021-10-01 13:23:41', '2021-10-01 20:23:42.290631'),
(100, 48, 1, 200000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v2/vtweb/e16aa664-aaee-421f-bc43-55bdbfc23356', '2021-10-01 16:27:54', '2021-10-01 23:27:55.402166');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `occupation` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password_hash` char(60) NOT NULL,
  `avatar_file_name` varchar(63) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `occupation`, `email`, `password_hash`, `avatar_file_name`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Dian R', 'HRD', 'dian@gmail.com', '$2a$04$kSYIx2zBs59VmJd6g3NVaOCdA1NgFGRXr4cFwitTR2YFmTY1COJoq', 'images/1-myProfilPhoto.png', 'user', '2021-07-29 16:30:33', '2021-10-01 23:25:28'),
(2, 'Odon', 'CEO', 'odon@gmail.com', '$2a$04$gU7jaqYgfN0Mf7KoCNpASul9uCb5HtSkADxFsB.fzZAx7vMAl1COS', 'images/2-ali-morshedlou-WMD64tMfc4k-unsplash.jpg', 'user', '2021-07-29 16:37:35', '2021-09-12 15:45:13'),
(31, 'Mila Nuryati', 'Product Designer', 'mila@gmail.com', '$2a$04$.i7IS/qDqjDPuFefxtt/yOHizAFJJ2uklc4g64Idi8MLJw2Ltbz7m', 'images/31-leon-Kt-E_Qq8DW4-unsplash.jpg', 'admin', '2021-08-11 15:55:26', '2021-09-23 15:18:48'),
(32, 'themordhon', 'programmer', 'themordhon@gmail.com', '$2a$04$u1H5S0P7JTX4fGEPBePgEeTJvvGrX7kXSO44K1U8vQhfi9yvfkevW', 'images/32-zhanarys-dakhiyev-WMlRkqt1vII-unsplash.jpg', 'user', '2021-08-12 14:00:51', '2021-09-18 18:32:47'),
(33, 'Umar Ghazi Alfatih', 'Petani', 'umarghaz@gmail.com', '$2a$04$tecshX4VzPbiLqwM458Br.e4vf3E4HBup9fSH2SGgirxs83mj8eL.', 'images/33-gregory-hayes-QFmNQXLPbZc-unsplash.jpg', 'user', '2021-08-12 19:40:57', '2021-09-15 18:29:24'),
(34, 'James Sullivan', 'Drummer', 'james@gmail.com', '$2a$04$wEh5xGnu7E5B96bffmJWOe0j/lkgHwq8nHHBYOcD9pD3YAzI6gpPq', 'images/34-1623809960976.jpg', 'user', '2021-08-18 22:46:22', '2021-08-18 22:47:10'),
(52, 'fajri saripudin', 'designer', 'fajri@gmail.com', '$2a$04$t9ucmbRZDGVhDWSwjVSToeTmqr2hHUD.wxEqURiwA1a.hwOwH1uLS', 'images/52-jonathan-borba-EnZaPhgS6KY-unsplash.jpg', 'user', '2021-08-21 14:17:25', '2021-09-12 15:42:14'),
(55, 'Heri Santoso', 'Staff Desa Cipayung', 'harisantoso@gmail.com', '$2a$04$vWxsMtTiXnBcAb56FaVDOuxsWr6tHVH7.9uB9zSi/4cOfTuB11EnO', 'images/55-ben-parker-OhKElOkQ3RE-unsplash.jpg', 'user', '2021-09-09 11:26:13', '2021-09-09 11:26:18'),
(56, 'jarwo', 'Petani', 'jarwo@gmail.com', '$2a$04$blbdvgSIt/fBOmqRWqYh3eM3Sq9209GwjBr8bQ0zxTLuBbUHQyLPu', 'images/56-ayam.webp', 'user', '2021-09-09 12:34:04', '2021-09-09 12:34:45'),
(59, 'Indra Gunawan', 'UI/UX Designer', 'indragunawan@gmail.com', '$2a$04$A7R3lNU9nhzyCId3rjoQbOzKnsblHs4EUBjxPOHs0Z2DvyXvsg6OO', 'images/59-nirmal-rajendharkumar-1lGeOg6IULc-unsplash.jpg', 'user', '2021-09-12 15:52:49', '2021-09-22 14:09:25'),
(60, 'Airin', 'HRD', 'airin@gmail.com', '$2a$04$mEEUJKR4bNHjgrP9TM5I3.Xq7lW8w2cXncruv4gfKiAmH7NlPxuvS', 'images/60-mimi-thian-gicQUPeAsxA-unsplash.jpg', 'admin', '2021-09-12 22:18:08', '2021-09-13 11:25:26'),
(106, 'Supardi', 'Atlit', 'supardi@gmail.com', '$2a$04$Gf/SuBY2M7E/EG4csQSmcukgx0picqAa/Ha4Nonth7tY.XoHwGYJq', 'images/106-sign-in-background.jpg', 'user', '2021-09-23 19:25:05', '2021-09-23 19:26:48'),
(107, 'John Doe', 'QA Engineer', 'johndoe@gmail.com', '$2a$04$q/qT7ATFuhRMSzpCS4/9GOTKnYnkagTH88lsZXUTyreB0wdSiDKSy', 'images/107-Capture3.JPG', 'user', '2021-09-28 23:08:24', '2021-09-29 17:40:31'),
(113, 'jeandoe', 'HRD', 'jeandoe@gmail.com', '$2a$04$lgkbcrFHk8BF2mQXjXkdVenkTf3dluyKP2bLKz9/e.C8RPOsBh4DO', '', 'user', '2021-09-30 00:15:12', '2021-09-30 00:15:12'),
(114, 'themordhon2', 'Full Stack Developer', 'udahmakandon@gmail.com', '$2a$04$bU.wZOR8/h6KXkTm8Njtn.UQBS2qzgQ1K7R4RViNym1YXqXs72R.i', 'images/114-myProfilPhoto.png', 'user', '2021-10-01 18:16:03', '2021-10-01 18:16:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_images`
--
ALTER TABLE `campaign_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UC_users` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `campaign_images`
--
ALTER TABLE `campaign_images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
