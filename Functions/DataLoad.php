<?php
	include "Connect.php";
	$sql = "SELECT * FROM italy";
	$result = $link->query($sql);
	$region_arr = array();
	foreach ($result as $region) {
		foreach ($region as $key => $value) {
			$array[$key]=$value;
		}
		array_push($region_arr, $array);
	}
    $oJson = json_encode($region_arr);
    echo json_encode($region_arr);
?>