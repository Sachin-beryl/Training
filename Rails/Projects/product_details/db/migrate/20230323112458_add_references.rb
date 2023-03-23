class AddReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :role, foreign_key: true
    add_belongs_to :taggings, :taggable, polymorphic: true
    remove_reference :products, :user, foreign_key
  end
end
