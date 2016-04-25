-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Apr 2015 pada 05.11
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lennyshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`email`, `nama`, `password`) VALUES
('adininggharsatriyaputra@yahoo.co.id', 'Adi Ningghar', '10d51273644c66a565a7f5e110625b196a4e5cf0'),
('admin@dsainweb.com', 'administrator', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_tamu`
--

CREATE TABLE IF NOT EXISTS `buku_tamu` (
`id_bukutamu` int(11) NOT NULL,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal_kirim` datetime NOT NULL,
  `status_tampil` enum('Yes','No') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `buku_tamu`
--

INSERT INTO `buku_tamu` (`id_bukutamu`, `nama`, `email`, `pesan`, `tanggal_kirim`, `status_tampil`) VALUES
(1, 'Adi Ningghar', 'adi_ningghar26@gmail.com', 'Test Buku Tamu', '2015-04-13 15:28:40', 'Yes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pesanan`
--

CREATE TABLE IF NOT EXISTS `detail_pesanan` (
  `tgl_order` date NOT NULL,
  `no_trans` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_produk` double NOT NULL,
  `jumbel` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`tgl_order`, `no_trans`, `id_produk`, `harga_produk`, `jumbel`) VALUES
('2015-04-13', '150413-00001', 33, 190000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE IF NOT EXISTS `galeri` (
`id_galeri` int(11) NOT NULL,
  `foto` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `foto`) VALUES
(24, 'collage.jpg'),
(21, 'fb-cover-nov-14.jpg'),
(22, 'syal.jpg'),
(23, 'Phet-Thai-Promo-Banner.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE IF NOT EXISTS `informasi` (
`id_informasi` int(4) NOT NULL,
  `judul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `judul`, `isi`) VALUES
(1, 'Cara Belanja', '<p>Berikut cara pembelian di website toko jersey online :</p>\r\n\r\n<ol>\r\n	<li>Pengunjung mendaftarkan diri sebagai member di toko jersey.</li>\r\n	<li>Setelah itu pengunjung login dengan email dan kata sandi saat pendaftaran.</li>\r\n	<li>Memilih barang/produk yang tersedia. Klik Beli.</li>\r\n	<li>Barang akan masuk ke keranjang belanja.</li>\r\n	<li>Untuk merubah jumlah beli ketik jumlah beli yang diinginkan, lalu klik ubah.</li>\r\n	<li>Untuk membatalkan, klik batal.</li>\r\n	<li>Setelah selesai belanja, klik selesai belanja.</li>\r\n	<li>Isikan data konfirmasi pemesanan dengan benar, pastikan alamat pengiriman barang benar.</li>\r\n	<li>Cetak bukti pemesanan.</li>\r\n</ol>\r\n'),
(2, 'Cara Pembayaran', '<p>Berikut cara pembayaran tagihan :</p>\r\n\r\n<ol>\r\n	<li>Pembayaran dapat dilakukan via transfer atm/antar bank.</li>\r\n	<li>Transfer sesuai dengan total bayar yang tertera pada bukti pemesanan.</li>\r\n	<li>Berikut rekening kami\r\n	<ul>\r\n		<li>Rekening BCA : 421098765 A.n. Toko Sport</li>\r\n		<li>Rekening Mandiri : 874618748 A.n. Toko Sport</li>\r\n		<li>Rekening BNI : 123434243 A.n. Toko Sport</li>\r\n		<li>Rekening BRI : 138783242 A.n. Toko Sport</li>\r\n	</ul>\r\n	</li>\r\n	<li>Setelah melakukan transfer jangan lupa simpan bukti transfer anda.</li>\r\n</ol>\r\n'),
(3, 'Konfirmasi Pembayaran', '<p>Konfirmasi bayar dilakukan setelah melakukan pembayaran, berikut caranya :</p>\r\n\r\n<ol>\r\n	<li>Login ke portal member dengan email dan kata sandi Anda.</li>\r\n	<li>Klik menu Konfirmasi Bayar.</li>\r\n	<li>Isikan data dengan benar.</li>\r\n	<li>Klik Kirim Konfirmasi.</li>\r\n	<li>Maka admin akan mengecek kebenaran konfirmasi Anda dan akan segera mengirim barang setelah menerima pembayaran</li>\r\n	<li>Barang akan dikirim 1-3 Hari kerja, tergantung kota tujuan.</li>\r\n</ol>\r\n'),
(4, 'Tentang Kami', '<p>Annisa Shop adalah<br />\r\n&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_produk`
--

CREATE TABLE IF NOT EXISTS `kategori_produk` (
`id_kategori` int(3) NOT NULL,
  `nama_kategori` varchar(30) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `kategori_produk`
--

INSERT INTO `kategori_produk` (`id_kategori`, `nama_kategori`) VALUES
(27, 'Dompet'),
(28, 'Aksesoris'),
(26, 'Tas'),
(20, 'Kalung'),
(21, 'Gelang'),
(22, 'Belt'),
(23, 'Cincin'),
(24, 'Anting'),
(25, 'Jam Tangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE IF NOT EXISTS `keranjang` (
`id_keranjang` int(11) NOT NULL,
  `no_trans` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumbel` int(11) NOT NULL,
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi_bayar`
--

CREATE TABLE IF NOT EXISTS `konfirmasi_bayar` (
`id_konfirmasi` int(11) NOT NULL,
  `tgl_konfirmasi` datetime NOT NULL,
  `no_trans` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `no_rek` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `atasnama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `bank_tujuan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jumlah_transfer` double NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(12) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`email`, `password`, `nama`, `alamat`, `no_telp`) VALUES
('adi_ningghar26@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Adi', 'Tomagn', '081287680625');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ongkir`
--

CREATE TABLE IF NOT EXISTS `ongkir` (
`id_ongkir` int(5) NOT NULL,
  `kota` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `ongkir` double NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `kota`, `ongkir`) VALUES
(1, 'Jakarta', 8000),
(4, 'Bandung', 12000),
(5, 'semarang', 20000),
(6, 'Bogor', 8000),
(7, 'Depok', 8000),
(8, 'Tangerang', 11000),
(9, 'Bekasi', 12000),
(10, 'Solo', 15000),
(11, 'Yogyakarta', 15000),
(12, 'Surabaya', 20000),
(13, 'Malang', 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE IF NOT EXISTS `pesanan` (
  `no_trans` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Lunas','Pesan') COLLATE latin1_general_ci NOT NULL,
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `total` double NOT NULL,
  `alamat_pengiriman` text COLLATE latin1_general_ci NOT NULL,
  `ongkir` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`no_trans`, `email`, `status`, `tgl_order`, `jam_order`, `total`, `alamat_pengiriman`, `ongkir`) VALUES
('150413-00001', 'adi_ningghar26@gmail.com', 'Lunas', '2015-04-13', '10:22:50', 190000, 'Tomang', 4800);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
`id_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `harga_produk` double NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `stok` int(11) NOT NULL,
  `berat` float NOT NULL,
  `gambar` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `id_kategori` int(3) NOT NULL,
  `dibeli` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `keterangan`, `stok`, `berat`, `gambar`, `id_kategori`, `dibeli`) VALUES
(46, 'Sabina Love', 35500, '<div class="std">Material Rodium Diameter 2cm Berat 10gram</div>\r\n', 10, 0.1, 'sabina_love_black_2__1.jpg', 23, 0),
(47, 'Belt SB90', 48000, '<div class="tab-product-description">Bahan= Karet<br />\r\nUkuran Ikat Pinggang= 68cm x 7,2cm (Adjustable)</div>\r\n', 2, 0.5, 'SB90-300x300.jpg', 22, 0),
(48, 'Belt SB73', 43000, '<div class="tab-product-description">Bahan= Alloy<br />\r\nUkuran Ikat Pinggang= 95 x 1,5cm (Adjustable)</div>\r\n', 3, 0.5, 'SB73-300x300.jpg', 22, 0),
(49, 'JT265', 57000, '<div class="tab-product-description">Bahan= Alloy+Rhinestone<br />\r\nUkuran= 19x0,7cm (Adjustable)</div>\r\n', 2, 0.5, 'JT265-300x300.jpg', 25, 0),
(44, 'Gracie Earring Gold', 39500, '<div class="std">\r\n<p>Produk ini memiliki design yang sangat menarik dan unik<br />\r\nsangat cocok dipadankan dengan apapun penampilan Anda.<br />\r\nTerbuat dari bahan yang berkualitas, tidak mudah rusak dan<br />\r\npasti tahan lama</p>\r\n\r\n<p>Material :</p>\r\n\r\n<ul>\r\n	<li>rodium</li>\r\n</ul>\r\n\r\n<p>Ukuran :</p>\r\n\r\n<ul>\r\n	<li>diameter 1cm</li>\r\n	<li>berat 10gr</li>\r\n</ul>\r\n</div>\r\n', 10, 0.1, 'gracie_earring_gold1.jpg', 24, 0),
(45, 'Carlen Rings', 51500, '<div class="std">Material Rodium Diameter 2cm Berat 10gram Terdapat 4 Buah cincin</div>\r\n', 10, 0.1, 'dsc_0709_3.jpg', 23, 0),
(42, ' Solea Gold Bracelet', 41500, '<div class="std">\r\n<p>Produk ini memiliki design yang sangat menarik dan unik<br />\r\nsangat cocok dipadankan dengan apapun penampilan Anda.<br />\r\nTerbuat dari bahan yang berkualitas, tidak mudah rusak dan<br />\r\npasti tahan lama</p>\r\n\r\n<p>Material :</p>\r\n\r\n<ul>\r\n	<li>rodium</li>\r\n</ul>\r\n\r\n<p>Ukuran :</p>\r\n\r\n<ul>\r\n	<li>diameter 6cm</li>\r\n	<li>berat 50gr</li>\r\n</ul>\r\n</div>\r\n', 3, 0.5, 'solea_gold_bracelets_1.jpg', 21, 0),
(43, ' Mya Papillon', 32500, '<div class="std">Material : Rodium Ukuran : Diameter : 1 cm Berat : 10gr</div>\r\n', 10, 0.1, 'mya_papillon.jpg', 24, 0),
(39, ' Vehentem Parcum', 56500, '<div class="std">Material : Perak Bakar Ukuran : Panjang : 39.5 cm Berat : 30gr</div>\r\n', 5, 0.3, 'dsc_0010a_1.jpg', 20, 0),
(40, ' Balqis Necklace', 54500, '<div class="std">Material Rodium Ukuran: Panjang 23cm Berat 30 gram</div>\r\n', 5, 0.3, 'balqis_necklace.jpg', 20, 0),
(41, ' Crux Hippy Bracelet', 42500, '<div class="std">\r\n<p><strong>Gelang</strong> <strong>Crux Hippy Bracelet</strong> akan menjadikan penampilan<br />\r\nanda lebih menarik. Dengan desain yang sangat menarik,<br />\r\n<strong>Gelang</strong> ini sangat cocok dipadankan dengan apapun<br />\r\npenampilan anda. Produk ini terbuat dari bahan yang<br />\r\nberkualitas, menjadikan <strong>Gelang</strong> ini tidak mudah rusak dan<br />\r\npasti tahan lama.</p>\r\n\r\n<p><strong>Gelang</strong> <strong>Crux Hippy Bracelet</strong> ini bisa anda kenakan dengan<br />\r\nbusana dan setelan yang anda miliki. Anda bisa<br />\r\nmengenakannya saat anda hang-out bersama teman-teman,<br />\r\nmaupun saat berjalan-jalan dengan keluarga. Bentuknya yang<br />\r\npas menjadikannya sangat cocok dikenakan untuk apapun<br />\r\nacara yang anda ikuti.</p>\r\n\r\n<p>Hanya di Len&#39;s Accessories, toko online terbesar di Indonesia<br />\r\nini, anda bisa mendapatkan <strong>Gelang</strong> <strong>Crux Hippy Bracelet</strong><br />\r\ndengan mudah, dengan harga yang terjangkau, dan tentu saja<br />\r\ntanpa repot. Tunggu apalagi, segera dapatkan <strong>Crux Hippy<br />\r\nBracelet</strong> ini hanya di Len&#39;s Accessories, toko online yang<br />\r\nmenjual beragam koleksi <strong>Gelang</strong> dengan harga sangat<br />\r\nterjangkau dan berkualitas baik.</p>\r\n</div>\r\n', 3, 0.3, 'crux_hippy_braceletss_1.jpg', 21, 0),
(50, 'JT207', 64000, '<div class="tab-product-description">Bahan= Alloy+Rhinestone<br />\r\nUkuran= 19x1cm (Adjustable)</div>\r\n', 3, 0.5, 'JT207-300x300.jpg', 25, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE IF NOT EXISTS `testimoni` (
`id_testimoni` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `komentar` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `tanggal`, `nama`, `komentar`) VALUES
(1, '2015-04-13 16:16:08', 'Adi', 'Thanks Barang sudah sampai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`email`);

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
 ADD PRIMARY KEY (`id_bukutamu`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
 ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
 ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
 ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `konfirmasi_bayar`
--
ALTER TABLE `konfirmasi_bayar`
 ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
 ADD PRIMARY KEY (`email`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
 ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
 ADD PRIMARY KEY (`no_trans`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
 ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
 ADD PRIMARY KEY (`id_testimoni`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
MODIFY `id_bukutamu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
MODIFY `id_informasi` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
MODIFY `id_kategori` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `konfirmasi_bayar`
--
ALTER TABLE `konfirmasi_bayar`
MODIFY `id_konfirmasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
MODIFY `id_ongkir` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
