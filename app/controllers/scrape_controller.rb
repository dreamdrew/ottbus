class ScrapeController < ApplicationController
  def index
		  @site = "https://tracs.ottawaschoolbus.ca/public/delays/delay.aspx"
  end
end
