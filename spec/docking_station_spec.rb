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

    describe "dock bike in docking station" do
      docking_station = DockingStation.new
      bike = docking_station.release_bike
      docking_station.dock(bike)
      it { expect(docking_station.docked_bike).to eq bike }
    end

    describe "no bike in docking station" do
      docking_station = DockingStation.new
      bike = docking_station.release_bike
      it { expect {raise (docking_station.release_bike)}.to raise_error }
    end

    describe "docking station not accepting more than capacity" do
      docking_station = DockingStation.new
      bike = Bike.new
      docking_station.dock(bike)
      #it {expect{raise StandardError.new "It's full" (docking_station.dock(bike))}.to raise_error}
      it {expect{docking_station.dock(bike)}.to raise_error StandardError, "It's full"}
    end

  end
