# frozen_string_literal: true

class WordCount

end

class Phrase
    def initialize(string)
      @string = string
    end

    def word_count
      arr = @string.split
      hash = {}
      arr.each do |w| 
        hash[w] = hash[w] + 1 if hash.key?(w)
        hash[w] = 1
      end
      hash
    end
end