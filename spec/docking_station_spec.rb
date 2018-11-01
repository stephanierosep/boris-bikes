require 'docking_station.rb'

 describe DockingStation do

  it "gets a bike and checks that it is working?" do
    bike = Bike.new
    expect(bike).not_to eq(nil)
    expect(bike).to respond_to(:working?)
  end

  it "has a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialization' do
  subject { DockingStation.new }
  let(:bike) { Bike.new }
  it 'defaults capacity' do
    described_class::DEFAULT_CAPACITY.times do
      subject.dock_bike(bike,true)
    end
    expect{ subject.dock_bike(bike,true) }.to raise_error 'Docking station full'
  end
end

  describe '#release_bike' do
    it 'raises an error when no bikes are available' do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

  describe '#dock_bike' do
    it 'raises an error when full' do
      bike = Bike.new
      subject.capacity.times { subject.dock_bike(Bike.new) }
      expect { subject.dock_bike(bike) }.to raise_error 'Docking station full'
    end

    it 'takes a second argument when docking bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bikes).to have_key("bike")
    end
  end

end
