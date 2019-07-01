class LegacyUlsterbanksController < ApplicationController
  before_action :set_legacy_ulsterbank, only: [:show, :edit, :update, :destroy]

  # GET /legacy_ulsterbanks
  # GET /legacy_ulsterbanks.json
  def index
    @legacy_ulsterbanks = LegacyUlsterbank.all
  end

  # GET /legacy_ulsterbanks/1
  # GET /legacy_ulsterbanks/1.json
  def show
  end

  # GET /legacy_ulsterbanks/new
  def new
    @legacy_ulsterbank = LegacyUlsterbank.new
  end

  # GET /legacy_ulsterbanks/1/edit
  def edit
  end

  # POST /legacy_ulsterbanks
  # POST /legacy_ulsterbanks.json
  def create
    @legacy_ulsterbank = LegacyUlsterbank.new(legacy_ulsterbank_params)

    respond_to do |format|
      if @legacy_ulsterbank.save
        format.html { redirect_to @legacy_ulsterbank, notice: 'Legacy ulsterbank was successfully created.' }
        format.json { render :show, status: :created, location: @legacy_ulsterbank }
      else
        format.html { render :new }
        format.json { render json: @legacy_ulsterbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legacy_ulsterbanks/1
  # PATCH/PUT /legacy_ulsterbanks/1.json
  def update
    respond_to do |format|
      if @legacy_ulsterbank.update(legacy_ulsterbank_params)
        format.html { redirect_to @legacy_ulsterbank, notice: 'Legacy ulsterbank was successfully updated.' }
        format.json { render :show, status: :ok, location: @legacy_ulsterbank }
      else
        format.html { render :edit }
        format.json { render json: @legacy_ulsterbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legacy_ulsterbanks/1
  # DELETE /legacy_ulsterbanks/1.json
  def destroy
    @legacy_ulsterbank.destroy
    respond_to do |format|
      format.html { redirect_to legacy_ulsterbanks_url, notice: 'Legacy ulsterbank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legacy_ulsterbank
      @legacy_ulsterbank = LegacyUlsterbank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legacy_ulsterbank_params
      params.require(:legacy_ulsterbank).permit(:trans_date, :trans_type, :description, :trans_value, :account_name, :account_number, :account_name)
    end
end
