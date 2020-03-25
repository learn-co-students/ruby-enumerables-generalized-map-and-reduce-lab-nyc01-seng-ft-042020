def map(array)
i = 0
total = []

while i < array.length 
total.push(yield(array[i]))
i += 1
  end
total
end



def reduce(array, second = nil)
if second
  sum = second 
  i = 0
else
  sum = array[0]
  i = 1 
  
end

while i < array.length
sum = yield(sum, array[i])

i += 1
  end
sum
end
