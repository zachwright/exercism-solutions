# frozen_string_literal: true

class Phrase
    def initialize(string)
      @string = string
    end

    def word_count
      arr = @string.downcase.gsub(/[,\n!&@$%^:.]/, ' ').gsub(/( '|' )/, ' ').split
      hash = {}
      arr.each do |w| 
        if hash.key?(w)
          hash[w] = hash[w] + 1
        else
          hash[w] = 1
        end
      end
      hash
    end
end