require 'bike_class'

describe Bike do

  describe "bike responds to working? method" do
    bike = Bike.new
    it { expect(bike).to respond_to(:working?) }
  end

end
