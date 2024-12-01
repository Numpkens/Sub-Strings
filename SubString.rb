# Dictionary of words to search for
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Method that takes a word and dictionary, returns hash of substring counts
def substrings(word, dictionary)
# Initialize hash with default value of 0
  result = Hash.new(0)

# Iterate through each word in dictionary
  dictionary.each do |dict_word|
# Scan input word for occurrences of dictionary word (case insensitive)
    matches = word.downcase.scan(dict_word.downcase)
    
# If matches found, add to result hash with count
    if matches.length > 0
      result[dict_word] = matches.length
    end
  end
# Return completed hash
  result
end

# Test cases
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
