class Developer
  def initialize(name, language)
    @name = name
    @language = language
  end

  def introduce
    puts "Hi. I'm #{@name} and I'm a #{@language} developer."
  end

end

class RubyDeveloper < Developer
  def introduce
    puts "Hi. I'm #{@name} and I'm a #{@language} developer."
  end
end

class JavaScriptDeveloper < Developer
  def introduce
    puts "Hi. I'm #{@name} and I'm a #{@language} developer."
  end
end

juan = RubyDeveloper.new("Juan", "Ruby")
juan.introduce

pedro = JavaScriptDeveloper.new("Pedro", "JavaScript")
pedro.introduce