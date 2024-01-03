

<?php
    include "connect.php";
    $sql = "select * from sanpham";
    // Chuẩn bị câu lệnh
    $stmt = $conn ->prepare($sql);
    // Thực thi câu lệnh
    $stmt->execute();
    // Lấy tất cả dữ liệu trả về mảng liên hợp
    $rows = $stmt -> fetchAll(PDO::FETCH_ASSOC);
    // echo"<pre>";
    // print_r($rows);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <a href="themsp.php">Thêm Sản Phẩm</a>
    <table border = "1" width="800">

            <tr align="center">
                <th>id</th>
                <th>ảnh</th>
                <th>tên sản phẩm</th>
                <th>giá sản phảm</th>
                <th>danh mục</th>
                <th>hành động</th>
            </tr>
                <?php
                    foreach($rows as $item){
                ?>
                    <tr align="center">
                        <td><?php echo $item ['id'];?></td>
                        <td>
                        <?php
                            if($item['anhsanpham'] ==''){
                                echo '<img src="img/anh1.JPG" alt="" width="80" height="80">';
                            }else{
                                echo '<img src="img/'.$item['anhsanpham'].'" alt="" width="80" height="80">';
                            }
                            ?>
                        </td>
                        <td><?php echo $item ['tensanpham'] ?></td>
                        <td><?php echo $item ['giasanpham'] ?></td>
                        <td><?php echo $item ['danhmucsanpham'] ?></td>
                        <td>
                            <a href="suasp.php?id=<?php echo $item['id'];?>">Sửa</a>
                            <a href="xoasp.php?id=<?php echo $item['id'];?>" onclick="return confirm('Bạn có muốn xóa không');">Xóa</a>
                        </td>
                    </tr>
                <?php
                    }          
                ?>
    </table>
</body>
</html>