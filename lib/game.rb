class  Game
attr_accessor :board , :player_1 , :player_2

def initialize (p1 = Players::Human.new, p2 = Players::Human.new )
self.player_1 = p1
self.player_2 = p2
self.board = Board.new
end







  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]





end
