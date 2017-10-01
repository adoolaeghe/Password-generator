require_relative 'string'
class Password

  attr_reader :string

  def initialize
    @string = String.new
  end

  def create(length, uppercase, lowercase, number, special)
    array = string.generate(uppercase, lowercase, number, special)
    return (0...length).map { array[rand(array.length)] }.join
  end
end
