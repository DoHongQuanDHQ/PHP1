<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
        include'connect.php';
        $id = $_GET['id'];
        $sql = "select * from sanpham Where id=$id";
        // Chuẩn bị câu lệnh
        $stmt = $conn ->prepare($sql);
        // Thực thi câu lệnh
        $stmt->execute();
        // Lấy tất cả dữ liệu trả về mảng liên hợp
        $rows = $stmt -> fetch(PDO::FETCH_ASSOC);
        
        if (isset($_POST['btnsubmit'])) {
            $tensanpham = $_POST['tensanpham'];
            $giasanpham = $_POST['giasanpham'];
            $danhmucsanpham = $_POST['danhmucsanpham'];
            $anhsanpham = $_FILES['anhsanpham'];
            $tenanh = $anhsanpham['name'];
            if (empty($tenanh)) {
                $sql = "UPDATE `sanpham` SET
                            `tensanpham`='$tensanpham',
                            `giasanpham`='$giasanpham',
                            `danhmucsanpham`='$danhmucsanpham' WHERE id=$id";
            } else {
                $sql = "UPDATE `sanpham` SET
                            `tensanpham`='$tensanpham',
                            `giasanpham`='$giasanpham',
                            `danhmucsanpham`='$danhmucsanpham',
                            `anhsanpham`='$tenanh' WHERE id=$id";
            }
                    $conn->exec($sql);
                    move_uploaded_file($anhsanpham['tmp_name'],'img/'.$tenanh);
                    echo "Thêm sản phẩm thành công";
        }
        
    ?>
<h1>Sửa Sản Phẩm</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <input type="text" name="tensanpham" id="" placeholder="Tên Sản Phẩm" value="<?php echo $rows['tensanpham']; ?>">
        <br>
        <input type="number" name="giasanpham" id="" placeholder="Giá Sản Phẩm" value="<?php echo $rows['giasanpham']; ?>">
        <br>
        <select name="danhmucsanpham" id="">
        <option value="Iphone" <?php echo ($rows['danhmucsanpham']=="Iphone") ? "selected" : ""; ?>>Iphone</option>
        <option value="SamSung" <?php echo ($rows['danhmucsanpham']=="SamSung") ? "selected" : ""; ?>>SamSung</option>
        <option value="Oppo" <?php echo ($rows['danhmucsanpham']=="Oppo")? "selected" : ""; ?>>Oppo</option>
        <option value="Huawei" <?php echo ($rows['danhmucsanpham']=="Huawei") ? "selected" : ""; ?>>Huawei</option>
        </select>
        <br>
        <label for="">Ảnh sản phẩm</label>
        <img src="img/<?php echo $rows['anhsanpham'];?>"  alt="" width="80" height="80">
        <input type="file" name="anhsanpham" id="">
        <br>
        <input type="submit" value="Sửa Sản Phẩm" name="btnsubmit">
    </form>
</body>
</html>