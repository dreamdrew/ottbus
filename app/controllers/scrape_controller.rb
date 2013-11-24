require "OSTAParser"

class ScrapeController < ApplicationController
  def index
		  @site = "https://tracs.ottawaschoolbus.ca/public/delays/delay.aspx"
		  parser = OSTAParser.new
		  @delays = parser.parse(@site)
  end
end
