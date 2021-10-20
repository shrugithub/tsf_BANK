<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction History</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/table.css">
    <link rel="stylesheet" type="text/css" href="css/navbar.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
 </head>

 <body style="background-color : rgb(234, 243,250 );">

 <?php
  include 'navbar.php';
 ?>

	<div class="container">
        <h2 class="text-center pt-4" style="color : black;font-family: 'Amatic SC',cursive;">Transaction History</h2>
        
       <br>
       <div class="table-responsive-sm" style="background-color: #E0E0E0">
    <table class="table table-hover table-striped table-condensed table-bordered">
        <thead style="color : black;">
            <tr>
                <th class="text-center">S.No.</th>
                <th class="text-center">Sender</th>
                <th class="text-center">Receiver</th>
                <th class="text-center">Amount</th>
            </tr>
        </thead>
        <tbody>
        <?php

            include 'data.php';
           
            
            $sql ="select * from transfers ";

            $query =mysqli_query($conn, $sql);

            while($rows = mysqli_fetch_assoc($query)){
            
        ?>

            <tr style="color : black;">
            <td class="py-2"><?php echo $rows['sno']; ?></td>
            <td class="py-2"><?php echo $rows['sender']; ?></td>
            <td class="py-2"><?php echo $rows['receiver']; ?></td>
            <td class="py-2"><?php echo $rows['amount']; ?> </td>
           
                
        <?php
          } 
        

        ?>
        </tbody>
    </table>

    </div>
 </div>

 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

 <footer class="footer_distributed">
        <div class="footer_left">
            
            <p class="footer_company_name">TSF Bank &copy;Copyright 2021 </p>
            <p class="footer_company_name">
            Made By : Shradha Agnibhoj</p>
            <p class="footer_company_name">
             #GRIPFEB2021 Web Development & Designing Internship </p>
        </div>
        <div class="footer_center">
            <div>
                <i class="fa fa-map-marker"></i>
                <p><span>Singapore</span></p>
            </div>
            <div>
                <i class="fa fa-phone"></i>
                <p><span>+91-555-12487</span> </p>
            </div>
            <div>
                <i class="fa fa-envelope"></i>
                <p><a href="#">contact@tsfbank.com</a></p>
            </div>
            </div>
            <div class="footer_right">
                <p class="footer_company_about">
                 <span>About Us</span>
                 This is a website available for transferring money online safely.
    
                </p>
                <div class="footer_icons">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter-square"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                    <a href="#"><i class="fas fa-envelope"></i></a>
    
                </div>
            </div>
    
        </div>
    
    </footer>
    </body>
</html>
