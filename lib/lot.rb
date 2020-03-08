=begin
-    
    
=end

class Lot

  attr_accessor :lot_closed, :vehicle_info
  def initialize(info)
    @lot_closed = false || info[:lot_closed]
    @floor_id = info[:floor_id]
    @lot_identity = lot_id_generator
    @vehicle_info = nil
  end

  def vehicle_info(info={})
    @vehicle_info = info[:vehicle_number]
    @vehicle_color = info[:vehicle_color]
    @vehicle_info = Vehicle.new({
      vehicle_number: info[:vehicle_number],
      vehicle_color: info[:vehicle_color]
    })
  end

  def close_lot
    @lot_closed = true
  end

  def open_lot
    @lot_closed = false
  end

  def lot_id_generator
    "lot_id_#{Time.now.to_s}" + Random.rand(984598342345).to_s
  end

  def park_vehicle()
    @lot_closed = true
  end

  def lot_identity
    @lot_identity
  end

  def is_lot_closed?
    @lot_closed
  end

end