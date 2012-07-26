class Week < ActiveRecord::Base

  has_many :assignments
  has_many :duties, :through => :assignments
  has_many :members, :through => :assignments

  scope :to_assign, lambda {|start| where("start_date > ?", start).order("start_date")}

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

  def assign_members(week,duty)
    self.assignments.where("duty_id = ?",duty.id).map{|a| a.member}
  end

  def assign_members_name(week,duty)
    names = ''
    assign_members(week,duty).each do |member|
      names << member.name
    end
  end
end
