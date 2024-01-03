<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <?php
        $loi =[];
        if(isset($_POST['btnsubmit'])){
            $user = $_POST('txtuser');
            $pass = $_POST('txtpass');
            if($user == ""){
                $loi['user'] = "khong de trong";
            }
            if(empty($pass)){
                $loi['pass'] = "Khong de pass trong";
            }
            if(empty($loi)){
                echo "Dang nhap thanh cong";
            }
        }
    ?>
    <form action="" method="post">
        <div>
            <input type="text" name="txtuser" id="" placeholder="Usename">
            <span><?php echo (isset($loi['user'])) ? $loi['user'] : ""; ?></span>
        </div>
        <div>
            <input type="password" name="txtpass" id="" placeholder="Password">
            <span><?php echo (isset($loi['pass'])) ? $loi['pass'] : ""; ?></span>
        </div>
        <input type="submit" value="Đăng nhập" name="btnsubmit">

    </form>
</body>

</html>