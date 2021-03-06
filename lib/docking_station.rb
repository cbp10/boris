require_relative "bike"

class DockingStation
  attr_reader :bike_array, :capacity

  def initialize(capacity = 20)
    @capacity = capacity
    @bike_array =[]
  end

  def release_bike
  raise "No bikes available" if empty?
  raise "No working bikes available" unless @bike_array[-1].working
  @bike_array.pop
  end

  def dock(bike)
    raise "Docking station full" if full?
    @bike_array << bike
  end

  private
  def empty?
    @bike_array.count == 0
  end

  def full?
    @bike_array.count >= @capacity
  end

#  def show_bike
#    @bike
#  end

end
