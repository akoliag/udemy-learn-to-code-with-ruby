class Hash
def identify_duplicate_values
    values =[]
    dupes =[]
    self.each_value {|value| values.include?(value) ? dupes << value : values << value}
    dupes.uniq
end
end

scores = {a: 100, b: 100, c: 83, d: 50, e: 15, f: 13, g: 100, h: 13, i: 50, j: 80}
p scores.identify_duplicate_values

class Fixnum
  def seconds
    self # self will return the current object
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end

  def custom_times # this method will start counting at 1 not at 0
    i = 0
    while i < self # self so the current object
      yield(i + 1) # will yield to the block and start counting at 1
      i += 1
    end
  end
end

puts Time.new + 45.minutes # 45 represents self in here
puts Time.new + 4.hours
puts Time.new + 10.days
puts
5.times {|i| puts i}
puts
5.custom_times {|i| puts i}
