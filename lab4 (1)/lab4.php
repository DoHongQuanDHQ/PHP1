<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký thành viên</title>
    <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    form {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      width: 300px;
    }

    label {
      display: block;
      margin-bottom: 8px;
    }

    input {
      width: 100%;
      padding: 8px;
      margin-bottom: 16px;
      box-sizing: border-box;
    }

    button {
      background-color: #4caf50;
      color: #fff;
      padding: 10px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      width: 100%;
      margin-top: 10px;
      margin-bottom: 10px;
    }
  </style>
</head>
<body>
    <form action="err.php" method="post">
    <h2 align="center" style="color: red">Đăng ký thành viên</h2>
        <label for="username">Tên đăng nhập:</label>
        <input type="text" name="username" required minlength="6" placeholder="Mời bạn nhập Tên">

        <label for="password">Mật khẩu:</label>
        <input type="password" name="password" required minlength="6" placeholder="Mời bạn nhập Mật khẩu">

        <label for="confirm_password">Nhập lại mật khẩu:</label>
        <input type="password" name="confirm_password" required minlength="6" placeholder="Nhập lại mật khẩu">

        <label for="email">Email:</label>
        <input type="email" name="email" required placeholder="Mời bạn nhập Email">

        <button type="submit" value="Đăng ký">Đăng ký</button>
        <button type="reset" style="background-color: gray;">Reset</button>
    </form>
</body>
</html>