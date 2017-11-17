=begin
Date: 09/18/2017
Author: Rohit Bandooni	
=end
require 'spec_helper'

describe MyAlgs do

	before :each do
		@arr = Array[-12,2,5,12,42,72]
		@algsObj = MyAlgs.new @arr
	end

	describe "#new" do


		it "should be an instance of MyAlgs" do
			expect(@algsObj).to be_an_instance_of MyAlgs
		end
		# it "should  be empty" do
		# 	# expect(@algsArray.length).to eql(0)
		# end
		it "should not get an empty array" do
			expect(@arr.length).not_to eql(0) 
		end
		it "array should not be all zeroes" do
			i = 0
			count = 0
			while i < @arr.length 
				if @arr[i] == 0
					count += 1
				end
				i += 1
			end
			expect(@arr.length).not_to eql(count)
		end

	end

	describe "#bubbleSort" do
		

		it "no two numbers should repeat" do
			j = 0
			while j < @arr.length 
				expect(@arr[j]).not_to eql(@arr[j+1])
				j += 1
			end
		end

		
		it "did not sort correctly, correct version: [-12,2,5,12,42,72] " do
			expect(@algsObj.bubbleSort).to eql([-12,2,5,12,42,72])
		end
	end
	describe "#linearSearch" do

		it "should not be able to search '100' in array" do
			expect(@algsObj.linearSearch(100)).to eql(-1)
		end
		it "should be able to search '42' in array" do
			expect(@algsObj.linearSearch(42)).to eql(1)
		end
		it "incorrect result, check pseudocode" do
			expect(@algsObj.linearSearch(5)).to eql(1)
		end

	end

	describe "#swapIndices" do
		
		context "array length" do
			it "should be even so that we don't encounter nil while swapping" do
				expect(@arr.length % 2).to eql(0)
			end

		end
		
	end

end