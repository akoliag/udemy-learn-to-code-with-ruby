str = "5"
p str
p str.class

p str.to_i.class #.to_i konwertuje stringa w integer  but is just a temporary change
p str
p str.to_f #converting to float
p str.to_f.class

number = 10
p number.class
p number.to_s
p number.to_s.class
p number.to_f
p number.to_f.class


pi = 3.14

p pi.to_i
p pi.to_i.class


p pi.to_s
p pi.to_s.class

p "5".to_s.class #5 jest juz stringiem ale ta metoda i tak zadziała

p 10.to_i.class

#Boolean into
p 5 < 10 #daje true czyli booolean object
p 10 >  12 #przykład Boolean object
p true
p false

handsome = true
stupid = false
p handsome
p stupid
p handsome.class
p stupid.class
