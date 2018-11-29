<?php include "db.php"; 
$name = addslashes(strip_tags ($_POST['name'])); 
$email = addslashes(strip_tags ($_POST['email'])); 
$alamat = addslashes(strip_tags ($_POST['alamat'])); 
$password = addslashes(strip_tags ($_POST['password'])); 
$phone = addslashes(strip_tags ($_POST['phone'])); 
$namaPerusahaan = addslashes(strip_tags ($_POST['namaPerusahaan'])); 
$kategori = addslashes(strip_tags ($_POST['kategori'])); 
$kota = addslashes(strip_tags ($_POST['kota'])); 


       if ($name&&$email&&$alamat&&$phone&&$namaPerusahaan{
        $sql_insert = mysqli_query($con,"INSERT INTO owner VALUES ('','$name','$email','$alamat','$phone','$namaPerusahaan')");
        ?>
            <script type="text/javascript">
            window.location = "login.html";
        </script>
        
        <?php
       }
           
?>