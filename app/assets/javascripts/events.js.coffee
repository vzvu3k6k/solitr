class App.Events
  @_trackEvent: (args...) ->
    p '_trackEvent', args...
    try
      _gaq.push(['_trackEvent', args...])
    catch error

  @beginGame: ->
    @_trackEvent('game', 'begin')
