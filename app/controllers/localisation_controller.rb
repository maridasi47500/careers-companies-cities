require "httparty"
class LocalisationController < ApplicationController
  def monadresse

      response = HTTParty.get('https://nominatim.openstreetmap.org/search?q='+params[:address].gsub(' ','+')+'&format=json&addressdetails=1', {
        headers: {"User-Agent" => "Httparty"},
        debug_output: STDOUT, # To show that User-Agent is Httparty
      })
      location = JSON.parse(response.body)
      lat = location[0]['lat']
      
      lon = location[0]['lon']
      p lat, lon
      render json: {lat: lat, lon: lon}
  end
end
