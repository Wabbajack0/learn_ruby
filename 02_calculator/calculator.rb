def add (a, b)
  a + b
end

def subtract (a, b)
  a - b
end

def sum array
  result = 0
  array.each do |i|
    result += i
  end
  result
end

def multiply (a, b, *other_numbers)
  res = a * b
  if other_numbers
    other_numbers.each do |i|
      res *= i
    end
  end
  res
end

def power (a, b)
  a ** b
end

def factorial a
  i = 1
  a.times do
    i *= a
    a -= 1
  end
  i
end
