
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require turbolinks_transitions

//= require twitter/bootstrap/transition
//= require twitter/bootstrap/carousel
//= require twitter/bootstrap/tooltip
//= require twitter/bootstrap/alert
//= require twitter/bootstrap/dropdown
// require twitter/bootstrap/button
// require twitter/bootstrap/modal
// require twitter/bootstrap/scrollspy
// require twitter/bootstrap/tab
// require twitter/bootstrap/popover
// require twitter/bootstrap/collapse
// require twitter/bootstrap/affix

//= require social-media-facebook.js

// require_tree .


// Cleanup + enable Bootstrap tooltips on jQuery's ready event as well as
// Turbolinks's page change event.
$(document).on("ready page:change", function() {

    $('.carousel').carousel('cycle').carousel({
        interval: 2000});

    $("[data-toggle='tooltip']")
        .tooltip("destroy")
        .tooltip();
});

