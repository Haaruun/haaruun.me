$(function(){
	document.querySelector( "#nav-toggle" )
  .addEventListener( "click", function() {
    this.classList.toggle( "active" );
  });

$('#nav-toggle').click(function($e){
		$('.in').toggleClass('left');	
		    $e.preventDefault();
	
	});

setTimeout(function(){
  $('body').css('opacity', '1'); 
}, 1000);

});

