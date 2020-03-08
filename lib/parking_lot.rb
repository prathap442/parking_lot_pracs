class ParkingLot

  def initialize(info = {})
    @parking_lot_number = generate_lot_number
    @floors = []
    @charges_per_hour = info[:charges_per_hour] || 10
    @floors_count = info[:floors_count]
    @lots_per_floor = info[:lots_per_floor] || 10
    set_floors_for_lot
  end

  def set_numbers_of_floors(floors_count)
    @floors_count ||= floors_count.to_i
    # we need to manipulate in future about the floors array
  end

  def floor_count
    @floors_count
  end

  def generate_lot_number
    Random.rand(49328492839483948923842394834293843984)
  end

  def charges_per_hour
    45.5 || @charges_per_hour
  end

  def set_floors_for_lot
    @floors_count.times do |floor_number|
    @floors.push(Floor.new({
      parking_lot_id: @parking_lot_number,
      lots_per_floor: @lots_per_floor
    })
  end

end