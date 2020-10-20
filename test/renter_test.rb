require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'

class TeamTest < Minitest::Test

  def setup
    renter1 = Renter.new("Jessie")

  end
  
  def test_it_exists
  end

end
