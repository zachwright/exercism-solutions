# frozen_string_literal: true

# This class provides a method 'value' that takes in an array of
# colors and returns the concatenated value of the first 2 of those
# colors in the resistor encoding
class ResistorColorDuo
  @values = { black: 0, brown: 1, red: 2, orange: 3, yellow: 4, 
              green: 5, blue: 6, violet: 7, grey: 8, white: 9 }

  def self.value(colors)
    (@values[colors[0].to_sym].to_s + @values[colors[1].to_sym].to_s).to_i
  end
end
