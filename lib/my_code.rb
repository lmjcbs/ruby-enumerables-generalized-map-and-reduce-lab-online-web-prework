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

source_array = [ false, nil, nil, nil, true]

def reduce(source_array, starting_point = 0)
  i = 0
  total = starting_point
  while i < source_array.size
    total = yield(total, source_array[i])
    i += 1
  end
  total
end

reduce(source_array){|memo, n| memo || n}