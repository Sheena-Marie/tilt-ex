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


// attempt at getting javascript to auto-reload a div. It didn't work.

// setInterval(function(){
//      $('#counter').load('/');
// }, 20000);

var moment = require('moment');
moment().format();

$(document).ready(function(){
// eventTime is where you want to put in the JSON time
var eventTime = moment("<%= j render ('timer', @countdown_expiry) %>" /*put json time instead here*/, "MM-DD-YYYY").utc();
var currentTime = 1366547400; // Timestamp - Sun, 21 Apr 2013 12:30:00 GMT
var diffTime = eventTime - currentTime;
var duration = moment.duration(diffTime*1000).asMilliseconds();
var interval = 1000;



setInterval(function(){
  duration = moment.duration(duration - interval, 'milliseconds');
    $('.countdown').text(duration.hours() + ":" + duration.minutes() + ":" + duration.seconds());
    var days = Math.round(moment.duration(diffTime-currentTime).asDays());
    $('#days').text('Days: ' + days);
    $('#hours').text('Hours: ' + duration.hours());
    $('#minutes').text('Minutes: ' + duration.minutes());
    $('#seconds').text('Seconds: ' + duration.seconds());

}, interval);

  });
