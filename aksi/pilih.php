<?php 
include_once '../__CONFIG__/config.php';
include_once '../__TEMPLATES__/header.php';
?>

<div class="row m-auto">
	<div class="col-lg-4 offset-4">
	    <h1 class="mt-3 mb-5 text-center"><u>Pilih Metode</u></h1>
	    <div class="text-center m-auto">
			<a href="<?= $url; ?>" class="btn btn-danger"><i class="fas fa-fw fa-arrow-left"></i> Batal</a>
			<a href="generate.php" class="btn btn-info"><i class="fas fa-fw fa-plus"></i> Manual</a>
			<a href="impor.php" class="btn btn-secondary"><i class="fas fa-fw fa-file-excel"></i> Impor Excel</a>
		</div>
	</div>
</div>

<?php include_once '../__TEMPLATES__/footer.php'; ?>