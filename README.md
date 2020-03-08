# Let me do the MultiParking Lot

- So here my architecting would using up of the Multiple Parking Lots 
- A Parking Lot will have the Multiple Floors
- A Floor has many lots.
- Every Vehicles registration_number, vehicle_color, vehicle_intime, vehicle_outtime should be taken
- The Bill Service basically is being charged based on what is the ParkingLot and then the what are the charges perhour for that particular parking lot perhour .
- For my way desiging i had a overview of desigining the things from the base and i would love to keep it in as image .


# Analysis 
Approach1(I would have gone):
  - This is pretty much interesting like building the system i thought that there exists the parking lots that are multiple in number .
  
  - In doing analysis had no clue from where to start is it from top to bottom or from the bottom to top in building the class Models . Later concluded of boiling the problem down in the pattern of

  ParkingLot,Floor,Lot,Vehicle and thought that this flow would make the things work and then started in this way

Approach2:
  - So i have started building the basic blocks from bottom to top approach first built the Vehicle model and then lot, Floor, ParkingLot model later. 
  - This approach made me bit confusing to connect the dots
  - Probably if i would have done in an rspec way i should have started in the first approach way
```

Press 1 --- for --- Go-jek-PL1
Press 2 --- for --- Go-jek-PL2
Press 3 --- for --- Go-jek-PL3
Select your parking area
1
Yay you are at Go-jek-PL1
Select the Floor at which you want to park
Floor info:
---> 10 Lots
---> floor_id_344215995 is floor identity
Floor info:
---> 10 Lots
---> floor_id_82400174 is floor identity
Floor info:
---> 10 Lots
---> floor_id_103968529 is floor identity
Floor info:
---> 10 Lots
---> floor_id_256715567 is floor identity
Floor info:
---> 10 Lots
---> floor_id_380510402 is floor identity
Floor info:
---> 10 Lots
---> floor_id_265509723 is floor identity
Give me the floor Identity
floor_id_344215995
the given floor identity is floor_id_344215995
Give us the Vehicle Details
Asking Vehicle Information Sir/Mam!!!
Enter the Vehicle Registration
kA03 AA 5674
Enter the Vehicle color
brown
Yes there exists slot in the floor
Yes the Lot is allocated to the Vehicle and the following are the Details
the details are as follows
Parking lotId:lot_id_2020-03-08 16:52:25 +0530664057112625
Floor Id: floor_id_344215995
Lot Id: lot_id_2020-03-08 16:52:25 +0530664057112625

```
![alt text](https://github.com/prathap442/parking_lot_pracs/blob/master/multi_parking_lot_sketch_brief.jpeg)