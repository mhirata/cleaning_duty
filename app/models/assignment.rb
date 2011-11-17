class Assignment < ActiveRecord::Base
  belongs_to :week
  belongs_to :member
  belongs_to :duty

end
