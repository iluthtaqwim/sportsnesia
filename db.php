<?php
 $host = "localhost"; 
 $user = "root"; 
 $pass = ""; 
 $dbname = "sportsnesia_db"; 
 //$koneksi = mysqli_connect ($host, $user, $pass) or die ("Tidak bisa konek dengan database"); 
//  mysql_select_db ($dbname) or die ("Gagal membuka database"); 

$con = new mysqli($host, $user, $pass, $dbname);
/*if ($con-> connect_error){
    die ("ERORORORO".$con ->connect_error);
}
else {
    echo "";
}*/
 ?>