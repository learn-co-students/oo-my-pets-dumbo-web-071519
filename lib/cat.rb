class Cat
  # code goes here
  # Cat
  attr_reader :name
  attr_accessor :mood, :owner
  @@all = []

  def initialize(name, owner)
    @owner = owner
    @name = name
    @mood = "nervous"
    @@all << self
    @owner.cats << self
  end
  #   #initialize
  #     it adds the cat to the Owner's collection of cats (FAILED - 3)
  # Instance methods
  #   initializes with a name and an Owner (FAILED - 1)
  #   can't change its name (FAILED - 2)
  #   initializes with a nervous mood (FAILED - 3)
  #   can change its mood (FAILED - 4)

  # Class methods
  #   knows all the cats (FAILED - 5)
  def self.all
    @@all
  end
end