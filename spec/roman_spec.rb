require 'roman'

describe 'converter' do

  it 'can convert 5' do
    expect(convert(5)).to eq('V')
  end

  it 'can convert 230' do
    expect(convert(230)).to eq('CCXXX')
  end

  it 'can convert 401' do
    expect(convert(401)).to eq('CDI')
  end

  it 'can convert 624' do
    expect(convert(624)).to eq('DCXXIV')
  end

  it 'can convert 44' do
    expect(convert(44)).to eq('XLIV')
  end

  it 'returns IV instead of IIII' do
    expect(convert(4)).to eq('IV')
  end
end