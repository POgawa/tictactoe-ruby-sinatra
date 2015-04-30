require "rspec"
require "player"
require "space"
require "board"

describe(Board) do
  it('creates 9 spaces when it is initialized') do
    test_board = Board.new()
    expect(test_board.spaces.length).to(eq(9))
  end

  describe('#find') do
    it('returns a space object with given coordinates') do
      test_board = Board.new()
      space12 = test_board.spaces[1]
      expect(test_board.find(1,2)).to(eq(space12))
    end
  end

  describe('#won') do
    it('returns true if it finds three i a row marked by a player') do
      test_board = Board.new()
      test_player = Player.new({:mark => 'X'})
      space1 = test_board.find(1,1)
      space1.mark_by(test_player)
      space2 = test_board.find(1,2)
      space2.mark_by(test_player)
      space3 = test_board.find(1,3)
      space3.mark_by(test_player)
      expect(test_board.won()).to(eq(true))
    end
  end


end
