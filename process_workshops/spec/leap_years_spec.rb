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

  it 'returns leap years between start and end date' do
    expect(subject.find_all_leap_years(2000, 2012)).to contain_exactly(2004, 2008)
  end

  it 'when given a year returns the closest year' do
    expect(subject.closest_year(2011)).to be(2012)
  end
end
