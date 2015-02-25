require 'docking_station'

describe DockingStation do

  def fill_station(station)
    20.times { station.dock(bike) }
  end

  let(:bike)    { Bike.new }
  let(:station) { DockingStation.new(capacity: 20) }

  it "is able to accept a Bike" do
    expect(station.bike_count).to eq(0)
    station.dock(bike)
    expect(station.bike_count).to eq(1)
  end

  it "can release a Bike" do
    station.dock(bike)
    expect(station.bike_count).to eq(1)
    station.release_bike(bike)
    expect(station.bike_count).to eq(0)
  end

  it "knows when it is full" do
    expect(station).not_to be_full
    fill_station station
    expect(station).to be_full
  end

  it "will not accept a Bike once it is full" do
    fill_station station
    expect{ station.dock(bike) }.to raise_error(RuntimeError, "Station is FULL, cannot accept Bike")
  end

  it "should provide a list of availible Bikes" do
    working_bike, broken_bike = Bike.new, Bike.new
    broken_bike.break!
    station.dock(working_bike)
    station.dock(broken_bike)
    expect(station.available_bikes).to eq([working_bike])
  end

end









