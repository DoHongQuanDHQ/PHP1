<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<?php
$loi = "";
if (isset($_POST['btnsubmit'])) {
    $product_name = $_POST['product_name'];
    $product_price = $_POST['product_price'];
    $anh = $_FILES['ipfile'];
    $anh_dir = 'uploads/'.$anh['name'];
    if (file_exists($anh_dir)) {
        $i = 1;
        $newFileName = pathinfo($anh['name'], PATHINFO_FILENAME) . '_' . $i . '.' . pathinfo($anh['name'], PATHINFO_EXTENSION);
        while (file_exists('uploads/' . $newFileName)) {
            $i++;
            $newFileName = pathinfo($anh['name'], PATHINFO_FILENAME) . '_' . $i . '.' . pathinfo($anh['name'], PATHINFO_EXTENSION);
        }
        $anh_dir = 'uploads/' . $newFileName;
        if (move_uploaded_file($anh['tmp_name'], $anh_dir)) {
            echo "File đã tồn tại. Upload file thành công với tên mới: " . $newFileName;
            echo "<br>";
        } else {
            echo "Upload file không thành công";
            echo "<br>";
        }
    } else {
        if (move_uploaded_file($anh['tmp_name'], $anh_dir)) {
            echo "Upload file thành công";
            echo "<br>";
        } else {
            echo "Upload file không thành công";
            echo "<br>";
        }
    }
}
?>
<form action="" method="post" enctype="multipart/form-data">
    <label for="product_name">Product Name:</label>
    <input type="text" name="product_name" required><br><br>
    <label for="product_price">Description:</label>
    <input type="text" name="product_price" required><br><br>
    <label for="product_price">Price:</label>
    <input type="text" name="product_price" required><br><br>
    <div>
        <label for="product_image">File:</label>
        <input type="file" name="ipfile" required><br><br>
        <span><?php echo $loi;?></span>
    </div>
    <input type="submit" value="Upload" name="btnsubmit">
</form>
</body>
</html>