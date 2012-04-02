#= require spec_helper
#= require controllers

suite 'Klondike Controllers', ->
  setup ->
    @gameController = new App.Controllers.KlondikeTurnOne

  test 'has widgets', ->
    assert.ok $('#konacha .redealImage').length
