require "OTSAParser"

class ScrapeController < ApplicationController
  def index
		  @site = "https://tracs.ottawaschoolbus.ca/public/delays/delay.aspx"
		  parser = OTSAParser.new
		  @delays = parser.parse(@site)
  end
end
