# creating a method for simulating dice

class Die 

    def roll
        1 + rand(6)
    end

end

# making dices
dice = [Die.new, Die.new]

# rolling dice
dice.each do |die|
    puts die.roll
end