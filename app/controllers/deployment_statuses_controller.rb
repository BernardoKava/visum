class DeploymentStatusesController < ApplicationController
  before_action :set_deployment_status, only: [:show, :edit, :update, :destroy]

  # GET /deployment_statuses
  # GET /deployment_statuses.json
  def index
    @deployment_statuses = DeploymentStatus.all
  end

  # GET /deployment_statuses/1
  # GET /deployment_statuses/1.json
  def show
  end

  # GET /deployment_statuses/new
  def new
    @deployment_status = DeploymentStatus.new
  end

  # GET /deployment_statuses/1/edit
  def edit
  end

  # POST /deployment_statuses
  # POST /deployment_statuses.json
  def create
    @deployment_status = DeploymentStatus.new(deployment_status_params)

    respond_to do |format|
      if @deployment_status.save
        format.html { redirect_to @deployment_status, notice: 'Deployment status was successfully created.' }
        format.json { render :show, status: :created, location: @deployment_status }
      else
        format.html { render :new }
        format.json { render json: @deployment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deployment_statuses/1
  # PATCH/PUT /deployment_statuses/1.json
  def update
    respond_to do |format|
      if @deployment_status.update(deployment_status_params)
        format.html { redirect_to @deployment_status, notice: 'Deployment status was successfully updated.' }
        format.json { render :show, status: :ok, location: @deployment_status }
      else
        format.html { render :edit }
        format.json { render json: @deployment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deployment_statuses/1
  # DELETE /deployment_statuses/1.json
  def destroy
    @deployment_status.destroy
    respond_to do |format|
      format.html { redirect_to deployment_statuses_url, notice: 'Deployment status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deployment_status
      @deployment_status = DeploymentStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deployment_status_params
      params.require(:deployment_status).permit(:name, :description, :active, :notes)
    end
end
