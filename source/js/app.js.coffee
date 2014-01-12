#= require ./plugins/console
#= require ./plugins/foundation/foundation
#= require ./plugins/foundation/foundation.topbar
#= require ./plugins/foundation/foundation.orbit
#= require ./plugins/jquery.isotope

#= require_tree ./app

# navigation = new Navigation

$(document).foundation({
        orbit: {
            animation: 'fade'
            timer_speed: 2000
            pause_on_hover: true
            resume_on_mouseout: true
            animation_speed: 500
            navigation_arrows: true
            bullets: false
        }
    })

$shirt_display = $('.showcase .shirt_display')
$container = $shirt_display.find('.container')

$shirt_display.find('.filters a').click () ->
  $(this).parent().siblings().removeClass('active')
  selector = $(this).attr('data-filter')
  $(this).parent().addClass('active')
  $container.isotope({ filter: selector })
  return false;

$container.isotope({
    masonry: {columnWidth: 500 }
    })
