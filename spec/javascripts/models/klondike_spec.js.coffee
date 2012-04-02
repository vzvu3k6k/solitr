#= require spec_helper
#= require models

describe 'Klondike', ->
  k1 = new App.Models.KlondikeTurnOne

  it 'constructor', ->

  it 'deal', ->

  it 'createDeck', ->
    deck = k1.createDeck()
    deck.length.should.equal 52
