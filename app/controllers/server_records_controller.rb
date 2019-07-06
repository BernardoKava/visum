class ServerRecordsController < ApplicationController
  before_action :set_server_record, only: [:show, :edit, :update, :destroy]

  # GET /server_records
  # GET /server_records.json
  def index
    @server_records = ServerRecord.all
  end

  # GET /server_records/1
  # GET /server_records/1.json
  def show
  end

  # GET /server_records/new
  def new
    @server_record = ServerRecord.new
  end

  # GET /server_records/1/edit
  def edit
  end

  # POST /server_records
  # POST /server_records.json
  def create
    @server_record = ServerRecord.new(server_record_params)

    respond_to do |format|
      if @server_record.save
        format.html { redirect_to @server_record, notice: 'Server record was successfully created.' }
        format.json { render :show, status: :created, location: @server_record }
      else
        format.html { render :new }
        format.json { render json: @server_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /server_records/1
  # PATCH/PUT /server_records/1.json
  def update
    respond_to do |format|
      if @server_record.update(server_record_params)
        format.html { redirect_to @server_record, notice: 'Server record was successfully updated.' }
        format.json { render :show, status: :ok, location: @server_record }
      else
        format.html { render :edit }
        format.json { render json: @server_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /server_records/1
  # DELETE /server_records/1.json
  def destroy
    @server_record.destroy
    respond_to do |format|
      format.html { redirect_to server_records_url, notice: 'Server record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_server_record
      @server_record = ServerRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def server_record_params
      params.require(:server_record).permit(:name, :description, :virtual, :operating_system_id, :person_id, :deployment_status_id, :deployment_date, :domain_controller, :functional_level_id, :notes, :user_id)
    end
end
