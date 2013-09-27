$(document).ready(function(){
	$('#submeter').on("click", function(event){
		event.preventDefault();
		var texto = $('#entrada').val();
		$('#entrada').val(''),
		
 		$.ajax({
	     	type: 'get',
	    	url: '/enviar.json',
	    	dataType: 'html',
	    	data: {entrada: texto},
	    	success: function(data){

	      		$('#resultado').val(data);
	      	}
   		});

	});
});
