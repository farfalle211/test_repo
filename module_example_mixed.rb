 module Movement    #all the methods that you want to mixin, so you can have multiple methods within a module. You can have a bunch of movement actions. 

def brake
    @speed = 0
end

def accelerate
    @speed += 10
end

def turn(new_direction)
    @direction = new_direction
end
end


class Vehicle
include Movement

def initialize
    @speed = 0
    @direction = 'north'
end


class Car < Vehicle
include Movement

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
include Movement

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new
p car
p bike

car.accelerate

car.turn("South")
p car