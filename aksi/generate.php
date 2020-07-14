<?php 
include_once '../__CONFIG__/config.php';
include_once '../__TEMPLATES__/header.php';
?>

<div class="row m-auto">
	<div class="col-lg-4 offset-4">
	    <h1 class="mt-3 text-center"><u>Generate Produk</u></h1>
	    <br>
	    <form action="tambah.php" method="post">
	    	<div class="form-group">
				<input type="hidden" id="id" name="id[]" value="">
				<label for="count_add">Jumlah Data</label>
				<input type="text" id="count_add" name="count_add" maxlength="2" pattern="[0-9]+" class="form-control" autocomplete="off" autofocus required>
			</div>
	    	<div class="form-group mt-4">
	    		<a href="<?= $url; ?>" class="btn btn-danger"><i class="fas fa-fw fa-arrow-left"></i> Batal</a>
	    		<button type="submit" name="tambah" class="btn btn-primary"><i class="fas fa-fw fa-random"></i> Generate</button>
	    	</div>
	    </form>
	</div>
</div>

<?php include_once '../__TEMPLATES__/footer.php'; ?>