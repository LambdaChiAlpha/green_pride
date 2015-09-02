class AddZetaNumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :zeta_number, :integer, index: true
  end
end
