require 'minitest/autorun'
require './lib/team'
require './lib/bank'



class DeepFreezableTest < Minitest::Test
  def test_deep_freezable_to_array
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end

  def test_deep_freezable_to_hash
    assert_equal({'Japan' => 'yen', 'US' => 'doller', 'India' => 'rupee'},
                  Bank::COUNTRIES)
    assert Bank::COUNTRIES.frozen?
    assert Bank::COUNTRIES.all? {|key, value| key.frozen? && value.frozen? }
  end
end