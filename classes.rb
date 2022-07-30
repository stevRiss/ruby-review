require 'pry'
#OOP IN RUBY

    #creating a class allows for user to create instances of that class
        #uncommment below code to test
    # class Person

    # end

    # p1 = Person.new
    # puts p1 
    #you will see the object id for the new person 

    #to build up our person class we need a name, to do this we need to make use of getters and setters
    # class Person

        #this is a getter method, Now we can call this method on any instance of our Person class like so: p1.name

        # def name 
        #     @name
        # end

        #this is a setter method, it will allow us to give our person a name 

        # def name=(name)
        #     @name = name
        # end

    # end
    # p1 = Person.new #creates our new person object
    # p1.name = "Steve" #calling our setter method to update our persons name
    # p1.name #call our getter method to retrieve our name
    # puts p1.name #now tou will see "Steve" when our name getter is called

    #MACROS
    # Macros can be used to get and set for us without writing all thee code
    # class Person

    #     attr_reader :name #get
    #     attr_writer :name #set

    #     attr_accessor :nickname # set and get

    # end
    # p1 = Person.new
    # p1.name = "Steve"
    # puts p1.name  #this will work same as the last, but with less code

    # p1.nickname = 'Stevie Brick'
    # puts p1.nickname  #you will see new nickname attr

    #initialize method
    #this method is used ot initalize an objects attributes upon creation, 
    #it is automatically called when a new instance is created wit .new
    # class Person
    #     attr_reader :name #we use reader instead of accessor bc initialize is setting the cvalue of @name. As it is right now, the name cannot be changed beacuse there is no setter
    #                     #attr_accessor can also be used with initalize if you want to change the value

    #     def initialize(name)
    #         @name = name
    #     end
    # end
    # #now we can create a new instance like so:
    # p1 = Person.new("Steve")
    # puts p1.name 


    #SELF
    #self is the current instance that is being to reffered to
    #for example when setting our name value above, self refers to our p1 object, this is because p1 is the object we are reffering to when passing through our getter and setter
    # class Person
    #     def show_self
    #         puts self
    #     end
    # end
    # p1 = Person.new
    # puts p1.show_self #will return the object id that self is currently assigned to. In this case it is p1 because we are calling the show_self method ON p1, SO p1 is the one being put through the method.

    #now lets try another example
    # class Person
    #     attr_accessor :name, :mom

    #     def initialize (name)
    #         @name = name
    #     end

    #     def say_it # ignore method for now explanation below

    #          puts "#{self.mom} is my mom!" #since we jjust gave our person a mom, nwe can now use our mom getter and self to retrieve the name and print it

    #     end

    #     def whos_ur_mama(mama)
    #         self.mom = mama  #self is whatever object instance is coming through this method
    #         self.say_it #since self is the current instance we can call other mthods on it too, see above,       we are explicitly calling self here

    #     end #now when our method is called it will assign the curr object (self) a mom and then say the moms name

    # end

    # p1 = Person.new("Steve")
    # p1.whos_ur_mama("Janet") #updates our Person's mom attr and says the name of the mom
    # puts p1.mom #prints Janet

    #IMPLICIT RECEIVER with self
    #consider the above example:

    # class Person
    #     attr_accessor :name, :mom

    #     def initialize (name)
    #         @name = name
    #     end

    #     def say_it 
    #          puts "#{self.mom} is my mom!" 
    #     end

    #     def whos_ur_mama(mama)
    #         self.mom = mama  
    #         say_it     #WE CAN IMPLICITLY CALL SELF BY OMITTING THE self KEYWORD, ruby by default will try the method with self 
    #     end 

    # end


    #CLASS VARIABLES AND CLASS METHODS
        #DIfference between instance variable and class variable 
            #Instance variable: is responsible for holdong information regarding AN INSTANCE, available in scope for ALL instance methods in class
            #Class Variable: is accesible to the ENTIRE CLASS (class scope), it is called on the class itself(not the instance)
                #Class variable are used to store information regarding the the class as a whole
                    #To define a class variable use: @@class_variable  (can be set equal to any data type)

                #Class methods enact behaviors that belong to the whole class
                    #in order to access the class variable you need to create a class method:
                        # def self.class_method_name
                        #     @@class_variable
                        # end
            #EXAMPLE:
                # class DVD
                #     @@dvd_count = 0;

                #     def self.count #class method named count
                      #  @@dvd_count   #we are going to return our class variable dvd_count
                    #end
                #end

               # puts DVD.count #will return the value of our class variable, which is currently 0

                #Now lets add to our dvd ccount whenever a new dvd is made, we can do that with the initialize method
                # class Dvd
                #     @@dvd_count = 0;

                #     def initialize
                #         @@dvd_count += 1  #now whenever we create a new instance of DVD it will add one to our ccount
                #     end

                #     def self.count 
                #         @@dvd_count   #count will allow us to call Dvd.count
                #     end
                    

                # end
                
                # d1 = Dvd.new #now we add a dvd 
                # puts Dvd.count #and the count will be updated

            #LETS PUT EVERYTHING TOGETHER 
            class Actor
                @@all_actors= [] #class variable to hold our array of actors

                attr_accessor :name #getter and setter

                def initialize(name)
                    @name = name
                    @@all_actors << self #add new instance to the actor array 
                end

                def self.all  #print our actor array
                    @@all_actors
                end

                def self.print_all_names  #loop through array to print the name for each actor
                    @@all_actors.each do |actor|
                        puts actor.name
                    end
                end
            end
            Actor.new("Chris Rock") #add new actors
            Actor.new("Brad Pitt")
            puts Actor.all #print acctor array
            puts Actor.print_all_names #print only actor names

                
                







