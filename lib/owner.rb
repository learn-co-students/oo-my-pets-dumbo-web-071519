require 'pry'
class Owner
  # code goes here
  @@all = []

  #accessors
  #initialize
  def initialize(name, species="human")
    @name = name
    @species = species
    @@all.push(self)
    @cats = []
    @dogs = []
  end

  attr_reader :name, :species
  attr_accessor :dogs, :cats

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end
  def self.reset_all
    self.all.clear
  end

  def buy_cat(cat)
    Cat.new(cat, self)
  end

  def buy_dog(dog)
    Dog.new(dog, self)
  end

  def walk_dogs
    @dogs.each {|dog| dog.mood="happy"}
  end

  def feed_cats
    @cats.each {|cat| cat.mood="happy"}
  end

  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end

  def sell_pets
      pets = @dogs + @cats
      pets.each do |pet|
        pet.mood= "nervous"
        pet.owner= nil
      end
      @dogs.clear
      @cats.clear
  end

end