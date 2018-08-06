require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team.rb")

class TestSportsTeam < Minitest::Test

  def setup
    @sports_team = SportsTeam.new("Barx", ["Jesse", "Alvaro", "James", "Sharon"], "Emilio")
  end

  def test_get_team

    assert_equal("Barx", @sports_team.team_name)
  end

  def test_get_players
    assert_equal(["Jesse", "Alvaro", "James", "Sharon"], @sports_team.players)
  end

  def test_get_coach
    assert_equal("Emilio", @sports_team.coach)
  end

  def test_change_coach
    @sports_team.coach = "Juan"
    assert_equal("Juan", @sports_team.coach)
  end

  def test_add_player
    new_team = @sports_team.add_player("Jose")
    assert_equal(["Jesse", "Alvaro", "James", "Sharon", "Jose"], new_team)
  end

  def test_find_player?
    assert_equal(true, @sports_team.find_player?("Jesse"))
  end

  def test_check_points_for_win
    @sports_team.win_points("win")
    assert_equal(1, @sports_team.points)
  end

end
