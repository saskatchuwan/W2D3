class Towers

  def initialize
    @board = Array.new(3) { Array.new(3) { nil } }
    populate
  end

  def populate
    @board[0] = [3, 2, 1]
  end
  
  
end