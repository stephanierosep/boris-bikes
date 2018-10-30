require 'docking_station.rb'

describe DockingStation do
  docking_station = DockingStation.new
  it "responds to the method release_bike" do
    expect(docking_station).to respond_to "release_bike"
  end


  it "gets a bike and checks that it is working?" do
    bike = docking_station.release_bike
    expect(bike).not_to eq(nil)
    expect(bike).to respond_to("working?")
  end

  it "allows us to dock a bike" do
    expect(docking_station).to respond_to('dock_bike')
  end
end
