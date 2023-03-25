class Solver
  def initialize(arg)
    @arg = arg
  end

  def factorial
    return 1 if @arg.zero?

    factorial = 1
    (1..@arg).each do |x|
      factorial *= x
    end
    factorial
  end

  def reverse
    reverse_string = ''
    @arg.each_char { |x| reverse_string = x + reverse_string }
    reverse_string
  end

  def fizzbuzz
    if (@arg % 3).zero? && (@arg % 5).zero?
      'fizzbuzz'
    elsif (@arg % 3).zero?
      'fizz'
    elsif (@arg % 5).zero?
      'buzz'
    else
      @arg.to_s
    end
  end
end
