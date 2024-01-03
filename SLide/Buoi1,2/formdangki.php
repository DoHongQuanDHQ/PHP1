<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
<?php
    function validateName($user){
        if(empty($user)){
            return "Không được bỏ trống";
        }else{
            if(strlen($user) < 6){
                return "Tài khoản không được dưới 6 ký tự";
            }
        }
        return "";
    }

    function validatePass($pass){
        if(empty($pass)){
            return "Không được bỏ trống";
        }else{
            if(strlen($pass) < 6){
                return "Mật khẩu không được dưới 6 ký tự";
            }
        }
        return "";
    }

    function validateEmail($email){
        if(empty($email)){
            return "Không được bỏ trống email";
        }else{
            if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
                return "email chưa đúng định dạng";
            }
        }
        return "";
    }

    function validateThepass($pass, $thepass){
        if(empty($thepass)){
            return "Không được bỏ trống";
        }else{
            if($pass !== $thepass){
                return "phải trùng khớp với mật khẩu";
            }
        }
        return "";
    }


    $user = $pass = $email = $thepass = "";
    $userErr = $passErr = $emailErr = $thepassErr = "";

    if($_SERVER['REQUEST_METHOD'] == "POST"){
        $user = $_POST['user'];
        $userErr = validateName($user);

        $pass=$_POST['pass'];
        $passErr = validatePass($pass);

        $email=$_POST['email'];
        $emailErr= validateEmail($email);

        $thepass=$_POST['thepass'];
        $thepassErr = validateThepass($pass, $thepass);
    }
?>
    <div class="container">
        <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ?>" method="post">
        <h1>Register form</h1>
        <div class="list">
            Username: <br>
            <input type="text" name="user" id="user"> <br>
            <span class="error"><?php echo $userErr; ?></span>
        </div>
        <div class="list">
            Email: <br>
            <input type="email" name="email" id="email"> <br>
            <span class="error"><?php echo $emailErr; ?></span>
        </div>
        <div class="list">
            Password: <br>
            <input type="password" name="pass" id="pass"> <br>
            <span class="error"><?php echo $passErr; ?></span>
        </div>
        <div class="list">
            Confirm Password: <br>
            <input type="password" name="thepass" id="thepass"> <br><br>
            <span class="error"><?php echo $thepassErr; ?></span>
        </div>
        <input type="submit" value="Register">
        </form>
    </div>
</body>

</html>