class TechServicesController < ApplicationController
  before_action :set_tech_service, only: [:show, :edit, :update, :destroy]

  # GET /tech_services
  # GET /tech_services.json
  def index
    @tech_services = TechService.all
  end

  # GET /tech_services/1
  # GET /tech_services/1.json
  def show
  end

  # GET /tech_services/new
  def new
    @tech_service = TechService.new
  end

  # GET /tech_services/1/edit
  def edit
  end

  # POST /tech_services
  # POST /tech_services.json
  def create
    @tech_service = TechService.new(tech_service_params)

    respond_to do |format|
      if @tech_service.save
        format.html { redirect_to @tech_service, notice: 'Tech service was successfully created.' }
        format.json { render :show, status: :created, location: @tech_service }
      else
        format.html { render :new }
        format.json { render json: @tech_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tech_services/1
  # PATCH/PUT /tech_services/1.json
  def update
    respond_to do |format|
      if @tech_service.update(tech_service_params)
        format.html { redirect_to @tech_service, notice: 'Tech service was successfully updated.' }
        format.json { render :show, status: :ok, location: @tech_service }
      else
        format.html { render :edit }
        format.json { render json: @tech_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_services/1
  # DELETE /tech_services/1.json
  def destroy
    @tech_service.destroy
    respond_to do |format|
      format.html { redirect_to tech_services_url, notice: 'Tech service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech_service
      @tech_service = TechService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tech_service_params
      params.require(:tech_service).permit(:name, :description, :active, :notes, :user_id)
    end
end
