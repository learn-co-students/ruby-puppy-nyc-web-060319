class Dog

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self

	end

	def self.all
		@@all.each do |dog| 		#better option than @@all ?  
			puts dog.name
		end
	end

	def self.clear_all
		self.all.clear
	end




end
