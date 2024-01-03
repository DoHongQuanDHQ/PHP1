<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table border = "1" width="400">
            <?php
            $sv =array(
                array(
                    'anh' => '2.jpg',
                    'masv' =>'PH123456',
                    'hoten' =>'Nguyễn Văn A',
                    'diemthi' => 10,
                ),
                array(
                    'anh' => '',
                    'masv' =>'PH635456',
                    'hoten' =>'Nguyễn Văn B',
                    'diemthi' => 8,
                ),
                array(
                    'anh' => '',
                    'masv' =>'PH124567',
                    'hoten' =>'Nguyễn Văn C',
                    'diemthi' => 5,
                ),
            )
            ?>
            <tr align="center">
                <th>Avatar</th>
                <th>Mã Sinh Viên</th>
                <th>Họ Và Tên</th>
                <th>Điểm Thi</th>
            </tr>
                <?php
                    foreach($sv as $item){
                ?>
                    <tr align="center">
                        <td> 

                        <?php
                            if($item['anh'] ==''){
                                echo '<img src="img/1.JPG" alt="" width="50">';
                            }else{
                                echo '<img src="img/'.$item['anh'].'" alt="" width="50">';
                            }
                            ?>
                        </td>
                        <td><?php echo $item ['masv'] ?></td>
                        <td><?php echo $item ['hoten'] ?></td>
                        <td><?php echo $item ['diemthi'] ?></td>
                    </tr>
                <?php
                    }          
                ?>
    </table>
</body>
</html>