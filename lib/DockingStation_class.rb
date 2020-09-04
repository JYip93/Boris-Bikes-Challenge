class DockingStation

  attr_reader :docked_bike

  def initialize
    @capacity = 20
    @bikes_docked = []
  end


  def release_bike
    if @capacity > 0
    @bikes_docked.pop
    @bike
    else
      raise "no more bikes"
    end
  end

def dock(bike)
  if @capacity < 20
    @docked_bike = bike
    @bikes_docked << bike
  else
    raise StandardError.new "It's full"
  end
  end


end
