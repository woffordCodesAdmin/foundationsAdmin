class DailyVidsController < ApplicationController
  before_action :set_daily_vid, only: %i[ show edit update destroy ]

  # GET /daily_vids or /daily_vids.json
  def index
    @daily_vids = DailyVid.all
  end

  # GET /daily_vids/1 or /daily_vids/1.json
  def show
  end

  # GET /daily_vids/new
  def new
    @daily_vid = DailyVid.new
  end

  # GET /daily_vids/1/edit
  def edit
  end

  # POST /daily_vids or /daily_vids.json
  def create
    @daily_vid = DailyVid.new(daily_vid_params)

    respond_to do |format|
      if @daily_vid.save
        format.html { redirect_to @daily_vid, notice: "Daily vid was successfully created." }
        format.json { render :show, status: :created, location: @daily_vid }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_vid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_vids/1 or /daily_vids/1.json
  def update
    respond_to do |format|
      if @daily_vid.update(daily_vid_params)
        format.html { redirect_to @daily_vid, notice: "Daily vid was successfully updated." }
        format.json { render :show, status: :ok, location: @daily_vid }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_vid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_vids/1 or /daily_vids/1.json
  def destroy
    @daily_vid.destroy
    respond_to do |format|
      format.html { redirect_to daily_vids_url, notice: "Daily vid was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_vid
      @daily_vid = DailyVid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_vid_params
      params.require(:daily_vid).permit(:title, :description, :frame_url)
    end
end
