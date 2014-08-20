$('.markdown img').lazyload({effect : "fadeIn"});
$('.markdown p').not(':has(img)').addClass('two-columns');