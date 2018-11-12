<?php
if(isset($_POST['submit'])){
     include 'db.in.php';

    $name=mysqli_real_escape_string($conn,$_POST['name']);
    $email=mysqli_real_escape_string($conn,$_POST['email']);
    $phone=mysqli_real_escape_string($conn,$_POST['number']);
    $inst=mysqli_real_escape_string($conn,$_POST['institute']);
    $add=mysqli_real_escape_string($conn,$_POST['address']);

    if(empty($name)||empty($email)||empty($phone)||empty($inst)||empty($add)){
            echo "signup=empty_fields";
            header('LOCATION: register.html?signup=empty_fields');
            exit();
        }
    else{
            if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
                             echo "signup=invalid_email";
                            header('LOCATION: register.html?signup=invalid_email');
                            
                            exit();
                            }
                            
                            else{
                                $fsql="SELECT * FROM register WHERE email='$email';";
                                    //echo $fsql;
                                    $result = mysqli_query($conn,$fsql);
                                
                                       
                                    if(mysqli_num_rows($result) <1){
                                         //  echo "'$fname','$mname','$lname','$gen','$email','$yop','$branch','$pwd'";
                                        $sql="INSERT INTO register (name,email,phone,address,institute) VALUES ('$name','$email','$phone','$add','$inst');";
                    
                                        if (mysqli_query($conn, $sql)) {
                                            echo "New record created successfully<br>";
                                            $length = 5;
                                            $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
                                            $charactersLength = strlen($characters);
                                            $randomString = '';
                                            for ($i = 0; $i < $length; $i++) {
                                                $randomString .= $characters[rand(0, $charactersLength - 1)];
                                            }
                                            $usql="UPDATE register SET ath_id = '$randomString' WHERE email = '$email'";
                                            if (mysqli_query($conn, $usql)) {
                                                echo "Register id is '$randomString'";
                                                $subject = "Registeration Id for Atharva";
                                                $txt = "Your Registeration Id is '$randomString'";
                                                $headers = "From: atharvaiste@gmail.com" . "\r\n"."CC:" ;
                                                echo $email.$subject.$txt.$headers;

                                                mail($email,$subject,$txt,$headers);
                                                header('LOCATION: register.html#mail%20send');
                                            }    
                                        } 
                                        
                                            else {
                                            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
                                            header('LOCATION: register.html');
                                            }

                                        
                                       
                                    } 
                            else{
                                    echo  "already registered";
                                 header('LOCATION: register.html#already registered');
                                    exit();
                            }
                           
                    }     
          
      }
          }          
    
 else{
       header('LOCATION: register.html');
        exit();
 }
     
?> 