numbers = [1, 2, 3, 4, 5]
p numbers.include?(4)
p numbers.include?(100)

words = %w[apple banana kiwi grape]
p words.include?("banana")
p words.include?("Banana") #case sensitivity applies in here so we get false
p words.include?("pear")
