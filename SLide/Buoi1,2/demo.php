<!-- Trang hiển thị thông tin chi tiết và sửa sản phẩm -->
<!DOCTYPE html>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
    <?php
    // Kết nối đến cơ sở dữ liệu và lấy thông tin sản phẩm cần sửa
    $productId = $_GET['id']; // ID của sản phẩm cần sửa
    $query = "SELECT * FROM products WHERE id = $productId";
    // Thực hiện truy vấn và hiển thị thông tin sản phẩm trong form
    // ...
    ?>
    <form action="nhap.php" method="post">
        <!-- Hiển thị thông tin sản phẩm và cho phép người dùng cập nhật -->
        <input type="text" name="product_name" value="<?php echo $product['name']; ?>">
        <input type="text" name="product_price" value="<?php echo $product['price']; ?>">
        <input type="submit" value="Save">
    </form>
</body>
</html>
