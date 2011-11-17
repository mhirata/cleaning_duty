class Member < ActiveRecord::Base
  scope :inside, where("outside = ?", false)
end
