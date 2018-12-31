<?php
include "db.php";
if (isset($_POST["login"]))
        {
$username = addslashes(strip_tags ($_POST['username'])); 
$password = addslashes(strip_tags ($_POST['password'])); 

    $queryLogin = mysqli_query($con,"select * from user where username='$username' and password='$password'");
    $row = mysqli_fetch_array($queryLogin,MYSQLI_ASSOC);

    $count = mysqli_num_rows($queryLogin);

    
    
            $validakun=$queryLogin->num_rows;
            if ($validakun==1)
            {
                $akun=$queryLogin->fetch_assoc();
                $_SESSION["user"]=$akun;
                $_SESSION["nama"]=$akun;
                echo "<script>alert('Anda sukses login');</script>";
                echo "<meta http-equiv='refresh' content='1;url=index.php'>";
            }
    else
        {
            echo "<script>alert('Anda gagal login, periksa akun anda!');</script>";
            echo "<script>location='login_user.php';</script>";
        }
    }
