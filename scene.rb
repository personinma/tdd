# Author: Steven Hu
# Class Scene: represents a scene consisting of one or more rectangles
# triangles, or circles. Can add, remove, count shapes in a scene

class Scene

	attr_reader :stack

	def initialize
		@stack = Array.new
	end

	def shape_count
		return @stack.length
	end

	def add_shape(object)
		@stack << object
	end

	def remove_shape
		@stack.pop
	end

	def total_area
		sum_area = 0
		@stack.each do |shape|
			sum_area += shape.area
		end
		return sum_area
	end

end