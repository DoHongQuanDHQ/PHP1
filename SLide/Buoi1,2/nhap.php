<!-- Trang hiển thị danh sách sản phẩm và nút xóa -->
<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
</head>
<body>
    <?php
    // Lấy danh sách sản phẩm từ cơ sở dữ liệu và hiển thị trong bảng
    $query = "SELECT * FROM products";
    // Thực hiện truy vấn và hiển thị danh sách sản phẩm
    // ...
    ?>
    <table>
        <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Action</th>
        </tr>
        <?php foreach ($products as $product): ?>
        <tr>
            <td><?php echo $product['name']; ?></td>
            <td><?php echo $product['price']; ?></td>
            <td>
                <a href="edit_product.php?id=<?php echo $product['id']; ?>">Edit</a>
                <a href="delete_product.php?id=<?php echo $product['id']; ?>">Delete</a>
            </td>
        </tr>
        <?php endforeach; ?>
    </table>
</body>
</html>
