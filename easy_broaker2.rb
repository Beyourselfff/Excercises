require 'json'; require 'open-uri'; require 'minitest/autorun'

URL = 'https://api.stagingeb.com/v1/properties?page=1&limit=20&search%5Bupdated_after%5D=2020-03-01T23%3A26%3A53.402Z&search%5Bupdated_before%5D=2025-03-01T23%3A26%3A53.402Z&search%5Boperation_type%5D=sale&search%5Bmin_price%5D=500000&search%5Bmax_price%5D=3000000&search%5Bmin_bedrooms%5D=1&search%5Bmin_bathrooms%5D=1&search%5Bmin_parking_spaces%5D=1&search%5Bmin_construction_size%5D=100&search%5Bmax_construction_size%5D=1000&search%5Bmin_lot_size%5D=100&search%5Bmax_lot_size%5D=1000'
HEADERS = URL, 'accept' => 'application/json', 'X-Authorization' => 'l7u502p8v46ba3ppgvj5y2aad50lb9'
PAGE = URI.open(HEADERS).read
PAGE_STATUS = URI.open(HEADERS).status
PAGE_PARSED = JSON.parse(PAGE)

PAGE_PARSED['content'].each do |property|
  puts property['title']
end


def page_status_ok
  PAGE_STATUS[0]
end

def parsed_ok
  PAGE_PARSED.class
end

class TestPage < Minitest::Test
  def test_page_status_ok
    assert_equal "200", page_status_ok
  end

  def test_parsed_ok
    assert_equal Hash, parsed_ok
  end
end
