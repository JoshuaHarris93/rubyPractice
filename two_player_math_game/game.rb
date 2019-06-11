require_relative './player'
require_relative './turn'

class Game
    def initialize
        @player1 = Player.new 'Player 1'
        @player2 = Player.new 'Player 2'
        @players = [@player1, @player2]
      end

      def generateNum
       rand(20)
      end

      def game_over?
        return false
      end

      def run
        until (game_over?) do
            newNumber1 = generateNum
            newNumber2 = generateNum
            puts "What does #{newNumber1} plus #{newNumber2} equal?"
        
            input = gets.chomp.to_i
            if input == newNumber1 + newNumber2
            puts "That's correct!"
            else
            puts "Seriously?! No!"
            end
        end 
      end

      def end_game
        puts '------- GAME OVER -------'
      end
end
    