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
            if (empty($tenanh)) {
                $loi ['tenanh'] = "bắt buộc phải nhập ";
            }
            if (empty($soluong)) {
                $loi ['soluong'] = "bắt buộc phải nhập ";
            }else if ($soluong <0) {
                $loi ['soluong'] = "số lượng phải là số dương  ";
            
            }
            if (empty($mota)) {
                $loi ['mota'] = "bắt buộc phải nhập ";
            }
            if (empty($loi)) {
                $sql = "INSERT INTO `flights`(`flight_number`, `image`, `total_passengers`, `description`, `airline_id`) 
                                    VALUES ('$sohieu','$tenanh','$soluong','$mota ','$hang')";
                $conn->exec($sql);
                move_uploaded_file($anh['tmp_name'],'img/'.$tenanh);
                header('location:danhsach.php');
            }
        }
    ?>
    <h2>thêm chuyến bay </h2>
    <form action="" method="post" enctype="multipart/form-data"> 
        <div>
             <input type="text" name="sohieu" id="" placeholder="số hiệu ">        
             <span><?php echo (isset($loi ['sohieu']))? $loi ['sohieu'] :"" ;?></span>
        </div>
        <div>
             <input type="file" name="anh" id="" >        
             <span><?php echo (isset($loi ['tenanh']))? $loi ['tenanh'] :"" ;?></span>
        </div>
        <div>
             <input type="number" name="soluong" id="">        
             <span><?php echo (isset($loi ['soluong']))? $loi ['soluong'] :"" ;?></span>
        </div>
        <div>
             <input type="text" name="mota" id="" placeholder="mô tả ">        
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
             <input type="submit" name="btn" value="thêm ">        
             <span></span>
        </div>
     

    </form>
</body>
</html>