# Development helpers

window._assert = (exp, messages...) ->
  unless exp
    p 'Assertion failed'
    p messages...
    throw 'Runtime error'

window._fail = (messages...) ->
  _assert(false, messages...)

window.p = (expressions...) ->
  window.x = expressions[expressions.length - 1]
  if window.console?.log?
    # IE doesn't support console.log.apply
    # http://stackoverflow.com/a/5473193/525872
    log = Function.prototype.bind.call(console.log, console)
    log(expressions...)
