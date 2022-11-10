-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2022 pada 09.11
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bmt_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(80) NOT NULL,
  `email` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `pass_admin` varchar(120) NOT NULL,
  `level_admin` enum('Administrator','Petugas','Kepala') NOT NULL,
  `alamat_admin` text NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `email`, `username`, `pass_admin`, `level_admin`, `alamat_admin`, `no_hp`) VALUES
(7, 'Administrator', 'admink@gmail.com', 'adminku@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', '  Alamat', '234234234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nama_panggilan` varchar(50) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `telp_rumah` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `pekerjaan` varchar(150) NOT NULL,
  `jenis_kelamin` enum('Perempuan','Laki-laki') NOT NULL,
  `status_kawin` enum('Belum Menikah','Menikah','Janda','Duda') NOT NULL,
  `email_anggota` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `pass_anggota` varchar(110) NOT NULL,
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_lengkap`, `nama_panggilan`, `nik`, `alamat`, `telp_rumah`, `no_hp`, `pekerjaan`, `jenis_kelamin`, `status_kawin`, `email_anggota`, `username`, `pass_anggota`, `tgl_daftar`) VALUES
('615-006-3101', 'Maman Abdurahman', 'Maman', '3244563432345367', 'Alamat Maman', '234234234', '23423423', 'Freelancer', 'Laki-laki', 'Belum Menikah', 'maman@gmail.com', 'maman@gmail.com', '0ddeee27d290035f9d3b238b8ee02671', '2019-07-06'),
('615-007-3101', 'Siti Kamilah', 'Mila', '9912878792827282', 'Brebes', '0982 223', '08917 ', '', '', 'Belum Menikah', 'mila@gmail.com', 'mila@gmail.com', 'f562f7f28a039094f7b602c033f106a4', '2022-03-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `foto_gallery` varchar(80) NOT NULL,
  `judul_gallery` varchar(100) NOT NULL,
  `caption_gallery` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `foto_gallery`, `judul_gallery`, `caption_gallery`) VALUES
(1, 'SHARE 16 MARET 2022.png', 'Simpanan Berjangka', 'Jangka waktu maksimal 36 bulan dengan bagi hasil setara 1% tiap bulannya'),
(2, 'SHARE 17 MARET 2022.png', 'SIMSUS', 'Simpanan Khusus berhadiah langsung mesin cuci.'),
(3, 'SHARE 22 MARET 2022.png', 'Simsus berhadiah langsung laptop', 'Simpanan 30 Juta 4 tahun'),
(4, 'SHARE 21 MARET 2022.png', 'Simpanan Berjangka', ''),
(5, 'bmt_team.png', 'BMT NU sejahtera team', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_produk`
--

CREATE TABLE `jenis_produk` (
  `id_jenis_produk` int(11) NOT NULL,
  `jenis_produk` varchar(120) NOT NULL,
  `desk_jenis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_produk`
--

INSERT INTO `jenis_produk` (`id_jenis_produk`, `jenis_produk`, `desk_jenis`) VALUES
(1, 'Anggota', '<p>Tabungan&nbsp;<strong>wadiah</strong>&nbsp;adalah produk&nbsp;<strong>simpanan</strong>&nbsp;dengan prinsip syariah yang dapat membantu Anda mengelola finansial sekaligus meraih keuntungan tanpa riba. Sebab, jenis tabungan ini menerapkan sistem bagi hasil yang bersifat adil baik bagi nasabah maupun bank.</p>\r\n'),
(2, 'Pembiayaan', '<p><strong>Tabungan haji</strong>&nbsp;adalah simpanan yang digunakan Biaya Penyelanggaraan Ibadah&nbsp;<strong>Haji</strong>&nbsp;atau BPIH. Syarat membuka&nbsp;<strong>tabungan</strong>&nbsp;ini sangat mudah, cukup melampirkan kartu identias diri seperti KTP atau SIM. Kemudian menyerahkan setoran awal minimum sesuai dengan ketentuan masing-masing bank.</p>\r\n'),
(3, 'Tabungan', '<p><strong>Tabungan umroh</strong>&nbsp;ini adalah salah satu fasilitas pembiayaan multijasa dengan akad ijarah atau sewa menyewa. Tujuannya adalah untuk membantu individu mewujudkan niat ibadah&nbsp;<strong>umroh</strong>. Mengumpulkan dokumen yang dibutuhkan.</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi_web`
--

CREATE TABLE `konfigurasi_web` (
  `id_konfigurasi` int(11) NOT NULL,
  `link_fb` varchar(250) NOT NULL,
  `no_wa` varchar(15) NOT NULL,
  `link_ig` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `deskripsi_singkat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfigurasi_web`
--

INSERT INTO `konfigurasi_web` (`id_konfigurasi`, `link_fb`, `no_wa`, `link_ig`, `alamat`, `deskripsi_singkat`) VALUES
(1, 'www.facebook.com/', '089923838', 'www.instagram.com/', 'Jl jenderal Sudirman no 03 ketanggungan, ketanggungan, Brebes', 'Pada tanggal 29 mei 2003 dengan akte pendirian koperasi no 180.08/315 dengan melalui anggotanya mendirikan koperasi â€œ BUMI SEJAHTERAâ€ yang berlokasi di jalan raya manyaran-gunungpati KM 10 semarang. Dan ditahun 2008, tepatnya pada tanggal 25 april 2008 dengan akta pendirian koperasi nomor : 18.08.PAD/XIV.34/02 koperasi BUMI SEJAHTERA berganti nama menjadi koperasi â€˜NU SEJAHTERAâ€™ yang berlokasi di ruko manyaran blok 1 jalan abdul rachman saleh 3008 semarang.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengurus`
--

CREATE TABLE `pengurus` (
  `id_pengurus` int(11) NOT NULL,
  `nama_pengurus` varchar(100) NOT NULL,
  `poto_pengurus` varchar(100) NOT NULL,
  `jabatan_pengurus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengurus`
--

INSERT INTO `pengurus` (`id_pengurus`, `nama_pengurus`, `poto_pengurus`, `jabatan_pengurus`) VALUES
(9, 'Muhammad Naufal k.m', 'Cat_020015.png', 'AO'),
(10, 'H.surahman', 'ewq.png', 'koordinator area 2'),
(11, 'Iin muflichudin,S.E', 'flying-cat-fight.png', 'Branc Manager'),
(12, 'Siti Kamila', 'cat_birthday.png', 'Skretaris'),
(13, 'Cecep nurholik A.md', '5.png', 'AO');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_bmt`
--

CREATE TABLE `produk_bmt` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(120) NOT NULL,
  `id_jenis_produk` int(11) NOT NULL,
  `desk_produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk_bmt`
--

INSERT INTO `produk_bmt` (`id_produk`, `nama_produk`, `id_jenis_produk`, `desk_produk`) VALUES
(2, 'Simpanan Berjangka 12 bln', 3, '<p>Kita coba</p>\r\n\r\n<p><strong>Persyatatan :</strong></p>\r\n\r\n<ul>\r\n	<li>Kamila</li>\r\n</ul>\r\n'),
(3, 'Simpanan Pelajar', 3, '<p>Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor</p>\r\n\r\n<p><strong>Persyatatan :</strong></p>\r\n\r\n<ul>\r\n	<li>Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor</li>\r\n	<li>Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor</li>\r\n	<li>Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor</li>\r\n</ul>\r\n'),
(5, 'Sisuka Jaka Qurban', 3, '<p>Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor</p>\r\n\r\n<p><strong>Persyatatan :</strong></p>\r\n\r\n<ul>\r\n	<li>Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor</li>\r\n	<li>Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor</li>\r\n	<li>Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor</li>\r\n</ul>\r\n'),
(6, 'Tabungan Maslahah', 3, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n'),
(7, 'Simpanan Wajib Anggota', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec faucibus auctor elementum. Mauris sit amet bibendum erat. Integer elementum lacus nunc, at dapibus leo vulputate eget. Nunc pharetra porttitor arcu, vitae pretium dolor tristique sed. Cras dignissim ipsum fringilla, dignissim diam et, vehicula elit. Donec nec aliquet turpis, eget tempus mauris. Ut mi odio, ultricies quis massa ut, cursus pharetra quam. Vestibulum quis enim vitae nisi pellentesque rutrum non a lorem. Vestibulum congue eros nunc, in pretium risus mattis vel. Nullam vulputate dolor non tempor egestas. Nunc in dolor sit amet elit placerat imperdiet. Praesent imperdiet pretium nibh, tristique molestie nisi imperdiet quis. Nam congue laoreet interdum. Vivamus nec eros vel ex fringilla accumsan a et tortor. Nam dignissim pellentesque magna ac semper.</p>\r\n'),
(8, 'Simpanan Pokok', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n'),
(9, 'Murabahah (Pembelian Barang Dagangan/Kendaraan/lain-lain)', 2, ''),
(10, 'Hawalah (Pengalihan Hutang)', 2, '<p>Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem</p>\r\n'),
(11, 'Ijarah (Biaya pendidikan/Rumah Sakit/Sewa Toko)', 2, '<p>Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem</p>\r\n'),
(12, 'Mudharabah (Modal Kerja)', 2, '<p>Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem</p>\r\n'),
(13, 'Qardul Hasan (Dana Kebajikan)', 2, '<p>Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor Lorem Ipsum Dolor&nbsp;Lorem</p>\r\n'),
(14, 'Idul Fitri', 3, '<p>Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor&nbsp;Lorem Ipsum Dolor</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL,
  `sejarah` text NOT NULL,
  `visi_misi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id_profil`, `sejarah`, `visi_misi`) VALUES
(1, '<p>Pada tanggal 29 mei 2003 dengan akte pendirian koperasi no 180.08/315 dengan melalui anggotanya mendirikan koperasi &ldquo; BUMI SEJAHTERA&rdquo; yang berlokasi di jalan raya manyaran-gunungpati KM 10 semarang. Dan ditahun 2008, tepatnya pada tanggal 25 april 2008 dengan akta pendirian koperasi nomor : 18.08.PAD/XIV.34/02 koperasi BUMI SEJAHTERA berganti nama menjadi koperasi &lsquo;NU SEJAHTERA&rsquo; yang berlokasi di ruko manyaran blok 1 jalan abdul rachman saleh 3008 semarang.<br />\r\n&nbsp;&nbsp; &nbsp;Seiring perkembangan perbankan dan dunia koperasi, koperasi &lsquo;NU SEJAHTERA&rsquo; sebagai kepanjangan tangan dari lembaga perekonomian NU (LPNU) ikut berpartisipasi dalam memberikan kontribusinya di sektor perekonomian masyarakat yang berlandaskan syariah islam. Meliputi simpanan wadiah, simpanan berjangka,pembiayaan dimana itu semua merupakan produk primer yang dikenalkan masyarakat.</p>\r\n', '<p><span style=\"font-family:Lucida Sans Unicode,Lucida Grande,sans-serif\">A. Visi<br />\r\n&nbsp;&nbsp; &nbsp;Menjadi koperasi pemberdayaan ekonomi ummat yang mandiri dengan landasan syari&rsquo;ah.</span></p>\r\n\r\n<p><br />\r\n<span style=\"font-family:Lucida Sans Unicode,Lucida Grande,sans-serif\">B. Misi<br />\r\n1.Menjadi penyelenggaraan layanan keuangan syari&rsquo;ah yang prima kepada anggota dan mitra usaha<br />\r\n2.Menjadi model pengelolaan keuangan ummat yang efisien, efektik, transparan, dan profesional.<br />\r\n3.Mengembangkan jaringan kerjasama ekonomi syari&rsquo;ah<br />\r\n4.Mengembangkan sistem ekonomi ummat yang berkeadilan sesuai syari&rsquo;ah</span></p>\r\n');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `jenis_produk`
--
ALTER TABLE `jenis_produk`
  ADD PRIMARY KEY (`id_jenis_produk`);

--
-- Indeks untuk tabel `konfigurasi_web`
--
ALTER TABLE `konfigurasi_web`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indeks untuk tabel `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`id_pengurus`);

--
-- Indeks untuk tabel `produk_bmt`
--
ALTER TABLE `produk_bmt`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_jenis_produk` (`id_jenis_produk`),
  ADD KEY `id_jenis_produk_2` (`id_jenis_produk`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jenis_produk`
--
ALTER TABLE `jenis_produk`
  MODIFY `id_jenis_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `konfigurasi_web`
--
ALTER TABLE `konfigurasi_web`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `id_pengurus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `produk_bmt`
--
ALTER TABLE `produk_bmt`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk_bmt`
--
ALTER TABLE `produk_bmt`
  ADD CONSTRAINT `produk_bmt_ibfk_1` FOREIGN KEY (`id_jenis_produk`) REFERENCES `jenis_produk` (`id_jenis_produk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
