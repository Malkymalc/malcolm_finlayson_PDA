### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
### Testing task 2 code:

# Carry out static testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame

  # method name would normally be in camel_case
  def checkforAce(card)
  # method could be written more concisely as
    #'return card.value == 1'

    # should be == (equality) rather than = (assignment)
    if card.value = 1
      return true
    else
      return false
    end
  end

  # should be def rather than dif
  # comma missing between param 1 and param 2 = (should be (card1, card2) )
  # method returns different types, may be preferable to either return card.name or card object in both outcomes of if/else.
  dif highest_card(card1 card2)
  # 'if / else' statement should be indented an extra level
  if card1.value > card2.value
    # 'card' is not a parameter of this method - should perhaps be 'card1'
    # card instances do not have a name variable.
    return card.name
  else
    # implicit return - should be 'return card2'
    card2
  end
# superfluous end - first end should be removed
# second end should be indented to same level as 'dif' / def
end
end


def self.cards_total(cards)
  # total is uninitialised to a value / type
  total
  for card in cards
    total += card.value
    # return should be after / outside end of for/in loop -
    # as written this will return after first card in cards.
    return "You have a total of" + total
  end
end


```
