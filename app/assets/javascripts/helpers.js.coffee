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
  window.console and console.log(expressions...)
