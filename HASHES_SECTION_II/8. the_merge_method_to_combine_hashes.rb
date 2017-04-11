=begin
This method is called on a hash and accepts a single  argument of another
hash and combines those 2 hashes into one. This is a temporary operation
so if we need to merge 2 hashes permanently, we need to use a bang
method.
=end

market = {garlic: "3 cloves", tomatoes: "5 batches", milk: "10 gallons"}
kitchen = {bread: "2 loaves", yogurt: "20 cans", milk: "100 gallons"}
p market.merge(kitchen) # if the values are duplicated, they
# get overwritten by the values of argument hash. If there are no
# duplicates the new hash will hold all items from 2 hashes.

def custom_merge(hash1, hash2)
  new_hash = hash1.dup
  hash2.each  {|key, value| new_hash[key] = value}
  new_hash
end

p custom_merge(kitchen, market)
