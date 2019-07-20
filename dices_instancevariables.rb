# for this example, an additional is implemented in the dices methods.
# an 'instance variable' identified by @ are simply an object's variables/
# to differentiate between instance and local variables, a 
# @ is placed to distinguish them.

class Die
    
    def roll
        @numberShowing = 1 + rand(6)
    end

    def showing 
        @numberShowing
    end

end

die = Die.new 
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing