require 'DockingStation_class'

  describe DockingStation do
    describe "release bike from docking station" do
      docking_station = DockingStation.new
      it { expect(docking_station).to respond_to(:release_bike) }
    end
  end
