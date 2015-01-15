class AddDefaultCountToHouseDuty < ActiveRecord::Migration
  def change
    add_column :house_duty_manager_house_duties, :default_count, :integer
  end
end
