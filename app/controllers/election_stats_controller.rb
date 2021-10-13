class ElectionStatsController < ApplicationController
  before_action :set_election!

  def show
  end

  private
  def set_election!
    @election = Election.find(params[:id])
  end
end
