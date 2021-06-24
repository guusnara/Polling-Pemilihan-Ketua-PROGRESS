-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Des 2015 pada 09.37
-- Versi Server: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `poling_progress`
--
CREATE DATABASE IF NOT EXISTS `poling_progress` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `poling_progress`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon`
--

CREATE TABLE IF NOT EXISTS `calon` (
  `id_calon` char(5) NOT NULL,
  `nama_calon` varchar(50) NOT NULL,
  `img` varchar(30) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  PRIMARY KEY (`id_calon`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `calon`
--

INSERT INTO `calon` (`id_calon`, `nama_calon`, `img`, `visi`, `misi`) VALUES
('1QHdU', 'I Komang Yogi Pramandika', 'calon/yogi.jpg', '<ol>\r\n	<li>Menjadikan UKM PROGRESS organisasi (wadah) yang benar-benar real organisasi (wadah) programers bagi seluruh mahasiswa&nbsp; STIKOM BALI.</li>\r\n	<li>Membuat UKM PROGRESS dikenal sebagai organisasi programers oleh seluruh warga STIKOM BALI dan kampus lain dalam bidang programing.</li>\r\n	<li>Meningkatkan kinerja dan kualitas UKM PROGRESS dalam bidang programing.</li>\r\n</ol>\r\n', '<ol>\r\n	<li>Memunculkan minat dan bakat di kalangan mahasiswa/mahasiswi STIKOM BALI dalam berorganisasi lebih khususnya programing.</li>\r\n	<li>Mengembangkan ide terbarukan dari setiap individu di UKM PROGRESS agar lebih mampu mengekspresikan diri dalam bahasa pemerograman.</li>\r\n	<li>Menyatukan kreatifitas tanpa batas dalam membuat program maupun berorganisasi menjadi acuan dalam bersaing untuk menjadi lebih baik dan hebat tanpa membedakan satu sama lain.</li>\r\n	<li>Mengharumkan dan meningkatkan nama UKM PROGRESS dalam bidang programing di seluruh warga STIKOM BALI dengan kemampuan yang dimiliki setiap individu di UKM PROGRES.</li>\r\n	<li>Menciptakan lingkungan organisasi yang kodusif sehingga dapat terjalin hubungan yang baik antar individu di UKM PROGRESS.</li>\r\n</ol>\r\n'),
('28H1F', 'I Kadek Surya Wiguna', 'calon/surya.jpg', '<p>Menjadikan UKM PROGRESS sebagai wadah yang unggul dan menyenangkan bagi mahasiswa STIKOM Bali untuk mengembangkan minat dan bakat di bidang programming.</p>\r\n', '<ol>\r\n	<li>Memunculkan minat dan bakat di kalangan mahasiswa untuk berorganisasi khususnya di bidang programming</li>\r\n	<li>Menciptakan suasana lingkungan UKM yang menyenangkan dengan berdasarkan asas persaudaraan</li>\r\n	<li>Menjadikan UKM PROGRESS dikenal bukan hanya di dalam namun juga di luar lingkungan STIKOM Bali</li>\r\n	<li>Memberikan materi-materi berkualitas kepada anggota UKM PROGRESS untuk bekal di dalam maupun di luar perkuliahan</li>\r\n	<li>Berpartisipasi aktif dalam berbagai perlombaan untuk menunjukkan peran UKM PROGRESS dalam bidang programming</li>\r\n</ol>\r\n'),
('w0sGc', 'Pande Putu Widya Oktapratama', 'calon/widya.jpg', '<p>Menjadikan UKM Progress sebagai wadah mahasiswa STMIK STIKOM Bali untuk berorganisasi dan mengembangkan kemampuan dibidang bahasa pemrograman.</p>\r\n', '<ol>\r\n	<li>Mewujudkan anggota progress yang cermat, tanggap, dan handal dalam bidang pemrograman.<br />\r\n	</li>\r\n	<li>Mensukseskan seluruh program kerja UKM dan kegiatan kegiatan UKM.</li>\r\n	<li>Menciptakan suasana kekeluargaan di UKM.</li>\r\n</ol>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `count`
--

CREATE TABLE IF NOT EXISTS `count` (
  `id_count` char(5) NOT NULL,
  `id_calon` char(5) NOT NULL,
  `total_suara` int(3) NOT NULL,
  PRIMARY KEY (`id_count`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `count`
--

INSERT INTO `count` (`id_count`, `id_calon`, `total_suara`) VALUES
('DYsVU', '28H1F', 0),
('qEs0f', '1QHdU', 0),
('zOUMs', 'w0sGc', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE IF NOT EXISTS `mhs` (
  `nim` int(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`nim`, `nama`) VALUES
(130010129, 'I Putu Wahyu Pratama Putra'),
(140030023, 'Bayu Geni Asmoro'),
(140030025, 'Jesicha Putri H'),
(140030050, 'I Pt Aria Santika Putra'),
(140030071, 'Ni Kadek Nila Friana P'),
(140030079, 'Arya Sutrisna Putra'),
(140030097, 'Novita Dwi Berlianti'),
(140030307, 'Ni Luh Gede Risa Suari A'),
(150010003, 'I Kadek Agus Indra Aristana'),
(150010004, 'I Gede Oka Wibawa'),
(150010019, 'I Made Anom Mahartha Dinata'),
(150010032, 'Ida Bagus Budanthara'),
(150010044, 'I Putu Mahendra Putra'),
(150010045, 'Michael Alexander Geni'),
(150010047, 'I Putu Bagus Wisnu Sancaya'),
(150010050, 'Erico Rahmad Darmanto'),
(150010057, 'Damiao Soares P. Gusmao'),
(150010062, 'Gde Angga Yogie Iswara'),
(150010063, 'I Putu Bayu Krisna Herry Nanda'),
(150010070, 'I Putu Mas Sukardika'),
(150010084, 'Saddam Husein'),
(150010088, 'I Kadek Agus Juliawan'),
(150010099, 'I Wayan Aditya Juliarsa'),
(150010101, 'I Made Perastiya'),
(150010104, 'Firman Budi Wicaksono'),
(150010127, 'I Gede Pande Darmayasa'),
(150010149, 'I Putu Sukma Raharja'),
(150010152, 'I Nengah Oka Adi Putra'),
(150010165, 'I Gd Yudhi Ariana'),
(150010175, 'Wahyu Nur Hamid'),
(150010184, 'I Jero Andiarsa'),
(150010186, 'Gede Khrisna Weda Dharma'),
(150010188, 'I Kadek Yoga Sandyana'),
(150010190, 'I Gede Ivan Pratama'),
(150010191, 'I Gede Kusuma Wijaya'),
(150010192, 'Putu Rele Bhayu Sakti'),
(150010213, 'Muhammad Riza Nugraha'),
(150010215, 'Zahrul Gunawan'),
(150010220, 'I Gusti Putu Ari Semadi'),
(150010223, 'I Gede Wira Sanjaya'),
(150010224, 'I Made Agus Suarjaya'),
(150010249, 'Putu Tedy Kusuma Winata'),
(150010261, 'I Pt Jaya Wisesa P'),
(150010262, 'I Putu Gede Suarjaya Putra'),
(150010265, 'I Made Dwija Abinawa'),
(150010272, 'I Wayan Riski Darmawan'),
(150010274, 'Ngurah Gde Satya Darma M'),
(150010279, 'I Putu Editya Adnyana Putra'),
(150010280, 'I Gusti Agung Arisena Dananjaya'),
(150010296, 'Ketut Ardi Prasetya'),
(150010297, 'I Putu Bagus Chandra Desi Putra'),
(150010308, 'Putu Eka Juniartha Pradnyana Putra'),
(150020215, 'Gusti Ayu Ersta Krisna Anggraeni'),
(150030001, 'I Gede Gunada'),
(150030003, 'Pande Putu Widya Oktapratama'),
(150030010, 'I Gede Pradipta Adi Nugraha'),
(150030011, 'Ni Putu Trisna Damayanti'),
(150030013, 'M. Zainal Efendi'),
(150030022, 'Ni Luh Putu Yasih Seftiari'),
(150030025, 'I Gede Yoga Astrawan'),
(150030027, 'Kadek Diky Wiradyatmika'),
(150030032, 'Dimas Prasetyo'),
(150030040, 'I Putu Restu Widanta'),
(150030044, 'I Made Putra Diatmika'),
(150030051, 'Tatan Kristiyanto'),
(150030056, 'Putu Rizky Utama Putra'),
(150030060, 'I Putu Angga Ari Marta'),
(150030065, 'Ni Luh Putu Putri Dianawati'),
(150030066, 'Jiyestha Aji Dharma Aryasa'),
(150030082, 'I Gusti Made Ngurah Maharta'),
(150030105, 'Ni Putu Ayu Aprihanna Dyarta'),
(150030112, 'Putu Krisna Candra Dewi'),
(150030122, 'I Ketut Surya Wiguna'),
(150030123, 'Putu Anjas Ariesta Arya P'),
(150030127, 'Fihriz Syamsul Huda'),
(150030129, 'I Gusti Ngurah Bagus Mahendra Dwipayana'),
(150030132, 'I Putu Gede Putra Yasa'),
(150030136, 'Febrian Dian Siswanto'),
(150030138, 'AA Bunga Pradnyaniti D'),
(150030145, 'Dwi Dharma Haryanto'),
(150030146, 'Ketut Oka Edi Artawan'),
(150030149, 'Fitri Wahyuni'),
(150030150, 'Anak Agung Sandatya Widhiyanti'),
(150030158, 'Debby Megapriliya'),
(150030164, 'Putu Surya Mahardika'),
(150030177, 'I Gede Indra Tirta Yasa'),
(150030216, 'Anak Agung Gede Dimas Dananjaya'),
(150030225, 'Gede Krisnanda Juni Antara'),
(150030226, 'Mariyah Hasanah'),
(150030233, 'I Gst Ngr Ag Pt Kresna Putra'),
(150030238, 'Ni Wayan Pt Cahya Purnami'),
(150030239, 'Putu Heri Setiawan'),
(150030253, 'Gede Kenny Kee'),
(150030254, 'I Gd Windu Sara Adi Putra'),
(150030256, 'I Gusti Ngurah Arya Adita Yuspriatna'),
(150030274, 'I Wayan Eka Priharta Jaya'),
(150030283, 'I Km Anggi Krisna Suputra'),
(150030307, 'I Putu Adi Pranata'),
(150030312, 'I Komang Panca Amerta Yoga'),
(150030362, 'Ni Putu Mira Oktaviani'),
(150030395, 'Adi Satria Wibawa'),
(150030399, 'I Kadek Putra Dwiatmika'),
(150030410, 'Putu Jepri Mustika'),
(150030418, 'Intan Paramita Dewi'),
(150030432, 'I Wayan Dharmana'),
(150030452, 'Ariyono Eko Setia Wibowo'),
(150030505, 'Putu Indri Marhaeni Dewi'),
(150030508, 'I Wayan Arik Darwita'),
(150030511, 'Ade Dwi Payadnya'),
(150030513, 'Laura Prama Tandi'),
(150030522, 'Komang Gita Meiliana'),
(150030523, 'I Komang Yogi Pramandika'),
(150030535, 'Feby Yuliana'),
(150030590, 'I Gusti Ngurah Agung Suhendra'),
(150030594, 'I Gusti Made Surya Dwipayana'),
(150030681, 'Agus Herianto');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilih`
--

CREATE TABLE IF NOT EXISTS `pemilih` (
  `nim` int(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_calon` char(5) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
