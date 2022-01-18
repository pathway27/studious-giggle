module Simulation
  module Direction
    NORTH = "NORTH"
    SOUTH = "SOUTH"
    EAST  = "EAST"
    WEST  = "WEST"

    NORTHWEST = NORTH + WEST
    NORTHEAST = NORTH + EAST
    SOUTHWEST = SOUTH + WEST
    SOUTHEAST = SOUTH + EAST
    
    def rotate_left_from(direction)
      case direction
      when NORTH
        NORTHWEST
      when WEST
        SOUTHWEST
      when SOUTH
        SOUTHEAST
      when EAST
        NORTHEAST
      when NORTHWEST
        WEST
      when SOUTHWEST
        SOUTH
      when NORTHEAST
        NORTH
      when SOUTHEAST
        EAST
      end
    end

    def rotate_right_from(direction)
      case direction
      when NORTH
        NORTHEAST
      when EAST
        SOUTHEAST
      when SOUTH
        SOUTHWEST
      when WEST
        NORTHWEST
      when NORTHWEST
        NORTH
      when SOUTHWEST
        WEST
      when NORTHEAST
        EAST
      when SOUTHEAST
        SOUTH
      end 
    end
  end
end
