require 'open-uri'
require 'json'

class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
    p @flats
    @flat = @flats.find do |flat|
      flat['id'] == params['id'].to_i
      p flat['id'] == params['id'].to_i
    end
  end
end
