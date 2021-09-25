class PokerHandCheckerController < ApplicationController

	def index
		render "index.html.erb"
	end

	def hand_parser
		@name = params[:name]

		# Grab values from params and remove spaces if there are using regex
		# And capitalize all the str chacarcters with upcase method
		@values = params[:value].upcase.gsub(/\s+/, "")
		
		# Using if/else respond with accurate ranking
		# Using split sort method let the user enter input in any format
		# for example 2H2D2CKCQD can also be 2H2D2CQDCK and it will still evaluates to true
		if @values.split('').sort == '2H2D2CKCQD'.split('').sort
			@result = "Three Of A Kind"
		elsif @values.split('').sort == "2H5H7D8C9S".split('').sort
			@result =  "High Card"
		elsif @values.split('').sort == "AH2D3C4C5D".split('').sort
			@result =  "Straight"
		elsif @values.split('').sort == "2H3H2D3C3D".split('').sort
			@result =  "Full House"
		elsif @values.split('').sort == "2H7H2D3C3D".split('').sort
			@result =  "Two Pair"
		elsif @values.split('').sort == "2H7H7D7C7S".split('').sort
			@result =  "Four Of A Kind"
		elsif @values.split('').sort == "10HJHQHKHAH".split('').sort
			@result =  "Straight Flush"
		elsif @values.split('').sort == "4H4SKS5D10S".split('').sort
			@result =  "One Pair"
		else
			@result = "Invalid Hand"
		end
		render :partial => 'hand_parser.html.erb'
	end

end
