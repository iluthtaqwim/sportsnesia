<?php include "db.php"; 
$username = addslashes(strip_tags ($_POST['name'])); 
$email = addslashes(strip_tags ($_POST['email'])); 
$password = addslashes(strip_tags ($_POST['pass'])); 
$phone = addslashes(strip_tags ($_POST['phone'])); 

       if ($username&&$email&&$password&&$phone){
        $sql_insert = mysqli_query($con,"INSERT INTO user VALUES ('','$username','$email','$phone','$password')");
        ?>
            <script type="text/javascript">
            window.location = "login.html";
        </script>
        
        <?php
       }
           
?>

        