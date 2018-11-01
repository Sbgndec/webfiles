<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>No Access</title>
    <link rel="shortcut icon" href="images/atharva.jpg" />
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/fontawesome-all.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    
</head>

<body>
<?php
if(isset($_POST['jma'])){
    $dbserver="localhost";
    $dbuser="atharva";
    $dbpwd="atharva";
    $dbname="atharva";
    $conn=mysqli_connect($dbserver,$dbuser,$dbpwd,$dbname);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    $name=mysqli_real_escape_string($conn,$_POST['nameallowed']);
    $passw=mysqli_real_escape_string($conn,$_POST['pass']);
    $asql="SELECT * FROM admin WHERE `name`= '$name' AND `passw` = PASSWORD('$passw');";
   //echo $asql;
    $check = mysqli_query($conn,$asql);
    if(mysqli_num_rows($check) <1)
      {
        echo "hello if";
      }
        
    else{
    //echo "sdn";
    $table=mysqli_real_escape_string($conn,$_POST['tab']);
     $esql="SELECT * FROM $table WHERE 1;";
    $tasks = mysqli_query($conn,$esql);
    
    echo '<div class="container">
        <br>
        <h2>'.$table;
        echo ' Table</h2>
        <br>
        <div >
        <table class="table table-bordered table-striped ">
<thead class=" table-dark">
  <tr>';
  if($table=="register"){
  echo '
    <th>Re-id </th>
    <th>Name </th> 
    <th>Email </th>
    <th>Phone </th>
    <th>Address </th>
    <th>Institute </th>
    <th>ath-id </th>
  </tr></thead>';
  
    while ($row = mysqli_fetch_array($tasks)) {
         echo '<tbody>' ;
        echo '<tr>' ;
         echo '<td>'.$row['re_id'].'   </td>';
         echo '<td>'.$row['name'].'   </td>';
         echo '<td>'.$row['email'].'   </td>';
         echo '<td>'.$row['phone'].'     </td>';
         echo '<td>'.$row['address'].'   </td>';
         echo '<td>'.$row['institute'].'   </td>';
         echo '<td>'.$row['ath_id'].'   </td>';
         echo '</tr>';
          echo '</tbody>' ;
    }
}
 if($table=="participant"){
  echo '
    <th>P-id </th>
    <th>Event-id </th> 
    <th>Re-id </th>
    
  </tr></thead>';
  
    while ($row = mysqli_fetch_array($tasks)) {
         echo '<tbody>' ;
        echo '<tr>' ;
         echo '<td>'.$row['p_id'].'   </td>';
         echo '<td>'.$row['eventid'].'   </td>';
         echo '<td>'.$row['reid'].'   </td>';
         echo '</tr>';
          echo '</tbody>' ;
    }
}
if($table=="contact"){
  echo '
    <th>C-id </th>
    <th>Name </th> 
    <th>Email </th>
    <th>Subject </th>
    <th>Message </th>
  </tr></thead>';
  
    while ($row = mysqli_fetch_array($tasks)) {
         echo '<tbody>' ;
        echo '<tr>' ;
         echo '<td>'.$row['c_id'].'   </td>';
         echo '<td>'.$row['name'].'   </td>';
         echo '<td>'.$row['email'].'   </td>';
         echo '<td>'.$row['sub'].'   </td>';
         echo '<td>'.$row['msg'].'   </td>';
         echo '</tr>';
          echo '</tbody>' ;
    }
}
if($table=="events"){
  echo '
    <th>Event-id</th>
    <th>Name </th> 
    <th>Details </th>
    <th>Rules & Regulations </th>
    <th>Venue </th>
    <th>About </th>
  </tr></thead>';
  
    while ($row = mysqli_fetch_array($tasks)) {
         echo '<tbody>' ;
        echo '<tr>' ;
         echo '<td>'.$row['event_id'].'   </td>';
         echo '<td>'.$row['name'].'   </td>';
         echo '<td>'.$row['details'].'   </td>';
         echo '<td>'.$row['rar'].'   </td>';
         echo '<td>'.$row['venue'].'   </td>';
         echo '<td>'.$row['about'].'   </td>';
         echo '</tr>';
          echo '</tbody>' ;
    }
}

    echo '</table>';
 echo '</div>
</div>';
}

}
?>

</body>
</html>