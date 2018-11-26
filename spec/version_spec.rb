RSpec.describe Books do
  describe 'Version' do
    it 'has a version number' do
      expect(Books::VERSION).not_to be nil
    end

    it "version number must match #{Books::VERSION}" do
      expect(Books::VERSION).to eql('0.1.0')
    end
  end
end
