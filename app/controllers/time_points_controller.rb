class TimePointsController < ApplicationController
  before_action :set_time_point, only: [:show, :edit, :update, :destroy]

  # GET /time_points
  # GET /time_points.json
  def index
    @time_points = TimePoint.all
  end

  # GET /time_points/1
  # GET /time_points/1.json
  def show
  end

  # GET /time_points/new
  def new
    @time_point = TimePoint.new(timeline_id: params[:timeline_id])
  end

  # GET /time_points/1/edit
  def edit
  end

  # POST /time_points
  # POST /time_points.json
  def create
    @time_point = TimePoint.new(time_point_params)

    respond_to do |format|
      if @time_point.save
        format.html { redirect_to @time_point.timeline }
        format.json { render action: 'show', status: :created, location: @time_point }
      else
        format.html { render action: 'new' }
        format.json { render json: @time_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_points/1
  # PATCH/PUT /time_points/1.json
  def update
    respond_to do |format|
      if @time_point.update(time_point_params)
        format.html { redirect_to @time_point.timeline }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @time_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_points/1
  # DELETE /time_points/1.json
  def destroy
    @time_point.destroy
    respond_to do |format|
      format.html { redirect_to @time_point.timeline }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_point
      @time_point = TimePoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_point_params
      params.require(:time_point).permit(:title, :description, :start_date, :high_threshold, :importance, :timeline_id)
    end
end
