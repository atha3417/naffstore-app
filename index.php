<?php 
include_once '__CONFIG__/config.php';
include_once '__TEMPLATES__/header.php';
$query = mysqli_query($conn, "SELECT * FROM produk ORDER BY dibuat DESC");
$filename = 'produk-'.date('d/m/y').'-'.substr(md5(rand()),0,10);
$date = date('d/m/Y');
?>

<div class="col-lg">
    <h1 class="mt-3 mb-4 text-center"><u>Daftar Produk NAF-FROZEN</u></h1>
    <a href="aksi/pilih.php" class="btn btn-primary mt-2 mb-1"><i class="fas fa-fw fa-plus"></i> Tambah Produk</a>
    <button class="btn btn-success mt-2 mb-1" onclick="ubah()"><i class="fas fa-fw fa-edit"></i> Ubah Produk</button>
    <button class="btn btn-danger mt-2 mb-1" onclick="hapus()"><i class="fas fa-fw fa-trash"></i> Hapus Produk</button>
    <br><br>
    <form method="post" name="proses" class="mb-5">
        <table class="table table-hover table-bordered table-striped" id="dataTable">
            <thead>
                <tr class="text-center">
                    <th width="40">No.</th>
                    <th width="260">Nama</th>
                    <th>Harga</th>
                    <th>Berat</th>
                    <th>Ket</th>
                    <th><i class="fas fa-fw fa-info-circle"></i></th>
                    <th width="40">
                        <input type="checkbox" id="select_all" value="">
                    </th>
                </tr>
            </thead>
            <tbody>
                <?php 
                $no = 1; foreach ($query as $row) : ?>
                    <tr class="text-center">
                        <td width="40"><?= $no++; ?></td>
                        <td><i><b><?= $row['nama']; ?></b></i></td>
                        <td><i><b><?= indo_currency($row['harga']); ?></b></i></td>
                        <td><?= $row['berat'] == null ? "-" : $row['berat']." g"; ?></td>
                        <td><?= $row['keterangan'] == null ? "-" : $row['keterangan']; ?></td>
                        <td>
                            <a href="" class="badge badge-pill badge-secondary" id="set_dtl" 
                            data-toggle="modal" 
                            data-target="#modal-detail" 
                            data-nama="<?= $row['nama']; ?>",
                            data-isi="<?= $row['isi'] == null ? "-" : $row['isi']; ?>"
                            data-harga="<?= $row['harga']; ?>"
                            data-kategori="<?= $row['kategori']; ?>"
                            data-berat="<?= $row['berat'] == null ? "-" : $row['berat']." g"; ?>" 
                            data-ket="<?= $row['keterangan'] == null ? "-" : $row['keterangan']; ?>"
                            data-dibuat="<?= $row['dibuat']; ?>"
                            data-diubah="<?= $row['diubah'] == null ? "-" : $row['diubah']; ?>">
                            <i class="fas fa-fw fa-info"></i></a>
                        </td>
                        <td width="40">
                            <input type="checkbox" name="checked[]" class="check" value="<?= $row['id'] ?>">
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </form>
</div>

<!-- Modal -->
<div class="modal fade" id="modal-detail" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="ItemModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="ItemModalLabel"><strong><i>Detail Produk</i></strong></h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body table-responsive">
        <table class="table table-hover" id="pagination">
          <tbody>
            <tr>
              <th scope="row">Nama</th>
              <td><span id="nama"></span></td>
            </tr>
            <tr>
              <th scope="row">Harga</th>
              <td><span id="harga"></span></td>
            </tr>
            <tr>
              <th scope="row">Kategori</th>
              <td><span id="kategori"></span></td>
            </tr>
            <tr>
              <th scope="row">Berat</th>
              <td><span id="berat"></span></td>
            </tr>
            <tr>
              <th scope="row">Isi</th>
              <td><span id="isi"></span></td>
            </tr>
            <tr>
              <th scope="row">Keterangan</th>
              <td><span id="ket"></span></td>
            </tr>
            <tr>
              <th scope="row">Dibuat</th>
              <td><span id="dibuat"></span></td>
            </tr>
            <tr>
              <th scope="row">Diubah</th>
              <td><span id="diubah"></span></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
    </div>
  </div>
</div>

<script>
    $(document).ready(function() {
        $('#select_all').on('click', function() {
            if (this.checked) {
                $('.check').each(function() {
                    this.checked = true;
                })
            } else {
                $('.check').each(function() {
                    this.checked = false;
                })
            }
        })

        $('.check').on('click', function() {
            if ($('.check:checked').length == $('.check').length) {
                $('#select_all').prop('checked', true)
            } else {
                $('#select_all').prop('checked', false)
            }
        })
    })

    function ubah() {
        document.proses.action = 'aksi/ubah.php'
        document.proses.submit()
    }

    function hapus() {
        let conf = confirm('Apakah Anda Yakin Ingin Menghapus Produk Yang dipilih?')
        if (conf) {
            document.proses.action = 'aksi/hapus.php'
            document.proses.submit()
        }
    }

    $('#dataTable').DataTable({
        columnDefs: [
            {
             "searchable" : false,
             "orderable" : false,
             "targets" : [5, 6]
            }
        ]
    })

    $(document).on('click', '#set_dtl', function() {
      var nama = $(this).data('nama');
      var harga = $(this).data('harga');
      var kategori = $(this).data('kategori');
      var berat = $(this).data('berat');
      var isi = $(this).data('isi');
      var ket = $(this).data('ket');
      var dibuat = $(this).data('dibuat');
      var diubah = $(this).data('diubah');
      $('#nama').text(nama);
      $('#harga').text(harga);
      $('#kategori').text(kategori);
      $('#berat').text(berat);
      $('#isi').text(isi);
      $('#ket').text(ket);
      $('#dibuat').text(dibuat);
      $('#diubah').text(diubah);
    })
</script>

<?php include_once '__TEMPLATES__/footer.php'; ?>
