class Introduction
  def initialize(name, address)
    @name = name
    @address = address
  end
  def introduce
    puts "Hi! My name is #{@name}. I live in #{@address}"
  end
end

pedro = Introduction.new("Pedro", "Bulacan")
pedro.introduce