<?php
include "db.php";

$email = addslashes(strip_tags ($_POST['email'])); 
$password = addslashes(strip_tags ($_POST['pass'])); 

    $queryLogin = mysqli_query($con,"select * from owner where email='$email' and password='.md5($password).'");
    $row = mysqli_fetch_array($queryLogin,MYSQLI_ASSOC);

    $count = mysqli_num_rows($queryLogin);

    if ($count == 1) {
        ?>
        <script type="text/javascript">
            window.location = "Owner.html";
        </script>
        <?php
    }
        else
        {
            
        ?>
        <script type="text/javascript">
            alert("Username atau Password salah!");
            window.location = "login_owner.html";
            
        </script>
            <?php
        }
?>

