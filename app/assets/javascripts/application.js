
//= require jquery
//= require jquery_ujs
//= require turbolinks

//= require twitter/bootstrap/transition
//= require twitter/bootstrap/carousel
// require twitter/bootstrap/alert
// require twitter/bootstrap/modal
// require twitter/bootstrap/dropdown
// require twitter/bootstrap/scrollspy
// require twitter/bootstrap/tab
// require twitter/bootstrap/tooltip
// require twitter/bootstrap/popover
// require twitter/bootstrap/button
// require twitter/bootstrap/collapse
// require twitter/bootstrap/affix

//= require equal-height-columns

// require_tree .

$(function(){
    $('.carousel').carousel({
        interval: 4000
    });

    $('.equalize').equalHeightColumns('refresh');
});

document.addEventListener("page:change", reload);

function reload() {
    $('.equalize').equalHeightColumns('refresh');
}

