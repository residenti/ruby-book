class Ticket
  BASE_FARE = 150
  ADDITIONAL_FARE = 40
  ROUTE = [:umeda, :juso, :mikuni]

  attr_accessor :enter_gate_name, :exit_gate_name

  def initialize(fare)
    @fare = fare
  end

  def check
    enter_gate_index = ROUTE.find_index(enter_gate_name)
    exit_gate_index = ROUTE.find_index(exit_gate_name)
    via_station_count = ROUTE[(enter_gate_index + 1)...exit_gate_index].count

    if via_station_count.zero?
      @fare >= BASE_FARE
    else
      @fare >= BASE_FARE + (ADDITIONAL_FARE * via_station_count)
    end
  end
end
