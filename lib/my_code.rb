# # Your Code Here
def map(array)
  new_array = []
  
  index = 0
  while index < array.length do
    new_array.push yield(array[index])
    index += 1
  end
  
  new_array
end


def reduce(array, int = nil)
  
  if int
    total = int
    index = 0
  else
    total = array[0]
    index = 1
  end
  
  while index < array.length do
    total = yield(total, array[index])
    index += 1
  end

  total
end

# {|memo, n| memo || n}
# source_array = [ false, nil, nil, nil, true]

