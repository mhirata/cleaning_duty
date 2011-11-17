class Week < ActiveRecord::Base

  #def initialize(date)
  #  @start_date = date
  #end

  def ==(obj)
  p self.start_date
  p obj.start_date
    self.start_date == obj.start_date
  end
end
