# frozen_string_literal: true

# This class determines if a given number is an Armstrong Number
class ArmstrongNumbers

  def self.include?(value)
    values = value.to_s.chars.map(&:to_i)
    sum = 0

    values.each do |v|
      sum += v ** values.length
    end

    sum == value
  end
end