class RollbackCheck < ActiveRecord::Migration[7.0]
  def change
    add_column :form_details, :before_save, :string
    add_column :form_details, :after_save, :string
  end
end
