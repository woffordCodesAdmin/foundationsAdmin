class DashersController < ApplicationController
  before_action :set_dasher, only: %i[ show edit update destroy ]

  # GET /dashers or /dashers.json
  def index
    @dashers = Dasher.all
  end

  # GET /dashers/1 or /dashers/1.json
  def show
  end

  # GET /dashers/new
  def new
    @dasher = Dasher.new
  end

  # GET /dashers/1/edit
  def edit
  end

  # POST /dashers or /dashers.json
  def create
    @dasher = Dasher.new(dasher_params)

    respond_to do |format|
      if @dasher.save
        format.html { redirect_to @dasher, notice: "Dasher was successfully created." }
        format.json { render :show, status: :created, location: @dasher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dasher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashers/1 or /dashers/1.json
  def update
    respond_to do |format|
      if @dasher.update(dasher_params)
        format.html { redirect_to @dasher, notice: "Dasher was successfully updated." }
        format.json { render :show, status: :ok, location: @dasher }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dasher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashers/1 or /dashers/1.json
  def destroy
    @dasher.destroy
    respond_to do |format|
      format.html { redirect_to dashers_url, notice: "Dasher was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dasher
      @dasher = Dasher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dasher_params
      params.require(:dasher).permit(:index)
    end
end
