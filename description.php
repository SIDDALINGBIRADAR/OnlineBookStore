<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

if(isset($_POST['add_to_cart'])){

   $product_name = $_POST['product_name'];
   $product_price = $_POST['product_price'];
   $product_image = $_POST['product_image'];
   $product_quantity = $_POST['product_quantity'];

   $check_cart_numbers = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

   if(mysqli_num_rows($check_cart_numbers) > 0){
      $message[] = 'already added to cart!';
   }else{
      mysqli_query($conn, "INSERT INTO `cart`(user_id, name, price, quantity, image) VALUES('$user_id', '$product_name', '$product_price', '$product_quantity', '$product_image')") or die('query failed');
      $message[] = 'product added to cart!';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>home</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
   <!-- CSS only -->
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/style2.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<section class="about">

   <div class="flex">

   <div class="box-container">

<?php  
if(isset($_GET['product'])){
   $pro_disv = $_GET['product'];
   $select_products = mysqli_query($conn, "SELECT * FROM `products`WHERE image ='$pro_disv' ") or die('query failed');
   if(mysqli_num_rows($select_products) > 0){
      while($fetch_products = mysqli_fetch_assoc($select_products)){
?>
<form action="" method="post" class="box">
<img class="image" src="uploaded_img/<?php echo $fetch_products['image']; ?>" alt="" height="510px" width="340px">

</form>
<?php
   }
}else{
   echo '<p class="empty">no products added yet!</p>';
}
}?>
</div>

      <div class="content">
         <h3>ABOUT BOOK</h3>

         <div class="box-container1">

         <?php  
         $select_products = mysqli_query($conn, "SELECT * FROM `products` WHERE image ='$pro_disv'") or die('query failed');
         if(mysqli_num_rows($select_products) > 0){
            while($fetch_products = mysqli_fetch_assoc($select_products)){
 
            ?>
            
            <form action="" method="post" >

            <div>
               <p><h1> Title of Book: <i><?php echo $fetch_products['name']; ?></i></h1></p>
               <!-- <div class="name"><strong></strong></div> -->
            </div>
            <div>
               <h1> Preview of Book: </h1>
               <button type="button" class="btn btn-primary"  ><a href="uploaded_video/<?php echo $fetch_products['video']; ?>" alt="" target="_blank"  style= "color: white"; >Video</a></button>
            </div>
            <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Video</button>
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
               <div class="modal-dialog">
               <div class="modal-content">
               
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                     <div class="modal-body">
                     <video width="100%" controls
                     src="uploaded_video/<?php echo $fetch_products['video']; ?>" alt="">
                     </video>
                     
                     </div>
                  </div>
               </div>
            </div> -->

            <!--d/iv-->
            <div class="price"><span>Price: </span>₹<?php echo $fetch_products['price']; ?>/-</div>            
            <div>
            <input type="number" min="1" name="product_quantity" value="1" class="qty">
            <input type="hidden" name="product_name" value="<?php echo $fetch_products['name']; ?>">
            <input type="hidden" name="product_price" value="<?php echo $fetch_products['price']; ?>">
            <input type="hidden" name="product_image" value="<?php echo $fetch_products['image']; ?>">
            <input type="hidden" name="product_description" value="<?php echo $fetch_products['description']; ?>">
            <input type="submit" value="add to cart" name="add_to_cart" class="btn">
            </div>
            </form>
            
            <div>
               <h3>Description</h3>
               <p><?php echo $fetch_products['description']; ?></p>
            </div>
            <?php
         }
         }else {
         echo '<p class="empty">no products added yet!</p>';
      }
      ?>
      </div>
      
      </div>

   </div>


</section>
<h6><hr></h6>

<section class="products" style="padding-top: 0;">
   <div><h1 class="title">RECOMMENDED BOOK</h1></div>
   <div class="box-container">
   <?php
      if(isset($_GET['productsimilar'])){
         $search_item = $_GET['productsimilar'];
         $select_products = mysqli_query($conn, "SELECT * FROM `products` WHERE Category LIKE '%{$search_item}%'") or die('query failed');
         if(mysqli_num_rows($select_products) > 0){
         while($fetch_product = mysqli_fetch_assoc($select_products)){
   ?>
   <form action="" method="post" class="box">
      <a href="description.php?product=<?php echo $fetch_product['image']; ?>& productsimilar=<?php echo $fetch_product['Category']; ?>" ><img class="image" src="uploaded_img/<?php echo $fetch_product['image']; ?>" alt=""></a>
      <!--img src="uploaded_img/<?php echo $fetch_product['image']; ?>" alt="" class="image"-->
      <div class="name"><?php echo $fetch_product['name']; ?></div>
      <div class="price">₹<?php echo $fetch_product['price']; ?>/-</div>
      <input type="number"  class="qty" name="product_quantity" min="1" value="1">
      <input type="hidden" name="product_name" value="<?php echo $fetch_product['name']; ?>">
      <input type="hidden" name="product_price" value="<?php echo $fetch_product['price']; ?>">
      <input type="hidden" name="product_image" value="<?php echo $fetch_product['image']; ?>">
      <input type="submit" class="btn" value="add to cart" name="add_to_cart">
   </form>
   <?php
            }
         }else{
            echo '<p class="empty">no result found!</p>';
         }
      }else{
         echo '<p class="empty">search something!</p>';
      }
   ?>
   </div>
  

</section>



<h6><hr></h6>
<section class="products">

   <h1 class="title">LATEST BOOKS</h1>

   <div class="box-container">

      <?php  
         $select_products = mysqli_query($conn, "SELECT * FROM `products` LIMIT 6") or die('query failed');
         if(mysqli_num_rows($select_products) > 0){
            while($fetch_products = mysqli_fetch_assoc($select_products)){
      ?>
     <form action="" method="post" class="box">
      <a href="description.php?product=<?php echo $fetch_products['image']; ?>& productsimilar=<?php echo $fetch_products['Category']; ?>" ><img class="image" src="uploaded_img/<?php echo $fetch_products['image']; ?>" alt=""></a>
      <div class="name"><?php echo $fetch_products['name']; ?></div>
      <div class="price">₹<?php echo $fetch_products['price']; ?>/-</div>
      <input type="number" min="1" name="product_quantity" value="1" class="qty">
      <input type="hidden" name="product_name" value="<?php echo $fetch_products['name']; ?>">
      <input type="hidden" name="product_price" value="<?php echo $fetch_products['price']; ?>">
      <input type="hidden" name="product_image" value="<?php echo $fetch_products['image']; ?>">
      <input type="submit" value="add to cart" name="add_to_cart" class="btn">
      
     </form>
      <?php
         }
      }else{
         echo '<p class="empty">no products added yet!</p>';
      }
      ?>
   </div>

   <div class="load-more" style="margin-top: 2rem; text-align:center">
      <a href="shop.php" class="option-btn">load more</a>
   </div>

</section>



<section class="home-contact">

   <div class="content">
      <h3>have any questions?</h3>
      <a href="contact.php" class="white-btn">contact us</a>
   </div>

</section>





<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>
   