<?php
    // empty : kiểm tra rỗng
    $a = "a ";
    if(empty($a)){
        echo "Biến \$a không có giá trị";
    }else{
        echo " Giá trị của \$a là $a";
    }
    // isset : kiểm tra tồn tại

    // echo $b;
    $b = 10;
    if(isset($b)){
        echo $b;
    }else{
        echo "Biến \$b chưa được khai báo | Biến \$b không tồn tại";
    }
?>  