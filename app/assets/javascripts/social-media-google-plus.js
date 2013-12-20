// Google+ hack to get work with Turbolinks
// http://reed.github.io/turbolinks-compatibility/google_plus.html
$(function() {
    gapi.plusone.go();
    return $(document).on('page:load', gapi.plusone.go);
});
