require_relative "bike"

class DockingStation
  attr_reader :bike_array

  def initialize
    @bike_array =[]
  end

  def release_bike
  #  Bike.new
  raise "No bikes available" if @bike_array.empty?
  @bike_array.pop
  end

  def dock(bike)
    raise "Docking station full" if @bike_array.count >= 20
    @bike_array << bike
  end

#  def show_bike
#    @bike
#  end

end
