require 'password_generator'

describe Password_generator do
  let(:length) {10}
  subject(:password_generator) { described_class.new(length, true, true, true, true) }

  context 'when initialized' do
    it 'stores the given length' do
      expect(password_generator.length).to eq(length)
    end
    it 'stores returns true for number' do
      expect(password_generator.number).to be(true)
    end
    it 'stores returns true for special' do
      expect(password_generator.special).to be(true)
    end
    it 'stores returns true for uppercase' do
      expect(password_generator.uppercase).to be(true)
    end
    it 'stores returns true for lowercase' do
      expect(password_generator.lowercase).to be(true)
    end
  end
end
