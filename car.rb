require('pry-byebug')

class Car

  attr_reader(:car_name, :fuel, :speed)

  def initialize(name)
    @car_name = car_name
    @fuel = 100
    @speed = 0
  end

  def accelerate() 
    if @fuel >= 5
      @fuel -= 5
      @speed += 10
    else
      return "Car does not have enough fuel to accelerate"
    end
  end

  def brake()
    if @speed == 0
      return "Car is stopped"
    else
      @speed -= 10
    end
  end


end
