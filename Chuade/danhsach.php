<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    session_start();
    if (isset($_SESSION['user'])) {
        

    ?>
    
    <h2>Danh sách chuyến bay</h2>
    <a href="them.php">Thêm chuyến bay</a>
    <table border="1" width="1000">
        <tr>
            <th>ID</th>
            <th>Số Hiệu</th>
            <th>Ảnh</th>
            <th>Tổng Hành Khách</th>
            <th>Mô tả</th>
            <th>Hãng</th>
            <th>Hành Động</th>
        </tr>
        <?php
            include "connect.php";
            // $sql = "SELECT `flight_id`, `flight_number`, `image`,
            // `total_passengers`, `description`, `airline_id` FROM `flights` WHERE 1";
            $sql = "Select * from flights join airlines on flights.airline_id = airlines.airline_id";
            $stmt = $conn ->prepare($sql);
            $stmt->execute();
            $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach($rows as $item){
        ?>
            <tr>
                <td><?php echo $item['flight_id'];?></td>
                <td><?php echo $item['flight_number'];?></td>
                <td><img src="img/<?php echo $item['image'];?>" alt="" width="68" height="68"></td>
                <td><?php echo $item['total_passengers'];?></td>
                <td><?php echo $item['description'];?></td>
                <!-- <td><?php //echo $item['airline_id'];?></td> -->
                <td><?php echo $item['airline_name'];?></td>
                <td><a href="sua.php?id=<?php echo $item['flight_id'];?>">Sửa</a> | <a href="#">Xóa</a></td>
            </tr>
        <?php
        }
        ?>
        <?php
        }else {
            header("Location: dangnhap.php");
        }
        ?>
    </table>
</body>
</html>