
class Game
  attr_accessor :player1
  attr_accessor :player2
  player1 = ""
  player2 = ""
def board                   #definition d un board qui contient 9 variables ( pas de array ou hash)
  @square1 = 1
  @square2 = 2
  @square3 = 3
  @square4 = 4
  @square5 = 5
  @square6 = 6
  @square7 = 7
  @square8 = 8
  @square9 = 9

  puts "[#{@square1}] [#{@square2}] [#{@square3}]\n[#{@square4}] [#{@square5}] [#{@square6}]\n[#{@square7}] [#{@square8}] [#{@square9}]\n"
end

def newBoard
  puts "\n[#{@square1}] [#{@square2}] [#{@square3}]\n[#{@square4}] [#{@square5}] [#{@square6}]\n[#{@square7}] [#{@square8}] [#{@square9}]\n"
end

def turn                                      #compteur permettant de passer du joueur 1 au joueur 2
  @i ||= -1
  @i += 1
end

def player1Move                               #on demande un chiffre , on verifie si la case est deja rempli d'un X ou O , si aucun des 2 , on ecris la case.
  puts "\n #{player1}, make your move."
  move = gets.chomp.to_i
  if  move == 1 && @square1 != "O" && move == 1 && @square1 != "X"
  @square1 = "X"
elsif move == 2 && @square2 != "O" && move == 2 && @square2 != "X"
  @square2 = "X"
elsif move == 3 && @square3 != "O" && move == 3 && @square3 != "X"
  @square3 = "X"
elsif move == 4 && @square4 != "O" && move == 4 && @square4 != "X"
  @square4 = "X"
elsif move == 5 && @square5 != "O" && move == 5 && @square5 != "X"
  @square5 = "X"
elsif move == 6 && @square6 != "O" && move == 6 && @square6 != "X"
  @square6 = "X"
elsif move == 7 && @square7 != "O"  && move == 7 && @square7 != "X"
  @square7 = "X"
elsif move == 8 && @square8 != "O"  && move == 8 && @square8 != "X"
  @square8 = "X"
elsif move == 9 && @square9 != "O"  && move == 9 && @square9 != "X"
  @square9 = "X"
  else
    puts "Case deja prise"
    player1Move
  end
  turn
  checkWin
  newBoard
  player2Move
end

def player2Move
  puts "\n#{player2} make your move."
  move = gets.chomp.to_i
  if  move == 1 && @square1 != "O" && move == 1 && @square1 != "X"
  @square1 = "O"
elsif move == 2 && @square2 != "O" && move == 2 && @square2 != "X"
  @square2 = "O"
elsif move == 3 && @square3 != "O" && move == 3 && @square3 != "X"
  @square3 = "0"
elsif move == 4 && @square4 != "O" && move == 4 && @square4 != "X"
  @square4 = "O"
elsif move == 5 && @square5 != "O" && move == 5 && @square5 != "X"
  @square5 = "0"
elsif move == 6 && @square6 != "O" && move == 6 && @square6 != "X"
  @square6 = "0"
elsif move == 7 && @square7 != "O"  && move == 7 && @square7 != "X"
  @square7 = "0"
elsif move == 8 && @square8 != "O"  && move == 8 && @square8 != "X"
  @square8 = "O"
elsif move == 9 && @square9 != "O"  && move == 9 && @square9 != "X"
  @square9 = "O"
  else
    puts "Case deja prise"
    player2Move


  end
  turn
  checkWin
  newBoard
  player1Move
  end
end


def checkWin
  @win = false
  if (@square1 == "X" && @square2 == "X" && @square3 == "X") ||
    (@square4 == "X" && @square5 == "X" && @square6 == "X") ||
    (@square7 == "X" && @square8 == "X" && @square9 == "X") ||
    (@square1 == "X" && @square4 == "X" && @square7 == "X") ||
    (@square2 == "X" && @square5 == "X" && @square8 == "X") ||
    (@square3 == "X" && @square6 == "X" && @square9 == "X") ||
    (@square1 == "X" && @square5 == "X" && @square9 == "X") ||
    (@square1 == "X" && @square5 == "X" && @square7 == "X")
    puts "#{player 1} wins!"
    @win = true
    newBoard
    exit
  elsif (@square1 == "O" && @square2 == "O" && @square3 == "O") ||
    (@square4 == "O" && @square5 == "O" && @square6 == "O") ||
    (@square7 == "O" && @square8 == "O" && @square9 == "O") ||
    (@square1 == "O" && @square4 == "O" && @square7 == "O") ||
    (@square2 == "O" && @square5 == "O" && @square8 == "O") ||
    (@square3 == "O" && @square6 == "O" && @square9 == "O") ||
    (@square1 == "O" && @square5 == "O" && @square9 == "O") ||
    (@square1 == "O" && @square5 == "O" && @square7 == "O")
    puts "#{player2} wins!"
    @win = true
    newBoard
    exit
  elsif @i == 8 && @win == false       #boucle pour verifier si on a depassé les 8 coups , qui correspondent a un draw
    puts "It's a draw!"
    newBoard
    exit
  end
end

a = Game.new                           #je crée "a" instance de la classe Game
print "Your name player 1 : "
a.player1 = gets.chomp
print "Your name player 2 : "
a.player2 = gets.chomp
a.board()                              #on apelle la methode
a.player1Move
