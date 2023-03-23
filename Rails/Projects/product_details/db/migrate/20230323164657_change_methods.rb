class ChangeMethods < ActiveRecord::Migration[7.0]
  def change
    change_column_comment :products, :grade, from: "grade for product", to: "providing grade for product"
    change_column_default :products, :price, from: 1, to: 9 
    change_column_null :products, :p_name, false
    create_table :manager do |t|
      t.string :name
      t.string :email
      t.timestamps
    end
    disable_extension "pgcrypto"
    drop_join_table :products, :users
    enable_extension "pgcrypto"
    remove_column :products, :p_name, :string
    remove_index :categorization, name: "index_categorization_on_category_id"
    remove_timestamps :products
  end
end
