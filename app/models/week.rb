class Week < ActiveRecord::Base

  def ==(obj)
    self.start_date == obj.start_date
  end
end
