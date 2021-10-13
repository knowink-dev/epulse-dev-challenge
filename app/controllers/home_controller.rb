class HomeController < ApplicationController
  def index
    # would paginate, but moving quickly
    @precincts = Precinct.all
    @elections = Election.where(election_date: Date.today..30.days.from_now)
  end
end
