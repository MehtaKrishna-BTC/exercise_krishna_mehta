class PrimeFactors
	def self.for(number)
		@num = number
		@i = 2
		@arr = Array.new
		while @num > 1
			if ( @num % @i == 0)
				@arr << @i
				@num = @num/@i
			else
				@i += 1
			end
		end
		@arr
	end
end