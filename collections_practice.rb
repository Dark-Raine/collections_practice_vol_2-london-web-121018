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

def contain_a(array)
  checkLetter = []
  sortedArray = []
  counter = 0

  while counter < array.length
    checkLetter = array[counter].split("")
    checkLetter.each{|letter| letter == "a" ? sortedArray << checkLetter.join(""): letter}
    counter+=1
  end
return sortedArray
end

def first_wa(array)
  counter=0
  includes = false
  array.keep_if {|element| element.is_a? String}
  while counter < array.length

    includes = array[counter].include?("wa")
    if includes == true
      return array[counter]
      break
    end
    counter+=1
  end

end

def remove_non_strings(array)
  array.keep_if{|obj| obj.is_a? String}
end
