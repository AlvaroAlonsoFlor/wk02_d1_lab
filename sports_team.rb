class SportsTeam

  attr_reader(:team_name, :players, :coach)

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def change_coach(new_coach)
    @coach = new_coach
  end

  # def team
  #   @team_name
  # end
  #
  # def players
  #   @players
  # end
  #
  # def coach
  #   @coach
  # end

end
