// Title: custom.js
// Author: clee231
// Description: Adds dynamic content theme changer to frontpage.

$(window).load(function () {
$('body').append('<div id="theme-arrow" style="border-left: 5px solid transparent;border-right: 5px solid transparent;border-top: 5px solid black;cursor: pointer;font-size: 12px;position: absolute;right: 5em;top: 1em; width: 0;">Theme Changer</div>');
$('body').append('<div id="theme-content" style="background-color: #DDDDDD;display: none;height: 75%;position: absolute;right: 0;top: 5em;width: 100px;"><ul style="list-style: none outside none; margin: 10px -25px; cursor: pointer;"><li style="padding-bottom: 10px;"><img src="./images/themer/theme-btn-1.gif" style="height:70px;" alt="Default Theme"/></li><li style="padding-bottom: 10px;"><img src="./images/themer/theme-btn-2.gif" style="height:70px;" alt="Gray Theme"/></li><li style="padding-bottom: 10px;"><img src="./images/themer/theme-btn-3.gif" style="height:70px;" alt="Yellow Theme"/></li></ul></div>');

$('#theme-arrow').click(function() {
		$('#theme-content').slideToggle();
});
$('#theme-content li').eq(0).click(function() {
	$('link[rel="StyleSheet"]').eq(0).attr('href', $('link[rel="StyleSheet"]').eq(0).attr('href').replace(/\/[^\/]+$/, '') + '/default.css');
});
$('#theme-content li').eq(1).click(function() {
	$('link[rel="StyleSheet"]').eq(0).attr('href', $('link[rel="StyleSheet"]').eq(0).attr('href').replace(/\/[^\/]+$/, '') + '/gray.css');
});
$('#theme-content li').eq(2).click(function() {
	$('link[rel="StyleSheet"]').eq(0).attr('href', $('link[rel="StyleSheet"]').eq(0).attr('href').replace(/\/[^\/]+$/, '') + '/yellow.css');
});

});