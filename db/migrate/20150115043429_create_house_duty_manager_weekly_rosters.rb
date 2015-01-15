class CreateHouseDutyManagerWeeklyRosters < ActiveRecord::Migration
  def change
    create_table :house_duty_manager_weekly_rosters do |t|
      t.timestamps
    end
  end
end
