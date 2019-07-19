class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(species, :dogs => [], :cats => []})
    @species = species
    @pets = pets
    @@owners << self
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def self.all
    @@owners
  end

end
