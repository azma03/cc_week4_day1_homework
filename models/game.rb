class Game
  def initialize(player1_hand, player2_hand)
    @player1_hand = player1_hand
    @player2_hand = player2_hand
    @winner = ""
  end

  def calculate_results()
    result = ""
    if @player1_hand == @player2_hand
      result =  "It's a draw!"
    else
      #### for MVP ####
      # result = case @player1_hand
      #   when "rock"
      #     case @player2_hand
      #       when "paper" then "paper wins"
      #       when "scissors" then "rock wins"
      #       else "not a match"
      #     end
      #   when "paper"
      #     case @player2_hand
      #       when "rock" then "paper wins"
      #       when "scissors" then "scissors win"
      #       else "not a match"
      #     end
      #   when "scissors"
      #     case @player2_hand
      #       when "rock" then "rock wins"
      #       when "paper" then "scissors win"
      #       else "not a match"
      #     end
      #   else "not a match"
      # end

      #### Refactored for Extensions #####
      case @player1_hand
        when "rock"
          case @player2_hand
            when "paper" then
              @winner = "Player 2"
              @winner_hand = @player2_hand
            when "scissors" then
              @winner = "Player 1"
              @winner_hand = @player1_hand
            else
              @winner = "Invalid input"
          end
        when "paper"
          case @player2_hand
            when "rock" then
              @winner = "Player 1"
              @winner_hand = @player1_hand
            when "scissors" then
              @winner = "Player 2"
              @winner_hand = @player2_hand
            else
              @winner = "Invalid input"
          end
        when "scissors"
          case @player2_hand
            when "rock" then
              @winner = "Player 2"
              @winner_hand = @player2_hand
            when "paper" then
              @winner = "Player 1"
              @winner_hand = @player1_hand
            else
              @winner = "Invalid input"
          end
        else
          @winner = "Invalid input"
      end
      if @winner.length < 9
        result = "#{@winner} wins by playing #{@winner_hand.capitalize}!"
      else
        result = "#{@winner}, try again with the correct URL!"
      end
    end
    return result
  end
end
