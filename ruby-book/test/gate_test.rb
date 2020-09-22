require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

class GateTest < Minitest::Test

  def setup
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)
  end
  def test_umeda_to_juso
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    assert @juso.exit(ticket)
  end

  def test_umeda_to_mikuni_when_fare_is_not_enough
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    refute @mikuni.exit(ticket)
  end
end