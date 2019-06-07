require 'pry'

class Dog
    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def name
        @name
    end

    def self.all
         @@all.map do |dog_obj|
          puts  dog_obj.name
        end
    end

    #Normally, self.all shoudl return an array of all objects of that class. 
    #In this labh, it wants you to return something different.
    #Usually self.all should just look like:
    # def self.all
    #     @@all
    # end
    #A more explicit way to return an array of just dog names is defined below
    # def self.dog_names
    #     @@all.map do |dog_obj|
    #         dog_obj.name
    #     end
    # end

    def self.clear_all
        @@all.clear
    end

    def self.add_new_dog
        @@all << self
    end


end

# binding.pry