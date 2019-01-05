# Return true if every element of the tools array starts with an "r"
# and false otherwise
def begins_with_r (array)
  array.all? do |word|
      word.downcase.chr == "r"
    end
end

# returns all elements that contain the letter 'a'
def contain_a (array)
  array.select {|element| element.include?("a")}
end

#returns the first element that begins with the letters"wa"
def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

# Removes anything that's not a string from an array
def remove_non_strings(array)
  array.reject {|element| element.class != String}
end

# Count how many times something appears in an array
def count_elements(array)
  count = Hash.new(0)
  array.collect {|element| count[element]+=1 }
  count.collect do |hash, number|
    hash[:count] = number
  end
  count.keys
end

# Combines two nested data structures into one
def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

#find all cool hashes
def find_cool(array)
  array.select {|entry| entry if entry.has_value?("cool")}
end

#organizes the schools by location
def organize_schools(schools)
  by_location = {}
  schools.each do |school, location_hash|
    location_hash.each do |a, location|
      if by_location[location] == nil
        by_location[location] = [school]
      else
        by_location[location] << school
      end
    end
  end
  by_location
end