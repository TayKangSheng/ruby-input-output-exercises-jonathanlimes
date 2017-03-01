class Calculator

  def initialize()
  end

  def add(num1, num2)
    num1 + num2
  end

  def sub(num1, num2)
    num1 - num2
  end

  def mult(num1, num2)
    num1 * num2
  end

  def div(num1, num2)
    num1 / num2
  end

  def calculate
    p "What calculation would you like to do? (add, sub, mult, div)"
    function = gets.chomp
    p "What is number 1?"
    num1 = gets.chomp.to_i
    p "What is number 2?"
    num2 = gets.chomp.to_i
    if function == 'add'
      p "Your result is #{add(num1, num2)}"
    elsif function == 'sub'
      p "Your result is #{sub(num1, num2)}"
    elsif function == 'mult'
      p "Your result is #{mult(num1, num2)}"
    elsif function == 'div'
      p "Your result is #{div(num1, num2)}"
    else
      p "You gave a wrong function. I will assume 'add'."
      p "Your result is #{add(num1, num2)}"
    end
  end

end

assignment = Calculator.new()
assignment.calculate
