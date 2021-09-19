$( "#gambly-result" ).hide();

setTimeout(function(){
  $( "#loader-die-page" ).hide('slow');
  $( "#gambly-result" ).show('slow');
}, 5000);