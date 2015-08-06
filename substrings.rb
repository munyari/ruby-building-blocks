def substrings(str, dict)
    hash = {}
    dict.each do |word|
       str.downcase.scan(word.downcase) { hash = hash_add(hash, word) } 
    end
    hash
end

def hash_add(hash, key)
    unless hash.include?(key)
        hash[key] = 1
    else
        hash[key] = hash[key]+1
    end
    hash
end

 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
 "own","part","partner","sit"]
 substrings("below", dictionary)
 substrings("Howdy partner, sit down! How's it going?", dictionary)
