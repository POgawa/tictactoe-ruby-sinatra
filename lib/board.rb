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


  def won
    x1 = @spaces.select {|space| space.x_coordinate == 1}
    x2 = @spaces.select {|space| space.x_coordinate == 2}
    x3 = @spaces.select {|space| space.x_coordinate == 3}
    y1 = @spaces.select {|space| space.y_coordinate == 1}
    y2 = @spaces.select {|space| space.y_coordinate == 2}
    y3 = @spaces.select {|space| space.y_coordinate == 3}
    s1 = @spaces.select {|space| space.x_coordinate == space.y_coordinate}
    s_1 = @spaces.select {|space| space.x_coordinate + space.y_coordinate ==4}
    win_options = [x1, x2, x3, y1, y2, y3, s1, s_1]
    win_options.each() do |option|
      marks = []
      option.each() do |space|
        unless space.marked_by == nil
          space_mark = space.marked_by.mark
          marks.push(space_mark)
        end
      end
      if marks == ['X','X','X'] || marks == ['Y','Y','Y']
        return true
      end
    end
  end



end
