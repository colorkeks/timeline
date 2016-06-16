// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require js/modernizr.custom.js
//= require js/json2.js
//= require js/jquery-1.9.1.min.js
//= require js/jquery-ui-1.10.3.custom.min.js
//= require js/underscore-min.js
//= require js/backbone-min.js
//= require js/jquery.tmpl.js
//= require js/ba-debug.min.js
//= require js/ba-tinyPubSub.js
//= require js/jquery.mousewheel.js
//= require js/jquery.ui.ipad.js
//= require js/globalize.js
//= require timeglider/TG_Date.js
//= require timeglider/TG_Org.js
//= require timeglider/TG_Timeline.js
//= require timeglider/TG_TimelineView.js
//= require timeglider/TG_Mediator.js
//= require timeglider/timeglider.timeline.widget.js
//= require timeglider/timeglider.datepicker.js
//= require js/jquery.jscrollpane.min.js
//= require inc/jquery.hoverIntent.min.js
//= require inc/jquery.mb.flipText.js
//= require inc/mbExtruder.js
//= require twitter/bootstrap
//= require bootstrap-datepicker
//= require Fonticon/jquery.fonticonpicker.js
//= require_tree .


$(document).on("focus", "[data-behaviour~='datepicker']", function(e){
    $(this).datepicker({
    	"format": "yyyy-mm-dd",
    	"weekStart": 1,
    	"autoclose": false,
    	language: "ru"
    })
});
