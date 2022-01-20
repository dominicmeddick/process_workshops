class LeapYears

  def leap_year?(year)
    if year % 400 == 0
      return true
    else year % 100 == 0 && year % 400 != 0
      return false
    end
  end

end