<?php include "db.php"; 

$np = addslashes(strip_tags ($_POST['namaPerusahaan']));
$nama_pemilik = addslashes(strip_tags ($_POST['name'])); 
$email = addslashes(strip_tags ($_POST['email'])); 
$alamat = addslashes(strip_tags ($_POST['alamat']));
$phone = addslashes(strip_tags ($_POST['phone']));
$identitas = addslashes(strip_tags ($_POST['identitas']));
$ni = addslashes(strip_tags($_POST['ni']));
$ui = addslashes(strip_tags ($_POST['ui'])); 
$kota = addslashes(strip_tags ($_POST['kota'])); 
$password = addslashes(strip_tags ($_POST['pass'])); 

  

       if ($np&&$nama_pemilik&&$email&&$password&&$phone){
        $sql_insert = mysqli_query($con,"INSERT INTO owner VALUES ('','$np','$nama_pemilik','$email','$alamat','$phone','$identitas','$ni','$ui','$kota','$password')");
        ?>
            <script type="text/javascript">
                window.location = "login_owner.html";
            </script>
        
        <?php
       }
           
       
?>
