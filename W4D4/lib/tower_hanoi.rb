class TowersofHanoi
    def initialize
        @stacks = [[3, 2, 1],[], []]
    end

    def play
        until won
            puts "please enter a stack between 0 and 2 to move a disc from"
              from =  gets.chomp.to_i

              puts "please enter a stack between 0 and 2 you want to put the disc"
              to = gets.chomp.to_i

        end

    end
end



