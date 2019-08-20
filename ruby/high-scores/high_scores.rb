# frozen_string_literal: true

# This class contains an array of scores and has methods
# to return information about those scores.
class HighScores
  def initialize(scores)
    @scores = scores
  end

  attr_reader :scores

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.sort.pop(3).reverse
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end
