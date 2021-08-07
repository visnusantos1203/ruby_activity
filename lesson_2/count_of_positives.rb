def count_positives_sum_negatives(lst)
  new_arr = []
  count = 0
  sum = 0
  lst.map do | n |
    if n > 0
      count += 1
    elsif n < 0
      sum += n
    end
  end
  new_arr.push(count)
  new_arr.push(sum)

  if lst.length == 0
    return []
  else 
    return new_arr
  end
end