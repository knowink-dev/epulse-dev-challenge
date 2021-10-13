class Api::V1::PrecinctsController < ApplicationController
  # before_action :set_precinct, only: [:show, :update, :destroy]

  api :GET, '/v1/precincts'
  def index
    @precincts = Precinct.all
    render json: PrecinctBlueprint.render(@precincts, view: :with_election_info)
  end

  api :GET, '/v1/precincts/:id'
  param :id, :number, desc: 'id for precinct', required: true
  def show
    @precinct = Precinct.find(params[:id])
    render json: PrecinctBlueprint.render(@precinct, view: :with_election_info)
  end

  api :GET, '/v1/precincts/search/:query'
  param :query, String, desc: 'name of precinct or congressional district', required: true
  def search
    @precincts = Precinct.search_by_term(params[:query])
    render json: PrecinctBlueprint.render(@precincts, view: :with_election_info)
  end

  # create/update, etc
end