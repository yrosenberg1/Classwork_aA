require "tower_hanoi"

describe TowersofHanoi do 
    subject(:tower) {TowersofHanoi.new}

    describe "#move" do
        it "allows a move to an empty stack" do
            expect { tower.move([0, 1]) }.not_to raise_error 
        end

        it "allows a move to a spot with a larger size disc" do
            tower.move([0, 1])
            tower.move([0, 2])
            expect(tower.move([1, 2])).not_to raise_error
        end

        it "doesn't allow a move to a stack with a smaller size disc" do
            tower.move([0, 1])
            tower.move([0, 2])
            expect(tower.move([2, 1])).to raise_error("Invalid move.")
        end

        it "doesn't allow a move from an empty stack" do
            expect { tower.move([2, 1]) }.to raise_error("Invalid move.") 
        end

        it "doesn't allow you to move to a stack that doesn't exist" do
        expect { tower.move[-1, 0] }.to raise_error(ArgumentError)
        expect { tower.move[3, 0] }.to raise_error(ArgumentError)
        expect { tower.move[0, -1] }.to raise_error(ArgumentError)
        expect { tower.move[0, 3] }.to raise_error(ArgumentError)
        end
    end

    describe "#won" do

        it "game is not won initially" do
            expect(tower).not_to be_won
        end

        it "player wins if he has all the discs on the second stack" do
            tower.move([0, 1])
            tower.move([0, 2])
            tower.move([1, 2])
            tower.move([0, 1])
            tower.move([2, 0])
            tower.move([2, 1])
            tower.move([0, 1])
            expect(tower.win).to be_won
            
        end

        it "player wins if he has all the discs on the third stack" do 
            tower.move([0, 2])
            tower.move([0, 1])
            tower.move([2, 1])
            tower.move([0, 2])
            tower.move([0, 1])
            tower.move([1, 2])
            tower.move([0, 2])
            expect(tower.win).to be_won
        end

        
    end


    



end