require_relative "bike"

class DockingStation
  attr_reader :show_bike

  def release_bike
  #  Bike.new
  raise "No bikes available" unless @show_bike
  @show_bike
  end

  def dock(bike)
    @show_bike = bike
  end

#  def show_bike
#    @bike
#  end

end
