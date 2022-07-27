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
    #hash: created using {}, hashes will have a key(symbol) and a value 
        #to access item in hash: my_hash[:key]    this will return the VALUE of that key
        #to add an item to a has: hash_name[:hello] = "world" where hello is the key and world is the value
        #common hash methods: .clear (clears hash of everything), .compact (returns new hash with nil values/key pairs removed), .delete(key) (delete the key/val pair and returns the value of the item being removed),
        #.delete_if {|key, value| key > 1} (deletes elements based on the block in the if), .each{|key,value| puts "#{key} is #{value}"} (iterate through each item with acces to key/val), .each_key{|key| puts key} (iterate keys),
        #.each_value{|value| puts value}, .empty? (returns boolean), .fetch(key) / .fetch(key, error message) (returns value or error message(if not found) of provided key), .has_key?(key) (returns Boolean), .has_value?(value) (returns boolean),
        #.replace({"new" => "hash"}) (replaces contents of hash with a new hash ), .keys (returns an array of hash keys), .length (returns num of key/val pairs), .member?(key) (rteurns boolean if key is in hash or not), hash1.merge(hash2) (merge hashes),
        #.select{|k,v| k > 3} (returns NEW HASH consisting of valid entries)

    #arrays: created using [] or Array.new, list like object that holds values 
        #to access data you can use: arr_name[index] OR use arr_name.at(index)
        #common array methods: .length, .sort, .reverse, .first, .last, .take(n) (return first n int of array), .drop(n) (drop and return n elements from array), .push(num) (add num to array), arr << 6 (add num to array),
            # .unshift(num) (add num to begiining of array), .insert(n, value, value) (inserts value or values at index n ), .pop (removes and returns last element), .shift (remove and return first element), .delete_at(n) (deletes element at index n),
            # .delete(num) (delete particular num anywheree in array), .uniq (nondestructive way to remove duplicates)
        #ITERATING OVER ARRAYS
            #arr.each{|a| print a + 10, " "} will print each item in the array + 10, on the same line sperated by a space (NON DESTRUCTIVE)
            #arr.reverse_each{|element| puts element} will pring the arr in reverse order
            #arr.map{|a| 2*a} will return a NEW array with all elements multiplied by 2 DESTRUCTIVE


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







#methods found
#arrays
    #.to_s will split the array to a string and print each element
    #p method: will print the array as it is [1,2,3], tthe p method calls the .inspect method on our data
    #pp or pretty printing method will pretty print complex DS like hashes or nested arrays, the ppp method calls the .pretty_inspect method