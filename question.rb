class Question

  def initialize
    @number1 = rand (20) + 1
    @number2 = rand (20) + 1
  end

  def rand_question
   puts "What is the addition result for #{@number1} and #{@number2}"
  end

  def match_result
    return @number1 + @number2
  end
  
end

# question1= Question.new
# question1.rand_question
# result = question1.match_result(gets.chomp)
# puts result

