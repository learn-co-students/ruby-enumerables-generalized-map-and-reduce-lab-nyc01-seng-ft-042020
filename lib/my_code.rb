def map (array)
  index = []
  counter = 0 
  while counter < array.length
    index.push(yield(array[counter]))
    counter +=1
 end
 index
 end
 
 def reduce (array, start = nil)
   if start
     num1 = start
     counter = 0 
   else
     num1 = array[0]
     counter = 1 
    end
    while counter < array.length 
    num1 = yield(num1,array[counter])
    counter +=1
   end
   num1
   end