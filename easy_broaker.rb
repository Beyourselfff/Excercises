require 'json'
require 'open-uri'
require 'minitest/autorun'

# GETTING THE INFO

# We have to do a correctly conexion using the API KEY
# We have to garantize that status of the petition it's "200/OK"
# We have to parse the information
URL = 'https://api.stagingeb.com/v1/properties?page=1&limit=20&search%5Bupdated_after%5D=2020-03-01T23%3A26%3A53.402Z&search%5Bupdated_before%5D=2025-03-01T23%3A26%3A53.402Z&search%5Boperation_type%5D=sale&search%5Bmin_price%5D=500000&search%5Bmax_price%5D=3000000&search%5Bmin_bedrooms%5D=1&search%5Bmin_bathrooms%5D=1&search%5Bmin_parking_spaces%5D=1&search%5Bmin_construction_size%5D=100&search%5Bmax_construction_size%5D=1000&search%5Bmin_lot_size%5D=100&search%5Bmax_lot_size%5D=1000'
PAGE = URI.open(URL, 'accept' => 'application/json', 'X-Authorization' => 'l7u502p8v46ba3ppgvj5y2aad50lb9').read
PAGE_STATUS = URI.open(URL, 'accept' => 'application/json', 'X-Authorization' => 'l7u502p8v46ba3ppgvj5y2aad50lb9').status
PAGE_PARSED = JSON.parse(PAGE)

# Here, we have to enter to the objects inside the app and get the title of every "property"
PAGE_PARSED['content'].each do |property|
  puts property['title']
end

# TEST PART

# We are gonna focus the test to see if we get the correct status of the HTTP request & if we do a correct parsing.
def page_status_ok
  PAGE_STATUS[0]
end

def parsed_ok
  PAGE_PARSED.class
end

# We have to create the TestPage Class, and set the method to do the correct comparation by assert_equal from minitest.
class TestPage < Minitest::Test
  def test_page_status_ok
    assert_equal "200", page_status_ok
  end

  def test_parsed_ok
    assert_equal Hash, parsed_ok
  end
end
