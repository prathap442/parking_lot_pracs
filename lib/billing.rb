class Billing

  def initialize(info = {})
    @vehicle_info = info[:vehicle]
    @parking_lot_identity = @vehicle_info[:parking_lot_identity]
  end

  def price_calculator
    usage_time_calculation + taxes_calculation
  end

  def usage_time_calculation
    @vehicle_info.outime - @vehicle_info.intime
  end

  def taxes_calculation
    (100 + ((usage_time_calculation).to_i)*8)# currently hard coding 8 rupess
  end

end