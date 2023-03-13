# Ruby code to access a PostgreSQL database

require 'pg'

# Set up the connection parameters
conn = PG.connect(
  dbname: 'beryl_systems',
  user: 'postgres',
  password: 'changeit',
  host: 'localhost',
  port: 5432 # This is the default port for PostgreSQL
)

# Execute a query and retrieve the results
result = conn.exec('SELECT * FROM employee')
result.each do |row|
  puts row.inspect
end

# Close the connection
conn.close
