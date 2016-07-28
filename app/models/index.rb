class Index < ActiveRecord::Base

  response = HTTParty.get('https://www.tilt.com/tilts/lets-get-allysa-to-the-rio-olympics/stats.json')

  puts response.body, response.code, response.message, response.headers.inspect

end
