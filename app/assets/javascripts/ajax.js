$(document).ready(function(){
	$('#main').submit(function(){

		var texto = $('#entrada').val();
		
 		$.ajax({
	     	type: 'post',
	    	url: 'enviar',
	    	dataType: 'html',
	    	data: {texto: texto},
	    	success: function(data){
	      		$('#resultado').append(data);
	      	}
   		});

	});
});