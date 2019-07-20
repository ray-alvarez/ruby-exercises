=begin
additional information about methods
these include puts, gets, chomp, to_i, to_f, to_s, +, -, *, /
=end

# arithmetic method
puts ''
puts 'hello '. + 'world'
puts (10.*9).+ 9
puts ''

var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3
puts ''

# determines the number of strings in name
# NOT the number of letters
puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + 
     ' character in your name, ' + name + '?'
puts ''

# this method, however, will determine the 
# number of letters in the method
puts 'What is your first name?'
fname = gets.chomp
puts 'What is your middle name?'
mname = gets.chomp
puts 'What is your last name?'
lname = gets.chomp
numletters = fname.length + mname.length + lname.length
puts 'Did you know, there are ' + numletters.to_s + ' letters in your full name?'

# string methods that change the case of the string
# option are uppercase and lowercase
puts ''
letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters
puts ''

# visual formatting
# center formatting
# not exactly the best visual representation
lineWidth = 50
puts(               'Old Mother Hubbard'.center(lineWidth))
puts(              'Sat in her cupboard'.center(lineWidth))
puts(        'Eating her curds an whey,'.center(lineWidth))
puts(         'When along came a spider'.center(lineWidth))
puts(        'Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog awat'.center(lineWidth))

# other visual formatting
# these formatting include "ljust" and "rjust"
# ljust signify left justify
# rjust signify right justify
puts ''
lineWidth = 40
str = '--> text <--'
puts str.ljust  lineWidth
puts str.center lineWidth
puts str.rjust  lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)

# Angry Boss Program
# Intention: Regardless of Employee request, Boss will
# yell back that they have fire thEmployee.
puts 'TRUMP: WHADDAYA WANT?!!'
employee_request = gets.chomp
puts 'WHADDAYA MEAN "' + employee_request.upcase + '"?!? YOU\'RE FIRED!!' 