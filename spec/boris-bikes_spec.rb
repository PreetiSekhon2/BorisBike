require 'dockingstation'

describe DockingStation do
  it "responds to release bike method" do
    expect(subject).to respond_to :release_bike
  end
  it "returns a bike when asked to release" do
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end
end

describe Bike do
  it "returns if a bike is working or not" do
    expect(subject.working?).to eq(true)
  end
end
