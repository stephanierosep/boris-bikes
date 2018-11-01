class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.length == 0
    @bikes
  end

  def dock_bike(bike)
    fail 'Docking station full' if @bikes.length >= 20
    @bikes << bike
  end
end

class Bike
  def working?
    true
  end
end
