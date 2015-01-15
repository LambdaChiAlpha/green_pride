class CreateHouseDutyManagerHouseDuties < ActiveRecord::Migration
  def change
    create_table :house_duty_manager_house_duties do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
