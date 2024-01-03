<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=<, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $dienthoai = array("Iphone","Samsung","Oppo","Nokia");


    ?>
        <table border="1" width = "300">
        <tr>
            <th>Name</th>
            <th>Action</th>
        </tr>
        <?php
                foreach($dienthoai as  $item){
                    echo '<tr>';
                        echo '<td>'.$item.'</td>';
                        echo '<td><a href="#">Edit</a> | <a href="#">Delete</a></td>';
                    echo' </tr>';
                }


        ?>
        <?php
                 foreach($dienthoai as  $item){
                    echo '<tr>';
                        echo '<td>'.$item.'</td>';
                        echo '<td><a href="#">Edit</a> | <a href="#">Delete</a></td>';
                    echo '</tr>';
                }
        ?>
        <?php
             foreach($dienthoai as  $item){
        ?>
                <tr align = "center">
                    <td><?php echo $item; ?></td>
                <td><a href="#">Edit</a> | <a href="#">Delete</a></td>
                </tr>
        <?php
            }
        ?>

        
        </table>
</body>
</html>