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

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end 
  
  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end 


end