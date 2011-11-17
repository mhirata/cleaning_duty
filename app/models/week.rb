class Week < ActiveRecord::Base

  def ==(obj)
    self.start_date == obj.start_date
  end

  def full_name
    "#{self.start_date.to_s}  #{self.start_date.cweek} weeks"
  end

  def year
    self.start_date.year
  end

  def cweek
    self.start_date.cweek
  end
end
