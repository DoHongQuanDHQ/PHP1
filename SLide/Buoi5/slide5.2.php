<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $loi = "";
            if (isset($_POST['btnsubmit'])) {
                $anh = $_FILES['ipfile'];
                // kiểm tra file upload có phải anh không
                $ext = pathinfo($anh['name'],PATHINFO_EXTENSION);
                $ext_img = ['jpg','png','gif','webp','jpeg'];
                if (!in_array($ext,$ext_img)) {
                    $loi="File vừa nhập không đúng định dạng ảnh";
                }else if($anh['size'] > 50*1024) {
                    $loi = "File upload dung lượng quá lớn.Yêu cầu <50KB";
                }else{
                    $loi = "";
                }
                if ($loi == "") {
                    $anh_dir = 'uploaded/'.$anh['name'];
                    if (move_uploaded_file($anh['tmp_name'],$anh_dir)) {
                        echo "Upload file thành công";
                    }else{
                        echo "Upload file không thành công";
                    }
                }
                    // Kiểm tra file đã tồn tại hay chưa
                        $anh_dir = 'uploaded/'.$anh['name'];
                        if (file_exists($anh_dir)) {
                            echo "Flie đã toòn tại";
                        }else{
                                echo "";
                        }
            }
    ?>
    <form action="" method="post" enctype="multipart/form-data">
        <div>
            <input type="file" name="ipfile" id="">
            <span><?php echo $loi;?></span>
        </div>
        <input type="submit" value="Upload" name="btnsubmit">
    </form>
</body>
</html>