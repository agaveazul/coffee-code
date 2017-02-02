def luckytickets(str)
array = str.each_char.to_a

if array.count % 2 == 0
  midpoint = array.count/2
  count_fh = 0
  count_lh = 0
  i_fh = 0
  i_lh = midpoint

  while i_fh < midpoint
    count_fh += array[i_fh].to_i
    i_fh += 1
  end

  while i_lh < array.count
    count_lh += array[i_lh].to_i
    i_lh += 1
  end

  if count_fh == count_lh
    return "Congratulations, you have a lucky ticket!"
  else
    return "Too bad so sad!"
  end

else

  midpoint = array.count/2
  count_fh = 0
  count_lh = 0
  i_fh = 0
  i_lh = midpoint + 1

  while i_fh < midpoint
    count_fh += array[i_fh].to_i
    i_fh += 1
  end

  while i_lh < array.count
    count_lh += array[i_lh].to_i
    i_lh += 1
  end

  if count_fh == count_lh
    return "Congratulations, you have a lucky ticket!"
  else
    return "Too bad so sad!"
  end

end

end
