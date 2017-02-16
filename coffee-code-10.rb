def get_squares(nums)
  squares = []
  nums.each do |num|
    squares << num if (Math.sqrt(num) % 1 == 0) && (squares.include?(num) == false)
  end

squares.sort! {|x,y| x <=> y }
end
