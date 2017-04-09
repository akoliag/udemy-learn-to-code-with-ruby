=begin

 - A hash or a hash map is a data structure that stores key-value pairs.
 - Hashes are called dictionaries, maps or associative arrays in other
   programming languages.
 - A hash object connects unique identifiers (keys) to values.

 # Rules of the hash:
 - hash keys and hash values can be objects of any type
 - hash keys must be unique (no duplicates)
 - hash values can contain duplicates
 - hashes should be treated as unordered. Values are extracted by their key,
  not by their order.

  A hash is made in Ruby with {}.
=end

empty_hash = {}
p empty_hash
p empty_hash.class
