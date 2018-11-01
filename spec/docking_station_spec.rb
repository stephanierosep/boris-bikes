require 'docking_station.rb'

describe DockingStation do
  docking_station = DockingStation.new
  it "responds to the method release_bike" do
    expect(docking_station).to respond_to "release_bike"
  end


  it "gets a bike and checks that it is working?" do
    bike = Bike.new
    expect(bike).not_to eq(nil)
    expect(bike).to respond_to("working?")
  end

  it "allows us to dock a bike" do
    docking_station = DockingStation.new
    bike = Bike.new
    # expect(docking_station).to respond_to('dock_bike')
    # new_bike = docking_station.release_bike
    docking_station.dock_bike(bike)
    expect(docking_station.bikes).to include(bike)
  end

  describe '#release_bike' do
    it 'raises an error when no bikes are available' do

      expect { subject.release_bike }.to raise_error "No bikes available"

    end
  end

  describe '#dock_bike' do
  it 'raises an error when full' do
    20.times do
      subject.dock_bike(Bike.new)
    end
    expect { subject.dock_bike(Bike.new) }.to raise_error "Docking station full"
  end
end

end
