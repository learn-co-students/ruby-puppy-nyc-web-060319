require "pry"
class Dog
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    #binding.pry
    def self.all
        @@all.each do |dog|
           puts dog.name
        end
    end

    def self.clear_all
        @@all = []
    end

end












# class Dog
#     @@all = []
#     @@names = []

#     attr_reader :name

#     def initialize(name)
#         @@all << self
#         @name = name
#         @@names << name
#     end

#     def name
#         @name
#     end

#     def self.clear_all
#         @@all = []
#     end

#     def self.all
#         @@names.uniq.each do |name|
#             puts name
#         end
#     end
# end