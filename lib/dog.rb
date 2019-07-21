require 'pry'
class Dog
  # code goes here
  attr_accessor  :owner, :mood
  attr_reader :name
  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @@all << self
    @mood = 'nervous'
    # self.owner.dogs.push(self)
  end

  def self.all
    @@all
  end
end