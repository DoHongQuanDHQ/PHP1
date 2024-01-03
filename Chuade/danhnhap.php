<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    session_start();
        if (isset($_POST['btnsubmit'])) {
            $user = $_POST['user'];
            $pass = $_POST['pass'];
            if ($user == "admin" && $pass == "123456") {
                $_SESSION['user']= $user;
                header("Location: danhsach.php");
            }else{
                echo "Thông tin đăng nhập không chính xác";
            }
        }
    ?>
    <h2>Đăng Nhập</h2>
        <form action="" method="post">
            <input type="text" name="user" id="" placeholder="Username"><br>
            <input type="password" name="pass" id="" placeholder="Password"><br>
            <input type="submit" value="Đăng Nhập" name="btnsubmit">
        </form>
</body>
</html>