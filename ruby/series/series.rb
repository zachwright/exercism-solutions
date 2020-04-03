# frozen_string_literal: true

class Series
  def initialize(values)
    @values = values.chars
  end

  def slices(digit)
    @values.each_cons(digit) { |v| p v}
  end
end

# series = Series.new('01234')
# series.slices(2)

# (1..10).each_cons(3) { |a| p a }

(1..10).each { |e| p e }