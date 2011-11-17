class AssignmentController < ApplicationController
  def index
    @duties = Duty.order(:type).all
    @weeks = Week.order(:start_date).all
  end

end
