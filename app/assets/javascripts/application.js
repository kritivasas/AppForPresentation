// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require impress 
//rest_in_place 
//require jquery-1.7.1.min
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

