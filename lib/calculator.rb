class Calculator
  attr_reader :numbers
  def initialize(numbers)
    @numbers = numbers
  end

  def sum
    sum = 0
    numbers.each do |number|
      sum += number
    end
    sum
  end
end


