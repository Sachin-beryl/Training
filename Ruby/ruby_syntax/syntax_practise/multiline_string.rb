# To build strings from multiple lines.

print <<EOF
  This is the first way of creating
  here document ie. multiple line string.
EOF

puts()    #provide line gap between above and below code.

puts 'Grocery list', '------------', <<GROCERY_LIST
  1. Salad mix.
  2. Strawberries.
  3. Cereal.
  4. Milk.
GROCERY_LIST