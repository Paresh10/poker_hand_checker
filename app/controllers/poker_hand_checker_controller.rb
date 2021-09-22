class PokerHandCheckerController < ApplicationController

	def index
		@suits = Suit.all
		@faces = Face.all

		render "index.html.erb"
	end

	def hand_parser
		@name = params[:name]
		@values = params[:value]

		render :partial => 'hand_parser.html.erb'
	end

end
