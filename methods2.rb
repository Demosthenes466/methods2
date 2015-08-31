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
		if(a+b)

	# TODO - write in_order?

	# TODO - write less_by_ten?
	
	# TODO - write fizz_string

	# TODO - write first_last_six?

	# TODO - write rotate_left

	# TODO - write double23?

end