class CreateFormDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :form_details do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.text :address
      t.text :terms_and_conditions

      t.timestamps
    end
  end
end
