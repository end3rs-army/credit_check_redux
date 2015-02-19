class Credit

	attr_reader :card_number, :card, :sum, :valid, :result 

	def initialize(card_number)
		@card_number = card_number
		@card = []
		@sum = 0
		@valid = false
		@result = "INVALID"
	end

	def splitter
		@card_number.each_char {|x| @card << x.to_i}
		@card #Needed for tests only
	end

	def doubler
		@card.each_with_index do |x,index| 
			if index.odd?    
				@card[index] = 2*x 
			end
		end
		@card #Needed for tests only
	end

	def reverser

		@card.reverse!
	end

	def super_size
		@card = @card.each_with_index do |x,index|
			if x>=10
				@card[index] = x-9
			end
		end
		@card
	end

	def summer

		@sum = @card.reduce(0) {|total,x| total+x}
	end

	def modulus
		@sum%10 == 0 ? @valid = true :
		@valid 
	end

	def credit_check
		splitter
		reverser
		doubler
		super_size
		summer
		modulus
		@valid == true ? @result = "VALID" : @result = "INVALID"
		puts @result
	end

end


