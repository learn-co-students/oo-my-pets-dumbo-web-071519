class Dog
  # code goes here
  @@all = []
  attr_reader :name
  attr_accessor :mood, :owner
  # Dog
  #   #initialize
  #     it adds the dog to the Owner's collection of dogs (FAILED - 4)
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @owner.dogs << self
    @@all << self
  end
  # Instance methods
  #   initializes with a name and an Owner (FAILED - 1)
  #   can't change its name (FAILED - 2)
  #   initializes with a nervous mood (FAILED - 3)
  #   can change its mood (FAILED - 4)

  # Class methods
  #   knows all the dogs (FAILED - 5)
  def self.all
    @@all
  end

end