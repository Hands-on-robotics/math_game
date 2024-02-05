# class Question

# question = Question.new
# puts question.question
# puts question.correct?(gets.chomp.to_i)

class Question
  attr_reader :question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @question = "What does #{@num1} plus #{@num2} equal?"
  end

  def correct?(answer)
    answer == @num1 + @num2
  end
end
