def echo string
  string
end

def shout string
  string.upcase
end

def repeat (string, times = 2)
  result = string
  (times-1).times do
    result += " " + string
  end
  result
end

def start_of_word (string, index)
  result = ""
  index.times do |i|
    result += string[i]
  end
  result
end

def first_word string
  i = 0
  result = ""
  while string[i] != " "
    result += string[i]
    i += 1
  end
  result
end

def titleize string
  i = 0
  words = string.capitalize.split
  words.each do
    if words[i] != "and" and words[i] != "over" and words[i] != "the"
      words[i] = words[i].capitalize
    end
    i += 1
  end
  words.join(" ")
end
