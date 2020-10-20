require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'

class RenterTest < Minitest::Test

  def test_it_exists
    renter1 = Renter.new("Jessie")

    assert_instance_of Renter, renter1
    assert_equal "Jessie", renter1.name
  end

  def test_unit_exists
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal "A1", unit1.number
    assert_equal 1200, unit1.monthly_rent
    assert_equal 1, unit1.bathrooms
    assert_equal 1, unit1.bedrooms
    assert_equal nil, unit1.renter
  end

  def test_can_add_renter
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit1.add_renter(renter1)

    assert_equal renter1, unit1.renter
  end

end
