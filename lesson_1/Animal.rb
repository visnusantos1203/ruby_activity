class Animal
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end

  def walk
    puts "Hey #{@name}, let's walk!"
  end
end

dog = Animal.new("Masha", "black", 1)

puts dog.walk