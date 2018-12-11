<?php
include "db.php"; 

$msg = "";
// if upload button is pressed

if(isset($_POST['upload'])) {
  $target = "assets/images/" .basename($_FILES['image']['name']);

  //get all the submitted data from the form
  $nama = $_POST['nama'];
  $harga = $_POST['harga'];
  $image = $_FILES['image']['name'];
  $text = $_POST['deskripsi'];
  $radio = $_POST['radio'];
  $kategori = $_POST['kategori'];

  //now let's move the uploaded image into the folder: images
  if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
    $msg = "Image uploaded successfully";

    ?>
    <script type="text/javascript">
      window.location = "activity_player.php";
    </script>
    <?php

  } else {
    $msg = "there was a problem uploading image";
  }
     if($_POST['radio'] == 1){
       $sqlRb1 = "insert into upload_venue(kategori,nama_venue,harga_sewa,gambar_venue,jenis_lapangan,deskripsi) 
       values ('$kategori','$nama','$harga','$image','Rumput','$text')";
       mysqli_query($con,$sqlRb1);
     }  //masukkan ke transaksi debit
    else{
      mysqli_query($con,"insert into upload_venue(kategori,nama_venue,harga_sewa,gambar_venue,jenis_lapangan,deskripsi) 
      values ('$kategori','$nama','$harga','$image','Bukan Rumput','$text')");
      
    } //masukkan ke transaksi kredit
   
}

?>