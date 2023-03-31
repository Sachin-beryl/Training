class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.text :content
      t.references :feedbackable, polymorphic: true
      t.timestamps
    end
  end
end
