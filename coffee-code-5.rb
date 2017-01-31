def create_phone_number(integer)
  integer = integer.to_s
  integer = integer.split("")
  phonenumber = ('(')
  num_counter = 0
  integer.each do |n|
    num_counter += 1
    case num_counter
    when 4
      phonenumber << ') '
      phonenumber << n
    when 7
      phonenumber << '-'
      phonenumber << n
    else
      phonenumber << n
    end
  end
  return phonenumber
end

def format_phone_number(nums)
  nums = nums.to_s
  return "(#{nums[0..2]}) #{nums[3..5]} - #{nums[6..9]}"
end


def deck_of_cards
numbers = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
suits = ['spades', 'hearts', 'diamonds', 'clubs']

deck = []

numbers.each do |n|
  suits.each do |s|
    deck << [n,s]
  end
end

return deck

end
