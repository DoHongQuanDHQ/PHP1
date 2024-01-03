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
        $id = $_GET['id'];
        $sql = "Select * from flights where flight_id =$id";
        $stmt = $conn ->prepare($sql);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if (isset($_POST['btnsubmit'])) {
            $sohieu = $_POST['sohieu'];
            $anh = $_FILES['anh'];
            $hanhkhach = $_POST['hanhkhach'];
            $mota = $_POST['mota'];
            $hang = $_POST['hang'];
            if (empty($tenanh)) {
                $sql="UPDATE `flights` SET
                                    `flight_number`='$sohieu,
                                    `image`='$anh',
                                    `total_passengers`='$hanhkhach',
                                    `description`='$mota',
                                    `airline_id`='$hang' WHERE 'flight_id' = $id";
            }else{
                $sql="UPDATE `flights` SET
                                    `flight_number`='$sohieu,
                                    `image`='$anh',
                                    `total_passengers`='$hanhkhach',
                                    `description`='$mota',
                                    `airline_id`='$hang' WHERE 1";
                                }
            $conn->exec($sql);
            move_uploaded_file($anh['tmp_name'],'img/'.$tenanh);
            header("Location: danhsach.php");
        }
    ?>
            <form action="" method="post" enctype="multipart/form-data">
                <div><input type="text" name="sohieu" id="" placeholder="Số Hiệu" value="<?php echo $item['flight_number'];?>"></div>
                <div>
                    <img src="img/<?php echo $item['image'];?>" alt="" srcset="" width="60" height="60">
                    <input type="file" name="anh" id="">
                </div>
                <div><input type="text" name="hanhkhach" id="" placeholder="Tổng Hành Khách" value="<?php echo $item['total_passengers'];?>"></div>
                <div><input type="text" name="mota" id="" placeholder="Mô tả" value="<?php echo $item['description'];?>"></div>
                <div>
                    <select name="hang" id="">
                        <?php
                            $sql = "SELECT * FROM `airlines`";
                            $stmt = $conn ->prepare($sql);
                            $stmt->execute();
                            $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                            foreach($rows as $item){
                        ?>
                            <option value="<?php echo $item ['airline_id'];?>"<?php echo ($item ['airline_id'] == $row['airline_id']) ? "selected": ""?>
                            <?php echo $item['airline_name'];?>></option>
                        <?php
                            }
                        ?>
                    </select>
                </div>
                    <input type="submit" value="Thêm" name="btnsubmit">
            </form>
    <?php
    }else {
        header("Location: dangnhap.php");
    }
    ?>
</body>
</html>