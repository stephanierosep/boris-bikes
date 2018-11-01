class DockingStation
  attr_reader :bikes

  def initialize
    @bikes
  end

  def release_bike
    fail 'No bikes available' unless @bikes
    @bikes
  end

  def dock_bike(bike)
    fail 'Docking station full' if @bikes
    @bikes = bike
  end
end

class Bike
  def working?
    true
  end
end
