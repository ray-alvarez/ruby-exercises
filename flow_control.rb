# Flow Control

# Before working on flow control,
# information has to be discussed about comparison methods.

# comparisons with greater than/less than
puts ''
puts 1 > 2
puts 1 < 2
puts ''

# additional comparisons with greater than or equal/equal than or equal
puts 5 >= 5
puts 5 <= 4
puts ''

# lastly comparing objects with equal or not
puts 1 == 1
puts 2 != 1
puts ''

# let's now compare strings
# when strings get compared, they are compared
# by lexicographical ordering.
# Lexicographical ordering signifies the exposition 
# of the words by order of the alphabet.
puts 'cat' < 'dog'
puts ''

# it should be noted that, in terms of computers, capital letters
# place a priority over lower case letters.

=begin
comparison methods result not in strings called 'true' or 'false'.
rather, the result is an indication of special objects.
=end

# Branching
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Ray'
    puts 'What a lovely name!'
end

puts ''

puts 'I am a fortune-teller. Tell me your name:'
name = gets.chomp
if name == 'Chris'
    puts 'I see great things in your future.'
else
    puts 'Your future is... Oh my! Look at the time!'
    puts 'I really have to go, sorry!'
end

puts ''
puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs.Gabbard. And your name is...?'
name = gets.chomp

if name == name.capitalize
    puts 'Please take a seat, ' + name + '.'
else
    puts name + '? You mean ' + name.capitalize + ', right?'
    puts 'Don\'t you even know how to spell your name??'
    reply = gets.chomp

    if reply.downcase == 'yes'
    else
    end
end


# looping

# in this example, the loop will continue until the user replies with 'bye'
command = ''

while command != 'bye'
    puts command
    command = gets.chomp
end

puts 'Come again soon!'
puts ''

# a better written form of the first branching example
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if (name == 'Ray' or name == 'Tanya')
    puts 'What a lovely name!'
end

# additional logical operators are 'and' and 'not'
puts ''

iAmRay = true
iAmBlue = false
iLikeFood = true
iEatRocks = false

puts (iAmRay and iLikeFood)
puts (iLikeFood and iEatRocks)
puts (iAmBlue and iLikeFood)
puts (iAmBlue and iEatRocks)
puts
puts (iAmRay or iLikeFood)
puts (iLikeFood or iEatRocks)
puts (iAmBlue or iLikeFood)
puts (iAmBlue or iEatRocks)
puts
puts (not iAmBlue)
puts (not iAmRay)

=begin
the classic tune of '99 bottles of beer on the wall'
=end
bottles = 99
while bottles != 0
    puts bottles.to_s + ' bottles of beer on the wall.'
    puts bottles.to_s + ' bottles of beer.'
    bottles = bottles - 1
    puts 'take one down, pass it around.'

    if bottles == 1
        puts bottles.to_s + ' bottles of beer on the wall.'
    else
        puts bottles.to_s + ' bottles of beer on the wall.'
    end

    puts ''

    if bottles == 1
        puts bottles.to_s + ' bottle of beer on the wall.'
        puts bottles.to_s + ' bottle of beer.'
        bottles = bottles - 1
        puts 'take one down, pass it around'
        puts bottles.to_s + ' bottles of beer on the wall'
    end
end

# the following is the situation of a deaf grandmother.
# Scenerio:
# Whenever you speak with grandmother, she responds with 
# 'HUH?! SPEAK UP, SONNY!', unless you shout your statement.
# Thus, you must reply in capitals.
# She 'can hear you' but only replies fonly from the years 1920 - 1960.
# The dialogue is cancel you type in capital letters BYE.

puts ''
say = 'hi grandma'
while say != 'BYE'
    say = gets.chomp
    while say != say.upcase
        puts 'HUH? SPEAK UP SONNY!'
        say = gets.chomp
    end
    year = rand(40) + 1920
    puts 'NO, NOT SINCE ' + year.to_s
end

puts ''

# as the previous example, the loops is similar with a few exceptions
# in this case, grandma cannot hear you in one 'BYE'. In order to cut
# communication, you have to shout 'BYE' three times in a row.
# If you do not shout 'BYE' three times in a row, then 
# grandma will continue speaking to you.

say1 = ''
say2 = ''
say3 = ''

while say1 != 'BYE' || say2 != 'BYE' || say3 != 'BYE'

    while say1 != 'BYE'
        
        say1 = gets.chomp

        if say1 == say1.upcase
            year1 = rand(42) + 1919
            puts 'NO, NOT SINCE ' + year1.to_s
        else
            puts 'HUH?! SPEAK UP, SONNY!'
        end

        if say1 != 'BYE'
            say2 = ''
            say3 = ''
        end
    end

    while say2 != 'BYE'

        say2 = gets.chomp

        if say2 == say2.upcase
            year2 = rand(42) + 1919
            puts 'NO, NOT SINCE ' + year2.to_s
        else
            puts 'HUH?! SPEAK UP, SONNY!'
        end

        if say2 != 'BYE'
            say1 = ''
            say3 = ''
        end

        while say3 != 'BYE'

            say3 = gets.chomp

            if say3 == say3.upcase
                year3 = rand(42) + 1919
                puts 'NO, NOT SINCE ' + year3.to_s
            else
                puts 'HUH?! SPEAK UP, SONNY!'
            end

            if say3 != 'BYE'
                say1 = ''
                say2 = ''
            end
        end

    end
end

puts ''

# Leap Year
=begin
Program prompts with asking for the starting year and then
puts all of the leap years between them. It will also include
the leap years in between them. 
Briefly, leap years are years in which the year is divisible by
four. However, years divisible by 100 are NOT divisible unless they
are divisible by 400.  
=end

puts 'Input a starting year:'
start_year = gets.chomp
puts 'Input an ending year:'
end_year = gets.chomp
puts ''

while start_year.to_i <= end_year.to_i

    if start_year.to_f%400 == 0
        puts start_year
    elsif start_year.to_f%100 == 0
    elsif start_year.to_f%4 == 0
        puts start_year
    end

    start_year = start_year.to_i + 1

end