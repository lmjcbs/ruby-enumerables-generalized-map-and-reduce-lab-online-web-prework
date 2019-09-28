# Your Code Here
def map(source_array)
  i = 0
  new_array = Array.new
  while i < source_array.size
    yield(new_array.push(source_array[i]))
    i += 1
  end
  new_array
end
