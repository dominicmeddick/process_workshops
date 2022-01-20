class LeapYears

  def leap_year?(year)
    if year % 400 == 0
      return true
    elsif year % 100 == 0
      return false
    end

    return year % 4 == 0
  end

  def find_all_leap_years(start_year, end_year)
    leap_years = []
    last_year = end_year - 1
    loop do
      start_year = start_year + 1
      if leap_year?(start_year)
        leap_years << start_year
      end
      if start_year == last_year
        return leap_years 
      end
    end 
  end

  def closest_year(year)
    upward_year = find_higher_leap_year(year)
    downward_year = find_lower_leap_year(year)
    if (upward_year - year) > (year - downward_year)
      return downward_year
    else
      return upward_year
    end
  end

  private

  def find_higher_leap_year(year)
    upward_year = year
    loop do 
      upward_year += 1
      if leap_year?(upward_year)
        return upward_year
      end
    end
  end

  def find_lower_leap_year(year)
    downward_year = year
    loop do 
      downward_year -= 1
      if leap_year?(downward_year)
        return downward_year
      end
    end
  end

end