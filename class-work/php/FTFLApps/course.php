<?php
    require_once 'db.php';
/**
 * Description of course
 *
 * @author Abrar
 */
class Course {
    //put your code here
    public function __construct() {
        
    }
    public function course_title(){
        $course= mysqli_query($con,"SELECT title FROM Courses");
        while ($data = mysql_fetch_object($course)) {
            echo $data->title;
        }
    }
}
