class Calculator

  attr_reader :display

  def initialize
    @previous = 0
    @display = 0
  end

  def enter_number num
    @previous = @display
    @display = num
  end

  def plus
    equals
    @operator = :plus
  end

  def minus
    equals
    @operator = :minus
  end

  def equals
    @display = @previous + @display if @operator == :plus
    @display = @previous - @display if @operator == :minus
    @previous = 0
  end

end
