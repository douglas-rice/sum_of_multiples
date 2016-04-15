class SumOfMultiples
  MULTIPLES = [3, 5]

  def self.to(number)
    new(*MULTIPLES).to(number)
  end

  attr_reader :multiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(number)
    sum = 0
    (1...number).each do |number|
      sum += number if any_multiple?(number)
    end
    sum
  end

  private

  def any_multiple?(number)
    multiples.any? {|multiple| number % multiple == 0}
  end

end




# pseudo-code

# sum equals 0
# iterate from 1 to number
# check if each number is divisible by MULTIPLES (3 or 5)
# if it is, add number to sum
# return sum