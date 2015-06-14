class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :title, index: true
      t.boolean :is_executive_committee_member, default: false
      t.boolean :held_by_alumni, default: false
      t.references :advisor, index: true
    end
  end
end
