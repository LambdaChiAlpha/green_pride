class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.references :office, index: true
      t.references :officer, index: true
      t.timestamps
    end
  end
end
