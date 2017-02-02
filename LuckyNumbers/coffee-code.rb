def luck_check(str)
  return false unless str.size > 0
  return false unless str =~ /\A\d+\z/

  numbers   = str.chars.collect { |c| c.to_i }
  midpoint  = numbers.size / 2

  # http://docs.ruby-lang.org/en/2.0.0/Array.html
  left_sum  = numbers[0..midpoint-1].inject(:+)
  right_sum = numbers[-midpoint..-1].inject(:+)

  return left_sum == right_sum
end

puts luck_check('')
puts luck_check('01a10')
puts luck_check('003111')
puts luck_check('813372')
puts luck_check('17935')
puts luck_check('56328116')


# def luckytickets(str)
# array = str.each_char.to_a
#
# if array.count % 2 == 0
#   midpoint = array.count/2
#   count_fh = 0
#   count_lh = 0
#   i_fh = 0
#   i_lh = midpoint
#
#   while i_fh < midpoint
#     count_fh += array[i_fh].to_i
#     i_fh += 1
#   end
#
#   while i_lh < array.count
#     count_lh += array[i_lh].to_i
#     i_lh += 1
#   end
#
#   if count_fh == count_lh
#     return "Congratulations, you have a lucky ticket!"
#   else
#     return "Too bad so sad!"
#   end
#
# else
#
#   midpoint = array.count/2
#   count_fh = 0
#   count_lh = 0
#   i_fh = 0
#   i_lh = midpoint + 1
#
#   while i_fh < midpoint
#     count_fh += array[i_fh].to_i
#     i_fh += 1
#   end
#
#   while i_lh < array.count
#     count_lh += array[i_lh].to_i
#     i_lh += 1
#   end
#
#   if count_fh == count_lh
#     return "Congratulations, you have a lucky ticket!"
#   else
#     return "Too bad so sad!"
#   end
#
# end
#
# end
