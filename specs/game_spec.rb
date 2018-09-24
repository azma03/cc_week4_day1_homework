require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game')

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new("rock", "rock")
    @game2 = Game.new("rock", "paper")
    @game3 = Game.new("rock", "scissors")
    @game4 = Game.new("paper", "rock")
    @game5 = Game.new("paper", "paper")
    @game6 = Game.new("paper", "scissors")
    @game7 = Game.new("scissors", "rock")
    @game8 = Game.new("scissors", "paper")
    @game9 = Game.new("scissors", "scissors")
    @game10 = Game.new("stick", "scissors")
    @game11 = Game.new("rock", "stick")
  end

  def test_calculate_results__rock_rock
    assert_equal("It's a draw!", @game1.calculate_results())
  end

  def test_calculate_results__rock_paper
    assert_equal("Player 2 wins by playing Paper!", @game2.calculate_results())
  end

  def test_calculate_results__rock_scissors
    assert_equal("Player 1 wins by playing Rock!", @game3.calculate_results())
  end

  def test_calculate_results__paper_rock
    assert_equal("Player 1 wins by playing Paper!", @game4.calculate_results())
  end

  def test_calculate_results__paper_paper
    assert_equal("It's a draw!", @game5.calculate_results())
  end

  def test_calculate_results__paper_scissors
    assert_equal("Player 2 wins by playing Scissors!", @game6.calculate_results())
  end

  def test_calculate_results__scissors_rock
    assert_equal("Player 2 wins by playing Rock!", @game7.calculate_results())
  end

  def test_calculate_results__scissors_paper
    assert_equal("Player 1 wins by playing Scissors!", @game8.calculate_results())
  end

  def test_calculate_results__scissors_scissors
    assert_equal("It's a draw!", @game9.calculate_results())
  end

  def test_calculate_results__invalid_valid
    assert_equal("Invalid input, try again with the correct URL!", @game10.calculate_results())
  end

  def test_calculate_results__valid_invalid
    assert_equal("Invalid input, try again with the correct URL!", @game11.calculate_results())
  end

end
