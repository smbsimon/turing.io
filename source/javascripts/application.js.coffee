#= require jquery

$(document).ready ->

  # Add class `hasvalue` when an input has value, to prevent label/value overlap
  $('input, textarea').each ->
    $(this).blur ->
      if $(this).val() == ''
        $(this).removeClass('hasvalue')
      else
        $(this).addClass('hasvalue')

  # Add a way to hide the thank you message
  thanks = $('.thanks')
  $('<span class="hide">hide</span>').appendTo(thanks).click ->
    thanks.hide()

  $('.index .mod-people figure').click ->
    window.location = '/team'

  $.fn.extend
      initSlider: (timer = 8000) ->

        $slider = $(this)
        return false if !$slider.hasClass('slider')
        setInterval ->
          $activeSlide = $slider.find('.active')
          $nextSlide = $activeSlide.next()
          $nextSlide = $slider.find('.slide').first() if($nextSlide.length == 0)
          $activeSlide.removeClass('active')
          $nextSlide.addClass('active')
          return
        , timer
        return

  $('#home-slider').initSlider()



  return
