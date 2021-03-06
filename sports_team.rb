class SportsTeam

  attr_reader :team_name, :players,  :points
  attr_accessor :coach_name

  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
    @points = 0
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def check_if_player_exists?(player)
    return @players.include?(player)
  end

  def update_points_if_won(won)
    if won == true
      @points +=1
    end
  end
end
