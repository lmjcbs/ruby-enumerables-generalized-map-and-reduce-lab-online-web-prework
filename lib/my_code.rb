# Your Code Here
def map(source_array)
  i = 0
  new_array = Array.new
  while i < source_array.size
    new_array.push(yield(source_array[i]))
    i += 1
  end
  new_array
end

def reduce(source_array, starting_point = nil)
  if starting_point
    total = starting_point
    i = 0
  else
    total = source_array[0]
    i = 1
  end
  while i < source_array.size
    total = yield(total, source_array[i])
    i += 1
  end
  total
end
