require_relative("./pet")

class PetStore
    def initialize(name)
        @name = name
        @pets = []
    end

    def total_pets
        return @pets.length
    end

    def add_pet(pet)
        @pets << pet
    end

    def to_s
        print_string =  "Welcome to #{@name}! We currently have #{total_pets} pets:"
        @pets.each do |pet|
            print_string += "\n"
            print_string += pet.to_s
        end
        return print_string
    end
end

# Main program

# Create a pet store
my_store = PetStore.new("My Awesome Pet Store!")

# add a dog to the petstore
roy = Pet.new("dog", "Roy")
my_store.add_pet(roy)

# add a cat to the petstore
poto = Pet.new("cat", "Poto")
my_store.add_pet(poto)

# Print details about the store
puts my_store
