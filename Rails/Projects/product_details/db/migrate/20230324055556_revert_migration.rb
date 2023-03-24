require_relative "20230324045406_using_reversible"    

class RevertMigration < ActiveRecord::Migration[7.0]
  def change
    revert UsingReversible      #reverting the previous migration.

    create_table(:apples) do |t|    #and apple table will created.
      t.string :variety
    end
  end
end
