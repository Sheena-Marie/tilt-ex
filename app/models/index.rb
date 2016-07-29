class Index < ActiveRecord::Base


  # Putting this here in preparation for dealing with the API. Going to be using HTTParty to deal with it.
  response = HTTParty.get('https://www.tilt.com/tilts/lets-get-allysa-to-the-rio-olympics/stats.json')
  puts response.body, response.code, response.message, response.headers.inspect

end
