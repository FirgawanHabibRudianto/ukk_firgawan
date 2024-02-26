-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Feb 2024 pada 11.12
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brary`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `cover` varchar(255) NOT NULL,
  `id_buku` varchar(25) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `thn_terbit` date NOT NULL,
  `jml_halaman` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `isi_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`cover`, `id_buku`, `kategori`, `judul`, `pengarang`, `penerbit`, `thn_terbit`, `jml_halaman`, `deskripsi`, `isi_buku`) VALUES
('65c67155261d5.png', 'KB0001', 'filsafat', 'Nunchi Seni Membaca Pikiran dan Perasaan Orang lain', 'Euny Hong', 'PT Gramedia', '2014-02-02', 250, 'Nunchi adalah suatu bentuk kecerdasan emosional yang dapat dipelajari siapa pun. Yang kita butuhkan hanyalah mata dan telinga untuk memperhatikan orang lain bukan menonjolkan diri sendiri. Buku ini akan menunjukan caranya.', 'Nunchi Seni Membaca Pikiran dan Perasaan Orang LainÑRahasia Hidup Bahagia dan Sukses dari Korea (Euny Hong) (z-lib.org).pdf'),
('65cb0fdb1f825.png', 'KB0002', 'bisnis', 'Sebuah Seni untuk bersikap bodo amat (Mark Manson)', 'Mark Manson', 'PT Gramedia', '2024-02-12', 100, '&quot;Sebuah Seni untuk Bersikap Bodo Amat: Terapkan Seni untuk Hidup yang Lebih Baik&quot; (bahasa Inggris: &quot;The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life&quot;) adalah buku yang ditulis oleh Mark Manson. Buku ini pertama kali diterbitkan pada tahun 2016 dan segera menjadi buku terlaris di berbagai negara.', 'Sebuah Seni untuk Bersikap Bodo Amat (Mark Manson) (z-lib.org).pdf'),
('65cb109380b0a.jpeg', 'KB0003', 'informatika', 'Si Juki Komik Strip (Full Color)', 'Faza meonk', 'PT Gramedia', '2024-02-12', 100, '&quot;Si Juki&quot; adalah karakter utama dalam komik strip Indonesia yang diciptakan oleh Faza Meonk. Komik strip ini pertama kali diterbitkan pada tahun 2002 dan sejak itu telah menjadi salah satu komik strip paling populer di Indonesia.', 'Si Juki Komik Strip (Faza Meonk) (z-lib.org).pdf'),
('65cb114f62ab2.jpeg', 'KB0004', 'novel', 'berani tidak di sukai', 'papa', 'PT Gramedia', '2024-02-13', 100, 'Berani tidak di sukai adalah buku karya Ichiro Kishimi dan Fumitake Koga yang pertama kali diterbitkan di Jepang pada tahun 2013. Buku ini menggali konsep-konsep filosofis dari karya psikoterapis Alfred Adler dan membahas tentang keberanian untuk hidup sesuai dengan diri sendiri, tanpa kecemasan akan penilaian orang lain.', 'Berani Tidak Disukai (Ichiro Kishimi, Fumitake Koga) (z-lib.org).pdf'),
('65cb118a007dd.png', 'KB0005', 'sains', 'Rich Dad Poor Dad (Robert T. Kiyosaki) (z-lib.org)', 'Robert T. Kiyosaki', 'PT Gramedia', '2024-02-10', 100, '(Rich Dad Poor Dad) adalah buku yang ditulis oleh Robert T. Kiyosaki dan pertama kali diterbitkan pada tahun 1997. Buku ini telah menjadi salah satu buku keuangan pribadi yang paling terkenal dan banyak dibaca di dunia.', 'Rich Dad Poor Dad (Robert T. Kiyosaki) (z-lib.org).pdf'),
('65cb11c329c31.png', 'KB0006', 'informatika', 'sejarah dunia yang di sembunyikan ', 'albert', 'PT Gramedia', '2024-02-12', 100, 'sering kali terkait dengan konspirasi atau teori-teori konspirasi yang tidak memiliki dasar faktual atau dukungan ilmiah yang kuat. Namun, beberapa orang mungkin berbicara tentang sejarah yang kurang dikenal atau diabaikan dalam konteks pendidikan sejarah resmi.', 'Sejarah Dunia yang Disembunyikan (Jonathan Black) (z-lib.org).pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_buku`
--

INSERT INTO `kategori_buku` (`kategori`) VALUES
('bisnis'),
('filsafat'),
('informatika'),
('novel'),
('sains');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `nisn` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`nisn`, `nama`, `password`, `kelas`, `jurusan`, `alamat`) VALUES
(212210033, 'Abi', '1234', 'XII', 'Rekayasa Perangkat Lunak', 'Desa sanding 02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `harga` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `sebagai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `no_telp`, `sebagai`) VALUES
(1, 'Firgawan', 'abi', '111', '0833-7987-9982', 'admin'),
(2, 'Rudianto', 'abyy', '222', '0822-8228-8828', 'petugas'),
(5, 'arjun', 'arjun', '333', '0852-8080-0808', 'petugas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kategori`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nis` (`nisn`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `nisn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212210034;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori_buku` (`kategori`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `peminjaman_ibfk_4` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
