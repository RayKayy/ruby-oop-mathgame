# Generates random math questions
# Keep answers as instance variable
class Question
  attr_reader :string

  def initialize(length = 2, max = 20)
    @numbers = []
    gen_numbers(length, max)
    @answer = @numbers.reduce(:+)
    @string = gen_string
  end

  def check_answer?(input)
    @answer == input
  end

  private

  def gen_string
    question = "What is "
    @numbers.each_index do |i|
      question << @numbers[i].to_s
      if i != @numbers.length - 1
        question << ' + '
      else
        question << '?'
      end
    end
    question
  end

  def gen_numbers(length, max)
    length.times do
      @numbers << 1 + rand(max)
    end
  end

end

# q1 = Question.new
# puts q1.question
# answer = gets.chomp
# puts q1.check_answer?(answer.to_i)