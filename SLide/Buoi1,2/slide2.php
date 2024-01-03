<?php
//  1.Mang
//  1.1 Mang tuan tu
// Khai bao

$mang1 = array (1,2,3,4,5);
// Cach 2
$mang2 = ['Do','Hong','Quan'];
//  Hiện Thị Phần tử của các giá trị
// echo $mang1[2];

// echo $mang2[2];

//  Thay đổi gía trị phần tử 

// $mang2[2] = 'Hoang';

// echo $mang2[2]."<br>";

// $mang2[] = 'KKK';
// echo $mang2[3] . "<br>";
//  Hiện thị mảng
// echo "<br>";
// echo "<pre>";
// print_r($mang2);
// var_dump($mang2);
// echo "</pre>";

// 1.2 mảng liên kết
$mang3 = array(
    'hoten' => 'Do Hong Quan',
    'nansinh' => 2003,
    'gioitinh' => 'nam',
    'nghenghiep' => 'IT'
);
//  Hiện Thị Giá Trị 

// echo "Họ tên: " .$mang3['hoten'] . "<br>";
// echo "Năm Sinh: " .$mang3['nansinh'] . "<br>";
// echo "Giới Tính: " .$mang3['gioitinh'] . "<br>";
// echo "Nghề Nghiệp: " .$mang3['nghenghiep'] . "<br>";

// 1.3 Mảng Hỗn Hợp

        $mang4 = array(
            1 => 'Do Hong Quan',
            'namsinh' => 2003,
            'nam',
            'nghenghiep' => 'IT'
        );
        //  Hiện Thị Giá Trị 
        // echo "Họ tên: " .$mang4[1] . "<br>";
        // echo "Năm Sinh: " .$mang4['nansinh'] . "<br>";
        // echo "Giới Tính: " .$mang4[2] . "<br>";
        // echo "Nghề Nghiệp: " .$mang4['nghenghiep'] . "<br>";
    
        // 1.4 Mảng đa chiều
        // Mảng 2 chiều
        $mang5 = array(
            array(1,2,3),
            array(4,5,6),
            array(7,8,9),
        );

        // Hiện Thị giá trị
        // echo $mang5[1][2];


        //2. Hàng Số
        // const Pi = 3.14;
        // echo Pi;
        // Cách2
        // define('Pi', 3.14);
        // echo Pi;

        // 3. Câu lệnh rẽ nhánh if
        // $diemTB = 10;
        // if($diemTB >=5){
        //     echo "Pass";

        // }else{
        //     echo "Fail";
        // }

        // if($diemTB >=5):
        //     echo "Pass";

        // else:
        //     echo "Fail";
        // endif;
        
        // echo ($diemTB >=5) ? "Pass":"Fail";

        // 4.Switch -case

        // $number = 2;
        // switch($munber){
        //     case 1:
        //         echo "Đây là số 1";
        //         break;
        //     case 2:
        //         echo "Đây là số 2";
        //         break;
        //     case 3:
        //         echo "Đây là số 3";
        //         break;
        //     case 4:
        //         echo "Đây là số 4";
        //         break;
        //     default:
        //         echo "Tạch lô";
        //         break;
        // }
        // 5.Câu lệnh match
            // $ketqua = match($number){
            //     1 => "Đây là số 1",
            //     2 => "Đây là số 2",
            //     3 => "Đây là số 3",
            //     4 => "Đây là số 4",
            //     default => "Tạch Lô",
            // };
            // echo $ketqua;
        
            // 6. Vòng Lặp
            // 6.1 while
            // $a = 1;
            // while ($a <= 5){
            //     echo $a;
            //     $a++;
            // }
            // do{
            //     echo $a;
            //     $a++;
            // }while ($a <= 5);

            // 6.2 For
            // for($i=0; $i<5; $i++){
            //     echo $i;
            // }
            
            // $mang6 = array(1,2,3,4,5);
            // for($i=0; $i< sizeof($mang6); $i++){
            //     echo $mang6[$i];
            // }

            // foreach ($mang6 as $item){
            //     echo $item;

            // }
            // echo "<br>";
            // foreach ($mang6 as $key => $value) {
            //     echo "Key: $key <br>";
            //     echo "Value: $value <br>";
                
            // }
            for($i=0; $i<5; $i++){
                if($i==2){
                    continue;

                }
                echo $i;
            }
        
        

        ?> 