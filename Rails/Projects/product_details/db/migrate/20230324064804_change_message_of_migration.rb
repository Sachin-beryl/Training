class ChangeMessageOfMigration < ActiveRecord::Migration[7.0]
  def change
    suppress_messages do
      create_table :productdetails do |t|
        t.string :name
        t.text :details
        t.timestamps
      end
    end

    say "Created a table"

    suppress_messages {add_index :productdetails, :name}
    say "and an index!", true

    say_with_time 'Waiting for a while' do
      sleep 10
      10
    end
  end
end
