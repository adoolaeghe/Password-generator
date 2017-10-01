LOWERCASE = "abcdefghijklmnopqrstuvwxyz"
UPPERCASE = "ABCDEFGHIKLMNOPQRSTUVWXYZ"
SPECIAL =  "~`!@#$%^&*()-_+=;:/?.,><"
NUMBERS = "123456789"

class String_Array
  def generate(uppercase, lowercase, number, special)
    raise ArgumentError.new ('You have to enter at least one type') if (!uppercase && !lowercase && !number && !special)
    ((uppercase ? UPPERCASE : "")+(lowercase ? LOWERCASE : "")+(number ? NUMBERS : "")+(special ? SPECIAL : "")).split('')
  end
end
