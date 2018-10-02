class DockingStation

attr_reader :bike_count

def initialize
  @maxbike = 20
  @bike_count = []
end

def release_bike
  raise "No more bike" unless @bike_count.length > 0
  return @bike_count.pop
end

def dock(bike)
  fail "No space for more bike" unless @bike_count.length < @maxbike
  @bike_count.push(bike)
  bike
end

def bike
  @bike_count.pop
end


end

class Bike
  def working?
    return true
  end
end
