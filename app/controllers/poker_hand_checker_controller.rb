class PokerHandCheckerController < ApplicationController

	def index
		@suits = Suit.all
		@faces = Face.all

		render "index.html.erb"
	end

end
