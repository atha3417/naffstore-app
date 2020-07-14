<?php 
include_once '../__CONFIG__/config.php';
include_once '../__TEMPLATES__/header.php';
$chk = @$_POST['checked'];
if (!isset($chk)) { ?>
	<script>alert('Tidak Ada Produk Yang dipilih'); window.location="<?= $url; ?>"</script>
<?php } else{ ?>

	<div class="row m-auto">
		<div class="col-lg">
		    <h1 class="mt-3 text-center"><u>Ubah Produk</u></h1>
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
						$no = 1;
						foreach($chk as $id) { 
							$result = mysqli_query($conn, "SELECT * FROM produk WHERE id = '$id'") or die (mysqli_error($conn));
							while ($data = mysqli_fetch_array($result)) { ?>
							<tr>
								<td><?= $no++ ?></td>
								<td>
									<input type="hidden" name="id[]" value="<?= $data['id'] ?>">
									<input type="text" name="nama[]" value="<?= $data['nama'] ?>" class="form-control" autocomplete="off" required autofocus>
								</td>
								<td>
									<input type="text" name="harga[]" value="<?= $data['harga'] ?>" class="form-control" autocomplete="off" required>
								</td>
								<td>
									<input type="text" name="kategori[]" value="<?= $data['kategori'] ?>" class="form-control" autocomplete="off" required>
								</td>
								<td>
									<input type="text" name="berat[]" value="<?= $data['berat'] ?>" class="form-control" autocomplete="off">
								</td>
								<td>
									<input type="text" name="isi[]" value="<?= $data['isi'] ?>" class="form-control" autocomplete="off">
								</td>
								<td>
									<input type="text" name="ket[]" value="<?= $data['keterangan'] ?>" class="form-control" autocomplete="off">
								</td>
							</tr>
						<?php } 
						} ?>
					</tbody>
				</table>
				<div class="form-group mt-4">
					<a href="<?= $url; ?>" class="btn btn-danger"><i class="fas fa-fw fa-arrow-left"></i> Batal</a>
					<button type="submit" name="ubah" class="btn btn-primary"><i class="fas fa-fw fa-edit"></i> Ubah Produk</button>
				</div>
			</form>
		</div>
	</div>

	<?php include_once '../__TEMPLATES__/footer.php'; ?>
<?php } ?>