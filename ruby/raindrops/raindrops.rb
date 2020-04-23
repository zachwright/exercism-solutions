# frozen_string_literal: true

# Refactored with help from Cliff Braton cliff.braton@gmail.com
# Lessons: Learn to recognize Enumerable method use cases like:
# `select` and `reduce`.
class Raindrops
  SOUNDS = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }

  def self.convert(num)
    sound = SOUNDS.reduce('') { |value, kv| value += factors(num).include?(kv.first) ? kv.last : '' }

    return num.to_s if sound.length == 0

    return sound
  end

  def self.factors(number)
    (1..number).select do |i|
      number % i == 0
    end
  end
end
