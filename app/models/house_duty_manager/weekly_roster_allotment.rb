class HouseDutyManager::WeeklyRosterAllotment < ActiveRecord::Base
  belongs_to :weekly_roster, class_name: "HouseDutyManager::WeeklyRoster"
  belongs_to :house_duty, class_name: "HouseDutyManager::HouseDuty"

  attr_accessor :needed
end
