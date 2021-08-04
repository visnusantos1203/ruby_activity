class Programmer
  def initialize(name, language, age)
    @name = name
    @language = language
    @age = age
  end

  def introduce
    puts "Hi! My name is #{@name}, I'm a programmer and I use #{@language} when I code!"
  end
end

juan = Programmer.new("Visnu", "JavaScript", 25)

puts juan.introduce