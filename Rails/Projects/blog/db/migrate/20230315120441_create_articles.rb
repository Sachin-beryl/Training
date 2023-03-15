class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title       #created during model generation.
      t.text :body

      t.timestamps      #add column created_at and updated_at and managed by rails
    end
  end
end
