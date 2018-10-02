class DockingStation

attr_reader :counter

def initialize
  @maxbike = 10
  @counter = []
end

def release_bike
  raise "No more bike" unless @counter.length > 0
  return @counter.pop
end

def dock(bike)
  fail "No space for more bike" unless @counter.length < @maxbike
  @counter.push(bike)
  bike
end

def bike
  @counter.pop
end

def bike_count
  return @counter.size
end

end

class Bike
  def working?
    return true
  end
end
