# Author: Steven Hu
# Class Scene: represents a scene consisting of one or more rectangles
# triangles, or circles. Can add, remove, count shapes in a scene

class Scene

	def initialize
		@queue = Array.new
	end

	def shape_count
		return @queue.length
	end

	def add_shape(object)
		@queue << object
	end

	def remove_shape
		@queue.pop
	end

	def total_area
		sum_area = 0
		@queue.each do |shape|
			sum_area += shape.area
		end
		return sum_area
	end

end