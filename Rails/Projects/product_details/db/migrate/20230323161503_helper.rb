class Helper < ActiveRecord::Migration[7.0]
  def change
    Product.connection.execute("UPDATE products SET price = 1 WHERE 1=1")
  end
end
