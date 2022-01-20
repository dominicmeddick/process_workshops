class LeapYears

  def leap_year?(year)
    if year % 400 == 0
      return true
    elsif year % 100 == 0 && year % 400 != 0
      return false
    elsif year % 4 == 0 && year % 100 != 0
      return true
    else year % 4 != 0
      return false
    end
  end
  
end