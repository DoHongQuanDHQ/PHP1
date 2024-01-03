<h2>Bài 6</h2>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docmunet</title>
    <style>
        .product-box {
            display: flex;
            justify-content: space-between;
            margin: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .product {
            width: 30%;
            text-align: center;
        }

        .product img {
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
                'cost' => '200',
                'category' => 'Category: Laptops',
            ),
        );
    ?>

    <div class="product-box">
        <div class="product">
            <img src="img/0.jpg">
            <h3>Product 101</h3>
            <h4>300.5</h4>
            <p>Category: Hard Disk</p>
            <button>View Details</button>
        </div>

        <div class="product">
        <img src="img/1.jpg">
            <h3>wer</h3>
            <h4>3400</h4>
            <p>Category: Keyboard</p>
            <button>View Details</button>
        </div>

        <div class="product">
        <img src="img/1.jpg">
            <h3>Product 202</h3>
            <h4>100</h4>
            <p>Category: Laptops</p>
            <button>View Details</button>
        </div>
                <?php
                    foreach($sp as $item){
                ?>
                    
                        <?php
                            if($item['anh'] ==''){
                                echo '<img src="img/1.jpg" alt="" width="80" height = "80">';
                            }else{
                                echo '<img src="img/'.$item['anh'].'" alt="" width="80" height = "80">';
                            }
                        ?>
                        <?php echo $item ['name'] ?>
                        <?php echo $item ['cost'] ?>
                        <?php echo $item ['category'] ?>
                        

                <?php
                    }          
                ?> 

    </div>
    <!-- <?php
        echo "<br>";
        echo "<br>";
        echo "Bài 3 ";
            $str = "082307";
            $str = chunk_split($str,2,":");
            $str = substr($str,0,8);
            echo $str;

            echo "<br>";
            echo "<br>";
            echo "Bài 4:";
            $mang = ['Twinkle, twinkle, little star','How I wonder what you are',
            'Up above the world so high','Like a diamond in the sky.'];
            echo "<pre>";
            var_dump($mang);
            echo "</pre>";
        ?> -->

</body>

</html>

        

