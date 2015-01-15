class HouseDutyManager::WeeklyRostersController < ApplicationController
  def index
    @weekly_rosters = HouseDutyManager::WeeklyRoster.all
  end

  def new
    @weekly_roster = HouseDutyManager::WeeklyRoster.new
    @house_duties = HouseDutyManager::HouseDuty.all
  end
end
