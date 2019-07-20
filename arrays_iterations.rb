# Arrays and iterations

=begin
# Array is a list

[]
[5]
['Hello', 'Goodbye']

flavor = 'vanilla'

[89.9, flavor, [true, false]]
=end

# index on array
names = ['Ada', 'Belle', 'Chris']

puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3]

# Array methods
languages = ['English', 'Germany', 'Ruby']

languages.each do |lang| # each serves as an array method known as iterators
    puts 'I love ' + lang + '!'
    puts 'Don\'t you?'
end

puts 'And let\'s hear it form C++!'
puts '...'

# another array method
3.times do
    puts 'Hello!'
end

# use 'to_s' and 'join' operate similarly except that it 
# adds a string in between the array's object.

foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join(' :) ') + ' 8)'

200.times do
    puts []
end

=begin
puts : adds an object to the end your array
pop : removes the last object from the array
last : similar to 'pop' except it leaves the array alone.
=end

puts ''

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length

# introduction to arrays
array = ['one', 'two', ['alpha', 'beta']]
puts array

puts ''

puts "Type in as many words as you want. When you are done, press \'Enter'\ on the next line."
# array for the entries
words = []
entry = "0"
# taking responses and pushing them into the array
while entry != ""
    entry = gets.chomp
    words.push entry
end
# displaying data
puts "Thanks for your input. Sorting data..."
puts words.sort

# extension of the previous example with the addition
# of not using 'sort'.

# Table of Contents
# Program initiates with an array holding all of the information for
# the Table of Contents/
# Next, the information is printed out from the array into
# a beautiful formatted Table of Contents/

toc = ['Table of Contents',  'Chapter 1: Getting Started', 'page 1',
'Chapter 2: Numbers', 'page 9', 'Chapter 3: Letters', 'page 13']
page_width = 60
puts (toc[0].center(page_width))
puts ''
puts (toc[1].ljust(page_width/2) +
toc[2].rjust(page_width/2))
puts (toc[3].ljust(page_width/2) +
toc[4].rjust(page_width/2))
puts (toc[5].ljust(page_width/2) +
toc[6].rjust(page_width/2))

