console.log('The script is running');
test = document.getElementById("navigation-pane");

test.addEventListener("mouseover", function( event ) {   
    event.target.style.color = 'silver';
    setTimeout(function() {
      event.target.style.color = "";
    }, 500);
  }, false);
  