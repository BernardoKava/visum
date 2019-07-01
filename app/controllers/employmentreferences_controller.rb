class EmploymentreferencesController < ApplicationController
  before_action :set_employmentreference, only: [:show, :edit, :update, :destroy]

  # GET /employmentreferences
  # GET /employmentreferences.json
  def index
    @employmentreferences = Employmentreference.all
  end

  # GET /employmentreferences/1
  # GET /employmentreferences/1.json
  def show
  end

  # GET /employmentreferences/new
  def new
    @employmentreference = Employmentreference.new
  end

  # GET /employmentreferences/1/edit
  def edit
  end

  # POST /employmentreferences
  # POST /employmentreferences.json
  def create
    @employmentreference = Employmentreference.new(employmentreference_params)

    respond_to do |format|
      if @employmentreference.save
        format.html { redirect_to @employmentreference, notice: 'Employmentreference was successfully created.' }
        format.json { render :show, status: :created, location: @employmentreference }
      else
        format.html { render :new }
        format.json { render json: @employmentreference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employmentreferences/1
  # PATCH/PUT /employmentreferences/1.json
  def update
    respond_to do |format|
      if @employmentreference.update(employmentreference_params)
        format.html { redirect_to @employmentreference, notice: 'Employmentreference was successfully updated.' }
        format.json { render :show, status: :ok, location: @employmentreference }
      else
        format.html { render :edit }
        format.json { render json: @employmentreference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employmentreferences/1
  # DELETE /employmentreferences/1.json
  def destroy
    @employmentreference.destroy
    respond_to do |format|
      format.html { redirect_to employmentreferences_url, notice: 'Employmentreference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employmentreference
      @employmentreference = Employmentreference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employmentreference_params
      params.require(:employmentreference).permit(:referee_name, :referee_telephone, :referee_email, :referee_details, :person_id, :referee_active, :user_id, :employment_id)
    end
end
