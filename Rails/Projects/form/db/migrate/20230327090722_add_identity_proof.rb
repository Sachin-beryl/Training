class AddIdentityProof < ActiveRecord::Migration[7.0]
  def change
    add_column :form_details, :identity, :string
  end
end
