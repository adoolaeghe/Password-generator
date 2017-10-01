class Password

  attr_reader :characters

  def initialize
    @characters = Characters.new
  end

  def create(length, uppercase, lowercase, number, special)
    characters_array = characters.generate(uppercase, lowercase, number, special)
    return (0...length).map { characters_array[rand(characters_array.length)] }.join
  end
end
