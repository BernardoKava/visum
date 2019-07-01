class PasswordrepositoriesController < ApplicationController
  before_action :set_passwordrepository, only: [:show, :edit, :update, :destroy]

  # GET /passwordrepositories
  # GET /passwordrepositories.json
  def index
    @passwordrepositories = Passwordrepository.all
  end

  # GET /passwordrepositories/1
  # GET /passwordrepositories/1.json
  def show
  end

  # GET /passwordrepositories/new
  def new
    @passwordrepository = Passwordrepository.new
  end

  # GET /passwordrepositories/1/edit
  def edit
  end

  # POST /passwordrepositories
  # POST /passwordrepositories.json
  def create
    @passwordrepository = Passwordrepository.new(passwordrepository_params)

    respond_to do |format|
      if @passwordrepository.save
        format.html { redirect_to @passwordrepository, notice: 'Passwordrepository was successfully created.' }
        format.json { render :show, status: :created, location: @passwordrepository }
      else
        format.html { render :new }
        format.json { render json: @passwordrepository.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /passwordrepositories/1
  # PATCH/PUT /passwordrepositories/1.json
  def update
    respond_to do |format|
      if @passwordrepository.update(passwordrepository_params)
        format.html { redirect_to @passwordrepository, notice: 'Passwordrepository was successfully updated.' }
        format.json { render :show, status: :ok, location: @passwordrepository }
      else
        format.html { render :edit }
        format.json { render json: @passwordrepository.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passwordrepositories/1
  # DELETE /passwordrepositories/1.json
  def destroy
    @passwordrepository.destroy
    respond_to do |format|
      format.html { redirect_to passwordrepositories_url, notice: 'Passwordrepository was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_passwordrepository
      @passwordrepository = Passwordrepository.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def passwordrepository_params
      params.require(:passwordrepository).permit(:system_name, :system_password, :active, :user_name)
    end
end
