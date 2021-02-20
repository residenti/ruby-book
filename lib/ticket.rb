class Ticket
  attr_reader :stamp_at, :fare

  BASE_FARE = 150
  ADDITIONAL_FARE = 40

  def initialize(fare)
    @fare = fare
  end

  def stamp(name)
    @stamp_at = name
  end
end
