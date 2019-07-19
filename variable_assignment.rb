# variables and assigment

# introduction variables
myString = ' ...you can say that again...'
puts myString
puts myString

puts ''

# a more detailed use of a variable
name = 'Patricia Rosanna Jessica Mildried Oppenheimer'
puts 'My name is ' + name + '.'
puts 'Wow! ' + name + ' is a really long name!'

puts ''


# assign different objects to variables
composer = 'Mozart'
puts composer + ' was "da bomb", in his day.'

puts ''

composer = 'Beethoven'
puts 'But I prefer ' + composer + ', personally.'

puts ''

var = 'just another ' + 'string'
puts var

puts ''

var = 5 * (1+2)
puts var

puts ''

=begin
# in the previous examples, variables can be 
# assign to almost anything... except other variables.
=end
var1 = 8
var2 = var1
puts var1
puts var2

puts ''

var1 = 'eight'
puts var1
puts var2