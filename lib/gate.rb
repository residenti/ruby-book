class Gate
  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.enter_gate_name = @name
  end

  def exit(ticket)
    ticket.exit_gate_name = @name
    ticket.check
  end
end
