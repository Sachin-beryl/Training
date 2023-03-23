class ChangingColumnInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :name, :text
    change_column_null :users, :created_at, true
  end
end
