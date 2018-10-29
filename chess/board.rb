class Board
  def initialize
    @grid = Array.new(8) { Array.new(8) }
  end
  
  def [](pos)
    x, y = pos
    @grid[x][y]
  end
  
  def []=(pos, val)
    x, y = pos
    @grid[x][y] = val
  end
  
  def display
    @grid.each { |row| p row }
  end
end