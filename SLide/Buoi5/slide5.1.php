<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        if (isset($_POST['btnsubmit'])) {
            echo "<pre>";
            print_r($_FILES['ipfile']);
            echo "<pre>";
            $anh = ($_FILES['ipfile']);
            echo "<pre>";
            // Lấy tên file
            echo $anh['name']."<br>";
            // Lấy Tên file tạm
            echo $anh['tmp_name']."<br>";
            // hàm upload file : move_uploaded_file(): gồm 2 tham số
            $anh_dir = 'uploaded/'.$anh['name'];
            if (move_uploaded_file($anh['tmp_name'],$anh_dir)) {
                echo "Upload file thành công";
            }else{
                echo "Upload file không thành công";
            }
        }
    ?>
    <form action="" method="post" enctype="multipart/form-data">
        <div>
            <input type="file" name="ipfile" id="">
        </div>
        <input type="submit" value="Upload" name="btnsubmit">
    </form>
</body>
</html>