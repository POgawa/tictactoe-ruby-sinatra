require "rspec"
require "player"
require "space"

describe(Space) do
  describe('#x_coordinate') do
    it('returns the x-coordinate') do
      test_space = Space.new({:x => 1, :y => 2})
      expect(test_space.x_coordinate).to(eq(1))
    end
  end

  describe('#y_coordinate') do
    it('returns the y-coordinate') do
      test_space = Space.new({:x => 1, :y => 2})
      expect(test_space.y_coordinate).to(eq(2))
    end
  end

  describe('.all') do
    it('returns all spaces') do
      expect(Space.all()).to(eq([]))
    end
  end

  describe('.create') do
    it('creates a space') do
      test_space = Space.new({:x => 1, :y => 2})
      Space.create(test_space)
      expect(Space.all()).to(eq([test_space]))
    end
  end

end
