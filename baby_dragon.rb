# baby dragon interactor
# uses 'initialize'

class Dragon 

    def initialize name
        @name = name
        @asleep = false
        @stuff_in_belly = 10 # full stomach
        @stuff_in_intestine = 0 # no need for restroom

        puts @name + ' is born.'
    end

    # feeding
    def feed
        puts 'You feed ' + @name + '.'
        @stuff_in_belly = 10
        passage_of_time
    end

    # walk
    def walk
        puts 'You walk ' + @name + '.'
        @stuff_in_intestine = 0
        passage_of_time
    end

    # sleep
    def put_to_sleep
        puts 'You put ' + @name + ' to bed.'
        @asleep = true
        3. times do 
            if @asleep
                passage_of_time
            end
            if @asleep
                puts @name + ' snores, filling the room with smoke.'
            end
        end
        if @asleep
            @asleep = false
            puts @name + ' wakes up slowly.'
        end
    end

    # toss
    def toss
        puts 'You toss ' + @name + ' up into the air.'
        puts 'He giggles, which singes your eyebrows.'
        passage_of_time
    end

    # rock
    def rock
        puts 'You rock ' + @name + ' gently.'
        @asleep = true
        puts 'He briefly dozes off...'
        passage_of_time
        if @asleep
            @asleep = false
            puts '...but wakes when you stop'
        end
    end

    private

    # following methods are internal

    # hungry?
    def hungry?
        @stuff_in_belly <= 2
    end

    # potty?
    def poopy?
        @stuff_in_intestine >= 8
    end

    # passage of time, this is when things happen
    def passage_of_time
        if @stuff_in_belly > 0
            # move food from belly to intestine
            @stuff_in_belly = @stuff_in_belly - 1
            @stuff_in_intestine = @stuff_in_intestine + 1
        else
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts @name + ' is starving! In desperation, he ate YOU!'
            exit
        end

        if @stuff_in_intestine >= 10
            @stuff_in_intestine = 0
            puts 'Whoops! ' + @name + ' had an accident...'
        end

        if hungry?
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts @name + '\'s stomach grumbles...'
        end

        if poopy?
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts @name + ' does the potty dance...'
        end
    end

end

pet = Dragon.new 'Rhagar'

command = ''

while command != 'exit'
    puts 'Enter a command to control your dragon: '
    command = gets.chomp
    if command == 'feed'
        pet.feed
    elsif command == 'walk'
        pet.walk
    elsif command == 'put_to_bed'
        pet.put_to_bed
    elsif command == 'toss'
        pet.toss
    elsif command == 'rock'
        pet.rock
    elsif command == 'exit'
        exit
    else
        puts 'Can\'t recognize your command, please re-enter.'
    end

end