# your code goes here

def begins_with_r(array)
  firstLetter = []
  sortedArray = []
  counter = 0
  truse = 0
  while counter < array.length
    firstLetter = array[counter].split("")
    if firstLetter.first == "r"
      truse += 1

    end
    counter+=1
  end
  if truse == array.length
    return true
  else
    return false
  end

end
