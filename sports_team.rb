class SportsTeam

  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
  end

  def team_name
    return @team_name
  end
end
