<?php
 
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "shopeazy";
    $table1 = "login";
    $table2 = "product";




     

    $conn = new mysqli($servername, $username, $password, $dbname);


    if($conn->connect_error){
        die("Connection Failed: " . $conn->connect_error);
        return;
    }


        $fname = $_POST['fname'];
        $username=$_POST['username'];
        $lname = $_POST['lname'];
        $email =$_POST['email'];
        $mobile = $_POST['mobile'];
        $shopname = $_POST['shopname'];
        $password= $_POST['password'];
   $sql = "INSERT INTO $table1 (fname,lname,username,email,mobile,shopname,password) VALUES ('$fname','$lname','$username','$email','$mobile','$shopname','$password')";
        $result = $conn->query($sql);
	if($result== TRUE)
        {echo "success";}
	
        $conn->close();
        return "success";
    
?>
