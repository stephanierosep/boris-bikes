class DockingStation
  attr_reader('bikes')

  def initialize
    @bikes = []
  end

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    @bikes << bike
  end
end

class Bike
  def working?
  end
end
