require 'leap_years'

describe LeapYears do
  it 'returns true if divisble by 400' do
    expect(subject.leap_year?(2000)).to be(true)
  end
end