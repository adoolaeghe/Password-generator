require 'string_generator'

describe String do

  subject(:string) { described_class.new }

  context 'when generated' do
    it 'takes lowercase' do
      expect(string.generate(false, true, false, false)).to include("a")
    end

    it 'takes uppercase' do
      expect(string.generate(true, false, false, false)).to include("A")
    end

    it 'takes number' do
      expect(string.generate(false, false, true, false)).to include("1")
    end

    it 'takes number' do
      expect(string.generate(false, false, false, true)).to include("~")
    end
  end
end
