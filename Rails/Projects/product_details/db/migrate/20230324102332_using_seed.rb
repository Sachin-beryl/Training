class UsingSeed < ActiveRecord::Migration[7.0]
  def up
    5.times do |i|
      Role.create(name: "Product ##{i}")
    end
  end

  def down
    Role.delete_all
  end
end
