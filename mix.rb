# tying together numbers, letters, and variables

var1 = 2
var2 = '5'

# to return a string version of an object, a 
# ".to_s" is placed after the variable.
puts var1.to_s + var2

puts ''

# similarly, "to_i" returns an integer version of an object.
# "to_f" returns a float output.
puts var1 + var2.to_i

# several conversions of string to float and vice versa.
puts ''
puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i

# introduction to gets
# while puts is a method to put a string, then
# gets indicates the retrieval of a variable.

# introduction to chomp
# in this occassion, chomp removes any lingering ENTER input at the end of a string.

=begin
an example using puts, gets, and chomp
=end

puts 'Hello there, and what\'s your name?'
name =  gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)' 

# additional exercises

=begin
1) Program that asks for a person's first, middle, and last name. 
Lastly, it should greet the user.
=end

puts ''
puts 'What is your first name?'
fName =  gets.chomp
puts 'What is your middle name?'
mName = gets.chomp
puts 'What is your last name?'
lName = gets.chomp
fullName = fName + ' ' + mName + ' ' + lName
puts 'Nice to meet you ' + fullName + '. :)'

puts ''

=begin
2) Program that asks for a person's favorite number. 
The program should add one to the number, and suggest
the result is bigger and better favorite number.
=end

puts 'What is your favorite number?'
numFAV = gets.chomp
numBET = numFAV.to_i + 1
puts ''
puts 'Your favorite number ' + numFAV.to_s + ' is nice,
however ' + numBET.to_s + ' is bigger and better.'