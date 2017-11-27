class SportsTeam

  attr_accessor :team_name, :players, :coach_name

  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def check_if_player_exists(player)
    if @players.include?(player)
      return true
    else
      return false
    end
  end
end
