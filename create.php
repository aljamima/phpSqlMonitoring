<?php
require_once 'dbconfig.php';

	
	if($_POST)
	{
		$minerIp = $_POST['minerIp'];
		$macAddress = $_POST['macAddress'];
		$location = $_POST['location'];
		$hashrate = $_POST['hashrate'];
		
		try{
			
			$stmt = $db_con->prepare("INSERT INTO tbl_miners(minerIp,macAddress,location,hashrate) VALUES(:ename, :edept, :esalary, :esalary2)");
			$stmt->bindParam(":ename", $minerIp);
			$stmt->bindParam(":edept", $macAddress);
			$stmt->bindParam(":esalary", $location);
			$stmt->bindParam(":esalary2", $hashrate);
			
			if($stmt->execute())
			{
				echo "Successfully Added";
			}
			else{
				echo "Query Problem";
			}	
		}
		catch(PDOException $e){
			echo $e->getMessage();
		}
	}

?>
