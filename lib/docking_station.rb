class DockingStation

  DEFAULT_CAPACITY = 20

  def initialize(options = {})
<<<<<<< HEAD
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY) ## want to talk in person about this passing a hash as an argument....
=======
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
>>>>>>> 01db682173323c23f9099a4dd1c8c1aaa0570e92
    @bikes =  []
  end

  def bike_count
    @bikes.count
  end

  def dock(bike)
<<<<<<< HEAD
    raise "Station is FULL, cannot accept Bike" if full? ## why wont it work the other way round, ie 'if full? raise..'
    @bikes << bike ## can I put this line first? if not, why not? surely you try to dock bike first, and then find out through doing so that it wont work
=======
    raise "Station is FULL, cannot accept Bike" if full?
    @bikes << bike
>>>>>>> 01db682173323c23f9099a4dd1c8c1aaa0570e92
  end

  def release_bike(bike)
    @bikes.delete(bike) ## why is there no such thing as a '>>' ie. reverse shovel?
  end

  def full?
    bike_count == @capacity
  end

  def full?
    bike_count == @capacity
  end

  def available_bikes
    @bikes.reject {|bike| bike.broken?}
  end

end