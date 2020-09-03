class DockingStation

  attr_reader :docked_bike
 
  def initialize
@capacity = 1
  end


  def release_bike
    if @capacity == 1
    @bike = Bike.new
    @capacity = 0
    @bike
    else
      raise "no more space"
    end
  end

def dock(bike)
  if @capacity == 0
    @docked_bike = bike
    @capacity = 1
  else
    raise "It's full"
  end
  end




end
