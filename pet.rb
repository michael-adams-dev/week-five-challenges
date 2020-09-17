# Pet class defined
class Pet
   # Getter and setter attributes defined
   attr_reader :type
   attr_accessor :name
   @@total_pets = 0

   #method that oulines inputs required and attributes of new object in Pet class
   def initialize(type, name)
       @type = type
       @name = name
       @meals = []
       @@total_pets += 1
   end

   # Method that returns the total number of Pet objects created
   def self.total_pets
       @@total_pets
   end

    # Method that adds a meal as a hash to the @meals attribute
   def eat(grams, time_of_day)
   # time_of_day is one of morning, afternoon, evening
       @meals << {amount: grams, time: time_of_day}
   end
  
   # Method that generates and displays daily log info based on other attributes
   def display_daily_log
       puts "#{@name} ate #{@meals.length} meals today:"
       @meals.each do |meal|
           puts "   #{meal[:amount]} grams in the #{meal[:time]}"
       end
   end

    # Method to change what's printed when Pet object is called
   def to_s
       return "Pet: type-#{@type} name-#{@name}"
   end
end

# A new Cat class that is a subclass of Pet and will inherit it's attributes and methods
class Cat < Pet
    
    attr_reader :naps
    
    def initialize(name)
        super("cat", name)
        @naps = []
    end

    def sleep(time_in_hours)
        @naps << time_in_hours
    end

    def sleep_time
        @naps.sum
    end
end

