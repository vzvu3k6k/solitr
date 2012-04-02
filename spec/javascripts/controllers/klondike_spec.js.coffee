#= require spec_helper
#= require controllers

describe 'Klondike Controllers', ->
  beforeEach ->
    @gameController = new App.Controllers.KlondikeTurnOne

  it 'has widgets', ->
    assert.ok $('#konacha .redealImage').length
