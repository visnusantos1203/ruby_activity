class Confection
  def initialize(name)
    @name = name
  end

  def bake
    puts "Baking #{@name} at 350 degrees for 25 minutes."
  end

  def frosting
    puts "Applying frosting to #{@name}"
  end
end

class Cupcake < Confection
  def bake
    super 
  end

  def frosting
    super
  end
end

fudgee_bar = Cupcake.new("Cupcake")
fudgee_bar.bake
fudgee_bar.frosting

class BananaCake < Confection
  def bake
    super
  end
end

banana_keyk = BananaCake.new("Banana Keyk")
banana_keyk.bake