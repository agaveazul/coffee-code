animals = [['dogs', 4], ['cats',3], ['dogs',7]]

def array_conversion(animals)

new_hash = Hash.new
animals.each do |a|
  # binding.pry
  if new_hash.has_key?(a[0])
    new_hash[a[0]] += a[1]
  else
    new_hash[a[0]] = a[1]
  end
end
p new_hash
end

def leap_years
p "What is the starting year?"
start_year = gets.chomp.to_i

p "What is the ending year?"
end_year = gets.chomp.to_i

leap_years = []

(start_year..end_year).to_a.each do |year|
  leap_years << year if year % 100 == 0 && year % 400 == 0
end
leap_years
end
