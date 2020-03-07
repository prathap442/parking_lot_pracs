class Lot
  def initialize(info = {})
    @lot_number = "12344"
    @number_of_floors = info[:number_of_floors]
    @lots_in_floor = info[:lots_in_floor]

    @lot_structure_design = {}
    @number_of_floors.times do |time_track_number|
       @lot_structure_design[time_track_number] = []     
    end
  end

  def lot_structure
    @lot_structure_design[:floor_number] = []
  end

  def set_number_of_lots_in_floor(lots_count,floor_number)
    @lots_count = lots_count
    @floor_number = floor_number 
  end
end