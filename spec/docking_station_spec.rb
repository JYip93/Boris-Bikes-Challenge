require 'DockingStation_class'

  describe DockingStation do
    describe "release bike from docking station" do
      docking_station = DockingStation.new
      it { expect(docking_station).to respond_to(:release_bike) }
    end

    describe "release bike and check it's working" do
      docking_station = DockingStation.new
      bike = docking_station.release_bike
      it { expect(bike.working?).to eq true }
    end

    describe "dock bike to docking station" do
      docking_station = DockingStation.new
      it { expect(docking_station).to respond_to(:dock) }
    end
  end
