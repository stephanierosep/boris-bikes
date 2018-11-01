class DockingStation

DEFAULT_CAPACITY = 20

  attr_accessor :capacity
  attr_reader :bikes
  
  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = {}
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    bikes.pop
  end

  def dock_bike(bike,status=true)
    fail 'Docking station full' if full?
    bikes[bike] = status
  end

  private
  
  def full?
    bikes.length >= capacity
  end

  def empty?
    bikes.empty?
  end
end

class Bike
  def working?
    true
  end
end
