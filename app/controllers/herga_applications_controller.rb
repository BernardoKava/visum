class HergaApplicationsController < ApplicationController
  before_action :set_herga_application, only: [:show, :edit, :update, :destroy]

  # GET /herga_applications
  # GET /herga_applications.json
  def index
    @herga_applications = HergaApplication.all
  end

  # GET /herga_applications/1
  # GET /herga_applications/1.json
  def show
  end

  # GET /herga_applications/new
  def new
    @herga_application = HergaApplication.new
  end

  # GET /herga_applications/1/edit
  def edit
  end

  # POST /herga_applications
  # POST /herga_applications.json
  def create
    @herga_application = HergaApplication.new(herga_application_params)

    respond_to do |format|
      if @herga_application.save
        format.html { redirect_to @herga_application, notice: 'Herga application was successfully created.' }
        format.json { render :show, status: :created, location: @herga_application }
      else
        format.html { render :new }
        format.json { render json: @herga_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /herga_applications/1
  # PATCH/PUT /herga_applications/1.json
  def update
    respond_to do |format|
      if @herga_application.update(herga_application_params)
        format.html { redirect_to @herga_application, notice: 'Herga application was successfully updated.' }
        format.json { render :show, status: :ok, location: @herga_application }
      else
        format.html { render :edit }
        format.json { render json: @herga_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /herga_applications/1
  # DELETE /herga_applications/1.json
  def destroy
    @herga_application.destroy
    respond_to do |format|
      format.html { redirect_to herga_applications_url, notice: 'Herga application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herga_application
      @herga_application = HergaApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def herga_application_params
      params.require(:herga_application).permit(:name, :description, :dev_framework, :framework_description, :framework_version, :deployment_status_id, :deployment_date, :decomissioned_date, :person_id, :server_record_id, :inhouse_build, :third_party_build, :notes, :user_id)
    end
end
