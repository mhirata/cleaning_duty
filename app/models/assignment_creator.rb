class AssignmentCreator
  def create(start_week)
    duties = Duty.order(:type).all
    members = Member.inside
    # 指定週の残りは後で
    # not_assign_duties = Assignment.not_assign_by_week(start_week)

    weeks_count_to_assign = members.count / duties.count # ここに指定週の残りを引く
    weeks = Week.to_assign(start_week).limit(weeks_count_to_assign)
    
    # 本当はここで、存在しないWeekを作りたいけど、今回はある前提で。

    weeks.each do |week|
      duties.each do |duty|
        duty.personnel_number.times do
          a = Assignment.new week: week, duty: duty, member: members.pop
          a.save!
        end
      end
    end
  end
end
