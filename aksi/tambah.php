<?php 
include_once '../__CONFIG__/config.php';
include_once '../__TEMPLATES__/header.php';
$chk = @$_POST['id'];
if (!isset($chk)) {
	echo "<script>alert('Masukkan Jumlah Data Terlebih Dahulu!'); window.location='generate.php'</script>";
} else { ?>

	<div class="row m-auto">
		<div class="col-lg">
		    <h1 class="mt-3 text-center"><u>Tambah Produk</u></h1>
		    <br>
    		<form action="proses.php" method="post">
				<input type="hidden" name="total" value="<?= @$_POST['count_add'] ?>">
				<table class="table table-hover">
					<thead>
						<tr class="text-center">
							<th>No.</th>
							<th>Nama <span class="text-danger">*</span></th>
							<th>Harga <span class="text-danger">*</span></th>
							<th>Kategori <span class="text-danger">*</span></th>
							<th>Berat</th>
							<th>Isi</th>
							<th>Keterangan</th>
						</tr>
					</thead>
					<tbody>
						<?php 
						for ($i = 1; $i <= $_POST['count_add']; $i++) { ?>
							<tr class="text-center">
								<td><?= $i ?></td>
								<td>
									<input type="text" class="form-control" name="nama-<?= $i ?>" autocomplete="off" autofocus required>
								</td>
								<td>
									<input type="text" class="form-control" name="harga-<?= $i ?>" autocomplete="off" required>
								</td>
								<td>
									<input type="text" class="form-control" name="kategori-<?= $i ?>" autocomplete="off" required>
								</td>
								<td>
									<input type="text" class="form-control" name="berat-<?= $i ?>" autocomplete="off">
								</td>
								<td>
									<input type="text" class="form-control" name="isi-<?= $i ?>" autocomplete="off">
								</td>
								<td>
									<input type="text" class="form-control" name="ket-<?= $i ?>" autocomplete="off">
								</td>
							</tr>	
						<?php } ?>
					</tbody>
				</table>
				<div class="form-group mt-4">
					<a href="<?= $url; ?>" class="btn btn-danger"><i class="fas fa-fw fa-arrow-left"></i> Batal</a>
					<button type="submit" name="tambah" class="btn btn-primary"><i class="fas fa-fw fa-plus"></i> Tambah Produk</button>
				</div>
			</form>
		</div>
	</div>

	<?php include_once '../__TEMPLATES__/footer.php'; ?>
<?php } ?>