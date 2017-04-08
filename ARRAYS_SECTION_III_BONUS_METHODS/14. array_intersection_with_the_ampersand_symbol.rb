=begin

Taking several  arrays and returning the elements that are common to all of them.
We call this method by using the ampersand symbol "&"

=end

p [1, 2, 3, 4, 5, 5, 6,] & [3, 5, 6, 6, 7, 8] & [5, 7, 8] # 3 is common to all
# 3 arrays

a1 = [9, 8, 7, 10, 11]
a2 = [ 10, 12, 13, 14, 15]

def custom_intersection(arr1, arr2)
  final = []
    arr1.uniq.each do |elem|
      if arr2.include?(elem)
        final << elem
    end
  end
  final
end

p custom_intersection(a1, a2)
