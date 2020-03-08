# We will take that the parking lot has got various number of floors
=begin
  Vehicle
  - registration_number
  - vehicle_color
  - vehicle intime
  - vehicle outime
=end

class Vehicle

  PERHOUR_FEES = 8.0
  attr_accessor :vehicle_number, :vehicle_floor,:vehicle_color
  def initialize(info={})
    @vehicle_number = info[:vehicle_number]     
    @vehicle_color = info[:vehicle_color]
    @vehicle_intime = Time.now
    @vehicle_outtime = @vehicle_intime
  end

  def set_vehicle_outtime
    @vehicle_outtime = Time.now
  end
  
  def calculate_amount
    (vehicle_outtime.hours - vehicle_intime.hour)*(PERHOUR_FEES)
  end

end