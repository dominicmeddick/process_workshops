require 'middle_letter'

describe MiddleLetter do

  it 'returns the middle letter of an odd numbered word' do
    expect(subject.get_middle("odd")).to eq("d")
  end

  it 'returns the middle letters of an even numbered word' do
    expect(subject.get_middle("even")).to eq("ve")
  end

end