class PlayerStatsController < ApplicationController
	before_action :load_player, except: :destroy
  before_action :authenticate, only: :destroy

  def create
  	@player_stat = @player.player_stats.new(player_stat_params)
    if @player_stat.save
      redirect_to @player, notice: 'La estadística se ha añadido'
    else
      redirect_to @player, alert: 'no ha sido posible añadir la estadística'
    end
  end

  def destroy
    @player = current_user.players.find_by_id(params[:player_id])
    if @player.nil?
       redirect_to :back, notice: "operación no permitida"
     end
    @player_stat = @player.player_stats.find_by_id(params[:id])
    @player_stat.destroy
    redirect_to @player, notice: "Estadística eliminada"
  end

  private
    def load_player
			@player = Player.find_by_id(params[:player_id])
		end

    def player_stat_params
      params.require(:player_stat).permit(:name, :value)
    end
end
