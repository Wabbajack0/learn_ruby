def translate string
  i = 0
  j = 0
  result = Array.new
  simbol = ""
  punctuation = false
  words_array = string.split
  words_array.each do |word|
    if /[^a-zA-Z0-9]/.match(word[-1])
      simbol = word[-1]
      word = word[0..-2]
      punctuation = true
    end
    if !/[aeiou]/.match(word[0])
      while !/[aeiou]/.match(word[i])
        if word[i] == "q" and word[i+1] == "u"
          i += 2
        else
          i += 1
        end
      end
      cut = word[0..i-1]
      result[j] = word[i..word.length] + cut + "ay"
      if word[0] == word[0].capitalize
        result[j] = result[j].capitalize
      end
      i = 0
    else
      result[j] = word + "ay"
    end
    if punctuation
      result[j] += simbol
    end
    j += 1
    punctuation = false
  end
  result.join(" ")
end
