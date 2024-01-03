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
        if (isset($_POST['btnsubmit'])) {
            $tensanpham = $_POST['tensanpham'];
            $giasanpham = $_POST['giasanpham'];
            $danhmucsanpham = $_POST['danhmucsanpham'];
            $anhsanpham = $_FILES['anhsanpham'];
            $tenanh = $anhsanpham['name'];
            $sql = "INSERT INTO `sanpham`(`tensanpham`, `giasanpham`, `danhmucsanpham`, `anhsanpham`) 
                    VALUES ('$tensanpham','$giasanpham','$danhmucsanpham','$tenanh')";
                    $conn->exec($sql);
                    move_uploaded_file($anhsanpham['tmp_name'],'img/'.$tenanh);
                    echo "Thêm sản phẩm thành công";
        }
    ?>
    <h1>Thêm Sản Phẩm</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <input type="text" name="tensanpham" id="" placeholder="Tên Sản Phẩm">
        <br>
        <input type="number" name="giasanpham" id="" placeholder="Giá Sản Phẩm">
        <br>
        <select name="danhmucsanpham" id="">
        <option value="Iphone">Iphone</option>
        <option value="SamSung">SamSung</option>
        <option value="Oppo">Oppo</option>
        <option value="Huawei">Huawei</option>
        </select>
        <br>
        <label for="">Ảnh sản phẩm</label>
        <input type="file" name="anhsanpham" id="">
        <br>
        <input type="submit" value="Thêm Sản Phẩm" name="btnsubmit">
    </form>
</body>
</html>