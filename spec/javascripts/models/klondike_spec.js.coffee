#= require spec_helper
#= require models

suite 'Klondike', ->
  k1 = new App.Models.KlondikeTurnOne

  test 'constructor', ->

  test 'deal', ->

  test 'createDeck', ->
    deck = k1.createDeck()
    deck.length.should.equal 52
