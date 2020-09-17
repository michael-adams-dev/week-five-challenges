class Dog
    attr_reader :breed, :age
    attr_accessor :name
    def initialize(name, breed, age)
        @name = name 
        @breed = breed
        @age = age
        @walks = []
    end

    def walk(distance_in_kms)
        @walks << distance_in_kms
    end

    def walked_distance
        @walks.sum
    end

    def display_walks
        puts "#{@name} has had #{@walks.size} walks and walked #{walked_distance} kms today:"
        @walks.each do |walk|
            puts "#{@walks.index(walk) + 1}. #{walk} km"
        end
    end
end

doggo = Dog.new("Roy", "Labrador", 8)
doggo.walk(2)
doggo.walk(1)
doggo.display_walks
