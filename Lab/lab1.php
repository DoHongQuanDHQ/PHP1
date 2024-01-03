<?php
 echo "bài 1: <br>";
echo "hello <br>";
echo "(hello)<br>";
echo "hello world <br>";
echo "hello ","world <br> <br>";


echo "bài 2: xuất biến <br>"; 
 $str= " hello string ";
 $a= 200;
 $b= 44.6;
 echo " string is: $str <br/>";
 echo " integer is: $a <br/>";
 echo " float is: $b <br/> <br>";

 echo "bài 3: xuất chuỗi và biến <br> ";
 $coler="red";
 echo "My car is "  .$coler. "<br>";
 echo " my house is " . $coler . "<br>";
 echo " my boat is " .$coler. "<br> <br>";

 
echo "Toán Tử <br> <br>";

 echo " bài 1: toán tử <br> <br>";
 $x = ( 2==3);
 $x = ( 2!=3);
 $x = ( 2<>3);
 $x = ( 2===3);
 $x = ( 2!==3);
 $x = ( 2>3);
 $x = ( 2<3);
 $x = ( 2<=3);
echo "X =  " .$x.  "<br> <br>";

 echo" bài 2: chuỗi <br>";
 $s= "hello world ";
 echo"$s";
 $s = 'It\'s\n';
 echo "$s";
 echo "\nHello<br>World ";
 echo "\u{00C2A9} ";
 echo "\u{C2A9}";

 $a= 'hello';
 $$a = 'world';
 echo "$a $hello <br> <br>";


 echo " bài 3: tính tổng <br>";
 $c= 6;
 $d= 9;
 echo "tính tổng: $c + $d = 15";
  


?>