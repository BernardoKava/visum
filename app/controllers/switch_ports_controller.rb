class SwitchPortsController < ApplicationController
  before_action :set_switch_port, only: [:show, :edit, :update, :destroy]

  # GET /switch_ports
  # GET /switch_ports.json
  def index
    @switch_ports = SwitchPort.all
  end

  # GET /switch_ports/1
  # GET /switch_ports/1.json
  def show
  end

  # GET /switch_ports/new
  def new
    @switch_port = SwitchPort.new
  end

  # GET /switch_ports/1/edit
  def edit
  end

  # POST /switch_ports
  # POST /switch_ports.json
  def create
    @switch_port = SwitchPort.new(switch_port_params)

    respond_to do |format|
      if @switch_port.save
        format.html { redirect_to @switch_port, notice: 'Switch port was successfully created.' }
        format.json { render :show, status: :created, location: @switch_port }
      else
        format.html { render :new }
        format.json { render json: @switch_port.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /switch_ports/1
  # PATCH/PUT /switch_ports/1.json
  def update
    respond_to do |format|
      if @switch_port.update(switch_port_params)
        format.html { redirect_to @switch_port, notice: 'Switch port was successfully updated.' }
        format.json { render :show, status: :ok, location: @switch_port }
      else
        format.html { render :edit }
        format.json { render json: @switch_port.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /switch_ports/1
  # DELETE /switch_ports/1.json
  def destroy
    @switch_port.destroy
    respond_to do |format|
      format.html { redirect_to switch_ports_url, notice: 'Switch port was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_switch_port
      @switch_port = SwitchPort.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def switch_port_params
      params.require(:switch_port).permit(:network_switch_id, :port_number, :server_record_id, :client_record_id, :notes, :user_id, :operating_system_id)
    end
end
