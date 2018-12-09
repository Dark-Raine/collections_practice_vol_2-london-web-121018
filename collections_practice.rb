# your code goes here
require 'pry'
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

def count_elements(array)

  newarray = [{:name => "blake", :count => array.count({:name => "blake"}) }, {:name => "ashley", :count => array.count({:name => "ashley"})} ]

end

def merge_data(keys, data)
  newarray = []
  data.each do |person|
    person.each do |attribute, value|
      keys.each do |key|
        key.each do |keyname, keyvalue|

          if attribute == keyvalue

                value[keyname] = keyvalue
                newarray << value

          end
        end
      end
    end
  end
  newarray

end

def find_cool(cool)
  array = []
  cool.each do |choices|
    choices. each do |k, v|
      if choices[k] == "cool"

        array << choices

      end

    end


  end
  array
end

def organize_schools(schools)
  schooled = {}
  schools.each do |school, location|
    location.each do |locationkey, locationvalue|
      if schooled[locationvalue].nil?
        schooled[locationvalue] = []
      end
      schooled[locationvalue] << school

    end
  end
  schooled

end
