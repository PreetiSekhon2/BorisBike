require 'dockingstation'

describe DockingStation do
  it "responds to release bike method" do
    expect(subject).to respond_to :release_bike
  end

  it "returns a bike when asked to release" do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end

  it "raises exception if no place" do
    20.times {subject.dock(Bike.new)}
    expect {subject.dock(Bike.new)}.to raise_exception "No space for more bike"
  end

  it "allows a customer with a bike to dock" do
    expect(subject).to respond_to :dock
  end

  it "accepts a parameter and allows a customer with a bike to dock" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it { is_expected.to respond_to(:bike) }

  it "docks something" do

    bike_count1 = subject.bike_count.length
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
    expect(subject.bike_count.length).to eq (bike_count1 + 1)
  end

  it "throws an exception" do
    expect {(subject.release_bike)}.to raise_error("No more bike")
  end
end
