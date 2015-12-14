# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $('#fullpage').fullpage({
    menu: '.navbar-fixed-top',
    anchors:['home', 'sectionOne', 'sectionTwo', 'sectionThree'],
    sectionsColor: ['#DDEDF4', '#ADCFDD', '#50859C', '#326B83'],
    afterLoad: (anchorLink, index) ->
      loadedSection = $(this)

      $(".navbar-fixed-top").toggle(anchorLink != 'home')
  })

$(document).ready(ready)
$(document).on('page:load', ready)
