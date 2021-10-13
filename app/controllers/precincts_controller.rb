class PrecinctsController < ApplicationController
  before_action :set_precinct, only: %i[ show edit update destroy assign_poll_workers ]

  # GET /precincts or /precincts.json
  def index
    @precincts = Precinct.all
  end

  def assign_poll_workers

  end
  # GET /precincts/1 or /precincts/1.json
  def show
  end

  # GET /precincts/new
  def new
    @precinct = Precinct.new
  end

  # GET /precincts/1/edit
  def edit
  end

  # POST /precincts or /precincts.json
  def create
    @precinct = Precinct.new(precinct_params)

    respond_to do |format|
      if @precinct.save
        format.html { redirect_to @precinct, notice: "Precinct was successfully created." }
        format.json { render :show, status: :created, location: @precinct }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @precinct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /precincts/1 or /precincts/1.json
  def update
    respond_to do |format|
      if @precinct.update(precinct_params)
        format.html { redirect_to @precinct, notice: "Precinct was successfully updated." }
        format.json { render :show, status: :ok, location: @precinct }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @precinct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /precincts/1 or /precincts/1.json
  def destroy
    @precinct.destroy
    respond_to do |format|
      format.html { redirect_to precincts_url, notice: "Precinct was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_precinct
      @precinct = Precinct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def precinct_params
      params.require(:precinct).permit(Precinct.attribute_names.map(&:to_sym).push(precinct_pollsters_attributes: PrecinctPollster.attribute_names.map(&:to_sym)))
    end
end
