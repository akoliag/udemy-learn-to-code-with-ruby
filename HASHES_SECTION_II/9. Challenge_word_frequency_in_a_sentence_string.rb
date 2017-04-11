sentence = "Once upon a time in a land far far far away."

# CHALLENGE
# Create a method and return a hash where the keys will represent
# the words in the string and the values will represent how many
# times that key occurs

def word_count(string)
  words = string.split(" ")
  count = Hash.new(0)
  words.each do |word|
    count[word] += 1
    # count["far"] = 1
    # count["far"] = 2
  end
  count
end

# I can add the key to my hash using square brackets. To start
# counting at 0 we need to create a new hash and set a default 0 value
# to non-exisiting key.
p word_count(sentence)
