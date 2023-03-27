class AddSalary < ActiveRecord::Migration[7.0]
  def change
    add_column :form_details, :salary, :integer
  end
end
