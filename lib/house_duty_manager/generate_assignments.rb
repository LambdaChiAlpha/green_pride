module HouseDutyManager
  class MemberCountMismatch < ::Exception
    attr_reader :message

    def initialize(needed_members, actual_members)
      @message = "Needed #{needed_members} members to fill roster, only #{actual_members} available"
    end
  end

  class GenerateAssignments
    attr_reader :weekly_roster, :users

    def initialize(weekly_roster, users)
      @weekly_roster = weekly_roster
      @users = users
    end

    def run!
      temp = users.map(&:id).shuffle
      assignments_needed = weekly_roster.allotments.sum(:count)

      if temp.count != assignments_needed
        raise MemberCountMismatch.new(assignments_needed, temp.count)
      end

      weekly_roster.allotments.each do |allotment|
        allotment.count.times do
          user_id = temp.pop
          assignment = allotment.assignments.create(user_id: user_id)
        end
      end
    end
  end
end
