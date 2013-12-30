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
    $('.service-item > .description, .testimonial > .description').hide()

    $('.service-item > .title, .testimonial > .title').click (e) ->
        $(e.currentTarget).parent().find('.description').toggle('fast')
)