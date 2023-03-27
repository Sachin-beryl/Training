class AbsenceValidation < ActiveRecord::Migration[7.0]
  def change
    add_column :form_details, :mobile, :integer
  end
end
