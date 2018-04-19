
class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
 attr_accessor :value
 attr_accessor :number
 @value = " "
 @number = 0

  def initialize(v , n )
    #TO DO doit régler sa valeur, ainsi que son numéro de case
    @value = v
    @number = n
  end

  def to_s
    #TO DO : doit renvoyer la valeur au format string
    return @value
  end

end

class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
  attr_accessor :table


  def initialize
    @table = []
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
    for i in (0..8)
       @table[i] = BoardCase.new(i.to_s, i )
    end
  end

  def to_s
    #TO DO : afficher le plateau
    str = ""
    for i in (0..2)
      for j in (0..2)
        str = str + "[#{table[i*3+j].to_s}]"
      end
      str = str + "\n"
    end
    return str
  end

  def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  end

  def victory?
    #TO DO : qui gagne ?
  end
end

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?


  def initialize
    #TO DO : doit régler son nom, sa valeur, son état de victoire
  end
end

class Game
  def initialize
    #TO DO : créé 2 joueurs, créé un board
  end

  def go
    # TO DO : lance la partie
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  end
end

# Game.new.go
# test = BoardCase.new("X", 0)
# puts test

test2 = Board.new()
puts test2
