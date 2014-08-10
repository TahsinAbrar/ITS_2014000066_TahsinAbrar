<?php

require_once 'db.php';

if(isset($_POST['submit'])){
$name=  mysqli_real_escape_string($con, $_POST['studentName']);
$email=  mysqli_real_escape_string($con, $_POST['studentEmail']);
$ftfl_id=  mysqli_real_escape_string($con, $_POST['ftflId']);
$phone=  mysqli_real_escape_string($con, $_POST['studentPhone']);
echo $name;
echo '<br/>'.$email;
echo '<br/>'.$ftfl_id;
echo '<br/>'.$phone.'<br/>';
$sql = mysqli_query($con,"INSERT INTO Students (name, email, ftfl_id, phone)
VALUES ('$name', '$email','$ftfl_id', '$phone')");


echo 'Your registration is Successful!';

mysqli_close($con);
}


