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
end
