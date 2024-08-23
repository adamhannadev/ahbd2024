class FootworksController < ApplicationController
  before_action :set_footwork, only: %i[ show edit update destroy ]

  # GET /footworks or /footworks.json
  def index
    @footworks = Footwork.all
  end

  # GET /footworks/1 or /footworks/1.json
  def show
  end

  # GET /footworks/new
  def new
    @footwork = Footwork.new
  end

  # GET /footworks/1/edit
  def edit
  end

  # POST /footworks or /footworks.json
  def create
    @footwork = Footwork.new(footwork_params)

    respond_to do |format|
      if @footwork.save
        format.html { redirect_to footwork_url(@footwork), notice: "Footwork was successfully created." }
        format.json { render :show, status: :created, location: @footwork }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @footwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footworks/1 or /footworks/1.json
  def update
    respond_to do |format|
      if @footwork.update(footwork_params)
        format.html { redirect_to footwork_url(@footwork), notice: "Footwork was successfully updated." }
        format.json { render :show, status: :ok, location: @footwork }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @footwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footworks/1 or /footworks/1.json
  def destroy
    @footwork.destroy!

    respond_to do |format|
      format.html { redirect_to footworks_url, notice: "Footwork was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_footwork
      @footwork = Footwork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def footwork_params
      params.require(:footwork).permit(:name)
    end
end
