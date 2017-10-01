require 'password_generator'

describe Password_generator do
  let(:length) { 10 }
  let(:non_numeric_length) { '10' }
  let(:password_generator) { described_class.new }

  before :each do
    srand(1)
  end

  context 'when method create is called' do
    it 'raise and error with unvalid arguments or length lower than 2' do
      expect{ password_generator.create(non_numeric_length, false, true, false, false).length }.to raise_error(ArgumentError)
      expect{ password_generator.create(1, false, true, false, false).length }.to raise_error(ArgumentError)
    end

    it 'generate the password with the specified length' do
      expect(password_generator.create(length, false, true, false, false).length).to equal(length)
    end

    it 'can include lowercase' do
      expect(password_generator.create(length, false, true, false, false)).to include("a")
    end

    it 'can include uppercase' do
      expect(password_generator.create(length, true, false, false, false)).to include("A")
    end

    it 'can include number' do
      expect(password_generator.create(length, false, false, true, false)).to include("1")
    end

    it 'can include number' do
      expect(password_generator.create(length, false, false, false, true)).to include("~")
    end
  end
end
