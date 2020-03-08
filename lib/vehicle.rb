# We will take that the parking lot has got various number of floors
=begin
  Vehicle
  - registration_number
  - vehicle_color
  - vehicle intime
  - vehicle outime
=end

class Vehicle

  attr_accessor :vehicle_number, :vehicle_floor,:vehicle_color
  def initialize(info={})
    @vehicle_number = info[:vehicle_number]     
    @vehicle_color = info[:vehicle_color]
    @vehicle_intime = Time.now
    @vehicle_outtime = @vehicle_intime
    @vehicle_per_hour_basis_charge = info[:fees_per_hour] #needs to send the fee at the time of the Allocation of the vehicle
    @lot_identity = info[:lot_identity]
  end

  def checkout
    @vehicle_outtime = Time.now
  end

  def lot_identity
    @lot_identity
  end
end