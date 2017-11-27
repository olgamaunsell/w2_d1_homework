require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def test_team_name
    sports_team = SportsTeam.new("Edinburgh Capitals", ["Crazy Criss", "Tall Tom", "Snake Steve"], "Coach Bob")
    assert_equal("Edinburgh Capitals",sports_team.team_name)
  end

  # def test_players
  #   sports_team = SportsTeam.new("Edinburgh Capitals", ["Crazy Criss", "Tall Tom", "Snake Steve"], "Coach Bob")
  #   assert_equal('["Crazy Criss", "Tall Tom", "Snake Steve]',sports_team.players)
  # end

  def test_coach_name
    sports_team = SportsTeam.new("Edinburgh Capitals", ["Crazy Criss", "Tall Tom", "Snake Steve"], "Coach Bob")
    assert_equal("Coach Bob",sports_team.coach_name)
  end

  def test_coach_name
    sports_team = SportsTeam.new("Edinburgh Capitals", ["Crazy Criss", "Tall Tom", "Snake Steve"], "Coach Bob")
    assert_equal("Coach Bob",sports_team.coach_name)
  end

  def test_set_coach_name
      sports_team = SportsTeam.new("Edinburgh Capitals", ["Crazy Criss", "Tall Tom", "Snake Steve"], "Coach Bob")
      sports_team.coach_name = "Bob Senior"
      assert_equal("Bob Senior",sports_team.coach_name)
  end

  def test_add_new_player
    sports_team = SportsTeam.new("Edinburgh Capitals", ["Crazy Criss", "Tall Tom", "Snake Steve"], "Coach Bob")
    sports_team.add_new_player("Newbie Neil")
    assert_equal("Newbie Neil", sports_team.players.last)
  end

  def test_check_if_player_exists__returns_true
    sports_team = SportsTeam.new("Edinburgh Capitals", ["Crazy Criss", "Tall Tom", "Snake Steve"], "Coach Bob")
    actual = sports_team.check_if_player_exists("Tall Tom")
    assert_equal(true, actual)
  end
end



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
