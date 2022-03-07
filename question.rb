class Question 
  def initialize 
    @first_num = rand(1..20)
    @second_num = rand(1...20)
    @answer = @first_num + @second_num
  end

  def ask_q(name)
    puts "#{name}: What does #{@first_num} plus #{@second_num} equal?"
  end

  def validate_a?(input)
    @answer == input
  end
end