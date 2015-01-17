class HouseDutyManager::WeeklyRostersController < ApplicationController
  def index
    @weekly_rosters = HouseDutyManager::WeeklyRoster.all
  end

  def new
    @weekly_roster = HouseDutyManager::WeeklyRoster.new
    @weekly_roster.allotments = HouseDutyManager::HouseDuty.all.map do |house_duty|
      HouseDutyManager::WeeklyRosterAllotment.new(weekly_roster: @weekly_roster, house_duty: house_duty, needed: true, count: house_duty.default_count)
    end
  end

  def create
    weekly_roster = HouseDutyManager::WeeklyRoster.new(weekly_roster_params)

    if weekly_roster.save
      flash[:success] = "Generated New Roster"
      redirect_to house_duty_manager_weekly_rosters_path
    else
      redirect_to :back
    end
  end

  private

  def weekly_roster_params
    params[:house_duty_manager_weekly_roster].permit(:allotment_attributes)
  end
end
