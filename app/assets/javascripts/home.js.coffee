# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(() ->
    $('.even-columns').each (index, element) ->
        maxHeight = 0
        $(element).find('.even-column').each (index, element) ->
            if $(element).height() > maxHeight
                maxHeight = $(element).height()

        $(element).find('.even-column').each (index, element) ->
            console.log $(element)
            $(element).height(maxHeight)
)