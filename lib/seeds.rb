require_relative 'floor'
require_relative 'lot'
require_relative 'vehicle'
# We will create 3 parking slots as of Now
# Go-jek-PL1 -> 5 Floors, 65 lots per floor
# Go-jek-PL2 -> 3 Floors, 43 lots per floor
# Go-jek-pL3 -> 2 Floors, 20 lots per floor
PARKING_AREAS = [
  {
    name: "Go-jek-PL1",
    floors_count: 6,
    lots_per_floor: 10,
    charges_per_hour: 55 
  },
  {
    name: "Go-jek-PL2",
    floors_count: 3,
    lots_per_floor: 3,
    charges_per_hour: 45 
  },
  {
    name: "Go-jek-PL3",
    floors_count: 2,
    lots_per_floor: 4,
    charges_per_hour: 5 
  }
]
# so per hour we charge 55 rupees
PARKING_AREAS.each do |parking_area|
  PARKING_LOTS.push(
    ParkingLot.new({
      floors_count: parking_area[:floors_count],
      parking_lot_name: parking_area[:name]
    })
  )
end