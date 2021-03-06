<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Course Selection</title>
    </head>
    <body>
        <?php 
            require_once 'db.php';
        ?>
        <form action="courseSelectionEntry.php" method="POST">
        	<fieldset>
        		<legend>Student Registration</legend>
        		<label>Name: </label>
        		<input type="text" name="studentName" id="studentName" placeholder="Your Name" tabindex="1" />
        		<br/>
        		<label>Email: </label> 
        		<input type="text" name="studentEmail" id="studentEmail" placeholder="Your Email" tabindex="2" />
        		<br/>
        		<label>ID: </label> 
        		<input type="text" name="ftflId" id="ftflId" placeholder="Your FTFL ID" tabindex="3" />
        		<br/>
        		<label>Phone: </label> 
        		<input type="text" name="studentPhone" id="studentPhone" placeholder="Your Phone" tabindex="4" />
        		<br/>
                        <?php
                            $sql="SELECT * FROM Courses";
                            $query= mysqli_query($con,$sql);                        
                        ?>
        		<label>Course: </label> 
                        <select name="chosenCourse">
        			<option>Choose course</option>
                                <?php 
                                while ($data = mysqli_fetch_object($query)) {
                                    ?>
                                <option value="<?php echo $data->id;?>"><?php echo $data->title; ?></option>                              
                               <?php }
                                ?>        			
        		</select>
        		<br/>
        		<input type="submit" name="submit" value="Submit" />
        	</fieldset>        	
        </form>
        
    </body>
</html>
