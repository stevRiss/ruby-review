require 'pry'
#INHERITANCE 
    #Inheritance allows us to create a family of classes with shared behavior, while still having those classes be unique
        #For example if we had a VEHICLE class, we could create a new class called CAR and inherit that class from VEHICLE
            #CAR would have all the attributes that VEHICLE has, it will also have its own unique attributes and meethods
        #In this case VEHICLE is the parent class (super class), and the CAR class is the child 

            ##UNCOMMENT CODE
        # class Vehicle 

        #     attr_accessor :color, :wheel_type
            
        #     def initialize (color, wheel_type) #initialize vehicle, all vehicles have a color and some sort of wheel 
        #         @color = color
        #         @wheel_type = wheel_type
        #     end

        #     def start #instance method to start vehicle
        #         puts "Engine Started"
        #     end

        #     def turn_off #instance method to turn off vehicle 
        #         puts "Engine turned off"
        #     end

        # end

        # #Now lets make our Car class

        # class Car < Vehicle #in ordeer to makee a class inherit another, you must use the less than operator followed by the class being inherited

        # end
        # car = Car.new("Blue", "Off road") #Now when we create a new car object, we will have access to all methods of the 'super' class (Vehicle)
        # puts car.start

        # #the child class can also overide the parent classes methods

        # class Bus < Vehicle

        #     def start #Now when our start method is called on a bus object, this method will be the one to run
        #         puts "WARMING UP....."
        #         puts "BUS STARTED."
        #     end

        # end
        # bus = Bus.new("White", "Street")
        # puts bus.start #Now you should see the new output int the terminal
        #         ##END CODE 

        #IF you want to see which cclass inherits from which, you can enter the irb and enter:
            #Car.superclass  (this will return Vehicle)
