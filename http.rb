require 'net/http'

uri = URI('https://api.stagingeb.com/v1/properties?page=1&limit=20&search%5Bupdated_after%5D=2020-03-01T23%3A26%3A53.402Z&search%5Bupdated_before%5D=2025-03-01T23%3A26%3A53.402Z&search%5Boperation_type%5D=sale&search%5Bmin_price%5D=500000&search%5Bmax_price%5D=3000000&search%5Bmin_bedrooms%5D=1&search%5Bmin_bathrooms%5D=1&search%5Bmin_parking_spaces%5D=1&search%5Bmin_construction_size%5D=100&search%5Bmax_construction_size%5D=1000&search%5Bmin_lot_size%5D=100&search%5Bmax_lot_size%5D=1000"')
params = { :accept => "application/json", "X-Authorization" => "l7u502p8v46ba3ppgvj5y2aad50lb9" }
uri.query = URI.encode_www_form(params)

res = Net::HTTP.get_response(uri)
p res
