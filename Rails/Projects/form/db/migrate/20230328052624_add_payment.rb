class AddPayment < ActiveRecord::Migration[7.0]
  def change
    add_column :form_details, :payment_type, :string
    add_column :form_details, :card_number, :string
  end
end
