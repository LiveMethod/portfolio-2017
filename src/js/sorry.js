// Lord forgive me for this javascript
// 
// If you're reading this, sorry.
// I'm not building backend password validation for
// a static site on this already tight timeline.

// treat enter as submit
$(document).ready(function(){
	document.getElementById("password").addEventListener("keyup", function(event) {
	    event.preventDefault();
	    if (event.keyCode === 13) {
	        document.getElementById("reveal").click();
	    }
	});
});

function sorry(){
    if(document.getElementById('password').value == 'google'){
      $('.password-box').remove();
      $('.container--google').fadeIn();
    }else{
        alert('I promise you know this one.');
        return false;
    }
}