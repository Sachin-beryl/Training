class UsingReversible < ActiveRecord::Migration[7.0]
  def change
    create_table :distributors do |t|
      t.string :zipcode
    end

    reversible do |dir|
      dir.up do
        #adding zipchk constraint
        execute <<-PSQL                   #execute is used to implement raw sql query directly to database
          ALTER TABLE distributors        
          ADD CONSTRAINT zipchk           
          CHECK (length(zipcode) = 5);
        PSQL
      end

      dir.down do
        #removing zipchk constraint
        execute <<-PSQL                 #PSQL is used to take multiline string.
        ALTER TABLE distributors
        DROP CONSTRAINT zipchk
        PSQL
      end
    end

    add_column :users, :home_page_url, :string
    rename_column :users, :name, :u_name
  end
end
