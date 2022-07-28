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






