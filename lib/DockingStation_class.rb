class DockingStation

  #attr_reader :docked_bike

  def release_bike
    @bike = Bike.new
  end

=begin  def dock(bike)
    @docked_bike = bike
  end
  =end
end
