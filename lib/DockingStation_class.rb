class DockingStation

  attr_reader :docked_bike

  def release_bike
    if @docked_bike = bike
      nil
    else
    @bike = Bike.new
    end
  end

def dock(bike)
    @docked_bike = bike
  end




end
