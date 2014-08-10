<?php

require_once 'db.php';

if(isset($_POST['submit'])){
$title=  mysqli_real_escape_string($con, $_POST['courseTitle']);
$code=  mysqli_real_escape_string($con, $_POST['courseCode']);
echo '<br/>'.$title;
echo '<br/>'.$code.'<br/>';
$sql = mysqli_query($con,"INSERT INTO Courses (title, code)
VALUES ('$title', '$code')");


echo 'Your course registration is Successful!';

mysqli_close($con);
}


