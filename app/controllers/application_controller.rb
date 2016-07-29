class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # This prints the JSON file to the rails server, so I can access it. I just need to print
  # response = HTTParty.get('https://www.tilt.com/tilts/lets-get-allysa-to-the-rio-olympics/stats.json')
  # puts response.body, response.code, response.message, response.headers.inspect

end
