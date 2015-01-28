class CreateHouseDutyManagerAssignments < ActiveRecord::Migration
  def change
    create_table :house_duty_manager_assignments do |t|
      t.integer :user_id
      t.integer :allotment_id
      t.timestamps
    end
  end
end
