require 'password_generator'

describe Password_generator do
  let(:length) {10}
  subject(:password_generator) { described_class.new(length, true, true, true, true) }

  context 'when initialized' do
    it 'stores the given length' do
      expect(password_generator.length).to eq(length)
    end
  end
end
