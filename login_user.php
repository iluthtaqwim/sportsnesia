<?php
include "db.php";

$username = addslashes(strip_tags ($_POST['username'])); 
$password = addslashes(strip_tags ($_POST['password'])); 

    $queryLogin = mysqli_query($con,"select * from user where username='$username' and password='$password'");
    $row = mysqli_fetch_array($queryLogin,MYSQLI_ASSOC);

    $count = mysqli_num_rows($queryLogin);

    if ($count == 1) {
        ?>
        <script type="text/javascript">
            window.location = "activity_player.html";
        </script>
        <?php
    }
        else
        {
            
        ?>
        <script type="text/javascript">
            alert("Username atau Password salah!");
            window.location = "login_user.html";
            
        </script>
            <?php
        }
?>

