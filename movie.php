<?php
try {
	$con = mysqli_connect('localhost', 'root', '','blue');

	// get the post records
	$mID = $_POST['mID'];
	$mtitle = $_POST['mtitle'];
	$mgenre = $_POST['mgenre'];
	$dname = $_POST['dlname'].", ".$_POST['dfname'];
	$wname = $_POST['wlname'].", ".$_POST['wfname'];
	$releasedate = $_POST['releasedate'];
	$mlength = $_POST['mlength'];
	$mrating = $_POST['mrating'];
	$mIMDB = $_POST['mIMDB'];

	// database insert SQL code
	$sql = "INSERT INTO `Movie` (`MovieID`, `MovieName`, `Genre`, `Director`, `Writer`, `ReleaseDate`, `Length`, `Rating`, `IMDB`) VALUES ('$mID', '$mtitle', '$mgenre', '$dname', '$wname', '$releasedate', '$mlength', '$mrating', '$mIMDB')";

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
		echo "The ID or Movie you selected already exists. Please use a different one.";
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