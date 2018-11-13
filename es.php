<?php
                                     include 'config.php';
                                        $reid=mysqli_real_escape_string($conn,$_POST['reid']);
                                        $evid=mysqli_real_escape_string($conn,$_POST['evid']);
                                        if(!empty($reid)&&!empty($evid)){
                                            $fsql="SELECT * FROM register WHERE ath_id='$reid';";
                                                
                                            $result = mysqli_query($conn,$fsql);
                                            if(mysqli_num_rows($result) <1){
                                                echo "already present";
                                               // echo "LOCATION: /atharva/events/$evid";
                                                header("LOCATION: /atharva/e.php?id=$evid");
                                                exit();
                                            }
                                            else{
                                             $sql="INSERT INTO participant (eventid,reid) VALUES ('$evid','$reid')";
                                             if (mysqli_query($conn, $sql)) {
                                                echo "New record created successfully<br>";

                                             }
                                              else {
                                                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
                                                
                                                }
                                            }   
                                           }
                                        
                                    
                                    header('LOCATION: /atharva/events');
                                    ?>