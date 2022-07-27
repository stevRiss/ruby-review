require 'pry' #this is covered later in the document

# puts will print a string of text to the terminal(similar to console.log() in js and system.out.println() in java)
puts "hello world!"
puts ("parentheses are optional")

#to run a ruby file enter the following in the terminal
    #ruby filename.rb
#this will run our ruby application, when ruby app.rb is run you should see 'hello world! and 'parentheses are optional'

#print can also be used to print to the console, the difference is that print will not add a line break after each output(similar to Sytsem.out.print() in java)
print "hello world!"
print ("parentheses are optional")
#now u should see 'hello world!parentheses are optional' after our original output

#use irb to perview output in terminal
    #enter irb by typring 'irb' in terminal
    #test output to see how things work
    #exit by typing exit or ctrl + d

#operators
    # minus -
    #plus +
    #multiply *
    #divide / , you can also call the div(numeric) method which will divide by numeric
    #modulo/remainder %
    #power of **
    # -int will return that integeer negated
    # int << countt : will reeturn the int shifted left count positions or right if count is negative
        #EXAMPLE: 2.7.4 :002 > 5 << 1
                # => 10 
                # 2.7.4 :003 > 5 << 2
                # => 20 
                # 2.7.4 :004 > 5 << 3
                # => 40 
    # int <=> numeric : will return -1,0,1 depending on wheether in is less than equal to or greater than numeric 
    #.class will tell you what class the data is 
    # = is used for assignment 
    # == is used for comparing data

#comparison operators
    #greater than >
    #less than < 
    #greater than or equal to >=
    #less than or equal to <=
    #equal to ==
    #not equal to !=

#logical operators
    #AND &&
    #OR ||
    #NOT !

#ternary operator is ?
    # age = 1
    # age > 0 ? "grown" : "child"


#variables
    #cat = "rose" is a regular variable
    #CAT = "rosie" is a CONSTANT variable
    #$cat = "bubbs" is a GLOBAL variable

#symbols can be made like so 
    #:steve
    #it is a representation of a piece of data

#DIFFERENCE BETWEEN INSTANCE METHOD AND CLASS METHOD
    #instance mthods aree called on THAT instance of a class
        # to indicate a instance method use #, string#method

#data types
    #String: can be defined like dog = "jon" or more uncommonly like String.new("string")
        #interpolation: puts "hello #{dog}" NO BACKTICKS
        #common string methods: .upcase, .downcase, .capitalize, .reverse
        #IF YOU CALL "string".methtods, RUBY WILL DISPLAY ALL METHODS THAT OBJECT REPSONDS TO ****

        #RUBY DOC FOR STRINGS : https://ruby-doc.org/core-2.7.3/String.html

    #Numbers : only TWO types of numbers in ruby
        #integers (whole numbers)
        #floats (decimals)
        #common number methods: .abs (absolute value), .ceil (round up), .floor (round down), .inspect (alias for .to_s) , .lcm (least common multiple), .next (next int), .pow() (power of), .pred (prev int), to_i/.to_int, .to_f (float)
    #Booleans:
        #only nil and false are falsy values, everything else is truthy
    

#ruby methods!
    def one 
        puts 1
    end

    puts one
    #this method can be ran in the terminal like we learned earlier, using ruby file_name.rb
    #before you can see the methods return value, you must call the method somewhere, her we use 'puts add'
    #now run app.rb in terminal an you should see 1 returned

    #we can also treat methods almost as variables in some cases
    def add
        1
    end
    #in this case:
    puts "add method #{add} + #{add}" #will return 2! this is becayse the return value of add is one and we are calling the add method twice

    #of course we can also allow our method to accept parameters
    def new_add num
        
        num
    end
    puts "new add method #{new_add(4)} + #{new_add(5)}"
    #now we can eenter custom parameters when calling our method

    #we can also allow the method to accept multiple parameters
    def subtract num1, num2
        if num1 >= num2
            num1 - num2
        else
            num2 - num1
        end
    end
    puts "subtract method #{subtract(4,5)}"
    #now we can add two parameters to our subtraction method

    #we can also assign variables to hold the return value of our methods
    subtract_return_value = subtract(4,5)
    puts "subtract return value #{subtract_return_value}"

    #ruby allows us to create methods with default arguments(params)
    def hello name = "Enter your name"
         "hello, #{name}!"
    end
    #if we call this method now we will see 'hello, enter your name'
    puts hello
    #if we give our method a new argument, the return will be updated
    puts hello('Stephen')

    #using the return keyword
    #ruby methods return the llast line of the program by default, if you want to return something specific you can use the return keyword
        #WARNING: all lines of code after the return keyword will be omitted!
    def goodbye
        bye = "GOODBYE!"
        return "Bye Bye Bye"
        bye
    end
    puts goodbye
    #in this example the return value will be "Bye Bye Bye" because we use the return keyword! the last line of the program calling our variable bye is omitted
    #use of return keyword is gnerally avoided



