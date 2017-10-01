require_relative 'characters'
require_relative 'password'
require_relative 'boolean-check'

class Password_generator

  attr_reader :password

  def initialize
    @password = Password.new
  end

  def create(length, uppercase, lowercase, number, special)
    raise ArgumentError.new ('Argument is not correct') if (!length.is_a? Numeric) ||
                                                            (length < 2) ||
                                                            ![uppercase,lowercase,number,special].all?(&:boolean?)
    return password.create(length, uppercase, lowercase, number, special)
  end
end
