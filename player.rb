# class player

# player.lose_life
# player.start_timer
# player.end_timer
# player.question_time
# player.average_time
# player.lives
# player.name
# player.question_times

class Player
  attr_accessor :lives
  attr_reader :name, :question_times

  def initialize(name)
    @name = name
    @lives = 3
    @start_time = 0
    @question_times = []
  end

  def lose_life
    @lives -= 1
  end

  def start_timer
    @start_time = Time.now
  end

  def end_timer
    @question_times << Time.now - @start_time
  end

  def question_time
    @question_times.last.round(1) % 1 == 0 ? @question_times.last.round : @question_times.last.round(1)
  end

  def average_time
    @question_times.reduce(:+) / @question_times.size
  end
end
