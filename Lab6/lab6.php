<?php
    include "connect.php";
    $sql = "select * from sanpham";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <style>
        .all {
            display: flex;
            flex-wrap: nowrap;
            overflow-x: auto;
        }
        .column {
            flex: 0 0 auto;
            padding: 10px;
            margin-right: 10px;
        }
        .column img {
            object-fit: cover;
        }
        .details {
            display: none;
        }
    </style>
</head>
<body>
    <div class="all">
        <?php foreach ($rows as $item): ?>
            <div class="column">
                <?php if (empty($item['anh'])): ?>
                    <img src="img/1.jpg" alt="Product Image" width="80" height="80">
                <?php else: ?>
                    <img src="img/<?php echo $item['anh']; ?>" alt="Product Image" width="80" height="80">
                <?php endif; ?>
                <h3><?php echo $item['tensanpham']; ?></h3>
                <h4><?php echo $item['giasanpham']; ?></h4>
                <p><?php echo $item['danhmucsanpham']; ?></p>
                <button onclick="showDetails(this)">Thêm</button>
                <div class="details">
                    <p>Mã Sản Phẩm: <?php echo $item['id']; ?></p>
                    <p>Tên Sản Phẩm: <?php echo $item['tensanpham']; ?></p>
                    <p>Giá Sản Phẩm: <?php echo $item['giasanpham']; ?></p>
                    <p>Danh Mục Sản Phẩm: <?php echo $item['danhmucsanpham']; ?></p>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <table id="cartTable" border="1" width="500">
        <tr align="center">
            <td>Mã sản phẩm</td>
            <td>Tên sản phẩm</td>
            <td>Giá sản phẩm</td>
            <td>Danh mục sản phẩm</td>
            <td>Hành động</td>
        </tr>
    </table>

    <script>
        function showDetails(button) {
            var details = button.nextElementSibling;
            var productID = details.querySelector("p:nth-of-type(1)").textContent.split(": ")[1];
            var productName = details.querySelector("p:nth-of-type(2)").textContent.split(": ")[1];
            var productPrice = details.querySelector("p:nth-of-type(3)").textContent.split(": ")[1];
            var productCategory = details.querySelector("p:nth-of-type(4)").textContent.split(": ")[1];
            addToCart(productID, productName, productPrice, productCategory);
        }

        function addToCart(id, name, price, category) {
            var table = document.getElementById("cartTable");
            var row = table.insertRow(-1);
            var cell1 = row.insertCell(0);
            var cell2 = row.insertCell(1);
            var cell3 = row.insertCell(2);
            var cell4 = row.insertCell(3);
            var cell5 = row.insertCell(4);
            cell1.innerHTML = id;
            cell2.innerHTML = name;
            cell3.innerHTML = price;
            cell4.innerHTML = category;
            cell5.innerHTML = '<a href="#" onclick="editProduct(this)">Sửa</a> | <a href="#" onclick="deleteProduct(this)">Xóa</a>';
        }

        function deleteProduct(link) {
            var row = link.closest('tr');
            row.remove();
        }
</script>
</body>
</html>
