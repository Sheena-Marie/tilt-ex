// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// window.onload = function() {
//  var clock = document.getElementById("countdown-holder"),
//  targetDate = new Date(2016, 07, 05); // Jan 1, 2050;
//
//   clock.innerHTML = countdown(targetDate).toString();
//   setInterval(function(){
//     clock.innerHTML = countdown(targetDate).toString();
//   }, 1000);
// };

// setInterval(function(){
//      $('#counter').load("<%= j(render :partial => 'timer') %>");
// }, 1000);

setInterval(function() {
        $.ajax({
            type: "GET",
            url: "indices" + "/timer"
        });
   }, 1000);
