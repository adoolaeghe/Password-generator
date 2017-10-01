require 'password_generator'

describe Password do
  let(:length) {10}
  let(:password_generator) { Password_generator.new }

  before :each do
    srand(1)
  end

  context 'when create is called' do
    it 'has the specified length' do
      expect(password_generator.create(length, false, true, false, false).length).to equal(length)
    end

    it 'renders lowercase' do
      expect(password_generator.create(length, false, true, false, false)).to include("a")
    end

    it 'renders uppercase' do
      expect(password_generator.create(length, true, false, false, false)).to include("A")
    end

    it 'renders number' do
      expect(password_generator.create(length, false, false, true, false)).to include("1")
    end

    it 'renders number' do
      expect(password_generator.create(length, false, false, false, true)).to include("~")
    end
  end
end
