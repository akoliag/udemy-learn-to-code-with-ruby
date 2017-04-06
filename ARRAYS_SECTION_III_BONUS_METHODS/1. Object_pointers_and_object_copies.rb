=begin

# Variables and Object Review:

- all Ruby objects live on the heap - an area of computer memory
- Ruby creates space for each object on the heap
- when an object is created, it returns a reference to its memory address
- variables do not hold the object, they hold the reference to the object
- if the object is the house, the variable is the address of this house

# Pointers to the same object:

- If variable is assigned to another variable, it will point to the same object
- the variable becomes an alias for the object
- thus, any modification to the object will be reflected in both Variables
- the object_id method returns an object's location in memory

=end

a = [1, 2, 3]
b =  [1, 2, 3]
p a.object_id
p b.object_id
b = a
p a.object_id ==  b.object_id # after assigning b to a they point to the same
                              # object, to the same location in memory
a.push(4)
p a
p b # b variable also changes as it has been assigned to the a variable before

c = [5, 6, 7]
d = [5, 6, 7]
d = c.dup # dup stands for duplication and when we call this method d is not
# assigned to c variable but it is assigned to its duplication so to a brand
# new object
p c.object_id
p d.object_id
p c.object_id == d.object_id # we get false as the object ids are different

p c.push(8)
p d # d is different as it is a duplicate of c before change
