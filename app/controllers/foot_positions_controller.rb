class FootPositionsController < ApplicationController
  before_action :set_foot_position, only: %i[ show edit update destroy ]

  # GET /foot_positions or /foot_positions.json
  def index
    @foot_positions = FootPosition.all
  end

  # GET /foot_positions/1 or /foot_positions/1.json
  def show
  end

  # GET /foot_positions/new
  def new
    @foot_position = FootPosition.new
  end

  # GET /foot_positions/1/edit
  def edit
  end

  # POST /foot_positions or /foot_positions.json
  def create
    @foot_position = FootPosition.new(foot_position_params)

    respond_to do |format|
      if @foot_position.save
        format.html { redirect_to foot_position_url(@foot_position), notice: "Foot position was successfully created." }
        format.json { render :show, status: :created, location: @foot_position }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foot_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foot_positions/1 or /foot_positions/1.json
  def update
    respond_to do |format|
      if @foot_position.update(foot_position_params)
        format.html { redirect_to foot_position_url(@foot_position), notice: "Foot position was successfully updated." }
        format.json { render :show, status: :ok, location: @foot_position }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foot_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foot_positions/1 or /foot_positions/1.json
  def destroy
    @foot_position.destroy!

    respond_to do |format|
      format.html { redirect_to foot_positions_url, notice: "Foot position was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foot_position
      @foot_position = FootPosition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foot_position_params
      params.require(:foot_position).permit(:position)
    end
end
