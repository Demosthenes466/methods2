module Methods2
	
	# TODO - write elevenish?
	def elevenish?(x)
		if((x % 11 == 0) || (x % 11 == 1) && (x != 0))
			return true
		else
			return false
		end
	end


	
	# TODO - write ice_cream_party?
	def ice_cream_party?(ice_cream, candy)
		if((ice_cream < 5) || (candy < 5))
			return 0
		elsif((ice_cream >= (2*candy)) || candy >= (2*ice_cream))
			return 2
		elsif((ice_cream >= 5) & (candy >= 5))
			return 1
		end
	end

# TODO - write successful_squirrel_party?

	def squirrel_party?(nuts, week_day)
		if (week_day && ((40 <= nuts) && (nuts <= 60)))
			return true
		elsif (!week_day && (nuts >= 40))
			return true
		else
			return false
		end
	end

	# TODO - write ticket

	def ticket?(a, b, c)
		if(a + b == 10 || b + c == 10 || a + c == 10)
			return 10
		elsif ((a + b) - (b + c) == 10 || (a + b) - (a + c) == 10)
			return 5
		else
			return 0
		end
	end

	# TODO - write in_order?
	def in_order?(a, b, c, bOK)
		if(b > a && c > b)
			return true
		elsif(bOK && c > b)
			return true
		else 
			return false
		end
	end

	# TODO - write less_by_ten?
	def less_by_ten?(a, b, c)
		if((a >= b + 10) || (a <= b-10))
			return true
		elsif((b >= c + 10) || (b <= c-10))
			return true
		elsif((c >= a + 10) || (c <= a-10))
			return true	
		else 
			return false
		end
	end


	# TODO - write fizz_string

	def fizz_string(str)
		if str[0] == "f" && str.reverse[0] == "b"
			return "FizzBuzz"
		elsif str.reverse[0] == "b"
			return "Buzz"
		elsif str[0] == "f"
			return "Fizz"
		else
			return str
		end	
	end


	# TODO - write first_last_six?
	def first_last_six?(a, b, c, d)
		array = [a, b, c, d]
		array[0] == 6 || array.reverse[0] == 6
	end

	# TODO - write rotate_left
	def rotate_left(a, b, c, d)
		array = [b, c, d, a]
		return array
	end

	# TODO - write double23?
	def double23?(a,b)
		if (a == (0 || 1)) || (a != b)
			return false
		end
		if (((a && b) == 2) || ((a && b) == 3))
			return true
		end
	end

end