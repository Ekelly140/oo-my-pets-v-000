class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  @@count = 0 
 
 
  def initialize(species)
   @species = species
   @@all << self
   @@count += 1
   @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end 
  
  def self.all 
    @@all
  end 
  
  def self.reset_all 
    @@all.clear
    @@count = 0
  end 
  
  def self.count
    @@count
  end 
  
  def say_species
     "I am a #{@species}."
  end 
  
  
  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
    end 


end