class IdolsController < ApplicationController
  before_action :set_idol, only: %i[ show edit update destroy ]

  # GET /idols or /idols.json
  def index
    @idols = Idol.all
  end

  # GET /idols/1 or /idols/1.json
  def show
  end

  # GET /idols/new
  def new
    @idol = Idol.new
  end

  # GET /idols/1/edit
  def edit
  end

  # POST /idols or /idols.json
  def create
    @idol = Idol.new(idol_params)

    respond_to do |format|
      if @idol.save
        format.html { redirect_to @idol, notice: "Idol was successfully created." }
        format.json { render :show, status: :created, location: @idol }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @idol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idols/1 or /idols/1.json
  def update
    respond_to do |format|
      if @idol.update(idol_params)
        format.html { redirect_to @idol, notice: "Idol was successfully updated." }
        format.json { render :show, status: :ok, location: @idol }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @idol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idols/1 or /idols/1.json
  def destroy
    @idol.destroy
    respond_to do |format|
      format.html { redirect_to idols_url, notice: "Idol was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idol
      @idol = Idol.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def idol_params
      params.require(:idol).permit(:name, :description, :video, :photo)
    end
end
