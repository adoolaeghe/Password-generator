LOWERCASECASE = "abcdefghijklmnopqrstuvwxyz"
UPPERCASE = "ABCDEFGHIKLMNOPQRSTUVWXYZ"
SPECIAL =  "~`!@#$%^&*()-_+=;:/?.,><"
NUMBERS = "123456789"

class Password_generator

  attr_reader :length, :uppercase, :lowercase, :special

  def initialize(length, uppercase, lowercase, number, special)
    @length = length
    @uppercase = uppercase
    @lowercase = lowercase
    @special = special
  end
end
