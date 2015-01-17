class CreateHouseDutyManagerWeeklyRosterAllotments < ActiveRecord::Migration
  def change
    create_table :house_duty_manager_weekly_roster_allotments do |t|
      t.integer :weekly_roster_id
      t.integer :house_duty_id
      t.integer :count
      t.timestamps
    end
  end
end
