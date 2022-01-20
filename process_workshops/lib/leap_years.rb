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

  def leap_year_array(start_date, end_date)
    is_leap_year = []
    loop do
      start_date = start_date + 1
      if leap_year?(start_date) == true
        is_leap_year << start_date
      end
      if start_date == end_date - 1
        break 
      end
    end
      return is_leap_year
  end


end