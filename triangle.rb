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
		sq_area = tri_area(Point.new(@x.min,@y.min),Point.new(@x.max,@y.max)) * 2
		return sq_area - tri_area(@p1,@p2) - tri_area(@p2,@p3) - tri_area(@p3,@p1)
	end

	def tri_area(pt1, pt2)
		return ((pt1.x-pt2.x).abs * (pt1.y-pt2.y).abs)/2
	end
	
end