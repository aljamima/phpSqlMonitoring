<?php
require_once 'dbconfig.php';

	
	if($_POST)
	{
		$minerId = $_POST['minerId']; #i dont know why but this var as named id not emp_id like the otheres... hmmm
		$minerIp = $_POST['minerIp'];
		$macAddress = $_POST['macAddress'];
		$location = $_POST['location'];
		$minerId = $_POST['minerId']; #i dont know why but this var as named id not emp_id like the otheres... hmmm
		
		$stmt = $db_con->prepare("UPDATE tbl_miners SET minerIp=:en, macAddress=:ed, location=:es WHERE minerId=:id");
		$stmt->bindParam(":en", $minerIp);
		$stmt->bindParam(":ed", $macAddress);
		$stmt->bindParam(":es", $location);
		$stmt->bindParam(":id", $minerId);		
		
		if($stmt->execute())
		{
			echo "Successfully updated";
		}
		else{
			echo "Query Problem";
		}
	}

?>
