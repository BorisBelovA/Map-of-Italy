$.ajax({
	type:'POST',
	dataType:'json',
	url:'scripts/response.php',
	success: function(jsondata){
		$('<tr><td><input type="checkbox" name='+jsondata[0].Region_code+' id='+jsondata[0].Region_code+'></td><td>'+jsondata[0].Region_name+'</td><td>'+jsondata[0].Region_code+'</td><td>'+jsondata[0].Capital+'</td><td>'+jsondata[0].Population+'</td></tr>').appendTo('tbody');
    	$('<tr><td><input type="checkbox" name='+jsondata[1].Region_code+' id='+jsondata[1].Region_code+'></td><td>'+jsondata[1].Region_name+'</td><td>'+jsondata[1].Region_code+'</td><td>'+jsondata[1].Capital+'</td><td>'+jsondata[1].Population+'</td></tr>').appendTo('tbody');
  }
});