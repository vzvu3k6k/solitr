#= require spec_helper
#= require models

describe 'Card', ->
  Card = App.Models.Card

  it 'id', ->
    (new Card(0, 0, false).id).should.not.equal (new Card(0, 0, false).id)

  it 'rank, suit', ->
    c = new Card(App.Models.ranks[5], App.Models.suits[2])
    c.rank.value.should.equal 5
    c.suit.value.should.equal 2

describe 'Rank', ->
  Rank = App.Models.Rank

  it 'value', ->
    new Rank(5).value.should.equal 5

  it 'nextLower', ->
    assert.isNull new Rank(0).nextLower()
    new Rank(5).nextLower().value.should.equal 4
    new Rank(12).nextLower().value.should.equal 11

  it 'nextHigher', ->
    new Rank(0).nextHigher().value.should.equal 1
    new Rank(5).nextHigher().value.should.equal 6
    assert.isNull new Rank(12).nextHigher()

  it 'letter', ->
    new Rank(0).letter().should.equal 'A'
    new Rank(1).letter().should.equal '2'
    new Rank(8).letter().should.equal '9'
    new Rank(9).letter().should.equal 'T'
    new Rank(10).letter().should.equal 'J'
    new Rank(11).letter().should.equal 'Q'
    new Rank(12).letter().should.equal 'K'

  it 'singletons', ->
    assert.deepEqual (r.value for r in App.Models.ranks), [0...13]

describe 'Suit', ->
  Suit = App.Models.Suit

  it 'value', ->
    new Suit(2).value.should.equal 2

  it 'letter', ->
    new Suit(0).letter().should.equal 'C'
    new Suit(1).letter().should.equal 'D'
    new Suit(2).letter().should.equal 'H'
    new Suit(3).letter().should.equal 'S'

  it 'color', ->
    new Suit(0).color().should.equal 'black'
    new Suit(3).color().should.equal 'black'
    new Suit(1).color().should.equal 'red'
    new Suit(2).color().should.equal 'red'

  it 'singletons', ->
    assert.deepEqual (s.value for s in App.Models.suits), [0...4]
