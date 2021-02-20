require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

class GateTest < Minitest::Test
  def test_gate_1
    ticket = Ticket.new(150)

    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)

    umeda.enter(ticket)
    assert juso.exit(ticket)
  end

  def test_gate_2
    ticket = Ticket.new(150)

    umeda = Gate.new(:umeda)
    mikuni = Gate.new(:mikuni)

    umeda.enter(ticket)
    assert_equal false, mikuni.exit(ticket)
  end

  def test_gate_3
    ticket = Ticket.new(190)

    umeda = Gate.new(:umeda)
    mikuni = Gate.new(:mikuni)

    umeda.enter(ticket)
    assert mikuni.exit(ticket)
  end

  def test_gate_4
    ticket = Ticket.new(150)

    juso = Gate.new(:juso)
    mikuni = Gate.new(:mikuni)

    juso.enter(ticket)
    assert mikuni.exit(ticket)
  end
end
