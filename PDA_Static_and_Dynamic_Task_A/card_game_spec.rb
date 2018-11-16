
require('minitest/autorun')
require('minitest/rg')

require_relative('card.rb')
require_relative('testing_task_2.rb')

class TestCardGame < Minitest::Test

  def setup
    @card_game = CardGame.new()
    @card1 = Card.new('Diamonds', 1)
    @card2 = Card.new('Hearts', 9)
    @card3 = Card.new('Clubs', 9)
    @empty_arr = []
    @one_elem_arr = [@card3]
    @multi_elem_arr = [@card1, @card2, @card3]
  end

  def test_check_for_ace__ace
    result = @card_game.checkforAce(@card1)
    assert_equal(true, result)
  end

  def test_check_for_ace__no_ace
    result = @card_game.checkforAce(@card2)
    assert_equal(false, result)
  end


  def test_highest_card__card1_highest
    result = @card_game.highest_card(@card2, @card1)
    assert_equal(@card2, result)
  end

  def test_highest_card__card2_highest
    result = @card_game.highest_card(@card1, @card2)
    assert_equal(@card2, result)
  end

  def test_highest_card__cards_same_value
    result = @card_game.highest_card(@card2, @card3)
    assert_equal(@card3, result)
  end


  def test_cards_total__empty_array
    result = CardGame.cards_total(@empty_arr)
    assert_equal(0, result)
  end

  def test_cards_total__one_element_array
    result = CardGame.cards_total(@one_elem_arr)
    assert_equal(9, result)
  end

  def test_cards_total__multiple_elements_array
    result = CardGame.cards_total(@multi_elem_arr)
    assert_equal(19, result)
  end

end
