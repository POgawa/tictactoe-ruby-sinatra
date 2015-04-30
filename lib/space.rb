class Space

  @@spaces =[]


  attr_reader(:x_coordinate, :y_coordinate, :marked_by)

  def initialize attributes
    @y_coordinate = attributes[:y]
    @x_coordinate = attributes[:x]
    @marked_by = nil
  end


  def self.create space
    @@spaces<<space
  end

  def self.all
    @@spaces
  end

  def mark_by player
    @marked_by = player
  end


end
