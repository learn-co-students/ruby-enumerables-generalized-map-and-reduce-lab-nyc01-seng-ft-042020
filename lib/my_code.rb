# Your Code Here
def map(array)
  new_array = []
  counter = 0
  while counter < array.length
    new_array.push(yield(array[counter]))
    counter += 1
  end
  new_array
end

def reduce(array, s=nil)
  if s
    sum = s
    counter = 0
  else
    sum = array[0]
    counter= 1
  end
  while counter<array.length
    sum = yield(sum,array[counter])
    counter += 1
  end
  sum
end