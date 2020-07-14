<?php 
include_once '../__CONFIG__/config.php';

$chk = @$_POST['checked'];
if (!isset($chk)) { ?>
	<script>alert('Tidak Ada Produk Yang dipilih'); window.location="<?= $url; ?>"</script>
<?php } else {
	foreach ($chk as $id) {
		$query = mysqli_query($conn, "DELETE FROM produk WHERE id = '$id'") or die(mysqli_error($conn));
	}
	if ($query) {
		echo "<script>alert('Berhasil Menghapus ".count($chk)." Produk!'); window.location='".$url."'</script>";
	} else {
		echo "<script>alert('Gagal Menghapus ".count($chk)." Produk!'); window.location='".$url."'</script>";
	}
}
?>