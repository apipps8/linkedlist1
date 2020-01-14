class Owner
  attr_reader :name, :pet

  def initialize(name, pet)
    @name = name
    @pet = pet
  end

  def introduction
    introduce_owner + " and " + introduce_pet
  end

  def introduce_owner
    "Hello, my name is #{@name}"
  end

  def introduce_pet
    "My pet's name is #{@pet.name}"
  end
end

class Dog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

dog = Dog.new("Abby")
owner = Owner.new("Amanda", dog)
puts owner.introduction