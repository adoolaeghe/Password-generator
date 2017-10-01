LOWERCASE = "abcdefghijklmnopqrstuvwxyz"
UPPERCASE = "ABCDEFGHIKLMNOPQRSTUVWXYZ"
SPECIAL =  "~`!@#$%^&*()-_+=;:/?.,><"
NUMBERS = "123456789"

class String
  def generate(uppercase, lowercase, number, special)
    ((lowercase ? LOWERCASE : "")+(uppercase ? UPPERCASE : "")+(number ? NUMBERS : "")+(special ? SPECIAL : "")).split('')
  end
end
