<?php
if(isset($_POST['register'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $confirmPassword = $_POST['confirm_password'];
    $email = $_POST['email'];

    if(empty($username) || empty($password) || empty($confirmPassword) || empty($email)) {
        // Handle empty fields error
    } elseif(strlen($username) < 6 || strlen($password) < 6) {
        // Handle minimum length error
    } elseif(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        // Handle invalid email format error
    } elseif($password != $confirmPassword) {
        // Handle password mismatch error
    } else {
        // Process registration
    }
}
?>