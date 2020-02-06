def substrings(words, arr)
    word = words.split(" ")
    count = Hash.new(0)
    word.map { |x|
        arr.map { |y|
            if /#{y}/.match(x.downcase)
                count[y] += 1
            end
            }
        }
   puts count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)