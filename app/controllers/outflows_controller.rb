class OutflowsController < ApplicationController
  before_action :set_outflow, only: [:show, :edit, :update, :destroy]

  # GET /outflows
  # GET /outflows.json
  def index
    @outflows = Outflow.all

    @outflows.each do |flow|
      flow.flowtype = flow.outflowtype.name
      flow.owner = flow.person.fullname
      flow.cf_name = flow.cashflow.name
      flow.bank_account = flow.bankaccount.account_code
      flow.save
    end

  end

  # GET /outflows/1
  # GET /outflows/1.json
  def show
  end

  # GET /outflows/new
  def new
    @outflow = Outflow.new
  end

  # GET /outflows/1/edit
  def edit
  end

  # POST /outflows
  # POST /outflows.json
  def create
    @outflow = Outflow.new(outflow_params)

    respond_to do |format|
      if @outflow.save
        format.html { redirect_to @outflow, notice: 'Outflow was successfully created.' }
        format.json { render :show, status: :created, location: @outflow }
      else
        format.html { render :new }
        format.json { render json: @outflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outflows/1
  # PATCH/PUT /outflows/1.json
  def update
    respond_to do |format|
      if @outflow.update(outflow_params)
        format.html { redirect_to @outflow, notice: 'Outflow was successfully updated.' }
        format.json { render :show, status: :ok, location: @outflow }
      else
        format.html { render :edit }
        format.json { render json: @outflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outflows/1
  # DELETE /outflows/1.json
  def destroy
    @outflow.destroy
    respond_to do |format|
      format.html { redirect_to outflows_url, notice: 'Outflow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outflow
      @outflow = Outflow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outflow_params
      params.require(:outflow).permit(:amount, :details, :user_id, :cashflow_id, :month, :year, :person_id, :outflowtype_id, :date_posted, :rationale, :bankaccount_id, :follow_up, :cash_withdrawal, :picture, :flowtype)
    end
end
