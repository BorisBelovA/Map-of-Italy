/*var regions=[
  		{
		'region_id':jsondata[0].Region_code,
		'region_name':jsondata[0].Region_name
	}] -- Структура массива regions */ 
$.ajax({
	type:'POST',
	dataType:'json',
	url:'Functions/DataLoad.php',
	success: function(jsondata){
	var regions=[];
		for(i = 0; i<jsondata.length; i++){
			$('<tr id="'+jsondata[i].Region_code+'"><td><label>'+jsondata[i].Region_name+'</label></td><td><label class="reg_code">'+jsondata[i].Region_code+'</label></td><td><label>'+jsondata[i].Capital+'</label></td><td><label>'+jsondata[i].Population+'</label></td></tr>').appendTo('#areas tbody');
			var region = {'region_id':jsondata[i].Region_code, 'region_name':jsondata[i].Region_name};
			regions.push(region);
		}
  	for(i = 0; i<regions.length; i++){
		$('#'+regions[i].region_id).data('region',regions[i]);
	}
	$('g').mouseover(function(){
		var region_data = $(this).data('region');
		var code_of_region = $(this).attr('id');
		$('<div class="info_pannel">'
			+'Название: '+region_data.region_name
			+'<br>'
			+'ID: '+region_data.region_id
			+'<br>'
			+'</div>').appendTo('body');
		$('#areas #'+code_of_region).children().css('text-decoration','underline');
	})
	.mouseout(function(){
		var code_of_region = $(this).attr('id');
		$('.info_pannel').remove();
		$('#areas #'+code_of_region).children().css('text-decoration','none');
	})
	$('g').mousemove(function(e){
		var mouseX = e.pageX;
		var mouseY = e.pageY;
		$('.info_pannel').css({
			top:mouseY-50,
			left:mouseX - 10
		});
	});
	$('#areas tbody tr').mouseover(function(){
		$(this).css('background-color','red');
		var name = $(this).find($('.reg_code')).html();
		$('svg #'+name).removeClass('area').addClass('highlited');
	})
	.mouseout(function(){
		$(this).css('background-color','white');
		var name = $(this).find($('.reg_code')).html();
		$('svg #'+name).removeClass('highlited').addClass('area');
	})
	}
});
