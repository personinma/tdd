# Author: Steven Hu
# Class Triangle: takes two points on a plane and form a triangle with them

require_relative 'point.rb'

class Triangle

	attr_accessor :p1, :p2, :p3

	def initialize(p1, p2, p3)
		@p1 = p1
		@p2 = p2
		@p3 = p3
		@x = [p1.x,p2.x,p3.x]
		@y = [p1.y,p2.y,p3.y]
	end

	def area
		sq_area = (@x.max-@x.min).abs * (@y.max-@y.min).abs
		tri_1 = ((p1.x-p2.x).abs * (p1.y-p2.y).abs)/2
		tri_2 = ((p3.x-p2.x).abs * (p3.y-p2.y).abs)/2
		tri_3 = ((p1.x-p3.x).abs * (p1.y-p3.y).abs)/2
		return sq_area - tri_1 - tri_2 - tri_3
	end

end