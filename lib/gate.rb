class Gate
  ROUTE = [:umeda, :juso, :mikuni]

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    required_fare = calc_fare(ticket)
    ticket.fare >= required_fare
  end

  private

  def calc_fare(ticket)
    from = ROUTE.index(ticket.stamp_at)
    to = ROUTE.index(@name)
    via_stations = ROUTE[(from + 1)...to]

    return Ticket::BASE_FARE if via_stations.empty?

    Ticket::BASE_FARE + (Ticket::ADDITIONAL_FARE * via_stations.count)
  end
end
