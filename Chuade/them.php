<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        include 'connect.php';
    if (isset($_COOKIE['user'])) {
        if (isset($_POST['btnsubmit'])) {
            $sohieu = $_POST['sohieu'];
            $anh = $_FILES['anh'];
            $hanhkhach = $_POST['hanhkhach'];
            $mota = $_POST['mota'];
            $hang = $_POST['hang'];
            $sql="INSERT INTO `flights`(`flight_number`, `image`, `total_passengers`, `description`, `airline_id`) 
                    VALUES ('$sohieu','$anh','$hanhkhach ','$mota','$hang')";
            $conn->exec($sql);
            move_uploaded_file($anh['tmp_name'],'img/'.$tenanh);
            header("Location: danhsach.php");
        }
    ?>
            <form action="" method="post" enctype="multipart/form-data">
                <div><input type="text" name="sohieu" id="" placeholder="Số Hiệu"></div>
                <div><input type="file" name="anh" id=""></div>
                <div><input type="text" name="hanhkhach" id="" placeholder="Tổng Hành Khách"></div>
                <div><input type="text" name="mota" id="" placeholder="Mô tả"></div>
                <div>
                    <select name="hang" id="">
                        <?php
                            $sql = "SELECT * FROM `airlines`";
                            $stmt = $conn ->prepare($sql);
                            $stmt->execute();
                            $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                            foreach($rows as $item){
                        ?>
                            <option value="<?php echo $item ['airline_id'];?>"<?php echo $item['airline_name'];?>></option>
                        <?php
                            }
                        ?>
                    </select>
                </div>
                    <input type="submit" value="Thêm" name="btnsubmit">
            </form>
    <?php
    }else {
        header("Location: them.php");
    }
    ?>
</body>
</html>