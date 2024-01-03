<h2>Bài 3</h2>
<?php
$str = "082307";
$str1 = chunk_split($str, 2, ':');
$str1 = substr($str1, 0, 8);

echo $str1;
?>
<br>
<br>

<h2>Bài 4</h2>
<?php
$string = "Twinkle, twinkle, little star,\nHow I wonder what you are.\nUp above the world so high,\nLike a diamond in the sky.";
$array = explode("\n", $string);
echo '<pre>';
var_dump($array);
echo '</pre>';
?>
<br>
<br>

<h2>Bài 6</h2>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Khung Box Sản Phẩm</title>
    <style>
     

    .all {
      grid-template-columns: repeat(3, 1fr);
      gap: 20px;
      display: flex;
      text-align: center;
      justify-content: center;
    }

    .column {
      padding: 20px;
      margin-left: 200px;
      border: 1px solid black;
    }

        .column img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }
        h3{
            color: #0066FF;
        }
        h4{
            color: #FF9900;
        }
        button{
            background-color: #FFFFCC;
            border: none;
        }
    </style>
</head>

<body>
<?php
        $sp = array(
            array(
                'anh' => '',
                'name' => 'Product 101',
                'cost' => '300.5',
                'category' => 'Category: Hard Disk',
            ),
            array(
                'anh' => '',
                'name' => 'wer',
                'cost' => '3400',
                'category' => 'Category: Keyboard',
            ),
            array(
                'anh' => '',
                'name' => 'Product 202',
                'cost' => '100',
                'category' => 'Category: Laptops',
            ),
        );
    ?>

        <?php
            foreach ($sp as $item) {
               
        ?>
        <div class="all">
        <div class="column">
        <?php
                    if ($item['anh'] == '') {
                        echo '<img src="img/1.jpg" width="150" height="50">';
                    }else {
                        echo '<img src="img'.$item['anh'].'" width="150" height="50">';
                    }
                ?>

                
            <h3><?php echo $item['name']?></h3>
            <h4><?php echo $item['cost']?></h4>
            <p><?php echo $item['category']?></p>
            <button>View Details</button>
        </div>
        
        <?php
            }
        ?>
    </div>
</body>

</html>