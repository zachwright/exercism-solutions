# frozen_string_literal: true

class Raindrops
  def self.convert(num)
    sound = ''
    sound += 'Pling' if factors(num).include?(3)
    sound += 'Plang' if factors(num).include?(5)
    sound += 'Plong' if factors(num).include?(7)

    return num.to_s if sound.length == 0

    return sound
  end

  def self.factors(number)
    (1..number).select do |i|
      number % i == 0
    end
  end
end
