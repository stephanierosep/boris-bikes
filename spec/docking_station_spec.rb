require 'docking_station.rb'

describe DockingStation do
  docking_station = DockingStation.new
  it "responds to the method release_bike" do
    expect(docking_station).to respond_to "release_bike"
  end
end
