<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
        <h2>Registration Form</h2>
    <table border="1">
        <form action="register.php" method="post">
            <label for="username">Username:</label><br>
            <input type="text" id="username" name="username"><br>
            <label for="mail">Email:</label><br>
            <input type="mail" id="mail" name="password"><br>
            <label for="password">Password:</label><br>
            <input type="password" id="password" name="password"><br>
            <label for="confirm_password">Confirm Password:</label><br>
            <input type="confirm_password" id="confirm_password" name="confirm_password"><br>
            <input type="submit" value="Register">
        </form>
    </table>
    <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $username = $_POST["username"];
            $password = $_POST["password"];
            header("Location: success.php");
            exit;
        }
?>
        <?php
        // Connect to the database
        $servername = "localhost";
        $username = "your_username";
        $password = "your_password";
        $dbname = "your_database";

        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
        }

        // Create the user table
        $sql = "CREATE TABLE users (
        id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        username VARCHAR(30) NOT NULL,
        password VARCHAR(30) NOT NULL
        )";

        if ($conn->query($sql) === TRUE) {
        echo "Table users created successfully";
        } else {
        echo "Error creating table: " . $conn->error;
        }

        // Close the connection
        $conn->close();
        ?>


<!-- // Login form
<form action="login.php" method="post">
    <input type="text" name="username" placeholder="Username">
    <input type="password" name="password" placeholder="Password">
    <input type="submit" value="Login">
</form> -->
</body>
</html>