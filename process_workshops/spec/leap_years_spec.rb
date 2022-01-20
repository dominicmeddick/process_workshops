require 'leap_years'

describe LeapYears do
  it 'returns true if divisble by 400' do
    expect(subject.leap_year?(2000)).to be(true)
  end

  it 'returns false if divisible by 100 but not 400' do
    expect(subject.leap_year?(1900)).to be(false)
  end

  it 'returns true if divisible by 4 but not 100' do
    expect(subject.leap_year?(2004)).to be(true)
  end

  it 'returns false if not divisible by 4' do
    expect(subject.leap_year?(2009)).to be(false)
  end
end
