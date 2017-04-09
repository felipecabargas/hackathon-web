require 'open-uri'
require 'json'

class SongController < ApplicationController

def index
  @songs = JSON.parse(open("http://172.20.7.137:8080/song/byprofile?email=dummy@gmail.com").read, symbolize_names: true)
end

end
