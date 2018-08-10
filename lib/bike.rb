class Bike

  attr_reader :bike, :working

  def initialize(working = true)
    @working = working 
  end

  def report_broken
    @working = false
  end

end
