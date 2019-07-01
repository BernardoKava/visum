class FinancialinstitutionsController < ApplicationController
  before_action :set_financialinstitution, only: [:show, :edit, :update, :destroy]

  # GET /financialinstitutions
  # GET /financialinstitutions.json
  def index
    @financialinstitutions = Financialinstitution.all
  end

  # GET /financialinstitutions/1
  # GET /financialinstitutions/1.json
  def show
  end

  # GET /financialinstitutions/new
  def new
    @financialinstitution = Financialinstitution.new
  end

  # GET /financialinstitutions/1/edit
  def edit
  end

  # POST /financialinstitutions
  # POST /financialinstitutions.json
  def create
    @financialinstitution = Financialinstitution.new(financialinstitution_params)

    respond_to do |format|
      if @financialinstitution.save
        format.html { redirect_to @financialinstitution, notice: 'Financialinstitution was successfully created.' }
        format.json { render :show, status: :created, location: @financialinstitution }
      else
        format.html { render :new }
        format.json { render json: @financialinstitution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financialinstitutions/1
  # PATCH/PUT /financialinstitutions/1.json
  def update
    respond_to do |format|
      if @financialinstitution.update(financialinstitution_params)
        format.html { redirect_to @financialinstitution, notice: 'Financialinstitution was successfully updated.' }
        format.json { render :show, status: :ok, location: @financialinstitution }
      else
        format.html { render :edit }
        format.json { render json: @financialinstitution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financialinstitutions/1
  # DELETE /financialinstitutions/1.json
  def destroy
    @financialinstitution.destroy
    respond_to do |format|
      format.html { redirect_to financialinstitutions_url, notice: 'Financialinstitution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financialinstitution
      @financialinstitution = Financialinstitution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def financialinstitution_params
      params.require(:financialinstitution).permit(:name, :description, :address, :telephone, :email, :longitude, :latitude, :institution_code)
    end
end
