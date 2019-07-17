require_relative 'tic_tac_toe'


class TicTacToeNode
  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board, @next_mover_mark, @prev_move_pos = 
    board, next_mover_mark, prev_move_pos
  end

  attr_accessor :board, :next_mover_mark, :prev_move_pos
 
  




  def losing_node?(evaluator)
    self.board.over? 


  end

  def winning_node?(evaluator)




  end


  # This method generates an array of all moves that can be made after
  # the current move.
  def children
      children = []

    (0..2).each do |x| 
      (0..2).each do |y| 

          pos = [x, y]

        next unless board.empty?(pos)
        duped_board = board.dup 

        duped_board[pos] = self.next_mover_mark
        new_mark = (self.next_mover_mark == :x ? :o : :x)

        node = TicTacToeNode.new(duped_board, new_mark, pos)

        children << node
      end 
    end   

    children 
  end
end
