json.extract! player, :name, :number, :created_at, :updated_at
json.url team_player_url(player, format: :json)
