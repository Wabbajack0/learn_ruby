class Book
  attr_accessor :title
  def title()
    words_array = @title.split
    words_array.each_index do |i|
      if check?(words_array[i]) or i == 0
        words_array[i] = words_array[i].capitalize
      end
    end
    return words_array.join(" ")
  end

  private
  def check?(str)
    non_caps_words = ["and", "in", "the", "of", "a", "an"]
    return !non_caps_words.include?(str)
  end
end
