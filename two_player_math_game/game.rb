require_relative './player'
require_relative './turn'


class Game
    def initialize
        @player1 = Player.new 'Player 1'
        @player2 = Player.new 'Player 2'
        @players = [@player1, @player2]
        @round = 0
        @current_player = @player1

      end

      def generateNum
       rand(200)
      end

      def game_over?
        @player1.dead? || @player2.dead?
      end

      def new_round
        
        @round += 1
        @players.rotate!
        @current_player = @players[1]
        
        if @round > 1
          puts "----- NEW TURN -----"
        else 
          puts "----- START -----"
        end
      end

      def run
        until (game_over?) do
          new_round
          
            newNumber1 = generateNum
            newNumber2 = generateNum

            puts "#{@current_player}: What does #{newNumber1} plus #{newNumber2} equal?"

            # 10.downto(0) do |i|
            #   puts "#{'%02d' % i}"
            #   sleep 1
            # end
            
            input = gets.chomp.to_i

            if input == newNumber1 + newNumber2
              puts "That's correct!"
            else
              @current_player.hp -= 1
              puts "Sorry, that is incorrect. \nThe correct answer is #{newNumber1 + newNumber2}."
            end

            puts "P1: #{@player1.hp}/3 vs P2: #{@player2.hp}/3 "
            
            if @current_player.hp == 1
              puts "You have #{@current_player.hp} life left!"
            else
              puts "You have #{@current_player.hp} lives left!"
            end
        end
        if @current_player.hp >= 0
          puts "#{@current_player} wins with a score of #{@current_player.hp}/3" 
          puts "----- GAME OVER -----"
        end
      end
end
    