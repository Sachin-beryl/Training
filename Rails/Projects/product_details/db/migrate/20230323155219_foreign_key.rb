class ForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :products, :categories, column: :id 
    remove_foreign_key :products, column: :id
  end
end
