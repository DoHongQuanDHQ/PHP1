
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <div class="container-form">
            <div class="main">
                <form action="dangnhap.php#" method="POST">
                    <div class="content-input">
                        <label>Email</label> <br>
                        <input type="text" value="<?= $email ?? "" ?>" placeholder="Laurasnow@gmail.com" id="g mail" autocomplete="off" name="gmail"> <br>
                        <p id="errorMail"></p>
                        <label>Mật khẩu</label> <br>
                        <input type="password" value="<?= $password ?? "" ?>" placeholder="*********" id="pass" name="password"> <br>
                        <div class="alert">
                        </div>
                        <label for="showFogort" class="forgot" style="cursor: pointer" >Quên mật khẩu</label>
                        
                        <p id="errorPass">
                            <?= $information ?? "" ?>
                        </p>
                    </div>
                    <div class="button-login">
                        <button class="button-lg" id="btn-lg" name="btn-lg">Đăng nhập</button>
                        <p id="errorAll"></p>
                    </div>
                </form>
            </div>
            <?php
                session_start();
                include "connect.php";

                $errorName = $errorUser = $errorEmail = $errorPass = $errorcPass = $information = "";

                if ($_SERVER["REQUEST_METHOD"] == "POST") {
                    if (isset($_POST['btn-forgotPass'])) {
                        $emailForgort = $_POST['emailForgort'];
                        $checkEmail = taikhoan_select_one($emailForgort);
                        if ($checkEmail) {
                            $forgotPass = "Mật khẩu của bạn: " . $checkEmail['password'];
                        } else {
                            $forgotPass = "Email không tồn tại trong hệ thống.";
                        }
                    } else {
                        $email = $_POST['gmail'];
                        $password = $_POST['password'];

                        if (empty($email)) {
                            $errorEmail = "Trường này không được để trống";
                        } else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                            $errorEmail = "Email không hợp lệ";
                        }

                        if (empty($password)) {
                            $errorPass = "Trường này không được để trống";
                        } else if (strlen($password) < 6) {
                            $errorPass = "Mật khẩu phải dài ít nhất 6 ký tự.";
                        }

                        if (empty($errorEmail) && empty($errorPass)) {
                            $user = array('email' => $email, 'password' => $password);
                            if ($user) {
                                $_SESSION['username'] = $user['username'];
                                header("Location: trangchu.php");
                                exit;
                            } else {
                                $information = "Email hoặc mật khẩu không chính xác.";
                            }
                        }
                    }
                }
            ?>
</html>
