class ResultsController < ApplicationController
  before_action :set_result, only: [:show]
	before_action :authenticate, except: [:index, :show]

  # GET /results
  # GET /results.json
  def index
    @results = Result.con_fecha(params[:buscar])
    if @results.present?
      respond_to do |format|
        format.html
        format.js
      end
    else
      respond_to do |format|
        format.html
        format.js {render 'fallo_results.js.erb'}
      end      
    end
  end

  # GET /results/1
  # GET /results/1.json
  def show
		redirect_to({action: :index}, notice: 'Result no encontrado') unless @result
  end

  # GET /results/new
  def new
    @result = Result.new
  end

  # GET /results/1/edit
  def edit
		@result = current_user.results.find_by_id(params[:id])
   	redirect_to root_path, alert: "operación no permitida" unless @result
  end

  # POST /results
  # POST /results.json
  def create
    @result = current_user.results.new(result_params)

    respond_to do |format|
      if @result.save
        format.html { redirect_to @result, notice: 'Result was successfully created.' }
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /results/1
  # PATCH/PUT /results/1.json
  def update
		@result = current_user.results.find(params[:id])
    respond_to do |format|
      if @result.update(result_params)
        format.html { redirect_to @result, notice: 'Result was successfully updated.' }
        format.json { render :show, status: :ok, location: @result }
      else
        format.html { render :edit }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /results/1
  # DELETE /results/1.json
  def destroy
		@result = current_user.results.find(params[:id])
    @result.destroy
    respond_to do |format|
      format.html { redirect_to results_url, notice: 'Result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result
      @result = Result.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit(:localPoints, :visitorPoints, :date,:journey, :team_id_local, :team_id_visitor)
    end
end
