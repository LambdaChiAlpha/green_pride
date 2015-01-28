class HouseDutyManager::WeeklyRosterAllotment < ActiveRecord::Base
  belongs_to :weekly_roster, class_name: "HouseDutyManager::WeeklyRoster"
  belongs_to :house_duty, class_name: "HouseDutyManager::HouseDuty"

  has_many :assignments, class_name: "HouseDutyManager::Assignment", foreign_key: "allotment_id"

  validates :needed, acceptance: true

  attr_accessor :needed
end
