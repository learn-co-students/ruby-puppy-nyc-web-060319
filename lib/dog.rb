require 'pry'
class Dog

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.all #puts each dog name individually
        @@all.each do |dog|
            puts dog.name
        end
    end
end


fido = Dog.new("fido")

binding.pry

