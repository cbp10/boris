require "docking_station"
require "bike"
describe DockingStation do

  # it "releases a bike" do
  #   expect(subject).to respond_to :release_bike
  # end

  # it "release bike gets a working bike" do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

# Write a unit test for docking a bike at a docking station
  # it "returns bike when dock(bike) called" do
  #   bike = Bike.new
  #   expect(subject.dock(bike)).to eq bike
  # end

  it "returns bike_array when we call bike_array" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike_array).to include(bike)
  end

  describe "#release_bike" do
    it "returns an error when try to release_bike from empty docking station" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
    it 'does not release broken bikes' do 
      b1 = Bike.new
      b1.report_broken
      subject.dock(b1)
      expect { subject.release_bike }.to raise_error "No working bikes available"
    end

    # want to write a test that verifies you can release a bike
  end

  describe "#dock(bike)" do
    it "raises an error when full" do
      # bike = Bike.new # not needed superceded byline below
      20.times { subject.dock Bike.new }
      expect { subject.dock(Bike.new) }.to raise_error "Docking station full"
    end
  end

  describe "capacity" do
    it 'initializes with a default capacity of 20' do 
      expect(subject.capacity).to eq 20
    end

    it 'allows variable capacity to be set on initialization' do
      ds1 = DockingStation.new(30)
      expect(ds1.capacity).to eq 30 
    end
  end

end
