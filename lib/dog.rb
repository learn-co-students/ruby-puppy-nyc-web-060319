require 'pry'
class Dog

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all #keeps track of all created dog instances
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.all #puts each dog name individually
        @@all.each do |dog|
            puts dog.name #from each dog obj/instances that exists, run the name method on it to return @name for each dog
        end
    end
end


fido = Dog.new("fido")

binding.pry

