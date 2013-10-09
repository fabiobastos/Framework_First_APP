
function applyMask(){
	$('input[data-mask]').each(function() {
	        var input = $(this);
	        input.setMask(input.data('mask'));
	    });
}

$(function(){
	applyMask();
});