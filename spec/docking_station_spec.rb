require 'DockingStation_class'

  describe DockingStation do
    describe "release bike from docking station" do
      it { is_expected.to respond_to(release_bike) }
    end
  end