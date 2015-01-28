class HouseDutyManager::Assignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :allotment, class_name: "HouseDutyManager::WeeklyRosterAllotment", foreign_key: "allotment_id"
end
