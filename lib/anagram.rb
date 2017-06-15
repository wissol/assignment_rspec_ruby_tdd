class String
  def count_chars(character)
    a = 0
    self.each_char { |chr| a += 1 if chr == character  }
    a
  end
end

class Anagram
  def initialize(string, list)
    raise("Empty list") unless list.size > 0
    @string = string
    @list = list
  end


  def run
    answer = []
    @list.each do
      |word|
      if word.size == @string.size
        word.each_char do
          |w|
          if @string.count_chars(w) != word.count_chars(w)
            break
          end        
        end
        answer << word
      end
    end
    answer
  end
end
