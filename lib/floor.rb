=begin
{

}
=end

require_relative 'lot'
class Floor
  attr_reader :floor_lots, :lots_per_floor
  def initialize(info = {})
    @parking_lot_id = info[:parking_lot_id]
    @lots_per_floor  = info[:lots_per_floor]
    @lots_in_floor = []
    @floor_identity = floor_identity_generator
    set_lots_per_floor 
  end

  def floor_identity
    @floor_identity
  end

  def set_lots_per_floor
    @lots_per_floor.times do |lot_time|
      @lots_in_floor.push(Lot.new({
        floor_id: @floor_identity
      }))  
    end
  end 

  def floor_identity_generator
    "floor_id_" + Random.rand(438904398).to_s
  end

  def lots_in_floor
    @lots_in_floor
  end

end