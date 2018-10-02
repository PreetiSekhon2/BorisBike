require 'dockingstation'

describe Bike do
  it "returns if a bike is working or not" do
    expect(subject.working?).to eq(true)
  end

  it { is_expected.to respond_to :working? }
end
