require 'house_duty_manager/generate_assignments'

class HouseDutyManager::WeeklyRostersController < ApplicationController
  def index
    @weekly_rosters = HouseDutyManager::WeeklyRoster.all
  end

  def show
    @weekly_roster = HouseDutyManager::WeeklyRoster.find(params[:id])
  end

  def new
    @weekly_roster = HouseDutyManager::WeeklyRoster.new
    @weekly_roster.allotments = HouseDutyManager::HouseDuty.all.map do |house_duty|
      HouseDutyManager::WeeklyRosterAllotment.new(weekly_roster: @weekly_roster, house_duty: house_duty, needed: true, count: house_duty.default_count)
    end
  end

  def create
    weekly_roster = HouseDutyManager::WeeklyRoster.new(weekly_roster_params)
    weekly_roster.allotments = weekly_roster.allotments.select {|a| a.needed == "1" }

    ActiveRecord::Base.transaction do
      if weekly_roster.save
        members = User.actives.in_house.to_a

        begin
          process = HouseDutyManager::GenerateAssignments.new(weekly_roster, members)
          process.run!
        rescue Exception => e
          raise e
          flash[:danger] = e.message
          redirect_to :back and return
        end

        flash[:success] = "Generated New Roster"
        redirect_to house_duty_manager_weekly_rosters_path
      else
        redirect_to :back
      end

    end
  end

  private

  def weekly_roster_params
    params.require(:house_duty_manager_weekly_roster).permit(allotments_attributes: [:house_duty_id, :needed, :count])
  end
end
