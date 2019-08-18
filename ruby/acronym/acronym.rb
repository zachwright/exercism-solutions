# frozen_string_literal: true

# This class provides a method that takes a phrase
# and returns the corresponding acronym/initialism.
class Acronym
  def self.abbreviate(phrase)
    phrase.gsub('-', ' ').split(' ').map { |word| word[0].capitalize }.join
  end
end
