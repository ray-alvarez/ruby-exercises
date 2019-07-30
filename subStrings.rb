dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def subStrings(wordToCheck,dictionary)
    dictionaryCount = Hash.new(0)
    wordsList = wordToCheck.downcase.split(" ")

    dictionary.each do |word|
        regexp = Regexp.new(word)
        wordsList.each do |string|
            if string.match(regexp) 
                dictionaryCount[word] += 1
            end
        end
    end
    return dictionaryCount
end

puts subStrings("Howdy partner, sit down! How's it going?",dictionary)