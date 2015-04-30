class Board
  attr_reader(:spaces)

  def initialize
    @spaces = []
    for i in 1..3
      for j in 1..3
        space = Space.new({:x => i, :y => j})
        @spaces << space
      end
    end
  end


  def find x_coordinate, y_coordinate
    @spaces.each do |space|
      if space.x_coordinate == x_coordinate && space.y_coordinate == y_coordinate
        return space
      end
    end
  end






end
