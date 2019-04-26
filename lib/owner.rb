require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  @@owner_count = 0

  def initialize (name, species='human')
    @species = species
    @name = name
    @@all<< self
    @@owner_count +=1
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.count
    @@owner_count
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    @@owner_count = 0
  end

  def say_species
    "I am a #{self.species}."
  end


  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] <<new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] <<new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] <<new_dog
  end

  def pets
  @pets
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    self.pets.each do |key, value|
      
      value.each do |pet|
        pet.mood = 'nervous'
      end
    end
    @pets.clear
  end


    def list_pets
      "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
    end
  end

  0
