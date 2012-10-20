// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require impress 
//require rest_in_place 
//jquery-ui-1.8.24
//bootstrap.js
//

function update_prev(uid) {
  $.post("/update_slide_prev", { presentation_uid: uid },
     function(data) {
     }
  );
}
function update_next(uid) {
  $.post("/update_slide_next", { presentation_uid: uid },
     function(data) {
     }
  );
}
function runEffect() {
  // get effect type from 
  var selectedEffect = "drop";
  console.log("1");  
  // most effect types need no options passed by default
  var options = {};
  console.log("2");
  // some effects have required parameters
  if ( selectedEffect === "scale" ) {
    options = { percent: 0 };
  } else if ( selectedEffect === "transfer" ) {
    options = { to: "#button", className: "ui-effects-transfer" };
  } else if ( selectedEffect === "size" ) {
    options = { to: { width: 200, height: 60 } };
  }
  console.log("3");

  // run the effect
  $( "#content_body" ).effect( selectedEffect, options, 500, callback );
  console.log("4");

}

function reverseEffect(){
  setTimeout(function() {
    $( "#content_body" ).removeAttr( "style" ).hide().fadeIn();
    $('#content_body')[0].style.marginTop = "50px";
  }, 1000);
}

function callback(){}
