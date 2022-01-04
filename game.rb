require_relative './player'
require_relative './question'


class Game

  def initialize
    @player1 = Player.new("JOhn")
    @player2 = Player.new("Jotty")
    #@current_player = @player1
     @players =[@player1, @player2].shuffle
    
  end

  def game_over?
    @player1.lives > 0 && @player2.lives > 0
  end

  def end_game
    

  end
  def start_game
    while (game_over?) do

      @players.rotate!
      current_player = @players.first
      puts "------Two-O-Player--------"
      

      question = Question.new
      puts "------New Turn---------"
      puts question.rand_question
      puts "  #{current_player.name}"
      answer = gets.chomp.to_i
      if answer == question.match_result
        puts "\n"
        puts "YES! You are correct!"
      
      else 
        puts "\n"
        puts "WRONG!"
        current_player.lives -= 1
      end
      puts "SCORE: #{@player1.name}: #{@player1.lives}/3 -VS- #{@player2.name}: #{@player2.lives}/3"
     end
     puts "----- GAME OVER -----"
    # puts "#{current_player.name} wins with a score of #{current_player.lives}/3"
    # puts "\n"
    end_game
  end
  
end