<?php
try {
	$con = mysqli_connect('localhost', 'root', '','blue');
	if (!$con) {
		die("Connection failed: " . mysqli_connect_error());
	}

	// get the post records
	$vID = $_POST['vID'];
	$fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$viewerfavemovie = $_POST['viewerfavemovie'];
	$viewerfaveactor = $_POST['viewerfaveactor'];

	// database insert SQL code
	$sql = "INSERT INTO `Viewer` (`UserID`, `UsernameFirst`, `UsernameLast`, `FavoriteMovie`, `FavoriteActor`) VALUES ('$vID', '$fname', '$lname', '$viewerfavemovie', '$viewerfaveactor')";

	// insert in database 
	$rs = mysqli_query($con, $sql);

	if($rs)
	{
		echo "Contact Records Inserted";
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
