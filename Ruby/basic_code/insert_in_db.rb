#Inserting values in database table using ruby.

require 'pg'

# Connect to the database
conn = PG.connect(
  dbname: 'beryl_systems', 
  user: 'postgres', 
  password: 'changeit',
  host: 'localhost',
  port: 5432
)

# Define the SQL statement to insert a row into the table , $1 and so on are used as place holder.
sql = "INSERT INTO employee (first_name, last_name, gender, date_of_birth) VALUES ($1, $2, $3, $4)"

# Define the values to be inserted
values = [
  ['Akash', 'sharma', 'male','2002-07-09'],
  ['vikash', 'singh', 'male','1998-05-23'],
  ['simran', 'tandan', 'female','2001-10-6']
]

# Execute the SQL statement with the values
values.each do |row_values|
  conn.exec_params(sql, row_values)
end

# Close the database connection
conn.close
