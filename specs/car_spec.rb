require('minitest/autorun')
require('minitest/rg')
require_relative('../car')

class TestCar < MiniTest::Test

  def setup
    @car = Car.new("toyota")
  end

  def test_accelerate
    @car.accelerate
    assert_equal(10, @car.speed)
    assert_equal(95, @car.fuel)
  end

  def test_brake
    @car.brake
    assert_equal(0, @car.speed)
  end


end