# better program logger
# previous 'program logger' has issues, difficult to read
# to make the output readable, indented lines should be added
# to accomplish this, track of the deep nest are to be accounted
# every time the logger wants to write something.
# therefore, a global variable must be used.
# this is a variable that can be seen from anywhere in this code.
# to make a 'global variable', precede variable with $

$nesting_depth = 0
$space = ' '

def log block_description, &block
    puts $space*$nesting_depth + 'Beginning 
    "'+block_description+'"...'
    $nesting_depth = $nesting_depth + 1
    value_returned = block.call
    $nesting_depth = $nesting_depth - 1
    puts $space*$nesting_depth + '...
    "'+block_description+'"finished, returning:'
    puts $space*$nesting_depth+ value_returned.to_s
end

log 'outer block' do 

log 'some little block' do 

log 'teeny-tiny block' do 
    'lots of love'
end

42
end

log 'yet another block' do 
    'I love Italian food!'
end

true
end