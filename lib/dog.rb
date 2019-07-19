class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood, :owner
  @@all = []

  # code goes here
  def initialize(name, owner, mood="nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all.push(self)
    owner.dogs.push(self)
  end

  def self.all
    @@all
  end
  
end