<?php
    include 'connect.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>danh sách chuyến bay </h2>
    <a href="them.php">thêm chuyến bayy </a>
    <table border="1" width = "1000">
        <tr>
            <th>id</th>
            <th>số hiệu </th>
            <th>ảnh </th>
            <th>số lượng hk </th>
            <th>mo tả </th>
            <th> hãng  </th>
            <th> hàng động </th>
        </tr>
        <?php
        //   $sql = "SELECT `flight_id`, `flight_number`, `image`, `total_passengers`, `description`, `airline_id` FROM `flights` WHERE 1";
          $sql = "select * from flights join airlines on flights.airline_id = airlines.airline_id";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach($rows as $item){
            ?>
            <tr align="center">
            <td><?php echo $item ['flight_id'];?></td>
            <td><?php echo $item ['flight_number'];?></td>
            <td><img src="../img/<?php echo $item ['image'];?>" alt="" width="100" height="100"></td>
            <td><?php echo $item ['total_passengers'];?></td>
            <td><?php echo $item ['description'];?></td>
            <td><?php echo $item ['airline_name'];?></td>
            <td><a href="sua.php?id= <?php echo $item ['flight_id'];?>">sửa </a>   | <a href="xoa.php?id= <?php echo $item ['flight_id'];?>"> xóa</a></td>
        </tr>
        <?php
        }
        ?>
    </table>    
</body>
</html>