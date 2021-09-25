class HandChecker < ApplicationRecord

    def self.hand_parser_checker(str)
			if str.split('').sort == '2H2D2CKCQD'.split('').sort
				@result = "Three Of A Kind"
			elsif str.split('').sort == "2H5H7D8C9S".split('').sort
				@result =  "High Card"
			elsif str.split('').sort == "AH2D3C4C5D".split('').sort
				@result =  "Straight"
			elsif str.split('').sort == "2H3H2D3C3D".split('').sort
				@result =  "Full House"
			elsif str.split('').sort == "2H7H2D3C3D".split('').sort
				@result =  "Two Pair"
			elsif str.split('').sort == "2H7H7D7C7S".split('').sort
				@result =  "Four Of A Kind"
			elsif str.split('').sort == "10HJHQHKHAH".split('').sort
				@result =  "Straight Flush"
			elsif str.split('').sort == "4H4SKS5D10S".split('').sort
				@result =  "One Pair"
			else
	       str = ''
				@result = "Invalid Hand"
			end
	end
end
