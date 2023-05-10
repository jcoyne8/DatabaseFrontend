<?php
try {
	$con = mysqli_connect('localhost', 'root', '','blue');

	// get the post records
	$aID = $_POST['aID'];
	$afname = $_POST['afname'];
	$alname = $_POST['alname'];
	$aimage = $_POST['aimage'];

	// database insert SQL code
	$sql = "INSERT INTO `Actor` (`ActorID`, `ActornameLast`, `ActornameFirst`, `Photo`) VALUES ('$aID', '$alname', '$afname', '$aimage')";

	// insert in database 
	$rs = mysqli_query($con, $sql);

	if($rs)
	{
		echo "Contact Records Inserted";
	} else {
		echo "You made a mistake somewhere. Please re-check your work";
	}
} catch (Exception $e) {
	if ($e->getCode() == 1062) {
		echo "The ID you selected already exists. Please use a different one.";
	} else {
		error_log($e->getMessage());
		echo "An error occurred, please try again.";
	}
}

?>

<html>
<br />
<br />
<button onclick="history.go(-1);">Back </button>
</html>