<!DOCTYPE html>
<html id="body" lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php 
    $server_con=mysqli_connect('localhost','root','','netlib'); 
    ?>
    <?php 
    
    ?>
    <title></title>

    <link rel="stylesheet" href="./assets/style/index_style/index.css">
</head>

<body>


    <!-- Loading Screen -->
    <?php include_once './assets/components/loading.php' ?>

    <!-- Menu Bar -->
    <?php include_once './assets/components/nav.php' 
    ?>

    <!-- Account BTN -->
    <?php include_once './assets/components/accaunt.php' ?>

    <!-- Account BackGround Video -->
    <?php include_once './assets/components/bg_vid.php'?>

    <!-- Account BackGround Video -->
    <?php include_once './assets/components/movie_card.php'?>


</body>

</html>