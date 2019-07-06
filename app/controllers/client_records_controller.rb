class ClientRecordsController < ApplicationController
  before_action :set_client_record, only: [:show, :edit, :update, :destroy]

  # GET /client_records
  # GET /client_records.json
  def index
    @client_records = ClientRecord.all
  end

  # GET /client_records/1
  # GET /client_records/1.json
  def show
  end

  # GET /client_records/new
  def new
    @client_record = ClientRecord.new
  end

  # GET /client_records/1/edit
  def edit
  end

  # POST /client_records
  # POST /client_records.json
  def create
    @client_record = ClientRecord.new(client_record_params)

    respond_to do |format|
      if @client_record.save
        format.html { redirect_to @client_record, notice: 'Client record was successfully created.' }
        format.json { render :show, status: :created, location: @client_record }
      else
        format.html { render :new }
        format.json { render json: @client_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_records/1
  # PATCH/PUT /client_records/1.json
  def update
    respond_to do |format|
      if @client_record.update(client_record_params)
        format.html { redirect_to @client_record, notice: 'Client record was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_record }
      else
        format.html { render :edit }
        format.json { render json: @client_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_records/1
  # DELETE /client_records/1.json
  def destroy
    @client_record.destroy
    respond_to do |format|
      format.html { redirect_to client_records_url, notice: 'Client record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_record
      @client_record = ClientRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_record_params
      params.require(:client_record).permit(:name, :description, :virtual, :operating_system_id, :person_id, :deployment_date, :notes, :user_id)
    end
end
