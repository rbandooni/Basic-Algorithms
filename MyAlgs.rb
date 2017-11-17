=begin
Date: 09/18/2017
Author: Rohit Bandooni	
=end
class MyAlgs
	attr_accessor :algsArray,:len
	def initialize(initialArray)
		@algsArray = initialArray
		# puts algsArray
		
	end

	def bubbleSort
		# Bubble Sort
		len = @algsArray.length
		i = 0
		t = 0
		puts("Default Array : #{@algsArray}")	
		while i < len do
			# puts("loop #{i}")
			
			j = len-1
			while j > i do
				
				# puts("i = #{i} and j = #{j}")
					# puts("#{@algsArray[j-1]} and #{@algsArray[j]}")
				if(@algsArray[j-1] > @algsArray[j])
					t = @algsArray[j-1]
					@algsArray[j-1] = @algsArray[j]
					@algsArray[j] = t
				end
				j = j-1;
				# puts(" j = #{j}")
			end
			
			i = i+1;
		end
	puts("Bubble Sorted Array : #{@algsArray}")		
	return @algsArray
	end

	def linearSearch(searchParam)
		# Linear Search
		len = @algsArray.length
		i = 0
		while i < len-1
			if @algsArray[i] == searchParam
				puts("Index of '#{searchParam}' is #{i}")
				return 1
			end
			i += 1
			if len-1 == i
				puts("Element '#{searchParam}' not found")
				return -1
			end
		end

	end

	def swapIndices
		# Swap numbers
		len = @algsArray.length
		i = 0
		temp = 0
		while i < len
			temp = @algsArray[i]
			@algsArray[i] = @algsArray[i+1]
			@algsArray[i+1] = temp

			i += 2
		end
		puts("Swapped Array : #{@algsArray}")
		return @algsArray
	end
end


