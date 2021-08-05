def find_smallest_int(arr)
  smallest = arr[0]
  for n in arr
    if n < smallest
      smallest = n
    end
  end
  puts smallest
  return smallest
end

find_smallest_int([100, 102, 103, 99, 1000])