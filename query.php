<?php
if(isset($_POST['submit'])){
 include 'config.php';
    $name=mysqli_real_escape_string($conn,$_POST['name']);
    $email=mysqli_real_escape_string($conn,$_POST['email']);
    $sub=mysqli_real_escape_string($conn,$_POST['subject']);
    $msg=mysqli_real_escape_string($conn,$_POST['msg']);

    if(empty($name)||empty($email)||empty($sub)||empty($msg)){
            echo "signup=empty_fields";
            header('LOCATION: contact.html?signup=empty_fields');
            exit();
        }
    else{
            if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
                             echo "signup=invalid_email";
                            header('LOCATION: contact.html?signup=invalid_email');
                            exit();
                            }
                            else{
                            //  echo "'$fname','$mname','$lname','$gen','$email','$yop','$branch','$pwd'";
                                        $sql="INSERT INTO contact (name,email,sub,msg) VALUES ('$name','$email','$sub','$msg');";
                    
                                        if (mysqli_query($conn, $sql)) {
                                            echo "New record created successfully<br>";
                                            $to = "gndeciste@gmail.com";
                                            $headers = "From: atharva.gndec.ac.in" . "\r\n" .
                                            "CC: atharvaiste@gmail.com, shubhambaranwal83@gmail.com";
                                            $txt="Name = ".$name." <br>email = ".$email." <br> Subject =".$sub." <br>Message =".$msg;
                                            mail($to,"Atharva ISTE contact query",$txt,$headers);
                                            header('LOCATION: contact.html');
                                            
                                        }
                                        else {
                                        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
                                        header('LOCATION: contact.html?query=failure');
                                        }
                            }
                    }     
                }         
    
 else{
        header('LOCATION: contact.html');
        exit();
 }
     
?> 