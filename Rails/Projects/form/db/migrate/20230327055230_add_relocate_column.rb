class AddRelocateColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :form_details, :relocate, :string
  end
end
