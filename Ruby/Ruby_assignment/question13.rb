=begin

You are given the array paths, where paths[i] = [cityAi, cityBi] means there exists a direct path going from
cityAi to cityBi. Return the destination city, that is, the city without any path outgoing to another city.
It is guaranteed that the graph of paths forms a line without any loop, therefore, there will be exactly one
destination city.
Input: paths = [["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]]
Output: "Sao Paulo"
Explanation: Starting at "London" city you will reach "Sao Paulo" city which is the destination city. Your trip
consist of: "London" -> "New York" -> "Lima" -> "Sao Paulo"

=end

def dest_city(paths)
  dest = paths.map {|p| p[0]}
  origin = paths.map {|p| p[1]}
  (origin - dest).join("")
end

p dest_city([["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]])
p dest_city([["B","C"],["D","B"],["C","A"]])
p dest_city([["A","Z"]])