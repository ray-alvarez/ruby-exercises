# example 1 of hash class
colorArray = []
colorHash = {}

colorArray[0] = 'red'
colorArray[1] = 'green'
colorArray[2] = 'blue'
colorHash['strings'] = 'red'
colorHash['numbers'] = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color|
    puts color
end
colorHash.each do |codeType, color|
    puts codeType + ': ' + color
end