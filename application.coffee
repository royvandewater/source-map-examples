fadeIn = (cb=->) ->
  $('h1').fadeIn 400, fadeOut

fadeOut = ->
  $('h1').fadeOut 400, fadeIn

$ ->
  fadeIn()

