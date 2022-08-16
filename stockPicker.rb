prices = [1,9,103,15,8,6,7,10,99,1]

def stockpicker(arr)
  highest_to_be_deleted = arr.max
  lowest_to_be_deleted = arr.min
  if (arr.find_index(highest_to_be_deleted) == 0) && (arr.find_index(lowest_to_be_deleted) == arr.length-1)
     new_arr = arr[1..arr.length-2]
  elsif arr.find_index(highest_to_be_deleted) == 0
    new_arr = arr[1..arr.length-1]
  elsif arr.find_index(lowest_to_be_deleted) == arr.length-1
    new_arr = arr[0..arr.length-2]
  else
    new_arr = arr
  end
  # p new_arr
  min = new_arr.min
  # p min
  max_arr = new_arr[new_arr.find_index(min)..new_arr.length]
  # p max_arr
  max = max_arr.max
  # p max
  return [min,max]
end


p stockpicker(prices)