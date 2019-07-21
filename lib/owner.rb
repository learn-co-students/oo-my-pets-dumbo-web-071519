class Owner
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = 'human'

  end

  def say_species
    return "I am a human."
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

  #associations

  def cats 
    Cat.all.select { |cat| cat.owner == self}
  end

  def dogs 
    Dog.all.select { |dog| dog.owner == self}
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
  end

  def walk_dogs
 
    self.dogs.each {|dog| dog.mood = 'happy'}

  end

  def feed_cats
    self.cats.each {|cat| cat.mood = 'happy'}
  end

  def list_pets
    return "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end

  def sell_pets
    pets = self.cats + self.dogs
    pets.each {|pet| pet.mood = 'nervous'}
    pets.each {|pet| pet.owner = nil}
  end




end