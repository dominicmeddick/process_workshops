require 'leap_years'

describe LeapYears do
  it 'returns true if divisble by 400' do
    expect(subject.leap_year?(2000)).to be(true)
  end

  it 'returns false if divisible by 100 but not 400' do
    expect(subject.leap_year?(1900)).to be(false)
  end
end