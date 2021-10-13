class PollWorkersController < ApplicationController
  before_action :set_poll_worker, only: %i[ show edit update destroy ]

  # GET /poll_workers or /poll_workers.json
  def index
    @poll_workers = PollWorker.all
  end

  # GET /poll_workers/1 or /poll_workers/1.json
  def show
  end

  # GET /poll_workers/new
  def new
    @poll_worker = PollWorker.new
  end

  # GET /poll_workers/1/edit
  def edit
  end

  # POST /poll_workers or /poll_workers.json
  def create
    @poll_worker = PollWorker.new(poll_worker_params)

    respond_to do |format|
      if @poll_worker.save
        format.html { redirect_to @poll_worker, notice: "Poll worker was successfully created." }
        format.json { render :show, status: :created, location: @poll_worker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poll_worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poll_workers/1 or /poll_workers/1.json
  def update
    respond_to do |format|
      if @poll_worker.update(poll_worker_params)
        format.html { redirect_to @poll_worker, notice: "Poll worker was successfully updated." }
        format.json { render :show, status: :ok, location: @poll_worker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poll_worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poll_workers/1 or /poll_workers/1.json
  def destroy
    @poll_worker.destroy
    respond_to do |format|
      format.html { redirect_to poll_workers_url, notice: "Poll worker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll_worker
      @poll_worker = PollWorker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poll_worker_params
      params.require(:poll_worker).permit(PollWorker.attribute_names.map(&:to_sym))
    end
end
