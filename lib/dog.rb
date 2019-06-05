class Dog

    attri_reader :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        # Dog.all.each do |dog|
        #     puts dog.name
        @@all.map |dog|
            dog.name
    end

    def self.clear_all
        @@all.clear
    end

end # end Dog class

new.Dog("Sam")