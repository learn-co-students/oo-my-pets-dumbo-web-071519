require 'pry'
class Owner
  @@all = []

  attr_accessor :cats, :dogs
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def buy_cat(name)
    new_cat = Cat.new(name, self)
    new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name, self)
    new_dog
  end

  def walk_dogs
    dogs.collect do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    cats.collect do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    pets = cats + dogs
    pets.collect do |pet|
      pet.owner = nil
      pet.mood = "nervous"
    end
    @cats.clear
    @dogs.clear
    # binding.pry
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end