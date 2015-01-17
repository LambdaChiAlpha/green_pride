class HouseDutyManager::HouseDuty < ActiveRecord::Base
  has_many :allotments, class_name: "HouseDutyManager::WeeklyRosterAllotment"
end
