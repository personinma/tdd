# Author: Steven Hu
# Class Triangle: takes two points on a plane and form a triangle with them

require_relative 'point'

class Triangle

	attr_accessor :p1, :p2

	def initialize(p1, p2)
		@p1 = p1
		@p2 = p2
	end

	def area
		length = (@p1.x-@p2.x).abs
		height = (@p1.y-@p2.y).abs
		return (length * height)/2.0
	end

end