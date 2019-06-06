class Dog

@@all = []

attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

def self.clear_all
  @@all = []
end

def self.all
   @@all.each do |name|
    puts name.name
  end
end


end # end of class
