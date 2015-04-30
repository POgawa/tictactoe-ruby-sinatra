class Space

  @@spaces =[]


  attr_reader(:x_coordinate, :y_coordinate)

  def initialize attributes
    @y_coordinate = attributes[:y]
    @x_coordinate = attributes[:x]
  end


  def self.create space
    @@spaces<<space
  end

  def self.all
    @@spaces
  end



end
