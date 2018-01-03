class CompetitionsController < ApplicationController
  before_action :set_competition, only: [:show]
	before_action :authenticate, except: [:index, :show]

  # GET /competitions
  # GET /competitions.json
  def index
    @competitions = Competition.con_name(params[:buscar])
    if @competitions.present?
      respond_to do |format|
        format.html
        format.js
      end
    else
      respond_to do |format|
        format.html
        format.js {render 'fallo_competitions.js.erb'}
      end      
    end
  end

  # GET /competitions/1
  # GET /competitions/1.json
  def show
		redirect_to({action: :index}, notice: 'Competition no encontrada') unless @competition
  end

  # GET /competitions/new
  def new
    @competition = Competition.new
  end

  # GET /competitions/1/edit
  def edit
		@competition = current_user.competitions.find_by_id(params[:id])
   	redirect_to root_path, alert: "operación no permitida" unless @competition
  end

  # POST /competitions
  # POST /competitions.json
  def create
    @competition = current_user.competitions.new(competition_params)

    respond_to do |format|
      if @competition.save
        format.html { redirect_to @competition, notice: 'Competition was successfully created.' }
        format.json { render :show, status: :created, location: @competition }
      else
        format.html { render :new }
        format.json { render json: @competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competitions/1
  # PATCH/PUT /competitions/1.json
  def update
		@competition = current_user.competitions.find(params[:id])
    respond_to do |format|
      if @competition.update(competition_params)
        format.html { redirect_to @competition, notice: 'Competition was successfully updated.' }
        format.json { render :show, status: :ok, location: @competition }
      else
        format.html { render :edit }
        format.json { render json: @competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competitions/1
  # DELETE /competitions/1.json
  def destroy
		@competition = current_user.competitions.find(params[:id])
    @competition.destroy
    respond_to do |format|
      format.html { redirect_to competitions_url, notice: 'Competition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competition
      @competition = Competition.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competition_params
      params.require(:competition).permit(:name)
    end
end
