<?php
include 'admin/config/config.php';
$id = $_POST['id'];
 $sql = mysqli_query($con, "SELECT * from produk_bmt a inner join jenis_produk b on a.id_jenis_produk = b.id_jenis_produk  where id_produk='$id'");
    while ($data = mysqli_fetch_array($sql)){
?>

<h3><strong><?php echo $data['nama_produk'] ?></strong>
<br><small>Jenis Produk : <?php echo $data['jenis_produk'] ?></small>
</h3>
<hr>
<?php echo $data['desk_produk'] ?>
<?php } ?>