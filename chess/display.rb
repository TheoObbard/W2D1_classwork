require_relative "cursor"
require 'colorize'

class Display 

  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board 
  end 
  
  def move_cursor(next_pos)
    @cursor.update_pos(next_pos) if @board.valid_pos?(next_pos)
  end 
  
  def render
    @board.grid.each do |row| 
      # p row
      row.each_with_index do |cell, ci|
        if cell == @cursor.cursor_pos
          print "yay".red
        else
          print "nay"
        end
      end
    end
    @cursor.get_input
  end
  
end 