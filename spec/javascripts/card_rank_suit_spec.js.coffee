#= require spec_helper
#= require models

suite 'Card', ->
  Card = App.Models.Card

  test 'id', ->
    (new Card(0, 0, false).id).should.not.equal (new Card(0, 0, false).id)

  test 'rank, suit', ->
    c = new Card(App.Models.ranks[5], App.Models.suits[2])
    c.rank.value.should.equal 5
    c.suit.value.should.equal 2

suite 'Rank', ->
  Rank = App.Models.Rank

  test 'value', ->
    new Rank(5).value.should.equal 5

  test 'nextLower', ->
    assert.isNull new Rank(0).nextLower()
    new Rank(5).nextLower().value.should.equal 4
    new Rank(12).nextLower().value.should.equal 11

  test 'nextHigher', ->
    new Rank(0).nextHigher().value.should.equal 1
    new Rank(5).nextHigher().value.should.equal 6
    assert.isNull new Rank(12).nextHigher()

  test 'letter', ->
    new Rank(0).letter().should.equal 'A'
    new Rank(1).letter().should.equal '2'
    new Rank(8).letter().should.equal '9'
    new Rank(9).letter().should.equal 'T'
    new Rank(10).letter().should.equal 'J'
    new Rank(11).letter().should.equal 'Q'
    new Rank(12).letter().should.equal 'K'

  test 'singletons', ->
    assert.deepEqual (r.value for r in App.Models.ranks), [0...13]

suite 'Suit', ->
  Suit = App.Models.Suit

  test 'value', ->
    new Suit(2).value.should.equal 2

  test 'letter', ->
    new Suit(0).letter().should.equal 'C'
    new Suit(1).letter().should.equal 'D'
    new Suit(2).letter().should.equal 'H'
    new Suit(3).letter().should.equal 'S'

  test 'color', ->
    new Suit(0).color().should.equal 'black'
    new Suit(3).color().should.equal 'black'
    new Suit(1).color().should.equal 'red'
    new Suit(2).color().should.equal 'red'

  test 'singletons', ->
    assert.deepEqual (s.value for s in App.Models.suits), [0...4]
