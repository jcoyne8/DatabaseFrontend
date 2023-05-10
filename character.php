<?php
try {
	$con = mysqli_connect('localhost', 'root', '','blue');

	// get the post records
	$cID = $_POST['cID'];
	$cname = $_POST['cname'];
	$cquote = $_POST['cquote'];
	$charmovie = $_POST['charmovie'];
	$charactor = $_POST['charactor'];

	// database insert SQL code
	$sql = "INSERT INTO `MovieCharacter` (`CharacterID`, `CharacterName`, `Quote`, `ActorID`, `MovieID`) VALUES ('$cID', '$cname', '$cquote', '$charmovie', '$charactor')";

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