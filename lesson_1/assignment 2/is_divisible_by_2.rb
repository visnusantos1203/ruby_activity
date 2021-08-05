arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
new_arr = []
arr.map do | n |
  if n % 2 == 0
    new_arr.push(n)
  end
end

puts new_arr