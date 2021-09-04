class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    assertNumerics(first_operand, second_operand)
    assertAllowedOperation(operation)

    begin
      result = first_operand.send(operation.to_sym, second_operand)
      "#{first_operand} #{operation} #{second_operand} = #{result}"
    rescue ZeroDivisionError
      "Division by zero is not allowed."
    end
  end

  private

  class UnsupportedOperation < StandardError; end

  def self.assertNumerics(first_operand, second_operand)
    raise ArgumentError unless (first_operand.is_a? Numeric) && (second_operand.is_a? Numeric)
  end

  def self.assertAllowedOperation(operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
  end
end
