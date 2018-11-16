### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame

  def checkforAce(card)
    return  card.value == 1
  end

  def highest_card(card1, card2)
    return card1.value > card2.value ? card1 : card2
  end

  def self.cards_total(cards_arr)
    total = 0
    for card in cards_arr
      total += card.value
    end
      return total
  end

end
