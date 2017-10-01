require_relative 'string'
require_relative 'password'
class Password_generator

  attr_reader :password

  def initialize
    @password = Password.new
  end

  def create(length, uppercase, lowercase, number, special)
     return password.create(length, uppercase, lowercase, number, special)
  end
end
