require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team.rb")

class TestSportsTeam < Minitest::Test

  def setup
    @sports_team = SportsTeam.new("Barx", 23, "Emilio")
  end

  def test_get_team

    assert_equal("Barx", @sports_team.team)
  end

  def test_get_players
    assert_equal(23, @sports_team.players)
  end

  def test_get_coach
    assert_equal("Emilio", @sports_team.coach)
  end
end
