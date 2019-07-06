class NetworkSwitchesController < ApplicationController
  before_action :set_network_switch, only: [:show, :edit, :update, :destroy]

  # GET /network_switches
  # GET /network_switches.json
  def index
    @network_switches = NetworkSwitch.all
  end

  # GET /network_switches/1
  # GET /network_switches/1.json
  def show
  end

  # GET /network_switches/new
  def new
    @network_switch = NetworkSwitch.new
  end

  # GET /network_switches/1/edit
  def edit
  end

  # POST /network_switches
  # POST /network_switches.json
  def create
    @network_switch = NetworkSwitch.new(network_switch_params)

    respond_to do |format|
      if @network_switch.save
        format.html { redirect_to @network_switch, notice: 'Network switch was successfully created.' }
        format.json { render :show, status: :created, location: @network_switch }
      else
        format.html { render :new }
        format.json { render json: @network_switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /network_switches/1
  # PATCH/PUT /network_switches/1.json
  def update
    respond_to do |format|
      if @network_switch.update(network_switch_params)
        format.html { redirect_to @network_switch, notice: 'Network switch was successfully updated.' }
        format.json { render :show, status: :ok, location: @network_switch }
      else
        format.html { render :edit }
        format.json { render json: @network_switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /network_switches/1
  # DELETE /network_switches/1.json
  def destroy
    @network_switch.destroy
    respond_to do |format|
      format.html { redirect_to network_switches_url, notice: 'Network switch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_network_switch
      @network_switch = NetworkSwitch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def network_switch_params
      params.require(:network_switch).permit(:code_name, :branding, :number_of_ports, :s_location, :ip_address, :user_name, :password, :active, :notes, :user_id)
    end
end