# PRY
    #pry is a ruby gem that creates a breakpoint in your code where you can basically 'pry' into it and see what is going on (debugging tool)
    #steps to get the pry gem
        #pry can be installed in terminal using: gem install pry
        #next we need to require the pry gem in order for our ruby app to be able to use it: add require 'pry' to the top of our file
    #now we can use pry to debug
    #to add a breakpoint in our code use: binding.pry
    def binding_pry 
        'hello!'
        binding.pry  #exit your pry session by typing exit or q
        'you will see me after your pry!'
    end
    puts binding_pry
    #this is very useful because it allows us to enter our methods at a certain point and debug/test different things!
    #very helpful when you need to know what the value of something is at a certain point in the method

    #DIFFERENCE BETWEEN IRB AND PRY
        #irb is essentially a playground for any code you want to mess around with, tou have to write methods from scrathc or paste existing methods
        #pry allows your code to run UNTIL it hits a binding.pry, then it will allow you to mess around with code/varibles AT THAT POINT in the program.

#CONDITIONALS
    #IF AND ELSE STATEMENTS will check if a condition is true or false if true it will run the block under the if, if it is false it will go to the next statement
        def chores day
            if day == "Monday"
                "wash dog"
            elsif day == "Tuesday"
                "clean house"
            elsif day == "Friday"
                "PARTAAYY"
            else
                "no chores today!"
            end
        end
        #when called this method will accept a day as an argument and return a chore if one is scheduled for that day
        puts chores("Monday") #will return 'wash dog'
        puts chores("Thursday") #will return 'no chores today!'


    #UNLESS statement will execute the block UNLESS the conditional is true
        def laundry clean_or_nah
            unless clean_or_nah == "clean"
                "do your laundry!"
            end
        end
        #this method will print do you laundry unless the argument is equal to 'clean'
        puts laundry("not clean") #returns do your laundry
        puts laundry("clean") #will return nil, this is because the unless will only run if the given condition is FALSE
        #an else can also be added to the unless statement
        def do_laundry clean_or_nah
            unless clean_or_nah == "clean"
                "do your laundry!"
            else
                "dont do your laundry"
            end
        end
        puts do_laundry("clean") #now if 'clean' is entered as an arg the meethod  will return 'dont do your laundry'


    #CASE STATEMENT
        #similar to switch statement in js, user gives a case and then clarifies what should be done with each case
        def daily_to_do day
            case day
            when "Monday"
                "wash dog"
            when "Tuesday"
                "clean house"
            else 
                "chilll"
            end
        end
        puts daily_to_do("Monday") # will return 'wash dog'
        puts daily_to_do("Wednesday") #returns 'chilll'


#LOOPS
    #WHILE LOOP
        #while loops allow you to loop while a condition is true, once it becomes false the loop breaks
        def while_loop
            i = 0
            while i < 5
                "Loop"
                i+=1
            end
        end
        puts while_loop
        #this loop will print 'Loop' to the console and add one to i until i is greater than 5, when i is greater than 5 the loop will end and the method wil end
    #UNTIL LOOP
        #is the opposite of a while loop, it will run a block of code UNTIL some condition is true
        def until_loop
            i = 0
            until i == 10
                "Count up: #{i}"
                i += 1
            end
        end
        puts until_loop
        #this loop will go until i == to 10, when i is equal to 10 the loop will break
    # LOOPING WITH #times
        #very similar to a for loop in js or java, but it is a method in the Integer class. It can only be called on a number
        def loop_w_times
            10.times do |i|
                puts "looooooping"
                puts "i is: #{i}"
            end 
        end
        #this method will loop 10 times and each time puts loooooping and the current count
        #you can also write this method like this:
        def times_shorter 
            10.times{|i| puts "i is #{i}"}
        end
    #LOOPING WITH #each
        ##each can be useed with data types like arrays and hash, it can also be used with a Range
        #this is an examplee of using #each with a range od ints
        def loop_w_each 
            (1..20).each do |num|
                puts num
            end
        end
        #return will be numbers 1 - 20, or the specified range
        # example of #each with an array
        def each_w_array 
            arr1 = [1, 2, 3]
            arr.each do |num|
                puts num
            end
            #OR
            arr2.each{|num| puts num}  #you can also add a delimeter to split the items up see below:
            #arr2.each{|num| puts num, "$$"}  this will print each element with $$ in between them
        end
        #this method will print each element of the given array to the console 



