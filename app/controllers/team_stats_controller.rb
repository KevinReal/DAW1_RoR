class TeamStatsController < ApplicationController
  before_action :load_team, except: :destroy
  before_action :authenticate

 def create
    @team_stat = @team.team_stats.new(team_stat_params)
    if @team_stat.save
      redirect_to @team, notice: 'La estadística ha sido añadida'
    else
      redirect_to @team, alert: 'no ha sido posible añadir la estadística'
    end
  end
  
  def destroy
    @team = current_user.teams.find_by_id(params[:team_id])
    if @team.nil?
       redirect_to :back, notice: "operación no permitida"
     end
    @team_stat = @team.team_stats.find_by_id(params[:id])
    @team_stat.destroy
    redirect_to @team, notice: "estadística eliminado"
  end
  
  private
    def load_team
      @team = Team.find_by_id(params[:team_id])
    end
    def team_stat_params
      params.require(:team_stat).permit(:name, :value)
    end
end
