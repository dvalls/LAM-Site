
//= require jquery
//= require jquery_ujs
//= require turbolinks

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

//= require social-medias.js

// require_tree .



$(function (){reload();});
document.addEventListener("page:change", reload());


function reload() {

    // Carousel settings
    $('.carousel').carousel('cycle').carousel({
        interval: 2000});

    // Tooltips
    $('[data-toggle="tooltip"]').tooltip({'placement': 'top'});
}