#ARRAYS AND HASHES
    #HASH: created using {}, hashes will have a key(symbol) and a value 
        #to access item in hash: my_hash[:key]    this will return the VALUE of that key
        #to add an item to a has: hash_name[:hello] = "world" where hello is the key and world is the value
        #common hash methods: 
            #.clear (clears hash of everything), .compact (returns new hash with nil values/key pairs removed), .delete(key) (delete the key/val pair and returns the value of the item being removed),
            #.delete_if {|key, value| key > 1} (deletes elements based on the block in the if), .each{|key,value| puts "#{key} is #{value}"} (iterate through each item with acces to key/val), .each_key{|key| puts key} (iterate keys),
            #.each_value{|value| puts value}, .empty? (returns boolean), .fetch(key) / .fetch(key, error message) (returns value or error message(if not found) of provided key), 
            #.has_key?(key) (returns Boolean), .has_value?(value) (returns boolean), .replace({"new" => "hash"}) (replaces contents of hash with a new hash ), .keys (returns an array of hash keys),
            #.length (returns num of key/val pairs), .member?(key) (returns boolean if key is in hash or not), hash1.merge(hash2) (merge hashes), .select{|k,v| k > 3} (returns NEW HASH consisting of valid entries)
            #.each{|b| puts b}, .select{|k,v| v == "something"}, .include?(:somekey), .index('some value') (gets index of value), hash.to_a (change hash to array), .with_index (can be attatched to most methods in order to get acces to the index in the block)

    #ARRAYS: created using [] or Array.new, list like object that holds values 
    def arr_example 
        arr = ["hello", "world"]
        arr[0] #returns 'hello'
        arr[-1] arr[1] #returns 'world'
        arr[1] = 'Steve' #will change 'world' to 'Steve'
        arr.last #will return 'Steve'
        arr.first #will return 'hello'
        arr.size #returns 2
        arr.length #also returns 2
        arr.push('riss') #will add 'riss' to the end of the array
        arr << "22" #another way to push an element to the array (shovel method)
        arr.unshift('grand') #will add 'grand' to the beginning of the array
        arr.pop #will remove and return last element '22'
        arr.shift #will remove and return the first element 'grand'
        arr.slice(0,2) #will return the first two elements 'grand' and 'hello'
        arr[0..1] #will give the same outcome as above (range notation)
        arr[0...2] #also will return the first two (three dots means: all numbers up to but not including the last)


        #arrays can be combineds using #concat
        array2 =[1]
        array3 = [2,3]
        array2.concat(arr3) #will merge both arrays into array2, destructive to array2
        #another way to do this is the + method
        array2 + array3 #this will return the mergered array, but will not change the originals

    end


        #to access data you can use: arr_name[index] OR use arr_name.at(index)
        #common array methods: 
            #.length, .sort, .reverse, .first, .last,
            # .take(n) (return first n int of array), .drop(n) (drop and return n elements from array), .push(num) (add num to array),
            # arr << 6 (add num to array), .unshift(num) (add num to begiining of array), .insert(n, value, value) (inserts value or values at index n ), .pop (removes and returns last element),
            # .shift (remove and return first element), .delete_at(n) (deletes element at index n), .delete(num) (delete particular num anywheree in array), .uniq (nondestructive way to remove duplicates)
            #.sum (will get the sum of an array), .max (finds highest value), .find {|b| b[:key] = "some val"} (find specific value)

        #ITERATING OVER ARRAYS
            #arr.each{|a| print a + 10, " "} will print each item in the array + 10, on the same line sperated by a space (NON DESTRUCTIVE)
            #arr.reverse_each{|element| puts element} will pring the arr in reverse order
            #arr.map{|a| 2*a} will return a NEW array with all elements multiplied by 2 DESTRUCTIVE
        #ENUMERABLES IN ARRAYS
            #.each -- see above, .map -- see above
            #select: #select will go through an array and pick out elements that satisfy a condition
            #in this example visualize an array with hash inside, you are going to go through the array of key value pairs and return the items that satisfy your requirements
            def select_example
                cheap = arr.select do |item|
                    item[:price] < 20
                end
            end
            #this will return every item with a price less than 20

#methods found
#arrays
    #.to_s will split the array to a string and print each element
    #p method: will print the array as it is [1,2,3], tthe p method calls the .inspect method on our data
    #pp or pretty printing method will pretty print complex DS like hashes or nested arrays, the ppp method calls the .pretty_inspect method