require 'password'

describe Password do
  let(:length) {10}
  let(:password) { Password.new }

  before :each do
    srand(1)
  end

  context 'when initialized' do
    it 'renders lowercase' do
      expect(password.create(length, false, true, false, false)).to include("a")
    end

    it 'renders uppercase' do
      expect(password.create(length, true, false, false, false)).to include("A")
    end

    it 'renders number' do
      expect(password.create(length, false, false, true, false)).to include("1")
    end

    it 'renders number' do
      expect(password.create(length, false, false, false, true)).to include("~")
    end
  end
end
