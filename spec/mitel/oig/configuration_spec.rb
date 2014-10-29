RSpec.describe Mitel::OIG::Configuration do
  it 'responds to .set' do
    expect(Mitel::OIG::Configuration).to respond_to(:set)
  end

  it 'responds to .clear' do
    expect(Mitel::OIG::Configuration).to respond_to(:clear)
  end

  it 'responds to .options' do
    expect(Mitel::OIG::Configuration).to respond_to(:options)
  end

  describe '.set' do
    it 'sets the option' do
      Mitel::OIG::Configuration.set(:endpoint, 'http://localhost')
      expect(Mitel::OIG::Configuration.options[:endpoint]).to eq('http://localhost')
    end

    it 'exposes option as a method' do
      Mitel::OIG::Configuration.set(:endpoint, 'http://localhost')
      expect(Mitel::OIG::Configuration.endpoint).to eq('http://localhost')
    end
  end

  describe '.clear' do
    before(:each) do
      Mitel::OIG::Configuration.set(:endpoint, 'http://localhost')
    end

    it 'clears the option' do
      Mitel::OIG::Configuration.clear(:endpoint)
      expect(Mitel::OIG::Configuration.options[:endpoint]).to eq(nil)
      expect(Mitel::OIG::Configuration.endpoint).to eq(nil)
    end
  end

  describe '.options' do
    let(:subject) { Mitel::OIG::Configuration.options }

    before(:each) do
      Mitel::OIG::Configuration.set(:endpoint, 'http://localhost')
    end

    it 'exposes options as Hash' do
      expect(subject[:endpoint]).to eq('http://localhost')
    end
  end
end