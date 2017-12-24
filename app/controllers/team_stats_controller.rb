class TeamStatsController < ApplicationController
  before_action :set_team_stat, only: [:show, :edit, :update, :destroy]

  # GET /team_stats
  # GET /team_stats.json
  def index
    @team_stats = TeamStat.all
  end

  # GET /team_stats/1
  # GET /team_stats/1.json
  def show
  end

  # GET /team_stats/new
  def new
    @team_stat = TeamStat.new
  end

  # GET /team_stats/1/edit
  def edit
  end

  # POST /team_stats
  # POST /team_stats.json
  def create
    @team_stat = TeamStat.new(team_stat_params)

    respond_to do |format|
      if @team_stat.save
        format.html { redirect_to @team_stat, notice: 'Team stat was successfully created.' }
        format.json { render :show, status: :created, location: @team_stat }
      else
        format.html { render :new }
        format.json { render json: @team_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_stats/1
  # PATCH/PUT /team_stats/1.json
  def update
    respond_to do |format|
      if @team_stat.update(team_stat_params)
        format.html { redirect_to @team_stat, notice: 'Team stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_stat }
      else
        format.html { render :edit }
        format.json { render json: @team_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_stats/1
  # DELETE /team_stats/1.json
  def destroy
    @team_stat.destroy
    respond_to do |format|
      format.html { redirect_to team_stats_url, notice: 'Team stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_stat
      @team_stat = TeamStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_stat_params
      params.require(:team_stat).permit(:name, :value)
    end
end
