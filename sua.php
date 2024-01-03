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
    <?php
    $loi = [];
    $id = $_GET['id'];
    $sql = "select * from flights where flight_id = $id";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if (isset($_POST['btn'])) {
            $sohieu = $_POST['sohieu'];
            $anh = $_FILES['anh'];
            $tenanh = $anh['name'];
            $soluong = $_POST['soluong'];
            $mota = $_POST['mota'];
            $hang = $_POST['hang'];
            if (empty($sohieu)) {
                $loi ['sohieu'] = "bắt buộc phải nhập ";
            }
            // if (empty($tenanh)) {
            //     $loi ['tenanh'] = "bắt buộc phải nhập ";
            // }
            if (empty($soluong)) {
                $loi ['soluong'] = "bắt buộc phải nhập ";
            }else if ($soluong <0) {
                $loi ['soluong'] = "số lượng phải là số dương  ";
            
            }
            if (empty($mota)) {
                $loi ['mota'] = "bắt buộc phải nhập ";
            }
            if (empty($loi)) {
                if (empty($tenanh)) {
                                    $sql = "UPDATE `flights` SET`flight_number`='$sohieu',
                    
                                    `total_passengers`='$soluong',
                                    `description`='$mota',
                                    `airline_id`='$hang' WHERE  flight_id = $id";
                }else{
                    $sql = "UPDATE `flights` SET`flight_number`='$sohieu',
                                    `image`='$tenanh',
                                    `total_passengers`='$soluong',
                                    `description`='$mota',
                                    `airline_id`='$hang' WHERE  flight_id = $id";
                }
                $conn->exec($sql);
                move_uploaded_file($anh['tmp_name'],'img/'.$tenanh);
                header('location:danhsach.php');
            }
        }
    ?>
    <h2>sửa chuyến bay  </h2>
    <form action="" method="post" enctype="multipart/form-data"> 
        <div>
                <input type="text" name="sohieu" id="" placeholder="số hiệu " value="<?php echo $row['flight_number']?>">        
                <span><?php echo (isset($loi ['sohieu']))? $loi ['sohieu'] :"" ;?></span>
        </div>
        <div>
            <img src="img/<?php echo $row['image']?>" alt="" width="100" height="100">
                <input type="file" name="anh" id="">        
                <span><?php echo (isset($loi ['tenanh']))? $loi ['tenanh'] :""  ;?></span>
        </div>
        <div>
                <input type="number" name="soluong" id="" value="<?php echo $row['total_passengers']?>">        
                <span><?php echo (isset($loi ['soluong']))? $loi ['soluong'] :"" ;?></span>
        </div>
        <div>
                <input type="text" name="mota" id="" placeholder="mô tả " value="<?php echo $row['description']?>">        
                <span><?php echo (isset($loi ['mota']))? $loi ['mota'] :"" ;?></span>
        </div>
        <div>
                <select name="hang" >
                <?php
        //   $sql = "SELECT `flight_id`, `flight_number`, `image`, `total_passengers`, `description`, `airline_id` FROM `flights` WHERE 1";
                $sql = "select * from airlines";
                $stmt = $conn->prepare($sql);
                $stmt->execute();
                $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                foreach($rows as $item){
                ?>

                    <option value="<?php echo $item['airline_id'];?>"><?php echo $item['airline_name'];?></option>  

                <?php
                }
            ?>
            </select>
            
        </div>
        <div>
                <input type="submit" name="btn" value="sửa  ">        
                <span></span>
        </div>
    </form>
</body>
</html>