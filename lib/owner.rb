class Owner
  # code goes here
  attr_reader :name, :species
  attr_accessor :dogs, :cats
  @@all = []

    
  #   Owner
  #   #cats
  #     initializes with a cats array (FAILED - 1)
  #   #dogs
  #     initializes with a dogs array (FAILED - 2)

  def initialize(name)
    @name = name
    @cats = []
    @dogs = []
    @species = "human"
    @@all << self
  end

  
  # Owner
  # Instance methods
  #   #name
  #     can have a name (FAILED - 1)
  #     cannot change owner's name (FAILED - 2)
  #   #species
  #     initializes with species set to human (FAILED - 3)
  #     can't change its species (FAILED - 4)

  #   #say_species
  #     can say its species (FAILED - 5)
  def say_species
    "I am a #{@species}."
  end

  # Owner instance methods
  #   #buy_cat
  #     can buy a cat that is an instance of the Cat class (FAILED - 5)
  #     knows about its cats (FAILED - 6)
  def buy_cat(name)
    Cat.new(name, self)
  end
  #   #buy_dog
  #     can buy a dog that is an instance of the Dog class (FAILED - 7)
  #     knows about its dogs (FAILED - 8)
  def buy_dog(name)
    Dog.new(name, self)
  end 
  #   #walk_dogs
  #     walks the dogs which makes the dogs' moods happy (FAILED - 9)
  def walk_dogs
    @dogs.map do |dog|
      dog.mood = "happy"
    end
  end
  #   #feed_cats
  #     feeds cats which makes the cats' moods happy (FAILED - 10)
  def feed_cats
    @cats.map do |cat|
      cat.mood = "happy"
    end
  end 
  #   #sell_pets
  #     can sell all its pets, which makes them nervous (FAILED - 11)
  #     can sell all its pets, which leaves them without an owner (FAILED - 12)
  def sell_pets
    @cats.map do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    
    @dogs.map do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    @cats.clear
    @dogs.clear
  end
  #   #list_pets
  #     can list off its pets (FAILED - 13)

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  # Class methods
  #   .all returns all instances of Owner that have been created (FAILED - 6)
  #   .count returns the number of owners that have been created (FAILED - 7)
  #   .reset_all can reset the owners that have been created (FAILED - 8)
  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all.clear
  end


end