# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $('#fullpage').fullpage({
    menu: '.navbar-fixed-top',
    anchors:['home', 'sectionOne', 'sectionTwo', 'contact'],
    sectionsColor: ['#DDEDF4', '#ADCFDD', '#50859C', 'white'],
    afterLoad: (anchorLink, index) ->
      loadedSection = $(this)

      if(anchorLink == 'home')
        $(".navbar-fixed-top").fadeOut('fast')
      else
        $(".navbar-fixed-top").fadeIn(100)
  })

$(document).ready(ready)
$(document).on('page:load', ready)
