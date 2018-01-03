class PlayersController < ApplicationController
  before_action :load_team, except: :destroy
  before_action :authenticate

  def create
    @player = @team.players.new(player_params)
    if @player.save
      redirect_to @team, notice: 'Se ha añadido el jugador correctamente'
    else
      redirect_to @team, alert: 'no ha sido posible añadir el jugador'
    end
  end
  
  def destroy
    @team = current_user.teams.find_by_id(params[:team_id])
    if @team.nil?
       redirect_to :back, notice: "operación no permitida"
     end
    @player = @team.players.find_by_id(params[:id])
    @player.destroy
    redirect_to @team, notice: "jugador eliminado"
  end
  
  private
    def load_team
      @team = Team.find_by_id(params[:team_id])
    end
    def player_params
      params.require(:player).permit(:name, :number)
    end
end
