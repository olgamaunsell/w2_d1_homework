require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test
  # Now we would like you to make a class that represents a sports team.
  #
  # Make a class to represent a Team that has the properties Team name (String), Players (Array of strings) and a Coach (String).
  # For each property in the class make a Getter method than can return them.
  # Create a setter method to allow the coach's name to be updated.
  # Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
  # Create a method that adds a new player to the player's array.
  # Add a method that takes in a string of a player's name and checks to see if they are in the players array.
  # Add a points property into your class that starts at 0.
  # Create a method that takes in whether the team has won or lost and updates the points property for a win.
  def setup()
    players = ["Crazy Criss", "Tall Tom", "Snake Steve"]
    @sports_team = SportsTeam.new("Edinburgh Capitals", players, "Coach Bob")
  end

  def test_team_name
    assert_equal("Edinburgh Capitals",@sports_team.team_name)
  end

  def test_players
    assert_equal(["Crazy Criss", "Tall Tom", "Snake Steve"],@sports_team.players)
  end

  def test_coach_name
    assert_equal("Coach Bob",@sports_team.coach_name)
  end

  def test_set_coach_name
      @sports_team.coach_name = "Bob Senior"
      assert_equal("Bob Senior",@sports_team.coach_name)
  end

  def test_add_new_player
    @sports_team.add_new_player("Newbie Neil")
    assert_equal("Newbie Neil", @sports_team.players.last)
  end

  def test_check_if_player_exists__returns_true
    actual = @sports_team.check_if_player_exists?("Tall Tom")
    assert_equal(true, actual)
  end

  def test_check_if_player_exists__returns_false
    # don't necessarily need this test as should trust .include
    # works but do it if you're using a loop
    actual = @sports_team.check_if_player_exists?("Crazy Charlie")
    assert_equal(false, actual)
  end

  def test_update_points_if_won
    @sports_team.update_points_if_won(true)
    assert_equal(1, @sports_team.points)
  end

  def test_update_points_if_lose
    @sports_team.update_points_if_won(false)
    assert_equal(0, @sports_team.points)
  end
end
