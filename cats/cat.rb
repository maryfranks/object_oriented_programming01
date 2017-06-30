class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time > 12
      return "#{@meal_time - 12} PM"
    elsif @meal_time == 12
      return "noon"
    else
      return "#{@meal_time} AM"
    end
  end

  def meow
    "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end


end

tabby = Cat.new("Tabby", "salmon", 8)
sam = Cat.new("Sam", "chicken", 14)

puts tabby.meow
puts sam.meow
