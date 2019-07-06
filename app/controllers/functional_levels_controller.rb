class FunctionalLevelsController < ApplicationController
  before_action :set_functional_level, only: [:show, :edit, :update, :destroy]

  # GET /functional_levels
  # GET /functional_levels.json
  def index
    @functional_levels = FunctionalLevel.all
  end

  # GET /functional_levels/1
  # GET /functional_levels/1.json
  def show
  end

  # GET /functional_levels/new
  def new
    @functional_level = FunctionalLevel.new
  end

  # GET /functional_levels/1/edit
  def edit
  end

  # POST /functional_levels
  # POST /functional_levels.json
  def create
    @functional_level = FunctionalLevel.new(functional_level_params)

    respond_to do |format|
      if @functional_level.save
        format.html { redirect_to @functional_level, notice: 'Functional level was successfully created.' }
        format.json { render :show, status: :created, location: @functional_level }
      else
        format.html { render :new }
        format.json { render json: @functional_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /functional_levels/1
  # PATCH/PUT /functional_levels/1.json
  def update
    respond_to do |format|
      if @functional_level.update(functional_level_params)
        format.html { redirect_to @functional_level, notice: 'Functional level was successfully updated.' }
        format.json { render :show, status: :ok, location: @functional_level }
      else
        format.html { render :edit }
        format.json { render json: @functional_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /functional_levels/1
  # DELETE /functional_levels/1.json
  def destroy
    @functional_level.destroy
    respond_to do |format|
      format.html { redirect_to functional_levels_url, notice: 'Functional level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_functional_level
      @functional_level = FunctionalLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def functional_level_params
      params.require(:functional_level).permit(:name, :description, :active, :notes, :user_id)
    end
end
