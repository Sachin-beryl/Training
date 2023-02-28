# use of all variable types 

$global_variable = 100    #global variable with value 100

class Vehicle
  @@vehicle_id = 1        #class variable

  def initialize(id,model_name)   #similar to constructor
    @vehicle_id = id              #instance variable
    @model_name = model_name       #instance variable
  end

  def vehicle_details
    no_of_wheels = 4                              #local variable
    puts "print global variable #{@@vehicle_id}"  #access the class variable
    puts "number of wheels are #{no_of_wheels}"
    puts "vehicle id is #{@vehicle_id}"           #use instance variable
    puts "model number is #{@model_name}"
    puts $global_variable                         #accessing global variable
  end
end

veh = Vehicle.new(2,'honda')       #assigning values to instance variable
veh.vehicle_details   

puts()      #provide line space between the output

veh1 = Vehicle.new(3,'hero')         #assigning values to instance variable
veh1.vehicle_details 