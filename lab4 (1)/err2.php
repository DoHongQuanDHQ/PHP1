<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Lấy dữ liệu từ form
    $username = $_POST["username"];
    $password = $_POST["password"];

     $errors = [];

    if (empty($username) || empty($password)) {
        $errors[] = "Tất cả các trường không được để trống.";
    }

    else if (strlen($username) < 6 || strlen($password) < 6) {
        $errors[] = "Độ dài tên đăng nhập và mật khẩu phải lớn hơn 6 ký tự.";
    }

    // Hiển thị thông báo lỗi hoặc đăng ký thành công
    if (!empty($errors)) {
        foreach ($errors as $error) {
            echo $error . "<br>";
        }
    } else {
        // Xử lý đăng ký ở đây (ví dụ: lưu vào cơ sở dữ liệu)
        echo (' Đăng ký thành công!');
    }
}
?>
<script></script>