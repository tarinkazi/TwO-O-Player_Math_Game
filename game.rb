require_relative './player'

class Game
#Construtor
  def initialize(location)
    @player1 = Player.new("john")
    @player2 = Player.new("lindey")
    @players = [@player1, @player2].shuffle
    @location = location
    @round = 1
  end

  #methods

  def game_over?
    @player1.score >= 11 || @player2.score >= 11
  end

  def end_round
    puts "------------"
    puts "     ScoreBoard"
    puts "-------------"

    puts " PLayer: #{@player1.name} Score: #{@player1.score} Nb of Shoots: #{@player1.nb_shoots}"
    puts " PLayer: #{@player2.name} Score: #{@player2.score} Nb of Shoots: #{@player2.nb_shoots}"

    @round += 1
  end

  def play
    puts "Let's Play the game in #{@location}"

    until (game_over?) do

       @players.rotate!
      attack_player = @players.first
      puts "----------------"
      puts "    Round##{@round}"
      puts "-----------------"

      attack_player.shoots

    end_round
      sleep 0.4
    end
end



end

game1 = Game.new("Montreal")
game1.play