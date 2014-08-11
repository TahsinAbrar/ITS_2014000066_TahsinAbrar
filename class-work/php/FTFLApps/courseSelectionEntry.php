<?php

    require_once 'db.php';

    if(isset($_POST['submit'])){
    $name=  mysqli_real_escape_string($con, $_POST['studentName']);
    $email=  mysqli_real_escape_string($con, $_POST['studentEmail']);
    $ftfl_id=  mysqli_real_escape_string($con, $_POST['ftflId']);
    $phone=  mysqli_real_escape_string($con, $_POST['studentPhone']);
    $chosenCourse= mysqli_real_escape_string($con, $_POST['chosenCourse']);
    echo $chosenCourse;
    //exit();
    echo $name;
    echo '<br/>'.$email;
    echo '<br/>'.$ftfl_id;
    echo '<br/>'.$phone.'<br/>';
    $sql_query= "INSERT INTO Students (name, email, ftfl_id, phone)
    VALUES ('$name', '$email','$ftfl_id', '$phone')";
    $sql = mysqli_query($con,$sql_query);
    $value = mysqli_insert_id($con);
    //echo $value;
    $query="INSERT INTO map_students_courses (student_id, course_id)
    VALUES ('$value', '$chosenCourse')";
    $sql = mysqli_query($con,$query);
    echo 'Student ID: '.$value;
    echo '<br/>Course ID: '.$chosenCourse;
    echo '<br/>Your registration is Successful!';

    mysqli_close($con);
}



