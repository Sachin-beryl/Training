class AddReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :role, foreign_key: true
    remove_reference :products, :user, foreign_key: true
  end
end
