class RulesCategoriesController < ApplicationController
  before_action :set_rules_category, only: [:show, :edit, :update, :destroy]

  # GET /rules_categories
  # GET /rules_categories.json
  def index
    @rules_categories = RulesCategory.all
  end

  # GET /rules_categories/1
  # GET /rules_categories/1.json
  def show
  end

  # GET /rules_categories/new
  def new
    @rules_category = RulesCategory.new
  end

  # GET /rules_categories/1/edit
  def edit
  end

  # POST /rules_categories
  # POST /rules_categories.json
  def create
    @rules_category = RulesCategory.new(rules_category_params)

    respond_to do |format|
      if @rules_category.save
        format.html { redirect_to @rules_category, notice: 'Rules category was successfully created.' }
        format.json { render :show, status: :created, location: @rules_category }
      else
        format.html { render :new }
        format.json { render json: @rules_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rules_categories/1
  # PATCH/PUT /rules_categories/1.json
  def update
    respond_to do |format|
      if @rules_category.update(rules_category_params)
        format.html { redirect_to @rules_category, notice: 'Rules category was successfully updated.' }
        format.json { render :show, status: :ok, location: @rules_category }
      else
        format.html { render :edit }
        format.json { render json: @rules_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rules_categories/1
  # DELETE /rules_categories/1.json
  def destroy
    @rules_category.destroy
    respond_to do |format|
      format.html { redirect_to rules_categories_url, notice: 'Rules category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rules_category
      @rules_category = RulesCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rules_category_params
      params.require(:rules_category).permit(:name, :description)
    end
end
