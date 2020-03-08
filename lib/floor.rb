=begin
{

}
=end

class Floor

  def initialize(info = {})
    @parking_lot_id = info[:parking_lot_id]
    @lots_per_floor  = info[:lots_per_floor]
    @lots_in_floor = []
    @floor_identity = floor_identity_generator
    set_lots_per_floor 
  end

  def floor_lots
    @lots_per_floor
  end

  def set_lots_per_floor
    @lots_per_floor.times do |lot_time|
      @lots_in_floor(Lot.new({
        floor_id: @floor_identity
      }))   
    end
  end 


  def floor_identity_generator
    "floor_id_"+Random.rand(438904398)
  end

end