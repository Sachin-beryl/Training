class ChangePrimaryKey < ActiveRecord::Migration[7.0]
  def change
    remove_column :seller, :seller_id
    add_column :seller, :s_id, :primary_key
  end
end
