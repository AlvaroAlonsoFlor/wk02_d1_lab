class SportsTeam

  attr_reader(:team_name, :players, :coach, :points)
  attr_writer(:coach)

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(name)
    @players.push(name)
  end

  def find_player?(name)
    for player in @players
      return true if name == player
    end

    return false
  end

  def win_points(result)
    return @points += 1 if result == "win"
  end

  # def change_coach(new_coach)
  #   @coach = new_coach
  # end

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
