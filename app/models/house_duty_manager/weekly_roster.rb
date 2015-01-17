class HouseDutyManager::WeeklyRoster < ActiveRecord::Base
  has_many :allotments, class_name: "HouseDutyManager::WeeklyRosterAllotment"
  accepts_nested_attributes_for :allotments
end
