<?php 
include_once '../__CONFIG__/config.php';
require_once '../__TEMPLATES__/vendor/autoload.php';
date_default_timezone_set("Asia/Jakarta");

if (isset($_POST['tambah'])) {
	$total = $_POST['total'];
	for ($i = 1; $i <= $total; $i++) {
		$nama = trim(mysqli_real_escape_string($conn, $_POST['nama-'.$i]));
		$harga = trim(mysqli_real_escape_string($conn, $_POST['harga-'.$i]));
		$kategori = trim(mysqli_real_escape_string($conn, $_POST['kategori-'.$i]));
		$berat = trim(mysqli_real_escape_string($conn, $_POST['berat-'.$i]));
		$isi = trim(mysqli_real_escape_string($conn, $_POST['isi-'.$i]));
		$ket = trim(mysqli_real_escape_string($conn, $_POST['ket-'.$i]));
		$query = mysqli_query($conn, "INSERT INTO produk (nama, harga, berat, isi, keterangan, kategori) VALUES ('$nama', '$harga', '$berat', '$isi', '$ket', '$kategori')");
	}
	if ($query) {
		echo "<script>alert('Berhasil Menambah ".$total." Produk!'); window.location='".base_url()."'</script>";
	} else {
		echo "<script>alert('Gagal Menambah ".$total." Produk!'); window.location='".base_url()."'</script>";
	}
} else if (isset($_POST['ubah'])) {
	$total = $_POST['total'];
	for ($i = 0; $i < count($_POST['id']); $i++) {
		$id = $_POST['id'][$i];
		$nama = $_POST['nama'][$i];
		$harga = $_POST['harga'][$i];
		$kategori = $_POST['kategori'][$i];
		$berat = $_POST['berat'][$i];
		$isi = $_POST['isi'][$i];
		$ket = $_POST['ket'][$i];
		$diubah = date('Y-m-d H:i:s');
		$result = mysqli_query($conn, "UPDATE produk SET nama = '$nama', harga = '$harga', berat = '$berat', isi = '$isi', keterangan = '$ket', diubah = '$diubah', kategori = '$kategori' WHERE id = '$id'") or die (mysqli_error($conn));
	}
	if ($result) {
		echo "<script>alert('Berhasil Mengubah ".count($_POST['id'])." Produk!'); window.location='".base_url()."'</script>";
	} else {
		echo "<script>alert('Gagal Mengubah ".count($_POST['id'])." Produk!'); window.location='".base_url()."'</script>";
	}
} else if (isset($_POST['impor'])) {
	$file = $_FILES['file']['name'];
	$ekstensi = explode(".", $file);
	$file_name = "excel-".round(microtime(true)).".".end($ekstensi);
	$sumber = $_FILES['file']['tmp_name'];
	$target_dir = "../__FILES__/excel/";
	$target_file = $target_dir.$file_name;
	move_uploaded_file($sumber, $target_file);


	$obj = PHPExcel_IOFactory::load($target_file);
	$all_data = $obj->getActiveSheet()->toArray(null, true, true, true);

	$sql = "INSERT INTO produk (nama, harga, berat, isi, keterangan, kategori) VALUES";
	for ($i = 2; $i <= count($all_data); $i++) {
		$nama = $all_data[$i]['A'];
		$harga = $all_data[$i]['B'];
		$kategori = $all_data[$i]['C'];
		$berat = $all_data[$i]['D'];
		$isi = $all_data[$i]['E'];
		$ket = $all_data[$i]['F'];
		$sql .= " ('$nama', '$harga', '$berat', '$isi', '$ket', '$kategori'),";
	}
	$sql = substr($sql, 0, -1);
	mysqli_query($conn, $sql) or die (mysqli_error($conn));
	if ($sql) {
		echo "<script>alert('Berhasil Mengimpor Excel!'); window.location='".base_url()."'</script>";
	} else {
		echo "<script>alert('Gagal Mengimpor Excel!'); window.location='".base_url()."'</script>";
	}
}