require 'minitest/autorun'
require './lib/class'

def GateTest < Minitest::Test
  def test_gate
    assert Gate.new
  end
end