class Confection
  def initialize(name)
    @name = name
  end

  def prepare
    puts @name
    "Baking at 350 degrees for 25 minutes."
  end
end

class Cupcake < Confection
  def prepare
    super + " Applying frosting."
  end
end

class BananaCake < Confection
end

fudgee_bar = Cupcake.new("Cupcake")
puts fudgee_bar.prepare

banana_keyk = BananaCake.new("Banana Keyk")
puts banana_keyk.prepare