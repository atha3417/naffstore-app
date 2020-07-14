<?php 
include_once '../__CONFIG__/config.php';
include_once '../__TEMPLATES__/header.php';
?>


<div class="row m-auto">
	<div class="col-lg-4 offset-4">
	    <h1 class="mt-3 text-center"><u>Import Excel</u></h1>
	    <br>
	    <form action="proses.php" method="post" enctype="multipart/form-data">
	    	<div class="form-group">
				<label for="">File Excel</label>
				<div class="custom-file">
				    <label class="custom-file-label" for="file">Pilih File</label>
					<input type="file" class="custom-file-input" name="file" id="file" aria-describedby="inputGroupFileAddon01">
				</div>
			</div>
	    	<div class="form-group mt-4">
	    		<a href="<?= $url; ?>" class="btn btn-danger"><i class="fas fa-fw fa-arrow-left"></i> Batal</a>
	    		<a href="../__FILES__/ex/format.xlsx" target="_blank" class="btn btn-success"><i class="fas fa-fw fa-download"></i> Download Format</a>
	    		<button type="submit" name="impor" class="btn btn-primary"><i class="fas fa-fw fa-file-upload"></i> Import</button>
	    	</div>
	    </form>
	</div>
</div>

<?php include_once '../__TEMPLATES__/footer.php'; ?>