=begin

products = {
  "apple" => 0.99,
  "banana" => 0.25,
  "orange" => 0.50,
  "pear" => 1.25,
  "grape" => 0.10
}
Write a program that takes an array of product names and hash of products with key value as input and returns the total cost of those products. 
The input array may contain duplicates and products that are not in the hash. 
If a product is not in the hash, it should be ignored.

For example, if the input array is ["apple", "banana", "pear", "grape", "apple"], 
the output should be 3.58 

=end

def total(products,arr)
  total_amount = 0
  arr.each do |item|
    if products.has_key?(item)         #if key present in the hash 
      total_amount += products[item]   #add value in the total_amount.
    end
  end
  return total_amount
end

products = {
  "apple" => 0.99,
  "banana" => 0.25,
  "orange" => 0.50,
  "pear" => 1.25,
  "grape" => 0.10
}

arr = ["apple", "banana", "pear", "grape", "apple"]
p total(products,arr)













