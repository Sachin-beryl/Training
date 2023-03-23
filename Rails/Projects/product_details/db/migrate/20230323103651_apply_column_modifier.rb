class ApplyColumnModifier < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :grade, :string, comment: "grade for product"
    change_column :products, :price, :integer, default: "zero", precision: 10, scale: 2
    change_column :products, :part_number, :string, limit: 100, null: false
  end
end
