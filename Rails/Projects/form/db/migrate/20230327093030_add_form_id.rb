class AddFormId < ActiveRecord::Migration[7.0]
  def change
    add_column :form_details, :form_id, :integer
  end
end
