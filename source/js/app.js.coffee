#= require ./plugins/console
#= require ./plugins/fastclick
#= require ./plugins/masonry.pkgd.min
#= require ./plugins/classie
#= require ./plugins/imagesloaded.js
#= require ./plugins/anim_on_scroll
#= require ./plugins/foundation/foundation
#= require ./plugins/foundation/foundation.topbar
#= require ./plugins/foundation/foundation.orbit
#= require ./plugins/foundation/foundation.tooltip

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

new AnimOnScroll(document.getElementById("grid"),
  minDuration: 0.4
  maxDuration: 0.7
  viewportFactor: 0.2
)
