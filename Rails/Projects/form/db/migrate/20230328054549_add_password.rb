class AddPassword < ActiveRecord::Migration[7.0]
  def change
    add_column :form_details, :password, :string
    add_column :form_details, :confirm_password, :string
    change_column :form_details, :mobile, :string
  end
end
