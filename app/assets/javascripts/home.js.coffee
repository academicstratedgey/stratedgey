# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(() ->
    # make columns even height
    $('.even-columns').each (index, element) ->
        maxHeight = 0
        $(element).find('.even-column').each (index, element) ->
            if $(element).height() > maxHeight
                maxHeight = $(element).height()

        $(element).find('.even-column').each (index, element) ->
            $(element).height(maxHeight)

    # hide service item descriptions
    $('.service-item > .description').hide()

    $('.service-item > .title').click (e) ->
        $(e.currentTarget).parent().find('.description').toggle('fast')
)