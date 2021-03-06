//= require jquery
//= require modernizr
//= require foundation.min
//= require wufoo
//= require typography
//= require iefix


$(document).foundation({
    orbit: {
        animation: 'slide',
        timer_speed: 10000,
        pause_on_hover: true,
        resume_on_mouseout: true,
        animation_speed: 500,
        bullets: false,
        next_on_click: true,
        timer: true,
        navigation_arrows: true,
        slide_number: false,
        swipe: true,
                }
    });

jQuery(document).ready(function($) {$(".article_title").lettering().fitText(0.645);});
