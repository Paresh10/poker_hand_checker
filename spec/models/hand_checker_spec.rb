require 'rails_helper'



describe HandChecker do

    describe ".hand_parser_checker" do
        context "given '2H2D2CKCQD'" do
            it "returns 'Three Of A Kind'" do    
                expect(HandChecker.hand_parser_checker('2H2D2CKCQD')).to eq('Three Of A Kind')
            end
        end
        context "given '2H5H7D8C9S'" do
            it "returns 'High Card'" do    
                expect(HandChecker.hand_parser_checker('2H5H7D8C9S')).to eq('High Card')
            end
        end   
        context "given 'AH2D3C4C5D'" do
            it "returns 'Straigh'" do    
                expect(HandChecker.hand_parser_checker('AH2D3C4C5D')).to eq('Straight')
            end
        end   
        context "given '2H3H2D3C3D'" do
            it "returns 'Full House'" do    
                expect(HandChecker.hand_parser_checker('2H3H2D3C3D')).to eq('Full House')
            end
        end  
        context "given '2H7H2D3C3D'" do
            it "returns 'Two Pair'" do    
                expect(HandChecker.hand_parser_checker('2H7H2D3C3D')).to eq('Two Pair')
            end
        end   
        context "given '2H7H7D7C7S'" do
            it "returns 'Four Of A Kind'" do    
                expect(HandChecker.hand_parser_checker('2H7H7D7C7S')).to eq('Four Of A Kind')
            end
        end  
        context "given '10HJHQHKHAH'" do
            it "returns 'Straight Flush'" do    
                expect(HandChecker.hand_parser_checker('10HJHQHKHAH')).to eq('Straight Flush')
            end
        end   
        context "given '4H4SKS5D10S'" do
            it "returns 'Straight Flush'" do    
                expect(HandChecker.hand_parser_checker('4H4SKS5D10S')).to eq('One Pair')
            end
        end   
        context "given 'Numeric'" do
            it "returns 'Only String Please'" do    
                expect(HandChecker.hand_parser_checker(Numeric)).to eq('Only String Please')
            end
        end          
        context "given ''" do
            it "returns 'Invalid Hand'" do    
                expect(HandChecker.hand_parser_checker('')).to eq('Invalid Hand')
            end
        end                          
    end
end

