=begin
-    
    
=end

class Lot
  attr_accessor :lot_closed, :vehicle_info
  def initialize(info)
    @lot_closed = false || info[:lot_closed]
    @vehicle_info = info[:vehicle] || Vehicle.new
    @floor_id = info[:floor_id]
    @lot_identity = lot_id_generator
  end

  def vehicle_info
    @vehicle_info
  end

  def close_lot
    @lot_closed = true
  end

  def lot_id_generator
    "lot_id_#{Time.now.to_s}" + Random.rand(984598342345)
  end
end