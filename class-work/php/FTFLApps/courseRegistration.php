<!DOCTYPE html>
<html>
<head>
	<title>Course Registration</title>
</head>
<body>
    <form action="courseEntry.php" method="POST">
		<fieldset>
			<legend>Course Registration</legend>
			<label>Course Title: </label>
			<input type="text" name="courseTitle" id="courseTitle" tabindex="1" />
			<br/>
			<label>Course Code: </label>
			<input type="text" name="courseCode" id="courseCode" tabindex="2" />
    		<br/>
    		<input type="submit" name="submit" value="Submit" />
		</fieldset>
	</form>

</body>
</html>