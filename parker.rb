require 'fileutils'
require 'pry'
Dir["lib/*.rb"].each do |file|
  require_relative file
end

class Parker
  def initialize
  
  end
end

PARKING_AREAS.each_with_index do |parking_area_value, parking_area_index|
  puts "Press #{parking_area_index+1} --- for --- #{parking_area_value[:name]}"
end
while(1) do 
  puts "Select your parking area" 
  parking_lot_number = gets.to_i
  puts "Yay you are at #{PARKING_AREAS[parking_lot_number-1][:name]}"
  selected_parking_lot = PARKING_LOTS[parking_lot_number-1]
  puts "Select the Floor at which you want to park"
  floors = selected_parking_lot.floors
  floors.each do |parking_lot_floor|
    lots_count_in_floor = parking_lot_floor.lots_per_floor
    floor_identity = parking_lot_floor.floor_identity
    puts "Floor info:"
    puts "---> #{lots_count_in_floor} Lots"
    puts "---> #{floor_identity} is floor identity"
  end
  puts "Give me the floor Identity"
  floor_identity = gets.chomp
  puts "the given floor identity is #{floor_identity}"
  puts "Give us the Vehicle Details"
  found_floor = floors.find{|floor| floor.floor_identity == floor_identity}
  puts "Asking Vehicle Information Sir/Mam!!!"
  puts "Enter the Vehicle Registration"
  registration_number = gets.chomp
  puts "Enter the Vehicle color"
  color_for_car = gets.chomp
  lot_allocatable = found_floor.lots_in_floor.find{|lot| !lot.is_lot_closed?}
  puts "Yes there exists slot in the floor"
  vehicle_info = lot_allocatable.vehicle_info({
    vehicle_number: registration_number,
    vehicle_color: color_for_car
  })
  lot_allocatable.close_lot
  lot_allocatable.vehicle_info = vehicle_info
  if lot_allocatable.close_lot 
    puts "Yes the Lot is allocated to the Vehicle and the following are the Details"
    puts "the details are as follows"
    puts "Parking lotId:#{lot_allocatable.lot_identity}"
    puts "Floor Id: #{found_floor.floor_identity}"
    puts "Lot Id: #{lot_allocatable.lot_identity}"
  end  
end