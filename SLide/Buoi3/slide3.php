<?php
// Hàm 
// Function tenham();
// 1.1 hàm không trả về giá trị .không tham số 
function xinchao($str){
    // echo "Xin Chào $str";
}

// xinchao("các em")
// hàm ko kiểm tra giá trị trả về
    function tinhtong(){
        $a = 10;
        $b = 5;
        return $a + $b;

    }
    // echo tinhtong();
    // 1.4 hàm trả về giá trinh có tham số
    function tinhtongts($a,$b){
        return $a + $b;

    }
    // echo tinhtongts($a,$b);
    // 1.5 hàm có tham số tùy tùy  chọn
    function tinhtongtc($a , $b = 5){
        return $a + $b;
    }
    // echo tinhtongtc(4);
    // 1.6 Hàm có tham số sẽ được định nghĩa
    function tinhhieudn($b ,$a){
       return $a - $b;
    }
    echo tinhhieudn(6,5);
    
?>