<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Lấy dữ liệu từ form
    $username = $_POST["username"];
    $password = $_POST["password"];
    $confirm_password = $_POST["confirm_password"];
    $email = $_POST["email"];

    // Kiểm tra điều kiện
    // $errors = [];

    if (empty($username) || empty($password) || empty($confirm_password) || empty($email)) {
        $userErr[] = "Tất cả các trường không được để trống.";
    }

    else if (strlen($username) < 6 || strlen($password) < 6) {
        $errors[] = "Độ dài tên đăng nhập và mật khẩu phải lớn hơn 6 ký tự.";
    }

    else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors[] = "Định dạng email không đúng.";
    }

    else if ($password != $confirm_password) {
        $errors[] = "Mật khẩu và xác nhận mật khẩu không trùng khớp.";
    }

    // Hiển thị thông báo lỗi hoặc đăng ký thành công
    if (!empty($errors)) {
        foreach ($errors as $error) {
            echo $error . "<br>";
        }
    } else {
        // Xử lý đăng ký ở đây (ví dụ: lưu vào cơ sở dữ liệu)
        echo "Đăng ký thành công!";
    }
}
?>