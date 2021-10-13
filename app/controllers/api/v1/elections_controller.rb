class Api::V1::ElectionsController < ApplicationController


  api :GET, '/v1/elections'
  def index
    @elections = Election.all
    render json: ElectionBlueprint.render(@elections)
  end

  api :GET, '/v1/elections_with_voters'
  def elections_with_voters
    @elections = Election.all
    render json: ElectionBlueprint.render(@elections, view: :with_voters)
  end
end